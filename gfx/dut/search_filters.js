
app_shop.fn.getParamsFormURL=(url)=>{let urlObj=url;if(urlObj===undefined){urlObj=window.location.search;}
const afterMark=urlObj.split('?')[1];if(!afterMark){return{};}
urlObj=afterMark.split('&');const b={};for(let i=0;i<urlObj.length;++i){const p=urlObj[i].split('=',2);if(p.length===1){b[p[0]]='';}else{b[p[0]]=decodeURIComponent(p[1].replace(/\+/g,' '));}}
return b;};app_shop.fn.xpressCouriersInit=function(){$('input#xpress_zipcode').live('input',function(){clearTimeout(app_shop.formControl.timeHandle);var obj=$(this);app_shop.formControl.timeHandle=setTimeout(function(){app_shop.formControl.validate(obj);},500);});$('#xpress_zipcode_submit').live('click',function(){var $input=$(this).parent().siblings('.form-group').find('#xpress_zipcode');var region=$input.data('regio');var zipcode=$input.val();if(!$input.val()){$('input#xpress_zipcode').addClass('error');return false;}
var _data='client_zipcode='+zipcode+'&'+region;$.ajax({url:'/ajax/client-new.php?validAjax=true',type:'post',data:_data,dataType:'json',beforeSend:()=>{$('html').addClass('load-content');},success:(json)=>{var err=json.errno;if(err>0){Alertek.show_alert(xpress_txt.zipcode_invalid);$('input#xpress_zipcode').addClass('error');$('html').removeClass('load-content');return false;}
$.ajax({url:'/ajax/client-new.php?setClientSamedayLocation=1&zipcode='+zipcode,type:'post',dataType:'json',success:()=>{var filterVals=$('form#filter_form').serialize();$.ajax({url:'/search.php?'+filterVals+'&getProductXML=true&xmlType=filtering',dataType:'xml',success:(xml)=>{if($(xml).find(app_shop.vars.clickedXPRESS).attr('client_localized')=='true'&&$(xml).find(app_shop.vars.clickedXPRESS).attr('service_available_for_current_location')=='true'){$('#filter_form').submit();}else{$('body').dialog({width:300,content:$('#xpress_toplayer_error').html(),wrapperClass:'xpress_zipcode_verification',fixed:false,});}
$('html').removeClass('load-content');}});},error:()=>{$('html').removeClass('load-content');Alertek.show_alert();},});},error:()=>{$('html').removeClass('load-content');Alertek.show_alert(xpress_txt.geolocation_error);},});return false;});$('#xpress_zipcode_geolocation').live('click',function(){if(navigator.geolocation){navigator.geolocation.getCurrentPosition(function(position){$('.xpress_zipcode_verification').addClass('load-content');var lat=position.coords.latitude;var long=position.coords.longitude;var point=new google.maps.LatLng(lat,long);new google.maps.Geocoder().geocode({latLng:point},function(res){var zipcode=res[0].formatted_address.match(/\d{2}-\d{3}/);if(zipcode)$('input#xpress_zipcode').val(zipcode[0]);else Alertek.show_alert(xpress_txt.geolocation_error2);$('.xpress_zipcode_verification').removeClass('load-content');});});}
return false;});$('#express_close_dialog').live('click',function(){$('#dialog_close').click();return false;});};const Filters=function Filters(params){const self=this;this.params=params;this.isFilterRange=document.querySelector('.filters__content.--range');this.getAsyncData=async(getString)=>{const data=await $.get(getString);return data;};this.setInputValue=(target)=>{const{id}=target.dataset;const list=document.querySelectorAll(`input[data-id="${id}"]:checked`);const data=[...list].map((element)=>element.value).join(',');document.querySelector(`#${id}_input`).value=data;};this.setLabeLsQuantity=async()=>{const data=await this.getAsyncData(`/search.php?${this.serialize()}&getProductXML=true&xmlType=filtering`);const filters=data.querySelectorAll('filter');[...filters].forEach((filter)=>{const id=filter.id.replace(/\[(.*?)\]/g,'$1');const filterExpand=document.querySelector(`#${id}_expand`);if(filterExpand&&id!=='filter_text'){const items=filter.querySelectorAll('item');if(items.length){[...items].forEach((item)=>{const{value,quantity}=item.attributes;const selector='label[for="'+id+'_'+value.value+'"] .--quantity';const quantityElement=filterExpand.querySelector(selector);const inputElement=document.getElementById(id+'_'+value.value);if(quantityElement){if(quantity){quantityElement.classList.remove('d-none');quantityElement.innerHTML=quantity.value;if(inputElement&&parseInt(quantity.value,10)===0){inputElement.disabled=true;}else if(inputElement){inputElement.disabled=false;}}else{quantityElement.classList.add('d-none');quantityElement.innerHTML=0;}}});}}});};this.getPriceRange=(inputFromId='#PriceRangeFrom',inputToId='#PriceRangeTo')=>{const from=document.querySelector(inputFromId);const to=document.querySelector(inputToId);return`${from.value}-${to.value}`;};this.serialize=(selector='.__serialize')=>{const data=this.filtersForm.querySelectorAll(selector);return[...data].filter((input)=>{if(input.type==='checkbox')return input.checked;return input.value;}).map((input)=>`${input.name}=${input.value}`).join('&');};this.pushHistory=(link)=>{history.pushState({},null,link);};this.onSubmit=async(event)=>{event.preventDefault();const body=document.querySelector('body');body.classList.add('load-content');const{action}=this.filtersForm.attributes;const serialize=this.serialize();const reg=new RegExp(/\?/g);let link=`${action.value}`;if(reg.test(action.value)){if(serialize){link+=`&${serialize}`;}}else{link+=`?${serialize}`;}
const data=await this.getAsyncData(`${link}&set_render=content,aside`);const doc=new DOMParser().parseFromString(data,'text/html');const content=document.querySelector('#content');const filters=document.querySelector('#Filters');const newContent=doc.querySelector('#content');const newFilters=doc.querySelector('#Filters');content.innerHTML=newContent.innerHTML;filters.innerHTML=newFilters.innerHTML;this.pushHistory(link);this.init(this.params);this.callbackAjaxLoad();body.classList.remove('load-content');};this.setVisibleExpand=()=>{const notExpand=document.querySelectorAll('.--not-expanded');if(!notExpand.length){$.cookie('filterHidden','',{expires:355});return false;}
const notExpanded=[...notExpand].map((node)=>node.nextSibling.id);$.cookie('filterHidden',notExpanded,{expires:355});};this.getVisibleExpand=()=>{const notExpanded=$.cookie('filterHidden');if(notExpanded){notExpanded.split(',').forEach((id)=>{const node=document.querySelector('#'+id);if(node!==null){const nodeHeader=node.previousSibling;node.style.display='none';nodeHeader.classList.add('--not-expanded');}});}};this.start=()=>{const{getQuantity,disableFiltersExpandCookie}=this.params;if(this.callbackAjaxLoad){$(this.filtersForm).off('submit').on('submit',this.onSubmit);}
$(this.filtersInputs).off('change').on('change',(event)=>{const{target}=event;if(target.dataset.id!==undefined){this.setInputValue(target);}
if(getQuantity){this.setLabeLsQuantity();}});$('#PriceRangeFrom, #PriceRangeTo').on('change',function changePriceRange(){const dest=document.querySelector('#filter_price_input');dest.value=self.getPriceRange();});if(this.urlParameters.filter_nextday){$('#filter_nextday_form').prop('checked',true);}
if(this.urlParameters.filter_sameday){$('#filter_sameday_form').prop('checked',true);}
if(this.actionsCall)this.actionsCall();$('.filters__toggler:not(.--not-expandable)').on('click',()=>this.setVisibleExpand());if(!disableFiltersExpandCookie){this.getVisibleExpand();}};this.init=({funcOnSubmit,funcActionCall,funcAjaxLoad,formSelector,})=>{if(funcOnSubmit){this.onSubmit=funcOnSubmit;}
this.actionsCall=funcActionCall||null;this.callbackAjaxLoad=funcAjaxLoad||null;this.filtersForm=formSelector?document.querySelector(formSelector):document.querySelector('.filters__form');this.filtersInputs=this.filtersForm.querySelectorAll('input[type="checkbox"]');this.urlParameters=app_shop.fn.getParamsFormURL();this.start();};return this.init(params);};