
(function run(global,factory){if(typeof module==='object'&&typeof module.exports==='object'){module.exports=factory(global,true);}else{factory(global);}}(typeof window!=='undefined'?window:this,function factory(window,MODE_TESTING=false){const funcArray=[];let funcArrayQueue=[];let VIEW=0;let raf=false;let rafQueue=false;function getView(){const elViewType=document.getElementById('viewType');const viewTypeStyles=parseInt(window.getComputedStyle(elViewType),10);return parseInt(viewTypeStyles.width,10);}
function onResizingCheckView(){const currentView=getView();if(VIEW!==currentView){VIEW=currentView;generatorRun();}}
function onResizeFunction(){if(raf){window.cancelAnimationFrame(raf);}
raf=window.requestAnimationFrame(onResizingCheckView);}
function generatorRun(){funcArrayQueue=[...funcArray];if(rafQueue){window.cancelAnimationFrame(rafQueue);}
rafQueue=window.requestAnimationFrame(generatorStep);}
function generatorStep(){const f=funcArrayQueue.pop();if(f&&f.fn){log(`mode ${f.breakpoints}:${f.selector}:${f.fn.name}`,'info');f.fn();}
if(funcArrayQueue.length!==0){rafQueue=window.requestAnimationFrame(generatorStep);}}
function generatorPushFunction(funcConfigOptions){funcArrayQueue.push(funcConfigOptions);}
const ajax={mocks:{},};const debug={COOKIE_MODE_DEBUG_NAME:'iaidebugkvgir-2',mockMaps:new Map(),debugModeTurnOn(){document.cookie=`${debug.COOKIE_MODE_DEBUG_NAME}=uu04;expires=Fri,31 Dec 2026 23:59:59 GMT`;},debugModeTurnOff(){document.cookie=`${debug.COOKIE_MODE_DEBUG_NAME}=uu04;expires=Thu,01 Jan 1970 00:00:01 GMT`;},isInDebugMode(){return!!document.cookie.split(';').filter((item)=>(item.trim().indexOf(debug.COOKIE_MODE_DEBUG_NAME)===0)).length;},addMock(url,reposnse){debug.mockMaps.set(url,reposnse);},};function log(msg,type){let styles='padding:2px 5px;';switch(type){case'success':styles+='color: #155724;background-color: #d4edda;border-color: #c3e6cb;';break;case'alert':styles+='color: #721c24;background-color: #f8d7da;border-color: #f5c6cb;';break;case'warning':styles+='color: #856404;background-color: #fff3cd;border-color: #ffeeba;';break;default:return console.log(msg);}
return console.log(`%c ${msg}`,styles);}
const app=Object.freeze({vars:{set view(value){VIEW=getView();},get view(){return VIEW;},},fn:{},txt:{},run(...args){const options={fn:args[0],once:true,breakpoints:'all',selector:'body',zindex:10,ajax:false,};generatorPushFunction(options);},runApp(){for(let index=0;index<1000;index++){this.run(function runAppLoop(){console.worn(index);});}
VIEW=getView();generatorRun();window.removeEventListener('resize',onResizeFunction);window.addEventListener('resize',onResizeFunction);},ajax(...args){let url=args[0];let options=args[1];if(typeof url==='object'){options=url;url=options.url;}
if(debug.isInDebugMode()){const response=debug.mockMaps.get(url);if(response!==undefined){return new Promise(function appMockAjaxPromiseCallBack(resolve){log(`mocked ajax reguest:${url}`,'info');resolve(response);});}}
if($&&$.ajax){return new Promise(function appAjaxPromiseCallBack(resolve,reject){$.ajax(url,options).done(function done(...responsParams){resolve(responsParams);}).fail(function fail(responsParams){reject(responsParams);});});}
throw new Error('No proper library!');},mock(url,response){debug.addMock(url,response);},debug(){debug.debugModeTurnOn();},debugOff(){debug.debugModeTurnOff();},});if(MODE_TESTING){app.vars.funcArrayQueue=funcArrayQueue;app.vars.ajax=ajax;}
if(debug.isInDebugMode()){debug.debugModeTurnOn();}else{}
window.app=app;return app;}));const oscop=(function runOscop(){const vars={ajaxUrl:{singin:'/ajax/login.php',placeorder:'/place-order.php?shop_xml=1&get_ajax_items=',ordercreate:'/ajax/order-create.php',deliveries:'/ajax/get-deliveries.php?mode=productAndBasket&prepaids=true',basketcost:'/ajax/basket-cost.php',getPickups:'/ajax/getPickups.php',basketDelivery:'/ajax/basket-delivery.php',},debug:false,timeout:16000,ajaxActiveLoaders:0,};const txt={ShippingWrongData:"Om een bestelling te plaatsen, selecteert u de betalingswijze en leveringswijze",CustomerLoggedOut:"U bent uitgelogd.",BasketIsEmpty:"Je mandje is leeg.",};const getState=(name)=>{const object=$('#place-order [name="'+name+'"]');if(!object.size())return false;if(object.serializeArray()[0]){return object.serializeArray()[0].value;}
return'';};const serialize=(items,mapname='name')=>{const tmpobj={};$(items).each(function eachFn(){const napname=$(this).attr(mapname);const disabled=$(this).is(':disabled')?'disabled':false;const empty=($(this).val()==='')?'empty':false;if(!empty&&!disabled){if((!$(this).is('[type="radio"]')&&!$(this).is('[type="checkbox"]'))||$(this).is(':checked'))tmpobj[napname]=$(this).val();}else{console.log(`serialze skip:${napname}[${disabled},${empty}]`);}},);return tmpobj;};const formatPrice=(value,currency)=>format_price(value,{mask:app_shop.vars.currency_format,currency,currency_space:app_shop.vars.currency_space,currency_before_price:app_shop.vars.currency_before_value,});const toplayer=({show=false,selector,button=true,size='regular'})=>{$('.place-order__close_toplayer').remove();$('.place-order__toplayer').removeClass('place-order__toplayer --small --regular');$('.place-order__overlay').remove();if(show){$('body').append('<div class="place-order__overlay" />');$(selector).addClass('place-order__toplayer');if(button){$('.place-order__toplayer').append('<a href="#close" class="place-order__close_toplayer">x</a>');}
if(size==='small'){$('.place-order__toplayer').addClass('--small');}else if(size==='regular'){$('.place-order__toplayer').addClass('--regular');}}};const ajax=(params,noLoader)=>{if(vars.ajaxActiveLoaders===0&&(typeof noLoader==='undefined'||(typeof noLoader!=='undefined'&&!noLoader))){orderdetails_payments.ajaxLoadSite(1);}
vars.ajaxActiveLoaders++;const promise=app.ajax(params);promise.finally(function finallyFn(){vars.ajaxActiveLoaders--;if(vars.ajaxActiveLoaders===0){orderdetails_payments.ajaxLoadSite(0);}});return promise;}
const reloadPlaceOrder=(elements,callback)=>{if(elements&&elements.length){const ajaxIds=elements.map((element)=>element.ajaxId).join();if(ajaxIds.length>1){ajax({url:'/place-order.php?shop_xml=1&get_ajax_items='+ajaxIds,timeout:vars.timeout,type:'POST',}).then(function succesFn(args0){const data=args0[0];elements.forEach(function eachFn({ajaxId,element,}){const respHtml=`<div class="tempWrapper">${data[ajaxId]}</div>`;$(element).html($(respHtml).find(element).html());});if(callback)callback();});}}
getDeliveriesAndPayments();updateBasketCost();};const getBasketCost=()=>ajax({url:vars.ajaxUrl.basketcost,timeout:vars.timeout,type:'GET',dataType:'JSON',data:{delivery:getState('shipping'),payform_id:getState('payform_id'),},});const getDeliveriesAndPayments=()=>{const response=ajax({url:vars.ajaxUrl.deliveries,timeout:vars.timeout,type:'GET',dataType:'JSON',});response.then((data)=>{paymentViewOscop.init(data[0].prepaids_method);deliveryViewOscop.init(data[0].prepaid,data[0].dvp);});};const getOrderData=()=>{const data=serialize('[data-create]','data-create');data.order=serialize('[data-create_order]','data-create_order');data.order.stock=1;data.client=serialize('[data-create_client]','data-create_client');data.client.type=$('input[name="client_type"]:checked').val();if($('#deliver_to_billingaddr_no:checked').length){data.client.delivery=serialize('[data-create_client]','data-create_client');}else{data.client.delivery=serialize('[data-create_client_delivery]','data-create_client_delivery');}
data.client.consent=serialize('[data-create_client_consent]','data-create_client_consent');if(vars.debug){console.log('Create order data:');console.log(data);}
return data;};const getPickups=(options)=>ajax({url:vars.ajaxUrl.getPickups,timeout:vars.timeout,type:'GET',dataType:'JSON',data:options,});const getBasketDelivery=(options)=>ajax({url:vars.ajaxUrl.basketDelivery,timeout:vars.timeout,type:'GET',dataType:'JSON',data:options,});const orderCreate=()=>{const orderData=getOrderData();ajax({url:vars.ajaxUrl.ordercreate,type:'POST',timeout:vars.timeout,dataType:'JSON',data:orderData,}).then(function succesFn(args0){const data=args0[0];const errorTxt=[];errorTxt.OrderFailShippingWrongData=txt.ShippingWrongData;errorTxt.OrderFailCustomerLoggedOut=txt.CustomerLoggedOut;errorTxt.OrderFailBasketIsEmpty=txt.BasketIsEmpty;if(data.location){$(location).attr('href',data.location);}
if(data.errno){let errorMsg=data.error;if(errorTxt[errorMsg]){errorMsg=errorTxt[errorMsg];}
Alertek.show_alert(errorMsg);if(data.error==='OrderFailCustomerLoggedOut'){oscop.reloadPlaceOrder([{ajaxId:'place-order__client-data',element:'#place-order__client-data',},{ajaxId:'place-order__summary',element:'.summary__regulations ',}],OrderFailCustomerLoggedOutCallback);}}});};return{vars,getState,formatPrice,ajax,toplayer,getBasketCost,getDeliveriesAndPayments,getPickups,getBasketDelivery,orderCreate,reloadPlaceOrder,};}());app_shop.run(function toplayerFunctionality(){$(document).on('click','.place-order__close_toplayer, .place-order__close_toplayer_link, .place-order__overlay',()=>{oscop.toplayer(false);return false;});$(document).keyup(function(e){if(e.key==="Escape"){oscop.toplayer(false);}});},'all','#place-order');