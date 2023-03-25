
app_shop.txt.txt_show_more="Ontvouw het geheel"
app_shop.txt.txt_show_less="Verberg deel"
app_shop.txt.txt_show_button="btn"
app_shop.txt.txt_hover_opis="Beschrijving"
app_shop.txt.txt_hover_dane="Kenmerken"
app_shop.txt.txt_hover_gwarancja="Garantie"
app_shop.txt.txt_hover_polecane="Aanbevolen producten"
app_shop.txt.txt_hover_opinie="Meningen"
app_shop.txt.txt_hover_pytania="Vragen"
app_shop.txt.txt_hover_zadaj_pytanie="Stel een vraag"
app_shop.txt.txt_hover_polec="Aanbevelen aan vrienden"
app_shop.txt.txt_hover_tabela="Maattabel"
app_shop.txt.txt_hover_pliki="Om te downloaden"
app_shop.txt.txt_hover_bundle="Kits"
app_shop.txt.txt_hover_przydac="Het kan nuttig zijn"
app_shop.txt.txt_hover_podobne="Vergelijkbare"
app_shop.txt.txt_hover_sklad="Set samenstelling"
app_shop.txt.txt_hover_producer="Fabrikant"
app_shop.txt.txt_hover_1=""
app_shop.txt.txt_hover_2=""
app_shop.txt.txt_hover_3=""
app_shop.txt.txt_hover_4=""
app_shop.vars.tabsHTML='';const fixedTabs=()=>{tmpHeight=$('body,html').scrollTop();if(tmpHeight>app_shop.vars.scrollFrom){$('.projector_tabs__tabs').addClass('fixed');}else{$('.projector_tabs__tabs').removeClass('fixed');}
$('.projector_tabs__tab:first-child').addClass('active');$('.projector_tabs__tab').each(function(){const targetOffset=$($(this).data('target')).offset().top;checkHeight=targetOffset-71;if(tmpHeight>=checkHeight){$('.projector_tabs__tab').removeClass('active');$(this).addClass('active');}});};const buildProjectorTabs=()=>{app_shop.vars.tabsHTML='<div class="projector_tabs__tabs">';app_shop.vars.tabsValidArray.forEach((tab)=>{if($(tab.id).length){const tabName=tab.name||$(tab.id).find('.big_label, .headline__name').text();app_shop.vars.tabsHTML+=`<span class="projector_tabs__tab"data-target="${tab.id}">${tabName}</span>`;}});app_shop.vars.tabsHTML+='</div>'
if(!$('.projector_tabs .projector_tabs__tabs').length)$('.projector_tabs').append(app_shop.vars.tabsHTML);$('.projector_tabs').height($('.projector_tabs__tabs').outerHeight(true));$(window).off('scroll.fixed_tabs');$(window).on('scroll.fixed_tabs',function(){fixedTabs();});$(window).scroll();};const getProjectorAjaxHotspot=()=>{var currName='';var currType='';var currProdID=$('#projector_product_hidden').val()||$('#projector_form').data('product_id')||'';var productsIDS=[];var ajax_hotspots=$('[data-ajaxload=true]:not(.loaded)');if($('.basketedit_page').length){$('.productslist_item').each(function(){productsIDS.push($(this).find('input[name*="product"]').val());});}
ajax_hotspots.each(function(){var currHs=$(this);currName+=currHs.attr('id')+',';currType+=currHs.data('pagetype')+',';});currName=currName.replace(/,$/,'')||'';currType=currType.replace(/,$/,'')||'';$.ajax({url:'/ajax/hotspots.php?action=get-hotspots-html&zones-names='+currName+'&components='+currName+'&zones-types='+currType+'&product='+currProdID+'&products='+productsIDS.join(';'),dataType:'json',beforeSend:function(){loaded=true;ajax_hotspots.addClass('load-content loaded');},success:function(json){ajax_hotspots.removeClass('load-content');$.each(json,function(key,value){if(value){var currTarget=$('#'+key);currTarget.replaceWith(value);if(app_shop.vars.bLazy){app_shop.vars.bLazy.revalidate();}
currTarget=$('#'+key);}else{$('#'+key).remove();}});app_shop.vars.tabsArray=app_shop.vars.tabsArrayCreate()||[];app_shop.vars.tabsValidArray=app_shop.vars.tabsArray.filter((elem)=>$(elem.id).length);if(app_shop.vars.tabsValidArray.length){buildProjectorTabs();}},error:function(){ajax_hotspots.removeClass('load-content');ajax_hotspots.remove();app_shop.vars.tabsArray=app_shop.vars.tabsArrayCreate()||[];app_shop.vars.tabsValidArray=app_shop.vars.tabsArray.filter((elem)=>$(elem.id).length);if(app_shop.vars.tabsValidArray.length){buildProjectorTabs();}},});};$(document).on('click','.projector_tabs__tab',function(){const element=$(this);const target=element.data('target');$('body, html').animate({scrollTop:$(target).offset().top-60,});});app_shop.run(function(){$('.projector_tabs__tabs').remove();getProjectorAjaxHotspot();},[3,4],'.projector_page');app_shop.run(function(){if($('div[data-ajaxLoad], section[data-ajaxLoad]').length){app_shop.fn.hotspotAjaxInit('',function(){},true);}
$('.projector_tabs__tabs').remove();$('.projector_tabs').removeAttr('style');$(window).off('scroll.fixed_tabs');},[1,2],'.projector_page');app_shop.run(()=>{$('#projector_details').after($('.projector_tabs'));app_shop.vars.scrollFrom=$('.projector_tabs').offset().top;},'all','.projector_tabs');