app_shop.fn.sizeSelected = function () {
  if (
    $("#projector_size_hidden").val() != "" ||
    $("#projector_size_hidden").val() == "onesize"
  ) {
    return true;
  }
  return false;
};
app_shop.fn.load_projektor = function (url) {
  var htmlBookmarkletsCopy = $(".bookmarklets_big");
  app_shop.fn.load(
    url,
    [
      ["#content", "#content"],
      ["#breadcrumbs", "#breadcrumbs"],
    ],
    function () {
      $(".main_hotspot .align_row").iai_align();
      $("#projector_form div.photos .align_row").iai_align();
      $(".main_hotspot img.b-lazy").parents("a").addClass("loading");
      var bLazy = new Blazy({
        breakpoints: [{ width: 420, src: "data-src-small" }],
        success: function (element) {
          setTimeout(function () {
            $(element).parents(".loading").removeClass("loading");
          }, 200);
        },
      });
      projectorObj.configObj.disableBuyButtonTXT = "";
      projectorObj.currentSizeObj = "";
      projectorObj.start();
      app_shop.fn.runAjaxFn();
      if (app_shop.vars.projectorSlider) {
        app_shop.vars.projectorSlider.reset();
      }
      app_shop.vars.curr_url_projector = location.pathname;
      if (app_shop.vars.projectorElevate) {
        app_shop.vars.projectorElevate.reset();
      }
      try {
        $("#htmlBookmarkletsCopy").remove();
        $("body").append(
          '<div id="htmlBookmarkletsCopy" style="display:none">'
        );
        $("#htmlBookmarkletsCopy").append(htmlBookmarkletsCopy);
        if (window["FB"]) FB.XFBML.parse();
        if (window["twttr"]) twttr.widgets.load();
        if (window["gapi"]) gapi.plusone.go();
        if (window["addthis"]) addthis.toolbox();
      } catch (ex) {}
    },
    "?set_render=content,head"
  );
};
app_shop.fn.alert = function (elmt, txt) {
  if (elmt.find($("#alert")).length === 0) {
    const alert = `<div id="alert"class="alert">${txt}</div>`;
    elmt.prepend(alert);
    elmt.addClass("--alert");
    setTimeout(() => {
      elmt.find($("#alert")).addClass("--open");
    }, 10);
    setTimeout(() => {
      elmt.find($("#alert")).remove();
      elmt.removeClass("--alert");
    }, 3500);
  }
};
app_shop.fn.alertProjector = function () {
  if (app_shop.vars.newAlertProjector === true) {
    app_shop.fn.alert(
      $("#projector_form .sizes__sub"),
      app_shop.txt.txt_74629_8
    );
  } else {
    Alertek.Start(app_shop.txt.txt_74629_8);
  }
};
app_shop.fn.init_versions = function () {
  if ($("#projector_form div.product_section.versions .fancy-select").length) {
    $("#projector_form div.product_section.versions .fancy-select").fancyList({
      fnItemClick: function (element) {
        var curr_url = element.find("a").attr("href");
        window.location.href = curr_url;
      },
    });
  }
};
app_shop.fn.init_multi_vers = function () {
  $projector_form = $("#projector_form");
  $("#multi_versions .fancy-select").fancyList({
    fnItemClick: function (element) {
      var product_id = element.data("product");
      var curr_url = element.find("a").attr("href");
      if (element.is(".selected")) return false;
      element.parent().find(".selected").removeClass("selected");
      element.addClass("selected");
      if (!element.is(".disabled")) {
        projectorObj.configObj.disableBuyButtonTXT = "Gegevens worden geladen...";
        app_shop.fn.load_projektor(curr_url);
        return false;
      }
      var multiversions_selected =
        "&multiversions[selected]=" +
        $.map($("#multi_versions .selected"), function (item) {
          return $(item).data("values_id");
        }).join(",");
      multiversions_selected +=
        "&multiversions[last_selected]=" + element.data("values_id");
      $.ajax({
        url:
          "/ajax/projector.php?product=" +
          product_id +
          "&get=multiversions" +
          multiversions_selected,
        type: "get",
        dataType: "json",
        success: function (json) {
          for (i in json.multiversions) {
            var items = json.multiversions[i].items;
            var version_id = json.multiversions[i].id;
            var itemHandler = $(document.getElementById("mw_" + version_id));
            itemHandler.removeClass("conflict");
            for (j in items) {
              var version_item_id = "v" + items[j].values_id;
              var version_itemHandler = $(
                document.getElementById(version_item_id)
              );
              version_itemHandler.removeClass("disabled");
              version_itemHandler.attr(
                "data-product",
                items[j].products[0].product_id
              );
              version_itemHandler
                .find("a")
                .attr("href", items[j].products[0].url);
              if (items[j].disabled) {
                if (version_itemHandler.is(".selected")) {
                  itemHandler.addClass("conflict");
                }
                version_itemHandler.addClass("disabled");
              }
            }
          }
          if ($("#multi_versions .fancy-select.conflict").size()) {
            projectorObj.configObj.disableBuyButtonTXT =
              app_shop.txt.txt_74629_2;
          }
        },
        error: function () {},
      });
    },
  });
};
app_shop.fn.prepareProjectorForm = function () {
  var array = $("#projector_form").serializeArray();
  var urlObj = {};
  urlObj["bundleParts"] = {};
  var bundled_size = [];
  for (i = 0; i < array.length; i++) {
    var value = array[i].value == "onesize" ? "uniw" : array[i].value;
    if (array[i].name.indexOf("bundled_size") == -1) {
      urlObj[array[i].name] = value;
    } else {
      eval(array[i].name + '="' + value + '"');
    }
  }
  urlObj["bundleParts"] = bundled_size;
  var id = urlObj.product;
  var size = urlObj.size;
  var quantity = urlObj.number ? urlObj.number : 1;
  var url = [];
  var prefix = "products[" + id + "][" + size + "]";
  url.push(prefix + "[quantity]=" + quantity);
  var counter = 0;
  if (urlObj["bundleParts"].length) {
    for (i in urlObj["bundleParts"]) {
      url.push(prefix + "[bundleParts][" + counter + "][product]=" + i);
      url.push(
        prefix +
          "[bundleParts][" +
          counter +
          "][size]=" +
          urlObj["bundleParts"][i]
      );
      counter++;
    }
  }
  return url.join("&");
};
app_shop.fn.shipping_info = function (id, size, quantity, url) {
  var iteration = 1;
  shippingTime = function (json) {
    if (app_shop.txt.txt_74629_9 == "") return "";
    if (
      projectorObj.currentSizeObj.delay_time &&
      projectorObj.currentSizeObj.delay_time.unknown_delivery_time == "true" &&
      projectorObj.currentSizeObj.availability.status == "order"
    )
      return (
        '<div class="shipping_time_popup"><b>' +
        projectorObj.currentSizeObj.availability.status_description +
        "</b><div>" +
        $("#projector_shipping_unknown span").html() +
        "</div></div>"
      );
    if (json.shipping_time) {
      var rezultTmp = "";
      var onlyDays = true;
      if (json.shipping_time.days && json.shipping_time.days > 0) {
        rezultTmp +=
          json.shipping_time.days +
          projectorObj.variety(
            json.shipping_time.days,
            projectorObj.txt["day"],
            projectorObj.txt["days"]
          ) +
          " ";
      }
      if (json.shipping_time.hours && json.shipping_time.hours > 0) {
        rezultTmp +=
          json.shipping_time.hours +
          projectorObj.variety(
            json.shipping_time.hours,
            projectorObj.txt["hour"],
            projectorObj.txt["hours"]
          ) +
          " ";
        onlyDays = false;
      }
      if (json.shipping_time.minutes && json.shipping_time.minutes > 0) {
        rezultTmp +=
          json.shipping_time.minutes +
          projectorObj.variety(
            json.shipping_time.minutes,
            projectorObj.txt["minimaal"],
            projectorObj.txt["mins"]
          ) +
          " ";
        onlyDays = false;
      }
      rezultTmp =
        '<div class="shipping_time_popup"><b>' +
        app_shop.txt.txt_74629_11 +
        "</b> <span>" +
        rezultTmp +
        "</span><div>" +
        app_shop.txt.txt_74629_12 +
        "</div></div>";
      if (onlyDays) {
        if (json.shipping_time.days == 0) {
          rezultTmp =
            '<div class="shipping_time_popup"><b>' +
            app_shop.txt.txt_74629_11a +
            "</b><div>" +
            app_shop.txt.txt_74629_11b +
            "</div></div>";
        }
      }
    }
    return rezultTmp;
  };
  if (!app_shop.fn.sizeSelected()) {
    app_shop.fn.alertProjector();
    return false;
  }
  var size = size == "onesize" ? "uniw" : size;
  var deliverytime = function (day, hour, min, id, sameday, nextday) {
    var time = "";
    if (day > 0) {
      txt_day_variety = app_shop.fn.variety(day, day_txt, days_txt);
      time += day + txt_day_variety;
    }
    if (hour > 0) {
      txt_hour_variety = app_shop.fn.variety(hour, hour_txt, hours_txt);
      time += hour + txt_hour_variety;
    }
    if (min > 0) {
      time += min + min_txt;
    }
    if (app_shop.txt.txt_74629_9 == "") {
      if (day == 0 && hour == 0 && min == 0) {
        if (id == "0-1" || id == "0-0") {
          time = txt_24h;
        } else {
          time = txt_do_24h;
        }
      }
    } else {
      if (id == "0-1" || id == "0-0") {
        if (day == 0 && hour == 0 && min == 0) {
          time = app_shop.txt.txt_74629_13;
        } else if (sameday == true) {
          time =
            '<span class="delivery_sameday">' +
            app_shop.txt.txt_74629_14 +
            "</span>";
        } else if (nextday == true) {
          time =
            '<span class="delivery_nextday">' +
            app_shop.txt.txt_74629_15 +
            "</span>";
        } else {
          time = app_shop.txt.txt_74629_16 + time;
        }
      } else {
        if (sameday == true) {
          time =
            '<span class="delivery_sameday">' +
            app_shop.txt.txt_74629_17 +
            "</span>";
        } else if (nextday == true) {
          time =
            '<span class="delivery_nextday">' +
            app_shop.txt.txt_74629_18 +
            "</span>";
        } else {
          time = app_shop.txt.txt_74629_19 + time;
        }
      }
    }
    return time;
  };
  var prepare_info = function () {
    return (
      '<div class="menu_messages_message" style="margin: 10px 20px !important;"><div class="menu_messages_message_sub"><p>' +
      app_shop.txt.txt_74629_7 +
      "</p></div></div>"
    );
  };
  var prepare = function (obj, type) {
    if (!obj.size()) return "";
    var html = [];
    html.push('<div class="shipping_info shipping_info_' + iteration + '">');
    iteration++;
    html.push('<span class="shipping_title">', type, "</span>");
    obj.each(function (index, item) {
      var shiping_info = "";
      html.push(
        '<div class="shipping_info_sub"><div class="shipping_info_header">'
      );
      html.push('<img class="shipping_info_icon" src="', item.icon, '" />');
      if (
        projectorObj.currentSizeObj.delay_time &&
        !(
          projectorObj.currentSizeObj.delay_time.unknown_delivery_time ==
            "true" && projectorObj.currentSizeObj.availability.status == "order"
        )
      ) {
        if (app_shop.txt.txt_74629_9 == "") {
          if (item.id == "0-1" || item.id == "0-0") {
            deliverys_txt = delivery_txt2;
          } else {
            deliverys_txt = delivery_txt;
          }
          if (item.minworthreached == "false" && delivery_txt3) {
            shiping_info =
              '<div class="shipping_info_time"><span class="inactive_time">' +
              delivery_txt3 +
              item.minworth_formatted +
              "</span></div>";
          } else {
            shiping_info =
              '<div class="shipping_info_time">' +
              deliverytime(
                item.deliverytime_days,
                item.deliverytime_hours,
                item.deliverytime_minutes,
                item.id
              ) +
              "</div>";
          }
        } else {
          if (item.minworthreached == "false" && delivery_txt3) {
            shiping_info =
              '<div class="shipping_info_time"><span class="inactive_time">' +
              delivery_txt3 +
              item.minworth_formatted +
              "</span></div>";
          } else {
            shiping_info =
              '<div class="shipping_info_time">' +
              deliverytime(
                item.time_days,
                item.time_hours,
                item.time_minutes,
                item.id,
                item.sameday,
                item.nextday
              ) +
              "</div>";
          }
        }
      }
      if (
        window["projectorObj"] &&
        projectorObj.currentSizeObj &&
        projectorObj.currentSizeObj.availability.status == "disable"
      ) {
        shiping_info = "";
      }
      html.push(
        '<span class="shipping_info_name">',
        item.name,
        `<p style="font-weight:normal;">${item.comment}</p>`,
        shiping_info,
        "</div>"
      );
      html.push('<div class="shipping_info_pricebox">');
      if (item.minworthreached != "false")
        if (item.beforerebate_formatted) {
          html.push(
            '<del class="shipping_info_oldprice">',
            item.beforerebate_formatted,
            "</del>"
          );
        }
      html.push('<span class="shipping_info_price">');
      if (item.minworthreached != "false")
        if (item.cost > 0 || item.courier_company_group_key == "ownCourierPrepaid") {
          html.push(item.cost_formatted);
        } else {
          html.push(gratis_txt);
        }
      html.push("</span></div></div>");
    });
    html.push("</div>");
    return html.join("");
  };
  if (size + quantity) {
    var _url = "products[" + id + "][" + size + "][quantity]=" + quantity;
  } else {
    var _url = id;
  }
  $.ajax({
    url: "/ajax/get-deliveries.php?mode=productAndBasket&" + _url,
    type: "POST",
    dataType: "json",
    data: { getAjax: true },
    success: function (json) {
      htmlShiping = shippingTime(json);
      $("body").dialog({
        content:
          htmlShiping +
          '<div class="table_wrapper">' +
          ($(json.prepaid).size() + $(json.dvp).size()
            ? prepare($(json.prepaid), prepaid) + prepare($(json.dvp), dvp)
            : prepare_info()) +
          "</div>",
        fixed: false,
        fitToWindow: false,
        animate: false,
        width: 1028,
        wrapperClass: "dialog_wrapper_shipping_info",
        buttons: [
          {
            text: app_shop.txt.txt_74629_16467,
            click: function () {
              $("#dialog_close").click();
            },
          },
        ],
      });
      $(".dialog_wrapper_shipping_info > #dialog_wrapper_sub").addClass(
        "shipping_info_sub"
      );
      if (app_shop.txt.txt_74629_9 != "") {
        $("#dialog_wrapper_sub").append($("#n67367_returns").clone());
      }
      if (trust_level == "1") {
        $("#dialog_wrapper").addClass("superfairshop");
        $("#ui-dialog_button").before($("#superfairshop_info").clone());
      }
    },
    error: function () {
      window.location = url;
    },
  });
};
app_shop.run(
  function () {
    app_shop.fn.init_versions();
    $("#projector_form a.show_size_cms").click(function () {
      $("#component_projector_sizes_cms_not").dialog({
        wrappContent: true,
        fixed: false,
        fitToWindow: false,
        animate: false,
        width: 700,
        wrapperClass: "dialog_wrapper_sizes_chart",
      });
      return false;
    });
    $("#projector_form a.shipping_info").click(function () {
      app_shop.fn.shipping_info(
        app_shop.fn.prepareProjectorForm(),
        false,
        false,
        $(this).attr("href")
      );
      return false;
    });
    $("#projector_number_up").click(function () {
      if (!app_shop.fn.sizeSelected()) {
        app_shop.fn.alertProjector();
        return false;
      }
      $("#projector_number").val(
        parseFloat($("#projector_number").val()) +
          parseFloat(product_data.unit_sellby)
      );
      projectorObj.start();
    });
    $("#projector_number_down").click(function () {
      if (!app_shop.fn.sizeSelected()) {
        app_shop.fn.alertProjector();
        return false;
      }
      $("#projector_number").val(
        parseFloat($("#projector_number").val()) -
          parseFloat(product_data.unit_sellby)
      );
      projectorObj.start();
    });
    var prevValue;
    $("#projector_number").on("click blur keyup", function (e) {
      var thisValue = $(this).val();
      if (e.type == "click") {
        prevValue = $("#projector_number").val();
      }
      if (!app_shop.fn.sizeSelected()) {
        app_shop.fn.alertProjector();
        return false;
      }
      clearTimeout(projectorObj.delayTime);
      projectorObj.delayTime = setTimeout(function () {
        if (e.type == "keyup" && thisValue != "") {
          prevValue = $("#projector_number").val();
          projectorObj.start();
        } else if (e.type == "blur") {
          $("#projector_number").val(prevValue);
          projectorObj.start();
        }
      }, 500);
    });
    $("#projector_form").submit(function () {
      if (!app_shop.fn.sizeSelected()) {
        app_shop.fn.alertProjector();
        return false;
      }
      if (
        parseFloat($("#projector_number").val()) >
          projectorObj.currentSizeObj.amount &&
        projectorObj.currentSizeObj.amount !== -1 &&
        $("#projector_mode_hidden").val() != 2
      ) {
        Alertek.Start(
          Projector_txt_maksymalnie +
            "" +
            projectorObj.currentSizeObj.amount +
            " " +
            projectorObj.currentSizeObj.unit
        );
        projectorObj.start();
        return false;
      }
      $("#projector_buy_section").addClass("submitting");
      $("#projector_button_basket").text(txt_62619_submitting);
      return true;
    });
    app_shop.fn.fashionAvailability = function () {
      $(".projector_product_status_wrapper").show();
      var currSize = projectorObj.currentSizeObj;
      if (currSize.availability) {
        if (currSize.availability.status == "enable") {
          if (currSize.amount > 0) {
            $(
              "img#projector_status_gfx, span#projector_status_description"
            ).show();
          }
        } else if (
          currSize.availability.status == "order" ||
          currSize.availability.status == "disable"
        ) {
          $(
            "img#projector_status_gfx, span#projector_status_description"
          ).show();
          $("span#projector_amount").hide();
        }
      }
    };
    app_shop.fn.tommorowAvailability = function () {
      $(".projector_product_status_wrapper").show();
      var currSize = projectorObj.currentSizeObj;
      if (currSize.availability) {
        if (currSize.availability.status == "enable") {
          var todayDate = new Date();
          todayDate.setDate(todayDate.getDate() + 1);
          var getDay = todayDate.getDate(),
            deliveryDate =
              projectorObj.currentSizeObj.availability.delivery_date,
            deliveryDay = deliveryDate.match(/\d+$/)[0];
          if (getDay == deliveryDay)
            $("#projector_delivery_days").html(txt_shipping_16);
        }
      }
    };
    $("#projector_sizes_cont .select_button").on("click", function () {
      $("#projector_tell_availability").find("input").attr("disabled", true);
      $("#projector_number").removeAttr("readonly");
      $("#projector_sizes_cont .select_button").removeClass("active");
      $(this).addClass("active");
      $("#projector_size_hidden").val($(this).data("type"));
      $("#projector_sizes_cont .sizes__sub").removeClass("--alert");
      $("#projector_sizes_cont #alert").remove();
      projectorObj.setCurrentSizeObj($("#projector_size_hidden").val());
      projectorObj.start();
      $("projector_product_status_wrapper").show();
      return false;
    });
    $("#projector_sizes_cont .select_button.disabled").bind(
      "click.avability",
      function () {
        $("#projector_tell_availability").find("input").attr("disabled", false);
        $.getJSON(
          "/ajax/projector.php?action=get_product_observed",
          {
            product: $("#projector_product_hidden").val(),
            size: $("#projector_size_hidden").val(),
            email: $('#projector_tell_availability [name="Email"]').val(),
          },
          function (data) {
            if (data.status == "error") {
              message = txt_62619_blad_pobrania;
              Alertek.show_alert(message);
              return false;
            }
            if (!data.sms_active) {
              $("#sms_active_checkbox,#sms_active_group").remove();
            }
            if (data.client && data.client.phone) {
              $("#sms_active_checkbox input").prop("checked", true);
              $("#sms_active_checkbox,#sms_active_group").show();
              $('#sms_active_group [name="phone"]').val(data.client.phone);
            }
          }
        );
      }
    );
    $("#projector_tell_availability .validate").on("input", function () {
      clearTimeout(app_shop.formControl.timeHandle);
      obj = $(this);
      app_shop.formControl.timeHandle = setTimeout(function () {
        app_shop.formControl.validate(obj);
      }, 500);
    });
    $("#sms_active_checkbox input").click(function () {
      var sms_wrapper = $("#sms_active_group");
      if ($(this).is(":checked")) {
        sms_wrapper.show();
        sms_wrapper.find('[name="phone"]').focus();
      } else {
        sms_wrapper.hide();
      }
    });
    $("#projector_tell_availability button").click(function () {
      if (
        app_shop.formControl.checkValidateFields(
          $("#projector_tell_availability")
        )
      ) {
        var bundle_sizes = $("#projector_bundle_zone")
          .find("input")
          .serialize();
        bundle_sizes = !bundle_sizes ? "" : "&" + bundle_sizes;
        $.getJSON(
          "/ajax/projector.php?action=set_product_observed" + bundle_sizes,
          {
            product: $("#projector_product_hidden").val(),
            size: $("#projector_size_hidden").val(),
            email: $('#projector_tell_availability [name="Email"]').val(),
            mode: 2,
            phone: $('#projector_tell_availability [name="phone"]').val(),
          },
          function (data) {
            if (data.status == "error") {
              switch (data.errdesc) {
                case "mail":
                  message = txt_62619_nieprawidlowy_email;
                  break;
                case "limit":
                  message = txt_62619_przekroczono_liczbe;
                  break;
                default:
                  message = txt_62619_podczas_dodawania;
              }
            } else {
              message = txt_62619_produkt_dodany;
            }
            Alertek.show_alert(message);
          }
        );
      }
      return false;
    });
    $("#projector_button_points_basket").on("click", function () {
      var currentSizeType = projectorObj.currentSizeObj.type;
      if (currentSizeType) {
        var product_points = parseInt(
          product_data.sizes[currentSizeType].price.points
        );
        var summary_product_points =
          product_points * parseInt($("#projector_number").val());
        if (summary_product_points > client_points) {
          Alertek.show_alert(projectorObj.txt["za_malo_punktow"]);
          return false;
        }
      }
    });
    $("#projector_number").click(function () {
      if (!app_shop.fn.sizeSelected()) {
        app_shop.fn.alertProjector();
        return false;
      }
    });
    $("#projector_button_basket").click(function () {
      if (!app_shop.fn.sizeSelected()) {
        app_shop.fn.alertProjector();
        return false;
      }
    });
    $("#projector_button_points_basket").click(function () {
      if (!app_shop.fn.sizeSelected()) {
        app_shop.fn.alertProjector();
        return false;
      }
    });
    $("#projector_button_observe").click(function () {
      if (!app_shop.fn.sizeSelected()) {
        app_shop.fn.alertProjector();
        return false;
      }
      $("#projector_mode_hidden").val(2);
      $("#projector_form").submit();
    });
    $("#projector_form").prepend(
      '<button style="display:none;" type="submit">'
    );
    if (!app_shop.txt.txt_74629_8) {
      if (
        $(
          "#projector_sizes_cont .select_button:not(.select_button.disabled):first"
        ).size()
      ) {
        $(
          "#projector_sizes_cont .select_button:not(.select_button.disabled):first"
        ).click();
      } else {
        $("#projector_sizes_cont .select_button:first").click();
      }
    } else {
      projectorObj.isStarted = true;
      if ($("#projector_size_hidden").val() == "") {
        $("#projector_number").attr("readonly", true);
      }
    }
    if ($("#projector_sizes_cont .select_button").size() == 1) {
      $("#projector_sizes_cont .select_button:first").click();
    }
    if (
      projectorObj.currentSizeObj.price &&
      projectorObj.currentSizeObj.price.promotiontilldate &&
      !$("#CDT").size()
    ) {
      $(".projector_custom_wrapper").after(
        '<div id="CDT" class="product_section CDT-uniw"></div>'
      );
      app_shop.vars.countDown = new CountdownTimer(
        $("#CDT"),
        new Date(projectorObj.currentSizeObj.price.promotiontilldate)
      );
      app_shop.vars.countDown.countDown();
    }
    app_shop.fn.replaceSelects(
      $("select#projector_sizes_select"),
      "s_sizes_",
      function ($elem) {
        app_shop.fn.dropdownClick($elem);
        $("#projector_number").removeAttr("readonly");
        var $sizeType = $elem.find("a").data("value");
        $("input#projector_size_hidden").val($sizeType);
        projectorObj.setCurrentSizeObj($sizeType);
        projectorObj.start();
        if ($elem.is(".disabled")) {
          setTimeout(function () {
            $("html, body").animate({
              scrollTop: $("#projector_tell_availability").offset().top - 100,
            });
          }, 50);
          $("#projector_tell_availability").show();
          $("#projector_buy_section").hide();
          $("#projector_tell_availability")
            .find("input")
            .removeAttr("disabled");
        } else {
          $("#projector_tell_availability").hide();
          $("#projector_buy_section").show();
          $("#projector_tell_availability")
            .find("input")
            .attr("disabled", true);
        }
        $("#projector_sizes_cont .sizes__sub").removeClass("--alert");
        $("#projector_sizes_cont #alert").remove();
      }
    );
    $("#projector_sizes_cont ul.dropdown-menu > li > a").each(function () {
      var $this = $(this);
      var $count = $this.data("count");
      if ($count == 0)
        $this.html(
          '<span class="size_label">' +
            projectorObj.txt["size_select_label"] +
            "</span>" +
            '<span class="size_name">' +
            $this.text() +
            "</span>" +
            '<span class="size_tell_availability">' +
            projectorObj.txt["size_select_tell_availability"] +
            "</span>" +
            '<span class="size_count">' +
            $count +
            " " +
            product_data.unit_plural +
            "</span>"
        );
      else if ($count == "1")
        $this.html(
          '<span class="size_label">' +
            projectorObj.txt["size_select_label"] +
            "</span>" +
            '<span class="size_name">' +
            $this.text() +
            "</span>" +
            '<span class="size_last_unit">' +
            projectorObj.txt["size_select_last_unit"] +
            "</span>" +
            '<span class="size_count">' +
            $count +
            " " +
            product_data.unit +
            "</span>"
        );
      else if ($count != "-1")
        if ($this.data("statusid") == 1)
          $this.html(
            '<span class="size_label">' +
              projectorObj.txt["size_select_label"] +
              "</span>" +
              '<span class="size_name">' +
              $this.text() +
              "</span>" +
              '<span class="size_last_unit">' +
              projectorObj.txt["size_select_few_last_units"] +
              "</span>" +
              '<span class="size_count">' +
              $count +
              " " +
              product_data.unit_plural +
              "</span>"
          );
        else
          $this.html(
            '<span class="size_label">' +
              projectorObj.txt["size_select_label"] +
              "</span>" +
              '<span class="size_name">' +
              $this.text() +
              "</span>" +
              '<span class="size_count">' +
              $count +
              " " +
              product_data.unit_plural +
              "</span>"
          );
      else
        $this.html(
          '<span class="size_label">' +
            projectorObj.txt["size_select_label"] +
            "</span>" +
            '<span class="size_name">' +
            $this.text() +
            "</span>"
        );
    });
    if (
      product_data.sizes &&
      (product_data.sizes.uniw || product_data.sizes.onesize)
    )
      $(".product_section.sizes").hide();
    projectorInitObject = {
      endStartFunction: projectorEndStartCallback,
      formatPrice: _formatPrice,
      onDisableAlert: false,
      endInitFunction: projectorEndInitFunctionCallback,
      contact_link: app_shop.vars.contact_link,
    };
    projectorObj.projectorInit(projectorInitObject);
  },
  "all",
  "#projector_form",
  true
);
app_shop.run(
  function () {
    if ($("#projector_sizes_cont .select_button").size() != 1) {
      projectorObj.setCurrentSizeObj($("#projector_size_hidden").val());
      projectorObj.start();
    }
    app_shop.vars.curr_url_projector = location.pathname;
    $(window).on("popstate", function () {
      if (app_shop.vars.curr_url_projector !== location.pathname) {
        window.location.href = window.location.href;
      }
    });
  },
  "all",
  "#projector_form"
);
