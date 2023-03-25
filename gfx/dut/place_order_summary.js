
const updateBasketCost=()=>{oscop.getBasketCost().then((data)=>{const json=data[0];$('#place-order__summary .summary__cost_item').hide();if(json.products_worth>0){$('#summary__worth').show().find('strong').text(oscop.formatPrice(json.products_worth,json.currency_sign));}
if(json.shipping_cost>0){$('#summary__shipping_cost').show().find('strong').text(oscop.formatPrice(json.shipping_cost,json.currency_sign));}
if(json.prepaid_cost>0){$('#summary__payment_cost').show().find('strong').text(oscop.formatPrice(json.prepaid_cost,json.currency_sign));}
if(json.insurance_cost>0){$('#summary__insurance').show().find('strong').text(oscop.formatPrice(json.insurance_cost,json.currency_sign));}
if(json.total_rebate>0){$('#summary__rabate').show().find('strong').text(oscop.formatPrice(json.total_rebate,json.currency_sign));}
if(json.payment_amount_from_client_balance>0){$('#summary__balance').show().find('strong').text(oscop.formatPrice(json.payment_amount_from_client_balance,json.currency_sign));}
if(json.total_to_pay>0){$('#summary__total_cost').show().find('strong > span').text(oscop.formatPrice(json.total_to_pay,json.currency_sign))}
if(json.shipping_cost_points>0){$('#summary__total_cost').show().find('b > span').text(json.shipping_cost_points);}})};app_shop.run(function renderBasketCost(){updateBasketCost();},'all','#place-order__summary');