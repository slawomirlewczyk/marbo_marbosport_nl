
const paymentViewOscop=(function prepareView(){const template=(element)=>`<div id="payment__${element.id}"class="payment__item col-4 mb-3 px-1 --online"><input id="payform_${element.id}"value="${element.id}"data-create_order="payform_id"name="payform_id"type="radio"><label class="payment__label d-flex flex-column justify-content-center align-items-center"for="payform_${element.id}"><span class="payment__icon d-flex justify-content-center align-items-center p-2 mb-2"><img src="${element.icon}"></span><span class="payment__name">${element.name}</span></label></div>`;const updateView=()=>{$('#oscop__payment > .payment__item').each(function upateView(){const element=$(this);const elementName=element.find('> label .payment__name');const elementImg=element.find('> label .payment__icon');const input=element.find('.payment__content .payment__item input:checked');element.find('> input').removeClass('--checked');if(input.length){elementName.html(input.siblings('label').find('.payment__name').html());elementImg.find('img').attr('src',input.siblings('label').find('.payment__icon img').attr('src'));element.find('> input').addClass('--checked');}else{if(elementName.attr('data-default')){elementName.html(elementName.attr('data-default'));}else{elementName.attr('data-default',elementName.text());}
if(elementImg.attr('data-default')){elementImg.find('img').attr('src',elementImg.attr('data-default'));}else{elementImg.attr('data-default',elementImg.find('img').attr('src'));}}});};const init=(prepaidsMethod)=>{$('.payment__item > input').prop('checked',false);let paymentView='';let paymentViewCards='';prepaidsMethod.forEach((element)=>{if(element.id===110){$('#payment__acount').show();}else if(element.id!==2&&element.id!==190&&element.id!==38){paymentView+=template(element);}});$('#oscop__payment > .payment__item').not('#payment_online, #payment_card, #payment_acount, #payment_dvp').remove()
$('#payment_online').show();$('#payment_online').after(paymentView);$('#payment_online').hide();$('#payment_card .payment__content').html(`<div class="payment__content-sub">${paymentViewCards}</div>`);if(paymentViewCards){$('#payment__card').show();}else{$('#payment_card').hide();}
updateView();};return{template,updateView,init,};}());app_shop.run(function renderPayments(){$('#place-order__payment').on('click','.payment__label',function choosePayment(e){const labelValue=$(this).attr('for');const input=$(`#${labelValue}`);const toplayer=$(this).siblings('.payment__content');if(input.val()==='00'&&toplayer.length){e.preventDefault();oscop.toplayer({selector:toplayer,show:true,});}else{oscop.toplayer(false);if(input.val()==='01'){deliveryViewOscop.setType('dvp');}else{deliveryViewOscop.setType('prepaid');}}
setTimeout(()=>{paymentViewOscop.updateView();updateBasketCost();});});},'all','#place-order__payment');