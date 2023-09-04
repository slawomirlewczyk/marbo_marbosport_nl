const Basket = function Basket(params) {
  const self = this;
  this.params = params;
  this.setAsyncData = async (method = "POST", link, serialize, json = null) => {
    let result;
    try {
      result = await $.ajax({
        type: method,
        url: link,
        data: serialize,
        dataType: json,
        processData: false,
        contentType: false,
      });
      return result;
    } catch (error) {
      console.error(`Błąd zapytania AJAX Basket-${error.responseText}`);
      return false;
    }
  };
  this.onSubmit = async (event) => {
    event.preventDefault();
    const body = document.querySelector("body");
    body.classList.add("load-content");
    const { action } = this.basketForm.attributes;
    const { method } = this.basketForm.attributes;
    const type = `${method.value}`;
    const link = `${action.value}`;
    const serialize = new FormData($(this.basketForm)[0]);
    const data = await this.setAsyncData(type, link, serialize);
    if (data) {
      const doc = new DOMParser().parseFromString(data, "text/html");
      const content = document.querySelector("#content");
      const basket = document.querySelector("#menu_basket");
      const newContent = doc.querySelector("#content");
      const newBasket = doc.querySelector("#menu_basket");
      content.innerHTML = newContent.innerHTML;
      basket.innerHTML = newBasket.innerHTML;
      this.start(this.params);
      if (typeof this.callbackAjaxLoad === "function")
        this.callbackAjaxLoad(doc);
    }
    body.classList.remove("load-content");
  };
  this.getWrappers = async (data) => {
    const { typeAjax, urlAjax, dataAjax, dataTypeAjax } = data;
    const xml = await this.setAsyncData(
      typeAjax,
      urlAjax,
      dataAjax,
      dataTypeAjax
    );
    if (xml) {
      if (typeof this.callbackSetWrappers === "function")
        this.callbackSetWrappers(xml);
      else {
        const allWrappers = xml.querySelectorAll("wrapper");
        if (allWrappers.length) {
          const addWrapperButton = document.querySelector(
            ".basket__tools .tool__button.--add-wrapper"
          );
          addWrapperButton.classList.add("--active");
          const container = document.querySelectorAll(".basket__wrappers");
          container[0].innerHTML = `<div id="wrappers_wrapper"class="hotspot mb-4"><h2><span class="headline"><span class="headline__name">${txt_order_wrappers_4}</span><span class="headline__after close_wrappers">${txt_order_wrappers_8}</span></span></h2><div class="products d-flex flex-wrap">${[
            ...allWrappers,
          ]
            .map(
              (el) =>
                `<div class="product col-6 col-sm-3 py-3"><span class="product__icon d-flex justify-content-center align-items-center"data-product-id="${el.getAttribute(
                  "product_id"
                )}"><img src="/gfx/dut/loader.gif"class="b-lazy"data-src="${
                  el.querySelectorAll("icon")[0].textContent
                }"alt="${
                  el.querySelectorAll("name")[0].textContent
                }"/></span><h3><span class="product__name">${
                  el.querySelectorAll("name")[0].textContent
                }</span></h3><div class="product__cleardescription mb-3">${
                  el.querySelectorAll("description")[0].textContent
                }</div><div class="product__prices"><strong class="price">${
                  el.querySelectorAll("price")[0].getAttribute("value") > 0
                    ? el
                        .querySelectorAll("price")[0]
                        .getAttribute("price_formatted")
                    : txt_order_wrappers_2
                }</strong></div><form action="/basketchange.php"method="post"><input type="hidden"name="product"value="${el.getAttribute(
                  "product_id"
                )}"/><input type="hidden"name="size"value="${el.getAttribute(
                  "size_id"
                )}"/><input type="hidden"name="mode"value="1"/><input type="hidden"name="number"value="1"/><div class="product__button mt-2"><button class="${product_buttons_basket_class}">${txt_order_wrappers_1}</button></div></form></div>`
            )
            .join("")}</div></div>`;
        }
      }
      if (typeof this.callbackGetWrappers === "function")
        this.callbackGetWrappers(xml);
    }
  };
  this.numberCheck = (input) => {
    const i = parseFloat(input.val());
    if (i < 0) {
      input.val(0);
      return false;
    }
    const {
      amount,
      unit_sellby,
      unit,
      unit_precision,
      max_q,
      max_s,
      min_q,
      min_s,
    } = input.data();
    let s = parseFloat(unit_sellby);
    const p = parseFloat(unit_precision);
    const quantity = parseFloat(amount);
    const maxQ = parseFloat(max_q);
    const maxS = parseFloat(max_s);
    const minQ = parseFloat(min_q);
    const minS = parseFloat(min_s);
    if (!$.isNumeric(i) || i <= s) {
      if (!isNaN(maxQ) || !isNaN(maxS) || !isNaN(minQ) || !isNaN(minS)) {
        s = s.toFixed(p);
      } else {
        input.val(s.toFixed(p));
        return true;
      }
    }
    let number = Math.floor(i / s) * s;
    number =
      ((i / s) * s - number).toFixed(p + 1) > 0
        ? (1 * number + s).toFixed(p)
        : number.toFixed(p);
    number = parseFloat(number);
    let fixedAmountMax = quantity;
    let fixedAmountMin = s;
    let amountLeft = -1;
    let amountSum = -1;
    if (!isNaN(maxQ)) {
      amountLeft = $.map(
        $("." + input.attr("class")),
        function mapAmountLeft(item) {
          return parseFloat($(item).val());
        }
      ).reduce(function reduceAmountLeft(a, b) {
        return a + b;
      });
      amountLeft = maxQ - amountLeft;
      amountLeft = amountLeft < 0 ? "end" : amountLeft;
      const el = $("." + input.attr("class")).not(input);
      if (el.size()) {
        amountSum = $.map(el, function mapAmountSum(item) {
          return parseFloat($(item).val());
        }).reduce(function reduceAmountSum(a, b) {
          return a + b;
        });
        amountSum = maxQ - amountSum;
      }
      fixedAmountMax = fixedAmountMax > maxQ ? maxQ : fixedAmountMax;
    }
    if (!isNaN(maxS)) {
      fixedAmountMax = fixedAmountMax > maxS ? maxS : fixedAmountMax;
    }
    if (!isNaN(minQ)) {
      fixedAmountMin = minQ > fixedAmountMin ? minQ : fixedAmountMin;
    }
    if (!isNaN(minS)) {
      fixedAmountMin = minS > fixedAmountMin ? minS : fixedAmountMin;
    }
    if (fixedAmountMax !== -1) {
      fixedAmountMin = fixedAmountMax > fixedAmountMin ? fixedAmountMin : s;
    }
    if (fixedAmountMin && number < fixedAmountMin) {
      Alertek.show_alert(
        Projector_txt_minimalnie +
          " " +
          Math.ceil(parseFloat(fixedAmountMin) / s) * s +
          " " +
          unit
      );
      input.val(Math.ceil(parseFloat(fixedAmountMin) / s) * s);
      return true;
    }
    if (amountLeft === "end") {
      Alertek.show_alert(
        Projector_txt_maksymalnie +
          " " +
          Math.floor(parseFloat(maxQ) / s) * s +
          " " +
          unit
      );
      input.val(Math.floor(parseFloat(maxQ) / s) * s);
      return true;
    }
    if (number > fixedAmountMax && fixedAmountMax !== -1) {
      Alertek.show_alert(
        Projector_txt_maksymalnie +
          " " +
          Math.floor(parseFloat(fixedAmountMax) / s) * s +
          " " +
          unit
      );
      input.val(Math.floor(parseFloat(fixedAmountMax) / s) * s);
    } else {
      input.val(number);
    }
    return true;
  };
  this.start = () => {
    const { funcActionsCall } = this.params;
    if (typeof funcActionsCall === "function") funcActionsCall(self);
    const { formSelector } = this.params;
    this.basketForm = formSelector
      ? document.querySelector(formSelector)
      : document.querySelector(".basket__form");
    const { funcAjaxLoad } = this.params;
    this.callbackAjaxLoad = funcAjaxLoad;
    if (this.callbackAjaxLoad) {
      $(this.basketForm).off("submit").on("submit", this.onSubmit);
    }
    const dataGetWrappers = {
      typeAjax: "GET",
      urlAjax: "/order-wrappers.php?xml=true",
      dataTypeAjax: "xml",
    };
    this.getWrappers(dataGetWrappers);
    const { funcSetWrappers } = this.params;
    this.callbackSetWrappers = funcSetWrappers;
    const { funcGetWrappers } = this.params;
    this.callbackGetWrappers = funcGetWrappers;
  };
  return this.start();
};
