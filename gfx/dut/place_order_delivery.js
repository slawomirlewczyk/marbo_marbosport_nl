const deliveryViewOscop = (function prepareView() {
  const txt = {
    unavailable: "U kunt deze leveringsmethode niet selecteren",
    noPayment: "Selecteer eerst een betaalmethode",
    immediately:
      "De bestelling is direct na ontvangst klaar voor afhaling.",
    dvp: "De voorbereiding voor het persoonlijk ophalen zal",
    prepaid: "Het transport zelf zal",
    deliveryTransport: "Het pakket moet bij u zijn tegen",
    deliveryUndefined:
      "Kies uw leveringsmethode en wij informeren u over de levertijd",
    dvpPreparation: "Ophalen van bestellingen mogelijk",
    day: "dag",
    days: "dagen",
    hour: "uur",
    minutes: "minimaal",
    today: "vandaag!",
    tommorow: "morgen!",
    daysOfTheWeek: [
      "op zondag",
      "op maandag",
      "op dinsdag",
      "op woensdag",
      "op donderdag",
      "op vrijdag",
      "op zaterdag",
    ],
    month: [
      "Januari",
      "Februari",
      "Maart",
      "April",
      "Mei",
      "Juni",
      "Juli",
      "Augustus",
      "September",
      "Oktober",
      "November",
      "December",
    ],
  };
  const template = (element, time) =>
    `<div class="delivery__item mb-3"><input id="shipping_${element.id}"value="${element.id}"name="shipping"type="radio"data-create_order="shipping"data-pickuppoint="${element.pickuppoint}"data-calendar="${element.calendar}"data-delivery="${element.time_days}#${element.time_hours}#${element.time_minutes}"data-preparation="${element.deliverytime_days}#${element.deliverytime_hours}#${element.deliverytime_minutes}"><label class="delivery__label d-flex align-items-center py-2 px-3"for="shipping_${element.id}"><span class="delivery__icon"><img src="${element.icon}"></span><span class="delivery__name">${element.name}<i class="delivery__time">${time}</i></span><span class="delivery__price">${element.cost_formatted}</span></label></div>`;
  const getElementTime = (element) => {
    let time = "";
    if (
      element.deliverytime_days === 0 &&
      element.deliverytime_hours === 0 &&
      element.deliverytime_minutes === 0 &&
      element.time_days === 0 &&
      element.time_hours === 0 &&
      element.time_minutes === 0
    ) {
      time = txt.immediately;
    } else {
      if (
        element.deliverytime_days === 0 &&
        element.deliverytime_hours === 0 &&
        element.deliverytime_minutes === 0
      ) {
        time = txt.dvp;
      } else {
        time = txt.prepaid;
      }
      if (element.time_days > 0) {
        time += `<span class="days">${element.time_days}`;
        if (element.time_days === 1) {
          time += `${txt.day}</span>`;
        } else {
          time += `${txt.days}</span>`;
        }
      }
      if (element.time_hours > 0) {
        time += `<span class="hours">${element.time_hours}${txt.hour}</span>`;
      }
      if (element.time_minutes > 0) {
        time += `<span class="minutes">${element.time_minutes}${txt.minutes}</span>`;
      }
    }
    return time;
  };
  const setType = (type) => {
    $(".delivery__type").removeClass("--active");
    $(".delivery__item input").prop("checked", false);
    $("#delivery_summary").html(txt.deliveryUndefined);
    switch (type) {
      case "prepaid":
        $("#delivery_prepaid").addClass("--active");
        break;
      case "dvp":
        $("#delivery_dvp").addClass("--active");
        break;
      default:
        $("input#shipping_00").prop("checked", true);
        $("#delivery_default").addClass("--active");
    }
  };
  const init = (prepaid, dvp) => {
    setType("default");
    let deliveryPrepaid = "";
    prepaid.forEach((element) => {
      deliveryPrepaid += template(element, getElementTime(element));
    });
    $("#delivery_prepaid").html(deliveryPrepaid);
    let deliveryDvp = "";
    dvp.forEach((element) => {
      deliveryDvp += template(element, getElementTime(element));
    });
    $("#delivery_dvp").html(deliveryDvp);
  };
  const isToday = (someDate) => {
    const today = new Date();
    return (
      someDate.getDate() === today.getDate() &&
      someDate.getMonth() === today.getMonth()
    );
  };
  const isTommorow = (someDate) => {
    const today = new Date();
    const tommorow = new Date();
    tommorow.setDate(today.getDate() + 1);
    return (
      someDate.getDate() === tommorow.getDate() &&
      someDate.getMonth() === tommorow.getMonth()
    );
  };
  const convertTime = (yearId, monthId, dayId) => {
    const date = new Date(yearId, monthId, dayId);
    const month = (date.getMonth() < 9 ? "0" : "") + (date.getMonth() + 1);
    const day = (date.getDate() <= 9 ? "0" : "") + date.getDate();
    const year = date.getFullYear();
    return `${day}.${month}.${year}`;
  };
  const summary = (delivery, preparation) => {
    let text;
    if (delivery === "0#0#0" && preparation === "0#0#0") {
      text = txt.immediately;
    } else {
      if (preparation === "0#0#0") {
        text = txt.dvpPreparation;
      } else {
        text = txt.deliveryTransport;
      }
      const summaryArray = delivery.split("#");
      const summaryDate = new Date();
      summaryDate.setMilliseconds(
        parseInt(summaryArray[0], 10) * 24 * 60 * 60 * 1000 +
          parseInt(summaryArray[1], 10) * 60 * 60 * 1000 +
          parseInt(summaryArray[2], 10) * 60 * 1000
      );
      const convertDate = `${
        summaryDate.getMonth() + 1
      }.${summaryDate.getDate()}.${summaryDate.getFullYear()}`;
      text += `<span class="day">${convertTime(
        summaryDate.getFullYear(),
        summaryDate.getMonth(),
        summaryDate.getDate()
      )}</span>`;
      if (isToday(summaryDate)) {
        text += `<span class="today">${txt.today}</span>`;
      } else if (isTommorow(summaryDate)) {
        text += `<span class="tommorow">${txt.tommorow}</span>`;
      } else {
        text += `<span class="day_of_week">${
          deliveryViewOscop.txt.daysOfTheWeek[summaryDate.getDay()]
        }</span>`;
      }
    }
    return text;
  };
  return {
    txt,
    convertTime,
    template,
    init,
    getElementTime,
    setType,
    isToday,
    isTommorow,
    summary,
  };
})();
app_shop.run(
  function renderDeliveries() {
    $("#place-order__delivery").on(
      "click",
      ".delivery__label",
      function chooseDelivery(e) {
        if ($(this).parents(".delivery__sub").hasClass("--open")) {
          $(this).parents(".delivery__sub").removeClass("--open");
        } else {
          $(this).parents(".delivery__sub").addClass("--open");
        }
        const labelValue = $(this).attr("for");
        const input = $("#" + labelValue);
        const delivery = input.attr("data-delivery");
        const preparation = input.attr("data-preparation");
        const pickuppoint = input.attr("data-pickuppoint");
        if (input.val() === "00") {
          e.preventDefault();
          Alertek.show_alert(deliveryViewOscop.txt.noPayment);
        } else if (delivery && preparation) {
          $("#delivery_summary").html(
            deliveryViewOscop.summary(delivery, preparation)
          );
        }
        if (pickuppoint === "y") {
          pickupSitesOscop.init(input.val());
        }
        setTimeout(() => {
          updateBasketCost();
        });
      }
    );
  },
  "all",
  "#place-order__delivery"
);
