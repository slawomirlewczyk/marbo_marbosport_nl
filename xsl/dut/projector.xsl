<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop"><!--Typ strony (envelope, 119565.1)-->
            <iaixsl:variable name="meta_langcode_iso639">nl</iaixsl:variable>
            <iaixsl:variable name="html5_layout">1</iaixsl:variable>
            <iaixsl:variable name="asyncJS"/>
            <iaixsl:variable name="themeColor">#0090f6</iaixsl:variable><iaixsl:variable name="hard_space">&amp;nbsp;</iaixsl:variable>
            <iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
                <iaixsl:text disable-output-escaping="yes">&lt;html lang="</iaixsl:text><iaixsl:value-of select="/shop/language/option[@selected = 'true']/@name"/><iaixsl:text disable-output-escaping="yes">"</iaixsl:text><iaixsl:if test="(/shop/page/@type = 'prepaid' and /shop/page/prepaid/details/@msg = 'order') or /shop/page/@type = 'order-nonstandardized' or /shop/page/@type = 'order1' or /shop/page/@type = 'order2' or /shop/page/@type = 'pickup-sites' or /shop/page/@type = 'place-order'"><iaixsl:text disable-output-escaping="yes"> class="order_process"</iaixsl:text></iaixsl:if><iaixsl:text disable-output-escaping="yes"> &gt;</iaixsl:text>
                <iaixsl:if test="$meta_langcode_iso639"><iaixsl:attribute name="lang"><iaixsl:value-of select="$meta_langcode_iso639"/></iaixsl:attribute></iaixsl:if>
                <head>
                    <iaixsl:text disable-output-escaping="yes">&lt;meta name='viewport' content='user-scalable=no, initial-scale = 1.0, maximum-scale = 1.0, width=device-width'/&gt; &lt;link rel='preconnect' href='https://fonts.gstatic.com'&gt; &lt;link href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&amp;display=swap" rel="stylesheet"&gt; &lt;link rel="stylesheet" href="https://use.typekit.net/mfe7xbz.css"&gt;</iaixsl:text>
                    <iaixsl:variable name="meta_breadcrumb">
                        <iaixsl:if test="(page/@type='search') or (page/@type='navigation') or (page/@type='projector')">
                            <iaixsl:choose>
                                <iaixsl:when test="page/@type='navigation'">
                                    <iaixsl:for-each select="bc/item"><iaixsl:value-of select="@title"/> | </iaixsl:for-each>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:for-each select="bc/item[not(position() = last())]"><iaixsl:value-of select="@title"/> | </iaixsl:for-each>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                            
                        </iaixsl:if>
                    </iaixsl:variable>
                    <iaixsl:variable name="meta_breadcrumb_full">
                        <iaixsl:if test="(page/@type='search') or (page/@type='navigation') or (page/@type='projector')">
                            <iaixsl:for-each select="bc/item"><iaixsl:value-of select="@title"/> | </iaixsl:for-each>
                            
                        </iaixsl:if>
                    </iaixsl:variable>
                    <iaixsl:variable name="meta_subcategories">
                        <iaixsl:if test="((page/@type='search') or (page/@type='navigation') or (page/@type='projector')) and (/shop/navigation/current/@ni)">
                            <iaixsl:for-each select="navigation/descendant-or-self::item[@ni=/shop/navigation/current/@ni]/item"><iaixsl:value-of select="@name"/>, </iaixsl:for-each>
                        </iaixsl:if>
                    </iaixsl:variable>
                    <iaixsl:variable name="meta_variable_emulate_ie">IE=edge</iaixsl:variable>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                    <iaixsl:if test="$meta_variable_emulate_ie">
                        <meta http-equiv="X-UA-Compatible"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_variable_emulate_ie"/></iaixsl:attribute></meta>
                    </iaixsl:if>
                    <iaixsl:choose>
                        <iaixsl:when test="page/@search_title">
                            <title><iaixsl:value-of select="page/@search_title" disable-output-escaping="yes"/></title>
                        </iaixsl:when>
                        <iaixsl:when test="page/@projector_title">
                            <title><iaixsl:value-of select="page/@projector_title" disable-output-escaping="yes"/> | <iaixsl:value-of select="$meta_breadcrumb_full" disable-output-escaping="yes"/><iaixsl:value-of select="page/@title" disable-output-escaping="yes"/></title>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <title><iaixsl:value-of select="$meta_breadcrumb" disable-output-escaping="yes"/><iaixsl:value-of select="page/@title" disable-output-escaping="yes"/><iaixsl:if test="page/@title2"> | <iaixsl:value-of select="page/@title2" disable-output-escaping="yes"/></iaixsl:if></title>
                        </iaixsl:otherwise>
                    </iaixsl:choose>
                    <iaixsl:choose>
                        <iaixsl:when test="page/@search_keywords">
                            <meta name="keywords"><iaixsl:attribute name="content"><iaixsl:value-of select="page/@search_keywords"/></iaixsl:attribute></meta>
                        </iaixsl:when>
                        <iaixsl:when test="page/@projector_keywords">
                            <meta name="keywords"><iaixsl:attribute name="content"><iaixsl:value-of select="page/@projector_keywords"/> | <iaixsl:value-of select="$meta_breadcrumb_full"/><iaixsl:value-of select="$meta_subcategories"/><iaixsl:value-of select="page/@keywords"/></iaixsl:attribute></meta>
                        </iaixsl:when>
                        <iaixsl:when test="not(page/@keywords='')">
                            <meta name="keywords">
                                <iaixsl:attribute name="content">
                                    <iaixsl:value-of select="$meta_breadcrumb_full"/>
                                    <iaixsl:value-of select="$meta_subcategories"/>
                                    <iaixsl:choose>
                                        <iaixsl:when test="not(page/@keywords='') ">
                                            <iaixsl:value-of select="page/@keywords"/>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </iaixsl:attribute>
                            </meta>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                        </iaixsl:otherwise>
                    </iaixsl:choose>
                    <iaixsl:choose>
                        <iaixsl:when test="page/@search_description">
                            <meta name="description"><iaixsl:attribute name="content"><iaixsl:value-of select="page/@search_description"/></iaixsl:attribute></meta>
                        </iaixsl:when>
                        <iaixsl:when test="page/@projector_description">
                            <meta name="description"><iaixsl:attribute name="content"><iaixsl:value-of select="page/@projector_description"/> | <iaixsl:value-of select="$meta_breadcrumb_full"/><iaixsl:value-of select="$meta_subcategories"/><iaixsl:value-of select="page/@description"/></iaixsl:attribute></meta>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <meta name="description"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_breadcrumb"/><iaixsl:value-of select="$meta_subcategories"/><iaixsl:value-of select="page/@description"/></iaixsl:attribute></meta>
                        </iaixsl:otherwise>
                    </iaixsl:choose>
                    
                    <link rel="shortcut icon"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/favicon.ico</iaixsl:attribute></link>
                    <iaixsl:choose>
                        <iaixsl:when test="/shop/mask/@scheme_color">
                            <meta name="theme-color"><iaixsl:attribute name="content"><iaixsl:value-of select="/shop/mask/@scheme_color"/></iaixsl:attribute></meta>
                            <meta name="msapplication-navbutton-color"><iaixsl:attribute name="content"><iaixsl:value-of select="/shop/mask/@scheme_color"/></iaixsl:attribute></meta>
                            <meta name="apple-mobile-web-app-status-bar-style"><iaixsl:attribute name="content"><iaixsl:value-of select="/shop/mask/@scheme_color"/></iaixsl:attribute></meta>
                        </iaixsl:when>
                        <iaixsl:when test="$themeColor">
                            <meta name="theme-color"><iaixsl:attribute name="content"><iaixsl:value-of select="$themeColor"/></iaixsl:attribute></meta>
                            <meta name="msapplication-navbutton-color"><iaixsl:attribute name="content"><iaixsl:value-of select="$themeColor"/></iaixsl:attribute></meta>
                            <meta name="apple-mobile-web-app-status-bar-style"><iaixsl:attribute name="content"><iaixsl:value-of select="$themeColor"/></iaixsl:attribute></meta>
                        </iaixsl:when>
                    </iaixsl:choose>
                    <iaixsl:choose>
                        <iaixsl:when test="$asyncJS">
                            <iaixsl:choose>
                                <iaixsl:when test="/shop/@preview &gt; 0">
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/style.css</iaixsl:attribute></link>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/style.css.gzip?r=1685223127</iaixsl:attribute></link>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <iaixsl:choose>
                                <iaixsl:when test="/shop/@preview &gt; 0">
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/style.css</iaixsl:attribute></link>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/style.css.gzip?r=1685223127</iaixsl:attribute></link>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </iaixsl:otherwise>
                    </iaixsl:choose>
                    <script>
                        var app_shop = {
                            urls: {
                                prefix: 'data="/gfx/'.replace('data="', '') + '<iaixsl:value-of select="language/@id"/>/'
                            },
                            vars: {},
                            txt: {},
                            fn: {},
                            fnrun: {},
                            files: []
                        };
                    </script>
                    <iaixsl:variable name="projector_script_bottom">true</iaixsl:variable>
                    <iaixsl:if test="not(/shop/page/@type = 'main') and not(/shop/page/@type = 'search') and not(/shop/page/@type = 'place-order') and not(/shop/page/@type = 'noproduct') and not($projector_script_bottom and /shop/page/@type = 'projector')">
                        <iaixsl:choose>
                            <iaixsl:when test="/shop/@preview &gt; 0">
                                <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/shop.js</iaixsl:attribute></script>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1685223127</iaixsl:attribute></script>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                    </iaixsl:if>
                    <iaixsl:text disable-output-escaping="yes"/>
                    <iaixsl:variable name="meta_variable_expires">never</iaixsl:variable>
                    <iaixsl:variable name="meta_variable_distribution">global</iaixsl:variable>
                    <iaixsl:variable name="meta_variable_rating">general</iaixsl:variable>
                    <iaixsl:choose>
                        <iaixsl:when test="/shop/page/@meta_robots">
                            <meta name="robots">
                                <iaixsl:attribute name="content"><iaixsl:value-of select="/shop/page/@meta_robots"/></iaixsl:attribute>
                            </meta>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <meta name="robots">
                                <iaixsl:attribute name="content">INDEX,FOLLOW</iaixsl:attribute>
                            </meta>
                        </iaixsl:otherwise>
                    </iaixsl:choose>
                    <iaixsl:if test="not($html5_layout)">
                        <iaixsl:if test="$meta_variable_expires">
                            <meta name="expires"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_variable_expires"/></iaixsl:attribute></meta>
                        </iaixsl:if>
                        <iaixsl:if test="$meta_variable_distribution">
                            <meta name="distribution"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_variable_distribution"/></iaixsl:attribute></meta>
                        </iaixsl:if>
                    </iaixsl:if>
                    <iaixsl:if test="$meta_variable_rating">
                        <meta name="rating"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_variable_rating"/></iaixsl:attribute></meta>
                    </iaixsl:if>
                    <iaixsl:if test="/shop/iai/@meta_author">
                        <meta name="Author">
                            <iaixsl:attribute name="content"><iaixsl:value-of select="/shop/iai/@meta_author"/></iaixsl:attribute>
                        </meta>
                    </iaixsl:if>
                    <iaixsl:if test="page/facebook_comments">
                        <meta property="fb:admins">
                            <iaixsl:attribute name="content"><iaixsl:value-of select="/shop/page/facebook_comments/@admin_id"/></iaixsl:attribute>
                        </meta>
                        <meta property="fb:app_id">
                            <iaixsl:attribute name="content"><iaixsl:value-of select="/shop/page/facebook_comments/@app_id"/></iaixsl:attribute>
                        </meta>
                    </iaixsl:if>
                    <iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_meta_tags')"/>
                    
                    <iaixsl:if test="/shop/page/@type = 'main' and count(commercial_banner/link) &gt; 0">
                        <iaixsl:if test="commercial_banner/link[1]/image or commercial_banner/link[1]/image_desktop or commercial_banner/link[1]/image_tablet or commercial_banner/link[1]/image_mobile">
                            <iaixsl:if test="commercial_banner/link[1]/image">
                                <link rel="preload" as="image"><iaixsl:attribute name="href"><iaixsl:value-of select="commercial_banner/link[1]/image/@src"/></iaixsl:attribute></link>
                            </iaixsl:if>
                            <iaixsl:if test="commercial_banner/link[1]/image_desktop">
                                <link rel="preload" as="image"><iaixsl:attribute name="href"><iaixsl:value-of select="commercial_banner/link[1]/image_desktop/@src"/></iaixsl:attribute></link>
                            </iaixsl:if>
                            <iaixsl:if test="commercial_banner/link[1]/image_tablet">
                                <link rel="preload" as="image"><iaixsl:attribute name="href"><iaixsl:value-of select="commercial_banner/link[1]/image_tablet/@src"/></iaixsl:attribute></link>
                            </iaixsl:if>
                            <iaixsl:if test="commercial_banner/link[1]/image_mobile">
                                <link rel="preload" as="image"><iaixsl:attribute name="href"><iaixsl:value-of select="commercial_banner/link[1]/image_mobile/@src"/></iaixsl:attribute></link>
                            </iaixsl:if>
                        </iaixsl:if>
                        <style>
                            <iaixsl:if test="commercial_banner/link/image">
                                #main_banner1.skeleton li {
                                <iaixsl:for-each select="commercial_banner/link">
                                    <iaixsl:sort select="image/@height"/>
                                    <iaixsl:if test="position() = 1">
                                        padding-top: calc(<iaixsl:value-of select="image/@height"/>/<iaixsl:value-of select="image/@width"/>* 100%);
                                    </iaixsl:if>
                                </iaixsl:for-each>
                                }
                            </iaixsl:if>

                            <iaixsl:if test="commercial_banner/link/image_desktop">
                                #main_banner1.skeleton li &gt; a {
                                <iaixsl:for-each select="commercial_banner/link">
                                    <iaixsl:sort select="image_desktop/@height"/>
                                    <iaixsl:if test="position() = 1">
                                        padding-top: calc(<iaixsl:value-of select="image_desktop/@height"/>/<iaixsl:value-of select="image_desktop/@width"/>* 100%);
                                    </iaixsl:if>
                                </iaixsl:for-each>
                                }
                                @media only screen and (max-width: 979px){#main_banner1.skeleton li &gt; a {
                                <iaixsl:for-each select="commercial_banner/link">
                                    <iaixsl:sort select="image_tablet/@height"/>
                                    <iaixsl:if test="position() = 1">
                                        padding-top: calc(<iaixsl:value-of select="image_tablet/@height"/>/<iaixsl:value-of select="image_desktop/@width"/>* 100%);
                                    </iaixsl:if>
                                </iaixsl:for-each>
                                }}
                                @media only screen and (max-width: 757px){#main_banner1.skeleton li &gt; a {
                                <iaixsl:for-each select="commercial_banner/link">
                                    <iaixsl:sort select="image_mobile/@height"/>
                                    <iaixsl:if test="position() = 1">
                                        padding-top: calc(<iaixsl:value-of select="image_mobile/@height"/>/<iaixsl:value-of select="image_mobile/@width"/>* 100%);
                                    </iaixsl:if>
                                </iaixsl:for-each>
                                }}
                            </iaixsl:if>
                        </style>
                    </iaixsl:if>
                </head>
                <iaixsl:variable name="meta_body_id"/>
                <iaixsl:text disable-output-escaping="yes">&lt;body</iaixsl:text><iaixsl:if test="action/set_render/item/@name = 'popup'"><iaixsl:text disable-output-escaping="yes"> class="popup" </iaixsl:text></iaixsl:if><iaixsl:text disable-output-escaping="yes">&gt;</iaixsl:text>

                <iaixsl:if test="$meta_body_id">
                    <iaixsl:attribute name="id"><iaixsl:value-of select="$meta_body_id"/></iaixsl:attribute>
                </iaixsl:if>
                <iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_top_scripts')"/>
            </iaixsl:if>
            <iaixsl:variable name="valuepricedesc">De prijs voor jou</iaixsl:variable>
            <iaixsl:variable name="discountpricedesc">Overpriced</iaixsl:variable>
            <iaixsl:variable name="promopricedesc">Promotie</iaixsl:variable>
            <iaixsl:variable name="detalpricedesc">Winkelprijs</iaixsl:variable>
            <iaixsl:variable name="rebatepricedesc">Korting</iaixsl:variable>
            <iaixsl:variable name="nettopricedesc">Nettoprijs</iaixsl:variable>
            <iaixsl:variable name="signbeforeprice">false</iaixsl:variable>
            <iaixsl:variable name="signbetweenpricecurrency"> </iaixsl:variable>
            <iaixsl:variable name="showcomparelink">1</iaixsl:variable>

            <iaixsl:variable name="browser_supp_visible">true</iaixsl:variable>
            <iaixsl:if test="$browser_supp_visible">
                <script>
                    var script = document.createElement('script');
                    script.src = app_shop.urls.prefix + 'envelope.js';

                    document.getElementsByTagName('body')[0].insertBefore(script, document.getElementsByTagName('body')[0].firstChild);
                </script>
            </iaixsl:if>

            <!--Układ graficzny (layout, 107419.1)-->
            <div id="container">
                <iaixsl:attribute name="class"><iaixsl:value-of select="page/@type"/>_page <iaixsl:if test="/shop/page/login/@shop_registration = 'true'">registration_page </iaixsl:if>container</iaixsl:attribute>

                <iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'head')">
                    <header>
                        <iaixsl:attribute name="class">d-flex flex-nowrap flex-md-wrap<iaixsl:if test="count(commercial_banner/link) &gt; 0"> commercial_banner</iaixsl:if></iaixsl:attribute>
                        <!--Javascript (menu_javascript, 116885.1)-->
            
            <script class="ajaxLoad">
                <iaixsl:if test="( page/@type = 'basketedit') or ( page/@type='login' and page/login/onceorder/@display='y') or ((page/@type = 'client-new') and not(page/client-data/@edit = 'true') and (page/client-data/@afterlogin = 'order')) or ( page/@type = 'order1') or ( page/@type = 'order-nonstandardized') or ( page/@type = 'pickup-sites') or ( page/@type = 'order2') or ( page/@type = 'client-save') or ( page/@type = 'prepaid') or ( page/@type = 'order-payment') or ( page/@type = 'order-newpayment') or ( page/@type = 'rma_products' ) or ( page/@type = 'return_products' ) or (page/@type = 'client-orders') or (page/@type = 'rma-add') or (page/@type = 'place-order')">
                   document.getElementsByTagName('html')[0].className += ' cop_site';
                </iaixsl:if>
                <iaixsl:if test="/shop/action_alert/@type">
                    document.getElementsByTagName('html')[0].className += " <iaixsl:value-of select="/shop/action_alert/@type"/>";
                </iaixsl:if>
                app_shop.vars.vat_registered = "<iaixsl:value-of select="/shop/contact/owner/@vat_registered"/>";
                app_shop.vars.currency_format = "<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_format"/>";
                <iaixsl:if test="/shop/currency/option[@selected='true']/@currency_before_value">
                    app_shop.vars.currency_before_value = <iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_before_value"/>;
                </iaixsl:if>
                <iaixsl:if test="/shop/currency/option[@selected='true']/@currency_space">
                    app_shop.vars.currency_space = <iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_space"/>;
                </iaixsl:if>
                app_shop.vars.symbol = "<iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/>";
                app_shop.vars.id= "<iaixsl:value-of select="/shop/currency/option[@selected='true']/@id"/>";
                app_shop.vars.baseurl = "<iaixsl:value-of select="/shop/@baseurl"/>";
                app_shop.vars.sslurl= "<iaixsl:value-of select="/shop/@sslurl"/>";
                app_shop.vars.curr_url= "<iaixsl:value-of select="/shop/navigation/current/@curr_url"/>";
                <iaixsl:if test="/shop/basket/@login">
                    app_shop.vars.logged = 1;
                </iaixsl:if>

                var currency_decimal_separator = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_decimal_separator"/>';
                var currency_grouping_separator = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_grouping_separator"/>';

                <iaixsl:if test="/shop/form_data/upload_file/blacklist_extension/param">
                    app_shop.vars.blacklist_extension = [<iaixsl:for-each select="/shop/form_data/upload_file/blacklist_extension/param"><iaixsl:if test="not(position()=1)">,</iaixsl:if>"<iaixsl:value-of select="@type"/>"</iaixsl:for-each>];
                </iaixsl:if>
                <iaixsl:if test="/shop/form_data/upload_file/blacklist_mime/param">
                    app_shop.vars.blacklist_mime = [<iaixsl:for-each select="/shop/form_data/upload_file/blacklist_mime/param"><iaixsl:if test="not(position()=1)">,</iaixsl:if>"<iaixsl:value-of select="@type"/>"</iaixsl:for-each>];
                </iaixsl:if>
                <iaixsl:if test="/shop/contact/link/@url">
                    app_shop.urls.contact = "<iaixsl:value-of select="/shop/contact/link/@url"/>";
                </iaixsl:if>
            </script>
            <div id="viewType" style="display:none"/>
        <!--Sugerowany sklep dla języka (menu_suggested_shop_for_language, 112162.1)-->
      <iaixsl:variable name="redirection_language_active">redirection__language --active</iaixsl:variable>

      <iaixsl:if test="count(/shop/select_language/language/option) &gt; 1">
        <div class="redirection d-none">
          <div class="redirection__background"/>
          <div class="redirection__suggestions row">
            <div class="redirection__close"/>
            <div class="redirection__wrapper --title col-12 col-md-6 ">
              <strong class="redirection__title">Kies uw taal<br/>and country</strong>
            </div>
            <div class="redirection__wrapper --configurator col-12 col-md-6">
              <div class="redirection__selector --language">
                <div class="redirection__column">
                  <iaixsl:for-each select="/shop/select_language/language">
                    <div class="redirection__language">
                      <iaixsl:if test="option/@selected">
                        <iaixsl:attribute name="class"><iaixsl:value-of select="$redirection_language_active"/></iaixsl:attribute>
                      </iaixsl:if>
                      <strong>
                        <span>
                          <iaixsl:attribute name="class">flag flag_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                        </span>
                        <span class="redirection__language_name"><iaixsl:value-of select="@name"/></span>
                      </strong>
                      <div class="redirection__selector --country">
                        <iaixsl:for-each select="option">
                          <div class="f-group --radio --small">
                            <input type="radio" name="shop_country" class="f-control">
                              <iaixsl:attribute name="id"><iaixsl:value-of select="../@id"/>_<iaixsl:value-of select="."/></iaixsl:attribute>
                              <iaixsl:attribute name="data-link"><iaixsl:value-of select="@site"/></iaixsl:attribute>
                              <iaixsl:if test="@selected">
                                <iaixsl:attribute name="checked">true</iaixsl:attribute>
                              </iaixsl:if>
                            </input>
                            <label class="f-label">
                              <iaixsl:attribute name="for"><iaixsl:value-of select="../@id"/>_<iaixsl:value-of select="."/></iaixsl:attribute>
                              <iaixsl:value-of select="."/>
                            </label>
                          </div>
                        </iaixsl:for-each>
                      </div>
                    </div>
                  </iaixsl:for-each>
                </div>
              </div>
              <div class="redirection__submit">
                <a class="redirection__button btn --medium --solid" href="#redirect">
                  <iaixsl:if test="/shop/select_language/language/option[@selected = 'true']">
                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/select_language/language/option[@selected = 'true']/@site"/></iaixsl:attribute>
                  </iaixsl:if>
                  <iaixsl:attribute name="title">OK</iaixsl:attribute>OK</a>
              </div>
            </div>
          </div>
        </div>
      </iaixsl:if>
    <!--Buttony reklamowe (menu_buttons, 116900.1)-->
			<iaixsl:if test="count(commercial_button/link)">
				<div id="menu_buttons" class="container">
					<div class="row menu_buttons_sub">
						<iaixsl:for-each select="commercial_button/link[position() = 1]">
							<div class="menu_button_wrapper">
                                <iaixsl:attribute name="class">menu_button_wrapper col-12</iaixsl:attribute>
								

							<iaixsl:choose>
								<iaixsl:when test="not(html)">
									<iaixsl:choose>
										<iaixsl:when test="@href">
											<a target="_self">
											<iaixsl:if test="@target"><iaixsl:attribute name="target"><iaixsl:value-of select="@target"/></iaixsl:attribute></iaixsl:if>
												<iaixsl:attribute name="href"><iaixsl:value-of select="@href"/></iaixsl:attribute>
												<iaixsl:if test="text"><iaixsl:attribute name="title"><iaixsl:value-of select="text"/></iaixsl:attribute></iaixsl:if>
												<iaixsl:choose>
													<iaixsl:when test="image or image_desktop or image_tablet or image_mobile">
														<img src="/gfx/pol/loader.gif?r=1685223127">
															<iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
															<iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
															<iaixsl:if test="image_desktop or image_tablet or image_mobile">
																<iaixsl:attribute name="class">rwd-src</iaixsl:attribute>
															</iaixsl:if>

															<iaixsl:if test="image/@src">
																<iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
															</iaixsl:if>

															<iaixsl:if test="image_desktop/@src">
																<iaixsl:attribute name="data-src_desktop"><iaixsl:value-of select="image_desktop/@src"/></iaixsl:attribute>
															</iaixsl:if>

															<iaixsl:if test="image_tablet/@src">
																<iaixsl:attribute name="data-src_tablet"><iaixsl:value-of select="image_tablet/@src"/></iaixsl:attribute>
															</iaixsl:if>

															<iaixsl:if test="image_mobile/@src">
																<iaixsl:attribute name="data-src_mobile"><iaixsl:value-of select="image_mobile/@src"/></iaixsl:attribute>
															</iaixsl:if>
														</img>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:value-of disable-output-escaping="yes" select="text"/>
													</iaixsl:otherwise>
												</iaixsl:choose>
											</a>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:choose>
												<iaixsl:when test="image or image_desktop or image_tablet or image_mobile">
													<img src="/gfx/pol/loader.gif?r=1685223127">
														<iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
														<iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
														<iaixsl:if test="image_desktop or image_tablet or image_mobile">
															<iaixsl:attribute name="class">rwd-src</iaixsl:attribute>
														</iaixsl:if>

														<iaixsl:if test="image/@src">
															<iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
														</iaixsl:if>

														<iaixsl:if test="image_desktop/@src">
															<iaixsl:attribute name="data-src_desktop"><iaixsl:value-of select="image_desktop/@src"/></iaixsl:attribute>
														</iaixsl:if>

														<iaixsl:if test="image_tablet/@src">
															<iaixsl:attribute name="data-src_tablet"><iaixsl:value-of select="image_tablet/@src"/></iaixsl:attribute>
														</iaixsl:if>

														<iaixsl:if test="image_mobile/@src">
															<iaixsl:attribute name="data-src_mobile"><iaixsl:value-of select="image_mobile/@src"/></iaixsl:attribute>
														</iaixsl:if>
													</img>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:value-of disable-output-escaping="yes" select="text"/>
												</iaixsl:otherwise>
											</iaixsl:choose>
									</iaixsl:otherwise>
									</iaixsl:choose>
								</iaixsl:when>
								<iaixsl:otherwise>
									<iaixsl:value-of disable-output-escaping="yes" select="html"/>
								</iaixsl:otherwise>
							</iaixsl:choose>
							</div>
						</iaixsl:for-each>
					</div>
				</div>
			</iaixsl:if>
		<!--Górne menu (menu_top, 117908.1)-->

        <div id="logo" class="col-md-3 col-lg-4 d-flex align-items-center">
            <iaixsl:if test="mask/top2/link/image/@src and (mask/top2/link/image/@width&gt;1 or mask/top2/link/image/@height &gt; 1)"><iaixsl:attribute name="data-bg"><iaixsl:value-of select="mask/top2/link/image/@src"/></iaixsl:attribute></iaixsl:if>
            <iaixsl:choose>
                <iaixsl:when test="/shop/page/@type = 'main'">
                    <h1>
                        <a>
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/mask/top/link/@href"/></iaixsl:attribute>
                            <iaixsl:attribute name="target"><iaixsl:value-of select="/shop/mask/top/link/@target"/></iaixsl:attribute>
                            <iaixsl:if test="/shop/mask/top/link/image/@src">
                                <img>
                                    <iaixsl:attribute name="src"><iaixsl:value-of select="/shop/mask/top/link/image/@src"/></iaixsl:attribute>
                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/mask/top/link/description"/></iaixsl:attribute>
                                    <iaixsl:attribute name="width"><iaixsl:value-of select="mask/top/link/image/@width"/></iaixsl:attribute>
                                    <iaixsl:attribute name="height"><iaixsl:value-of select="mask/top/link/image/@height"/></iaixsl:attribute>
                                </img>
                            </iaixsl:if>
                        </a>
                    </h1>
                </iaixsl:when>
                <iaixsl:otherwise>
                    <a>
                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/mask/top/link/@href"/></iaixsl:attribute>
                        <iaixsl:attribute name="target"><iaixsl:value-of select="/shop/mask/top/link/@target"/></iaixsl:attribute>
                        <iaixsl:if test="/shop/mask/top/link/image/@src">
                            <img>
                                <iaixsl:attribute name="src"><iaixsl:value-of select="/shop/mask/top/link/image/@src"/></iaixsl:attribute>
                                <iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/mask/top/link/description"/></iaixsl:attribute>
                                <iaixsl:attribute name="width"><iaixsl:value-of select="mask/top/link/image/@width"/></iaixsl:attribute>
                                <iaixsl:attribute name="height"><iaixsl:value-of select="mask/top/link/image/@height"/></iaixsl:attribute>
                            </img>
                        </iaixsl:if>
                    </a>
                </iaixsl:otherwise>
            </iaixsl:choose>
            
        </div>
        
        <iaixsl:if test="/shop/mask/@rwd_pc">
            <iaixsl:if test="/shop/mask/@rwd_tablet"/>
            <iaixsl:if test="/shop/mask/@rwd_smartphone"/>
        </iaixsl:if>

        <!--Szybkie wyszukiwanie (menu_search, 106472.1)-->
	        <form action="/search.php" method="get" id="menu_search" class="col-md-4">
	            <iaixsl:if test="/shop/action/search/@url"><iaixsl:attribute name="action"><iaixsl:value-of select="/shop/action/search/@url"/></iaixsl:attribute></iaixsl:if>

	            <label class="d-md-none"><i class="icon-search"></i></label>
	            
            	<div>
		            <div class="form-group">
		                <input id="menu_search_text" type="text" name="text">
			                <iaixsl:attribute name="class">catcomplete</iaixsl:attribute>
			                <iaixsl:attribute name="placeholder">Wat zoek je?</iaixsl:attribute>
		                    
		                    <iaixsl:if test="/shop/page/search_params/text">
		                        <iaixsl:attribute name="placeholder"><iaixsl:value-of select="/shop/page/search_params/text/@value"/></iaixsl:attribute>
		                    </iaixsl:if>
			            </input>
		            </div>
		            <button type="submit">
		                <i class="icon-search"></i>
		            </button>

		            <a href="/searching.php"><iaixsl:if test="/shop/action/searching/@url"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/searching/@url"/></iaixsl:attribute></iaixsl:if><iaixsl:attribute name="title"/><i class="icon-remove d-md-none"></i></a>
	            </div>
	        </form>
        <!--Ustawienia języka oraz walut (menu_settings, 109097.1)-->

            <iaixsl:variable name="display_menu_additional">Inloggen</iaixsl:variable>
            <iaixsl:variable name="login_title"/>
            <iaixsl:variable name="account_title"/>
            <iaixsl:variable name="list_title"/>

            <div id="menu_settings" class="col-md-2 px-0 px-md-5 d-flex align-items-center justify-content-center justify-content-lg-end">
                <iaixsl:if test="(count(/shop/currency/option) &gt; 1) or (count(/shop/language/option) &gt; 1) or (count(/shop/countries/country) &gt; 1)">
                    <div class="open_trigger d-md-none">
                        <span>
                            <iaixsl:choose>
                                <iaixsl:when test="count(/shop/countries/country) &gt; 1 or count(/shop/language/option) &gt; 1 or count(/shop/currency/option) &gt; 1">
                                    <iaixsl:attribute name="class">d-none d-md-inline-block flag_txt</iaixsl:attribute>
                                    <i class="icon-truck"></i>
                                </iaixsl:when>

                            </iaixsl:choose>
                        </span>

                        <div class="menu_settings_wrapper d-md-none">
                            <iaixsl:if test="/shop/language/option/@selected or /shop/currency/option/@selected">
                                <div class="menu_settings_inline">
                                    <div class="menu_settings_header">

                                    </div>
                                    <div class="menu_settings_content">
                                        <span class="menu_settings_flag">
                                            <iaixsl:attribute name="class">menu_settings_flag flag flag_<iaixsl:value-of select="/shop/language/option[@selected='true']/@id"/></iaixsl:attribute>
                                        </span>
                                        <strong class="menu_settings_value">
                                            <span class="menu_settings_language"><iaixsl:value-of select="/shop/language/option[@selected='true']/@name"/></span>
                                            <span><iaixsl:text> | </iaixsl:text></span>
                                            <span class="menu_settings_currency"><iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/></span>
                                        </strong>
                                    </div>
                                </div>
                            </iaixsl:if>
                            <iaixsl:if test="/shop/countries/country/@selected">
                                <div class="menu_settings_inline">
                                    <div class="menu_settings_header">

                                    </div>
                                    <div class="menu_settings_content">
                                        <strong class="menu_settings_value">
                                            <iaixsl:value-of select="/shop/countries/country[@selected='true']/@name"/>
                                        </strong>
                                    </div>
                                </div>
                            </iaixsl:if>
                        </div>


                    </div>

                    <iaixsl:if test="(count(/shop/currency/option) &gt; 1) or (count(/shop/language/option) &gt; 1) or (count(/shop/countries/country) &gt; 1)">
                        <form action="/settings.php" method="post">

                            <iaixsl:if test="/shop/action/settings/@url">
                                <iaixsl:attribute name="action"><iaixsl:value-of select="/shop/action/settings/@url"/></iaixsl:attribute>
                            </iaixsl:if>

                            <ul class="bg_alter">
                                
                                <iaixsl:if test="count(/shop/language/option) &gt; 1">
                                    <li>
                                        <div class="form-group">
                                                <label class="menu_settings_lang_label">Language</label>

                                            <iaixsl:for-each select="/shop/language/option">
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="lang">
                                                            <iaixsl:if test="@selected='true'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                        </input>
                                                        <span>
                                                            <iaixsl:attribute name="class">flag flag_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                        </span>
                                                        <span><iaixsl:value-of select="@name"/></span>
                                                    </label>
                                                </div>
                                            </iaixsl:for-each>
                                        </div>
                                    </li>
                                </iaixsl:if>

                                <iaixsl:if test="count(/shop/currency/option) &gt; 1 or count(/shop/countries/country) &gt; 1">
                                    <li>
                                        <iaixsl:if test="count(/shop/currency/option) &gt; 1">
                                            <div class="form-group">
                                                <label for="menu_settings_curr">Valuta</label>

                                                <div class="select-after">
                                                    <select class="form-control" name="curr" id="menu_settings_curr">
                                                        <iaixsl:for-each select="/shop/currency/option">
                                                            <option>
                                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="@selected='true'">
                                                                        <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                                        <iaixsl:value-of select="@symbol"/>
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                        <iaixsl:value-of select="@symbol"/>(1<iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/> = <iaixsl:value-of select="@rate"/>  <iaixsl:value-of select="@symbol"/>)
                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                            </option>
                                                        </iaixsl:for-each>
                                                    </select>
                                                </div>
                                            </div>
                                        </iaixsl:if>
                                        <iaixsl:if test="count(/shop/countries/country) &gt; 1">
                                            <div class="form-group">
                                                <label for="menu_settings_country">Levering aan</label>

                                                <div class="select-after">
                                                    <select class="form-control" name="country" id="menu_settings_country">
                                                        <iaixsl:for-each select="/shop/countries/country">
                                                            <option>
                                                                <iaixsl:if test="@selected='true'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>
                                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                <iaixsl:value-of select="@name"/>
                                                            </option>
                                                        </iaixsl:for-each>
                                                    </select>
                                                </div>
                                            </div>
                                        </iaixsl:if>
                                    </li>
                                </iaixsl:if>
                                <li class="buttons">
                                    <button class="btn --solid --large" type="submit">De wijzigingen toepassen</button>
                                </li>
                            </ul>
                        </form>
                    </iaixsl:if>
                </iaixsl:if>

                <iaixsl:if test="$display_menu_additional">
                    <div id="menu_additional">
                        <a class="account_link">
                            <iaixsl:if test="/shop/action/login/@url">
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>
                            </iaixsl:if>
                            <iaixsl:choose>
                                <iaixsl:when test="basket/@login and not(basket/@login = '')">
									<iaixsl:if test="$account_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$account_title"/></iaixsl:attribute></iaixsl:if>Uw rekening</iaixsl:when>
                                <iaixsl:otherwise>
									<iaixsl:if test="$login_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$login_title"/></iaixsl:attribute></iaixsl:if>
                                    <iaixsl:value-of disable-output-escaping="yes" select="$display_menu_additional"/>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </a>
                        <a href="/basketedit.php?mode=2" class="wishlist_link">Boodschappenlijst<iaixsl:if test="$list_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$list_title"/></iaixsl:attribute></iaixsl:if>
                            <span><iaixsl:choose><iaixsl:when test="wishes/@count"><iaixsl:value-of select="wishes/@count"/></iaixsl:when><iaixsl:otherwise>0</iaixsl:otherwise></iaixsl:choose></span>
                        </a>
                    </div>
                </iaixsl:if>
            </div>
        <!--Menu koszyka (menu_basket, 111853.1)-->

            <iaixsl:variable name="basket_title"/>

            <div id="menu_basket" class="col-md-2 px-0 px-md-3">
                <a href="/basketedit.php?mode=1">
					<iaixsl:if test="$basket_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$basket_title"/></iaixsl:attribute></iaixsl:if>
                     <iaixsl:if test="/shop/page/@cache_html = 'true' ">
                              <iaixsl:attribute name="style">display: none;</iaixsl:attribute>
                     </iaixsl:if>
                    <iaixsl:if test="/shop/action/basket/@url">
                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/>?mode=1</iaixsl:attribute>
                    </iaixsl:if>

                    
                    <strong><iaixsl:value-of disable-output-escaping="yes" select="basket/@cost_formatted"/>
                        <iaixsl:if test="@points_used &gt; 0">
                            <small>
                                 + <iaixsl:value-of disable-output-escaping="yes" select="basket/@points_used"/>punt</small>
                        </iaixsl:if>
                    </strong>

                    <span class="badge badge-info"><iaixsl:if test="basket/@count &gt; 0"><iaixsl:value-of disable-output-escaping="yes" select="basket/@count"/></iaixsl:if></span>

                </a>
                <div class="d-none">
                    <iaixsl:choose>
                        <iaixsl:when test="wishes/@count">
                            <a class="wishes_link link" href="/basketedit.php?mode=2" rel="nofollow">

                                    <iaixsl:if test="/shop/action/basket/@url">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/>?mode=2</iaixsl:attribute>
                                    </iaixsl:if>
                                    <iaixsl:attribute name="title"/>
                                    <span>(<iaixsl:value-of select="wishes/@count"/>)</span>

                                    <span class="badge badge-info"><iaixsl:value-of select="wishes/@count"/></span>
                            </a>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <a class="wishes_link link" href="/basketedit.php?mode=2" rel="nofollow">

                                    <iaixsl:if test="/shop/action/basket/@url">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/>?mode=2</iaixsl:attribute>
                                    </iaixsl:if>
                                    <iaixsl:attribute name="title"/>

                                <span>(0)</span></a>
                        </iaixsl:otherwise>
                    </iaixsl:choose>
                    
                    <a class="basket_link link" href="/basketedit.php?mode=1" rel="nofollow">

                        <iaixsl:if test="/shop/action/basket/@url">
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/>?mode=1</iaixsl:attribute>
                        </iaixsl:if>
                        <iaixsl:attribute name="title"/>
                        <iaixsl:if test="basket/@count = '0'">
                            <iaixsl:attribute name="title"/>
                        </iaixsl:if>
                        
                    </a>
                </div>

                <iaixsl:if test="/shop/action/sites/@session_share_disabled">
                    <script>
                        app_shop.vars.session_share = "<iaixsl:value-of select="/shop/action/sites/@session_share"/>";
                        <iaixsl:if test="/shop/action/sites/site">
                        app_shop.vars.sites = [<iaixsl:for-each select="/shop/action/sites/site"><iaixsl:if test="not(position()=1)">,</iaixsl:if>"<iaixsl:value-of select="@url"/>"</iaixsl:for-each>];
                        </iaixsl:if>
                    </script>
                </iaixsl:if>

                <iaixsl:if test="/shop/page/@cache_html = 'true' ">
                    <script>
                        app_shop.vars.cache_html = true;
                    </script>
                </iaixsl:if>


                <iaixsl:if test="/shop/basket/product">
                  <iaixsl:if test="/shop/page/@cache_basketwishes"> </iaixsl:if>
                  <iaixsl:if test="/shop/page/@cache_basket"> </iaixsl:if>
                </iaixsl:if>

            </div>
        <!--Menu - Drzewo 1 (menu_categories, 106527.1)-->
        <iaixsl:variable name="dlmenu_showall">+ Toon alle</iaixsl:variable>
        <iaixsl:variable name="gfx_2lvl_show"/>
        <iaixsl:variable name="menu_categories_label"/>
        <iaixsl:variable name="current_item"><iaixsl:value-of select="/shop/navigation/current/@ni"/></iaixsl:variable>

        <nav id="menu_categories" class="col-md-12 px-0 wide">
            <iaixsl:if test="$menu_categories_label and not($menu_categories_label = '')">
                <h2 class="big_label">
                    <a href="/categories.php">
                        <iaixsl:attribute name="title"/>
                        <iaixsl:value-of select="$menu_categories_label"/>
                    </a>
                </h2>
            </iaixsl:if>
            <button type="button" class="navbar-toggler">
                <i class="icon-reorder"></i>
            </button>
            <div class="navbar-collapse" id="menu_navbar">
                <ul class="navbar-nav">
                    <iaixsl:for-each select="navigation/item">
                        <li class="nav-item">
                        <iaixsl:if test="( (@ni = $current_item) or (item/@ni = $current_item)  or (item/item/@ni = $current_item)  or (item/item/item/@ni = $current_item) )">
                            <iaixsl:attribute name="class">nav-item active</iaixsl:attribute>
                        </iaixsl:if>
                            <iaixsl:choose>
                                <iaixsl:when test="@link and @link != '##'">
                                    <iaixsl:text disable-output-escaping="yes">&lt;a  href="</iaixsl:text>
                                    <iaixsl:value-of select="@link"/><iaixsl:text disable-output-escaping="yes">" target="</iaixsl:text><iaixsl:value-of select="@target"/>
                                    <iaixsl:text disable-output-escaping="yes">" title="</iaixsl:text><iaixsl:value-of select="@name"/>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:text disable-output-escaping="yes">&lt;span</iaixsl:text>
                                    <iaixsl:text disable-output-escaping="yes"> title="</iaixsl:text>
                                    <iaixsl:value-of select="@name"/>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                            <iaixsl:text disable-output-escaping="yes">" class="nav-link</iaixsl:text>
                            <iaixsl:if test="(@ni = /shop/navigation/current/@ni) or (item//@ni = /shop/navigation/current/@ni)">
                                <iaixsl:text disable-output-escaping="yes"> active</iaixsl:text>
                            </iaixsl:if>
                            <iaixsl:if test="@reload and @reload = 'y'">
                                <iaixsl:text disable-output-escaping="yes"> noevent</iaixsl:text>
                            </iaixsl:if>
                            <iaixsl:if test="@gfx or @gfx_active_type">
                                <iaixsl:text disable-output-escaping="yes"> nav-gfx</iaixsl:text>
                            </iaixsl:if>
                            <iaixsl:text disable-output-escaping="yes">" &gt;</iaixsl:text>
                            <iaixsl:choose>
                                <iaixsl:when test="@gfx or @gfx_active_type">
                                    <img>
                                        <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:attribute>
                                        <iaixsl:choose>
                                            <iaixsl:when test="@gfx_active_type = 'img_rwd'">
                                                <iaixsl:attribute name="class">rwd-src</iaixsl:attribute>
                                                <iaixsl:if test="@gfx_active_desktop">
                                                    <iaixsl:attribute name="data-src_desktop"><iaixsl:value-of select="@gfx_active_desktop"/></iaixsl:attribute>
                                                </iaixsl:if>
                                                <iaixsl:if test="@gfx_active_tablet">
                                                    <iaixsl:attribute name="data-src_tablet"><iaixsl:value-of select="@gfx_active_tablet"/></iaixsl:attribute>
                                                </iaixsl:if>
                                                <iaixsl:if test="@gfx_active_mobile">
                                                    <iaixsl:attribute name="data-src_mobile"><iaixsl:value-of select="@gfx_active_mobile"/></iaixsl:attribute>
                                                </iaixsl:if>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="@gfx">
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                                    </iaixsl:when>
                                                    <iaixsl:when test="@gfx_onmouseover">
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx_onmouseover"/></iaixsl:attribute>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx_active"/></iaixsl:attribute>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </img>
                                    <span class="gfx_lvl_1 d-none"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                            <iaixsl:choose>
                                <iaixsl:when test="@link and @link != '##'">
                                    <iaixsl:text disable-output-escaping="yes">&lt;/a&gt;</iaixsl:text>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:text disable-output-escaping="yes">&lt;/span&gt;</iaixsl:text>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                            <iaixsl:if test="item">
                                <ul class="navbar-subnav">
                                    <iaixsl:for-each select="item">
                                        <li class="nav-item">
                                        <iaixsl:if test="( (@ni = $current_item) or (item/@ni = $current_item)  or (item/item/@ni = $current_item)  or (item/item/item/@ni = $current_item) )">
                                            <iaixsl:attribute name="class">nav-item active</iaixsl:attribute>
                                        </iaixsl:if>
                                            <a class="nav-link" href="##">
                                                <iaixsl:if test="@link">
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                </iaixsl:if>

                                                <iaixsl:choose>
                                                    <iaixsl:when test="((@ni = /shop/navigation/current/@ni) or (item//@ni = /shop/navigation/current/@ni)) and ((@gfx or @gfx_active_type) and $gfx_2lvl_show)">
                                                        <iaixsl:attribute name="class">nav-link nav-gfx active</iaixsl:attribute>
                                                    </iaixsl:when>
                                                    <iaixsl:when test="(@ni = /shop/navigation/current/@ni) or (item//@ni = /shop/navigation/current/@ni)">
                                                        <iaixsl:attribute name="class">nav-link active</iaixsl:attribute>
                                                    </iaixsl:when>
                                                    <iaixsl:when test="(@gfx or @gfx_active_type) and $gfx_2lvl_show">
                                                        <iaixsl:attribute name="class">nav-link nav-gfx</iaixsl:attribute>
                                                    </iaixsl:when>
                                                </iaixsl:choose>

                                                <iaixsl:if test="@target">
                                                    <iaixsl:attribute name="target"><iaixsl:value-of select="@target"/></iaixsl:attribute>
                                                </iaixsl:if>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="(@gfx or @gfx_active_type) and $gfx_2lvl_show">
                                                        <img class="gfx_lvl_2">
                                                            <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="title"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:attribute>
                                                            <iaixsl:choose>
                                                                    <iaixsl:when test="@gfx_active_type = 'img_rwd'">
                                                                        <iaixsl:attribute name="class">rwd-src gfx_lvl_2</iaixsl:attribute>
                                                                        <iaixsl:if test="@gfx_active_desktop">
                                                                            <iaixsl:attribute name="data-src_desktop"><iaixsl:value-of select="@gfx_active_desktop"/></iaixsl:attribute>
                                                                        </iaixsl:if>
                                                                        <iaixsl:if test="@gfx_active_tablet">
                                                                            <iaixsl:attribute name="data-src_tablet"><iaixsl:value-of select="@gfx_active_tablet"/></iaixsl:attribute>
                                                                        </iaixsl:if>
                                                                        <iaixsl:if test="@gfx_active_mobile">
                                                                            <iaixsl:attribute name="data-src_mobile"><iaixsl:value-of select="@gfx_active_mobile"/></iaixsl:attribute>
                                                                        </iaixsl:if>
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                        <iaixsl:choose>
                                                                            <iaixsl:when test="@gfx">
                                                                                <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                                                            </iaixsl:when>
                                                                            <iaixsl:when test="@gfx_onmouseover">
                                                                                <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx_onmouseover"/></iaixsl:attribute>
                                                                            </iaixsl:when>
                                                                            <iaixsl:otherwise>
                                                                                <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx_active"/></iaixsl:attribute>
                                                                            </iaixsl:otherwise>
                                                                        </iaixsl:choose>
                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                            </img>
                                                        <span class="gfx_lvl_2"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </a>
                                            <iaixsl:if test="item">
                                                <ul class="navbar-subsubnav">
                                                    <iaixsl:for-each select="item">
                                                        <li class="nav-item">
                                                        <iaixsl:if test="( (@ni = $current_item) or (item/@ni = $current_item)  or (item/item/@ni = $current_item)  or (item/item/item/@ni = $current_item) )">
                                                            <iaixsl:attribute name="class">nav-item active</iaixsl:attribute>
                                                        </iaixsl:if>
                                                            <a class="nav-link" href="##">
                                                                <iaixsl:if test="(@ni = /shop/navigation/current/@ni) or (item//@ni = /shop/navigation/current/@ni)">
                                                                    <iaixsl:attribute name="class">nav-link active</iaixsl:attribute>
                                                                </iaixsl:if>
                                                                <iaixsl:if test="@link">
                                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                                </iaixsl:if>
                                                                <iaixsl:if test="@target">
                                                                    <iaixsl:attribute name="target"><iaixsl:value-of select="@target"/></iaixsl:attribute>
                                                                </iaixsl:if>
                                                                <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                                                            </a>
                                                        </li>
                                                    </iaixsl:for-each>
                                                    <iaixsl:if test="(count(item) &gt; 1) and @link and @display_all = 'y' and $dlmenu_showall">
                                                        <li class="nav-item display-all">
                                                            <a class="nav-link display-all">
                                                                <iaixsl:attribute name="href">
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="@display_all_link">
                                                                            <iaixsl:value-of select="@display_all_link"/>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>
                                                                            <iaixsl:value-of select="@link"/>
                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </iaixsl:attribute>
                                                                <iaixsl:value-of select="$dlmenu_showall"/>
                                                            </a>
                                                        </li>
                                                    </iaixsl:if>
                                                </ul>
                                            </iaixsl:if>
                                        </li>
                                    </iaixsl:for-each>
                                    <iaixsl:if test="(count(item) &gt; 1) and @link and @display_all = 'y' and $dlmenu_showall">
                                        <li class="nav-item display-all">
                                            <a class="nav-link display-all">
                                                <iaixsl:attribute name="href">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="@display_all_link">
                                                            <iaixsl:value-of select="@display_all_link"/>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:value-of select="@link"/>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </iaixsl:attribute>
                                                <iaixsl:value-of select="$dlmenu_showall"/>
                                            </a>
                                        </li>
                                    </iaixsl:if>
                                </ul>
                            </iaixsl:if>
                        </li>
                    </iaixsl:for-each>
                    <iaixsl:if test="(count(/shop/currency/option) &gt; 1) or (count(/shop/language/option) &gt; 1) or (count(/shop/countries/country) &gt; 1)">
					<li id="sl_menu_settings" class="nav-item d-md-block d-none">
                    <div class="open_trigger">
                        <span>
                            <iaixsl:choose>
                                <iaixsl:when test="count(/shop/countries/country) &gt; 1 or count(/shop/language/option) &gt; 1 or count(/shop/currency/option) &gt; 1">
                                    <div class="menu_settings_content"><span class="menu_settings_flag"><iaixsl:attribute name="class">menu_settings_flag flag flag_<iaixsl:value-of select="/shop/language/option[@selected='true']/@id"/></iaixsl:attribute></span><strong class="menu_settings_value"><span class="menu_settings_language"><iaixsl:value-of select="/shop/language/option[@selected='true']/@name"/></span><span><iaixsl:text> | </iaixsl:text></span><span class="menu_settings_currency"><iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/></span><span class="menu_settings_separator"><iaixsl:text> | </iaixsl:text></span><span class="sl_country_name"><iaixsl:value-of select="/shop/countries/country[@selected='true']/@name"/></span><i class="icon-angle-down d-none d-md-inline-block"></i></strong></div>
                                </iaixsl:when>

                            </iaixsl:choose>
                        </span>

                        <div class="menu_settings_wrapper d-md-none">
                            <iaixsl:if test="/shop/language/option/@selected or /shop/currency/option/@selected">
                                <div class="menu_settings_inline">
                                    <div class="menu_settings_header">
                                        
                                    </div>
                                    <div class="menu_settings_content">
                                        <span class="menu_settings_flag">
                                            <iaixsl:attribute name="class">menu_settings_flag flag flag_<iaixsl:value-of select="/shop/language/option[@selected='true']/@id"/></iaixsl:attribute>
                                        </span>
                                        <strong class="menu_settings_value">
                                            <span class="menu_settings_language"><iaixsl:value-of select="/shop/language/option[@selected='true']/@name"/></span>
                                            <span><iaixsl:text> | </iaixsl:text></span>
                                            <span class="menu_settings_currency"><iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/></span>
                                        </strong>
                                    </div>
                                </div>
                            </iaixsl:if>
                            <iaixsl:if test="/shop/countries/country/@selected">
                                <div class="menu_settings_inline">
                                    <div class="menu_settings_header">
                                        
                                    </div>
                                    <div class="menu_settings_content">
                                        <strong class="menu_settings_value">
                                            <iaixsl:value-of select="/shop/countries/country[@selected='true']/@name"/>
                                        </strong>
                                    </div>
                                </div>
                            </iaixsl:if>
                        </div>
                    

                    </div>

                    <iaixsl:if test="(count(/shop/currency/option) &gt; 1) or (count(/shop/language/option) &gt; 1) or (count(/shop/countries/country) &gt; 1)">
                        <form action="/settings.php" method="post">

                            <iaixsl:if test="/shop/action/settings/@url">
                                <iaixsl:attribute name="action"><iaixsl:value-of select="/shop/action/settings/@url"/></iaixsl:attribute>
                            </iaixsl:if>

                            <ul class="bg_alter">
                                
                                <iaixsl:if test="count(/shop/language/option) &gt; 1">
                                    <li>
                                        <div class="form-group">
                                                <label class="menu_settings_lang_label">Language</label>

                                            <iaixsl:for-each select="/shop/language/option">
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="lang">
                                                            <iaixsl:if test="@selected='true'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                        </input>
                                                        <span>
                                                            <iaixsl:attribute name="class">flag flag_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                        </span>
                                                        <span><iaixsl:value-of select="@name"/></span>
                                                    </label>
                                                </div>
                                            </iaixsl:for-each>
                                        </div>
                                    </li>
                                </iaixsl:if>

                                <iaixsl:if test="count(/shop/currency/option) &gt; 1 or count(/shop/countries/country) &gt; 1">
                                    <li>
                                        <iaixsl:if test="count(/shop/currency/option) &gt; 1">
                                            <div class="form-group">
                                                <label for="menu_settings_curr">Valuta:</label>

                                                <div class="select-after">
                                                    <select class="form-control" name="curr" id="menu_settings_curr">
                                                        <iaixsl:for-each select="/shop/currency/option">
                                                            <option>
                                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="@selected='true'">
                                                                        <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                                        <iaixsl:value-of select="@symbol"/>
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                        <iaixsl:value-of select="@symbol"/>(1<iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/> = <iaixsl:value-of select="@rate"/>  <iaixsl:value-of select="@symbol"/>)
                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                            </option>
                                                        </iaixsl:for-each>
                                                    </select>
                                                </div>
                                            </div>
                                        </iaixsl:if>
                                        <iaixsl:if test="count(/shop/countries/country) &gt; 1">
                                            <div class="form-group">
                                                <label for="menu_settings_country">Levering aan</label>

                                                <div class="select-after">
                                                    <select class="form-control" name="country" id="menu_settings_country">
                                                        <iaixsl:for-each select="/shop/countries/country">
                                                            <option>
                                                                <iaixsl:if test="@selected='true'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>
                                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                <iaixsl:value-of select="@name"/>
                                                            </option>
                                                        </iaixsl:for-each>
                                                    </select>
                                                </div>
                                            </div>
                                        </iaixsl:if>
                                    </li>
                                </iaixsl:if>
                                <li class="buttons">
                                    <button class="btn --solid --large" type="submit">De wijzigingen toepassen</button>
                                </li>
                            </ul>
                        </form>
                    </iaixsl:if>
					</li>
                </iaixsl:if>
                </ul>

            </div>
        </nav>
        <iaixsl:if test="/shop/page/navigation/item/@gfx_active_desktop"> </iaixsl:if>
        
                    </header>
                </iaixsl:if>
                <div id="layout">
                    <iaixsl:attribute name="class">row clearfix </iaixsl:attribute>
                    <iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'aside')">
                        <aside class="span3">
                            <iaixsl:choose>
                                <iaixsl:when test="page/@type = 'projector'">
                                     <iaixsl:attribute name="class">col-3</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:when test="page/@type = 'search'">
                                     <iaixsl:attribute name="class">col-3</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:when test="page/@type = 'main'">
                                     <iaixsl:attribute name="class">col-3</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:when test="page/@type = 'blog-item'">
                                      <iaixsl:attribute name="class">col-3</iaixsl:attribute>
                                </iaixsl:when>
																<iaixsl:when test="page/@type = 'blog-list'">
                                      <iaixsl:attribute name="class">col-3</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                      <iaixsl:attribute name="class">col-3</iaixsl:attribute>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                            <!--Dodatkowe linki (strefa 1) (menu_additional1, 116448.1)-->
            <iaixsl:variable name="SET_filters">#Filters</iaixsl:variable>
            <div class="setMobileGrid" data-item="#menu_navbar"/>
            <div class="setMobileGrid" data-item="#menu_navbar3">
				<iaixsl:if test="navigation/item">
					<iaixsl:attribute name="data-ismenu1">true</iaixsl:attribute>
				</iaixsl:if>
			</div>
            <div class="setMobileGrid" data-item="#menu_blog"/>
            <div class="login_menu_block d-lg-none" id="login_menu_block">
                <iaixsl:choose>
                    <iaixsl:when test="basket/@login">
                        <a class="your_account_link" href="/login.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-user-1"></i>  <span>Mijn rekening</span>
                            
                        </a>
                        <div class="setMobileGrid" data-item="#menu_settings"/>
                        <a class="order_status_link" href="/order-open.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-menu-2"></i>  <span>Controleer de bestelstatus</span>
                            
                        </a>
                        <iaixsl:if test="(/shop/basket/@client_id_upc != '') ">
                            <a class="client_card_link" href="##">
                                <iaixsl:attribute name="href">
                                    <iaixsl:value-of disable-output-escaping="yes" select="action/login/@url"/>
                                </iaixsl:attribute>
                                 <i class="icon-barcode"></i>  <span>Klantenkaart</span>
                            </a>
                        </iaixsl:if>
                        <a class="rabates_link" href="/client-rebate.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <span class="font_icon">%</span> <span>Mijn kortingen</span>
                            
                        </a>
                        <a class="logout_link" href="/login.php?operation=logout">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-logout"></i>  <span>Uitloggen</span>
                            
                        </a>
                        <iaixsl:if test="action/personalized_recommendations/@url">
                            <a class="recommendation_link">
                                <iaixsl:attribute name="href">
                                    <iaixsl:value-of disable-output-escaping="yes" select="action/personalized_recommendations/@url"/>
                                </iaixsl:attribute>

                                <i class="icon-thumbs-up" style="color: #0099D0;"></i> <span>Aanbevolen voor u</span>
                                
                            </a>
                        </iaixsl:if>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <a class="sign_in_link" href="/login.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-user"></i>  <span>Inloggen</span>
                            
                        </a>
                        <a class="registration_link" href="/client-new.php?register">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-lock"></i>  <span>Register</span>
                            
                        </a>
                        <div class="setMobileGrid" data-item="#menu_settings"/>
                        <a class="order_status_link" href="/order-open.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-menu-2"></i>  <span>Controleer de bestelstatus</span>
                            
                        </a>
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </div>
            <div class="faq_link__wrapper">
                <a class="faq_link" href="/Jak-zlozyc-zamowienie-chelp-pol-68.html">
                    <iaixsl:attribute name="title">
                        
                    </iaixsl:attribute>
                    <i class="icon-question-1"></i>  <span>Veelgestelde vragen</span>
                </a>
            </div>
            <!--div class="setMobileGrid" data-item="#menu_contact"/-->
            <div class="chat_link__wrapper">
                <a class="chat_link" href="#">
                    <iaixsl:attribute name="title">
                        
                    </iaixsl:attribute>
                    <i class="icon-chat-2"></i>  <span>Praat met ons</span>
                </a>
            </div>
            <iaixsl:if test="$SET_filters and not($SET_filters = '')">
                <div class="setMobileGrid">
                  <iaixsl:attribute name="data-item"><iaixsl:value-of select="$SET_filters"/></iaixsl:attribute>
                </div>
            </iaixsl:if>
        
                        </aside>
                    </iaixsl:if>
                    

                    
                    <iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'content')">
                        <div id="content" class="span9">
                            <iaixsl:choose>
                                <iaixsl:when test="page/@type = 'projector'">
                                     <iaixsl:attribute name="class">col-12 px-0 d-flex flex-wrap</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:when test="page/@type = 'search'">
                                     <iaixsl:attribute name="class">col-12</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:when test="page/@type = 'main'">
                                     <iaixsl:attribute name="class">col-12</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:when test="page/@type = 'navigation'">
                                     <iaixsl:attribute name="class">col-12</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:when test="page/@type = 'blog-list'">
                                     <iaixsl:attribute name="class">col-md-9 col-12</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:when test="page/@type = 'blog-item'">
                                    <iaixsl:attribute name="class">col-md-9 col-12</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                      <iaixsl:attribute name="class">col-12</iaixsl:attribute>
                                </iaixsl:otherwise>
                            </iaixsl:choose>

                            <!--Lokalizator (projector_stepper, 116555.1)-->
        <iaixsl:variable name="searchResults_title"/>
        <iaixsl:variable name="breadcrumbs_label">U bent hier:</iaixsl:variable>
        <div class="breadcrumbs col-md-12">
            <div class="back_button">
                 <iaixsl:attribute name="class">back_button</iaixsl:attribute>
                <button id="back_button"><i class="icon-angle-left"></i>Terug</button>
            </div>
            <div class="list_wrapper">
                <ol>
                    <iaixsl:if test="$breadcrumbs_label">
                        <li>
                            <span><iaixsl:value-of select="$breadcrumbs_label"/></span>
                        </li>
                    </iaixsl:if>
                    <li class="bc-main">
                        <span><a href="/">Homepage</a></span>
                    </li>
                    <iaixsl:choose>
                        <iaixsl:when test="page/@type = 'main'">
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'wishesedit'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Boodschappenlijst</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'basketedit'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Mand</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'product-stocks'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Beschikbaarheid van het product in de winkels</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'blog-list'">
                            <iaixsl:choose>
                                <iaixsl:when test="page/navigation/bycategories/item[@current='active']">
                                    <li>
                                        <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <a href="/blog-list.php"> 
                                            <iaixsl:if test="/shop/action/blogList/@url">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/blogList/@url"/></iaixsl:attribute>
                                            </iaixsl:if>Blog</a>
                                    </li>
                                    <li>
                                        <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <span><iaixsl:value-of select="page/navigation/bycategories/item[@current='active']/@value"/></span>
                                    </li>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <li>
                                        <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <span>Blog</span>
                                    </li>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'blog-item'">
                            <li>
                                <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <a href="/blog-list.php">
                                    <iaixsl:if test="/shop/action/blogList/@url">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/blogList/@url"/></iaixsl:attribute>
                                    </iaixsl:if>Blog</a>
                            </li>
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span><iaixsl:value-of select="page/blogitem/title/text()"/></span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'opinions-photos'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Meningen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'opinions-shop'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Winkel beoordelingen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'categories-list'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Lijst van categorieën</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-payment'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Betalingen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-newpayment'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Betalingen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-wrappers'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Selecteer verpakking</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'news'">
                            <iaixsl:choose>
                                <iaixsl:when test="/shop/page/news/title">
                                    <li>
                                        <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <a>
                                            <iaixsl:attribute name="href">/news.php</iaixsl:attribute>Nieuws</a>
                                    </li>
                                    <li>
                                        <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <span><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/news/title"/></span>
                                    </li>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <li>
                                        <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <span>Nieuws</span>
                                    </li>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'client-rebates'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Uw kortingen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'sitemap'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Webmap</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'client-save'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Loggen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="((page/@type = 'client-new') and not(page/client-data/@register='true') and not(page/client-data/@edit='true'))">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Registratie</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="((page/@type = 'client-new') and (page/client-data/@register='true'))">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Registratie</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="((page/@type = 'client-new') and (page/client-data/@edit='true'))">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Bewerken van gegevens</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-nonstandardized'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Aangepaste bestelling</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'pickup-sites'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Selecteer een verzamelpunt</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'contact'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Neem contact op met</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'links'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Links</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'login'">
                            <iaixsl:if test="page/login/response/@type = 'give login'">
                                <li>
                                    <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                    <span>Wachtwoord herinnering</span>
                                </li>
                            </iaixsl:if>
                            <iaixsl:if test="not(page/login/response/@type = 'give login')">
                                <iaixsl:choose>
                                    <iaixsl:when test="/shop/basket/@login">
                                        <li>
                                            <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                            <span>Uw Rekening</span>
                                        </li>
                                    </iaixsl:when>
                                    <iaixsl:when test="page/login/response/@type = 'no login'">
                                        <li>
                                            <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                            <span>Loggen</span>
                                        </li>
                                    </iaixsl:when>
                                </iaixsl:choose>
                            </iaixsl:if>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'rma-add'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Een klacht toevoegen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'rma_products'">
                            <iaixsl:choose>
                                <iaixsl:when test="page/@display = 'confirmation'">
                                    <li>
                                        <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <span/>
                                    </li>
                                </iaixsl:when>
                                <iaixsl:when test="page/@display = 'details'">
                                    <li>
                                        <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <span/>
                                    </li>
                                </iaixsl:when>
                                <iaixsl:when test="page/@display = 'add'">
                                    <li>
                                        <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <span/>
                                    </li>
                                </iaixsl:when>
                                <iaixsl:when test="page/@display = 'stock'">
                                    <li>
                                        <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <span/>
                                    </li>
                                </iaixsl:when>
                            </iaixsl:choose>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'rma-list'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Lijst van klachten</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'stock'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Verzamelpunt</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order1'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Levering en betaling</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order2'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Bevestiging van gegevens</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'prepaid'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Besteloverzicht</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'producers-list'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Producenten</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'searching'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Zoek</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'text'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span><iaixsl:value-of select="page/text/@name"/></span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'return'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Attentie</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'client-orders'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-login</iaixsl:attribute>
                                <a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>Uw Rekening</a>  
                            </li>                            
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Uw bestellingen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-open'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Orderstatus</span>
                            </li>
                        </iaixsl:when>
                        

                        <iaixsl:when test="page/@type = 'product-compare'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Vergelijker</span>
                            </li>
                        </iaixsl:when>

                        <iaixsl:when test="page/@type = 'products-bought'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Lijst van gekochte producten</span>
                            </li>
                        </iaixsl:when>

                        <iaixsl:when test="page/@type = 'return_products'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Bestelling retour</span>
                            </li>
                        </iaixsl:when>

                        <iaixsl:when test="page/@type = 'client-cards'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Loyaliteitskaarten</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'navigation' or page/@type = 'search'">
                            <iaixsl:choose>
                                <iaixsl:when test="bc/item">
                                    <iaixsl:for-each select="bc/item">
                                        <li>
                                            <iaixsl:attribute name="class">bc-item-<iaixsl:value-of select="position()"/></iaixsl:attribute>
                                            <iaixsl:if test="position() = last()">
                                                <iaixsl:attribute name="class">bc-active bc-item-<iaixsl:value-of select="position()"/></iaixsl:attribute>
                                            </iaixsl:if>
											<iaixsl:variable name="current_ni"><iaixsl:value-of select="@ni"/></iaixsl:variable>
                                            <iaixsl:choose>
                                                <iaixsl:when test="not(position() = last()) and (/shop/navigation/item[@ni = $current_ni]/@link or /shop/navigation/item/item[@ni = $current_ni]/@link or /shop/navigation/item/item/item[@ni = $current_ni]/@link)">
                                                    <a>
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                        <iaixsl:value-of select="@title"/>
                                                    </a>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <span>
                                                        <iaixsl:value-of select="@title"/>
                                                    </span>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </li>
                                    </iaixsl:for-each>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:if test="$searchResults_title">
                                        <li>
                                            <span>
                                                <iaixsl:value-of select="$searchResults_title"/>
                                                <iaixsl:if test="page/search_params/text/@value and not(page/search_params/text/@value='')">
                                                    <iaixsl:value-of select="page/search_params/text/@value"/>
                                                </iaixsl:if>
                                            </span>
                                        </li>
                                    </iaixsl:if>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'projector'">
                            <iaixsl:for-each select="bc/item">
                                <li>
                                    <iaixsl:attribute name="class">category bc-item-<iaixsl:value-of select="position()"/></iaixsl:attribute>
                                    <iaixsl:if test="position() = last()">
                                        <iaixsl:attribute name="class">category bc-active bc-item-<iaixsl:value-of select="position()"/></iaixsl:attribute>
                                    </iaixsl:if>
									<iaixsl:variable name="current_ni"><iaixsl:value-of select="@ni"/></iaixsl:variable>
									<iaixsl:choose>
										<iaixsl:when test="/shop/navigation/item[@ni = $current_ni]/@link or /shop/navigation/item/item[@ni = $current_ni]/@link or /shop/navigation/item/item/item[@ni = $current_ni]/@link or /shop/navigation/item/item/item/item[@ni = $current_ni]/@link">
											<a>
                                        		<iaixsl:attribute name="class">category</iaixsl:attribute>
												<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
												<iaixsl:value-of select="@title"/>
											</a>
										</iaixsl:when>
										<iaixsl:otherwise>
											<span>
                                        		<iaixsl:attribute name="class">category</iaixsl:attribute>
												<iaixsl:value-of select="@title"/>
											</span>
										</iaixsl:otherwise>
									</iaixsl:choose>
                                </li>
                            </iaixsl:for-each>
                            <li class="bc-active bc-product-name">
                                <span><iaixsl:value-of select="page/projector/product/name"/></span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'place-order'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Aankoop in één stap</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'rma-open'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Klagen zonder inloggen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'returns-open'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Terugkeren zonder in te loggen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'opinions-add'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Adviezen toevoegen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'noproduct'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Gebrek aan product</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'tell-friend'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Berichtgeving</span>
                            </li>
                        </iaixsl:when>

                        
                        <iaixsl:otherwise>
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span><iaixsl:value-of select="page/@type"/></span>
                            </li>
                        </iaixsl:otherwise>
                    </iaixsl:choose>
                </ol>
                
            </div></div>
        <!--Błędy i informacje w projektorze (menu_messages, 106608.1)-->

        <iaixsl:variable name="rebates_code_used">De verstrekte kortingscode is al gebruikt.</iaixsl:variable>

        <iaixsl:variable name="change_success">De veranderingen zijn vastgelegd.</iaixsl:variable>

        <iaixsl:variable name="change_success_despite_no_change">Het formulier is opgeslagen, maar er zijn door u geen gegevens gewijzigd.</iaixsl:variable>


        <iaixsl:if test="count(/shop/page/communicates/warning)">

            <div class="menu_messages_warning" id="menu_messages_warning">


            <iaixsl:choose>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'message'">
                    <iaixsl:attribute name="class">menu_messages_message</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'warning'">
                    <iaixsl:attribute name="class">menu_messages_warning</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'error'">
                    <iaixsl:attribute name="class">menu_messages_error</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'success'">
                    <iaixsl:attribute name="class">menu_messages_success</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:otherwise/>
            </iaixsl:choose>


                <div class="menu_messages_warning_sub">
                    <iaixsl:for-each select="/shop/page/communicates/warning">
                        <p><iaixsl:choose>


                                <iaixsl:when test="@type='file_upload_invalid_type'">Bestand kan niet worden geüpload<span class="invalidFileName"><iaixsl:value-of select="@value"/></span>aangezien het opnemen van bestanden van dit type niet is toegestaan.</iaixsl:when>
                                <iaixsl:when test="@type='file_upload_invalid_extension'">Bestand kan niet worden geüpload<span class="invalidFileName"><iaixsl:value-of select="@value"/></span>aangezien het opnemen van bestanden van dit type niet is toegestaan.</iaixsl:when>
                                <iaixsl:when test="@type='file_upload_size_exceeded'">Bestand kan niet worden geüpload<span class="invalidFileName"><iaixsl:value-of select="@value"/></span>omdat het de maximaal toegestane grootte van 10 MB overschrijdt.</iaixsl:when>
                                <iaixsl:when test="@type='file_uploaded_remove_fail'">Er is een fout opgetreden tijdens het uploaden van het bestand<span class="invalidFileName"><iaixsl:value-of select="@value"/></span>.</iaixsl:when>


                                <iaixsl:when test="@type='rebates_code_expired'">De geldigheid van de door u ingevoerde kortingscode is verlopen en niet meer actief.</iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_notbegun'">De opgegeven kortingscode is nog niet actief. Deze promotie is nog niet begonnen.</iaixsl:when>

                               <iaixsl:when test="@type='order_minimal_wholesale_blocked'">De minimumwaarde van bulkaankopen is:<iaixsl:if test="$signbeforeprice = 'true'">
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                        </iaixsl:if>
                                        <iaixsl:value-of select="@value"/>
                                        <iaixsl:if test="$signbeforeprice = 'false'">
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                        </iaixsl:if>
                                </iaixsl:when>

                            <iaixsl:when test="@type='order_minimal_wholesale_changed'">Hoewel u een groothandelaar bent, ziet u detailhandelsprijzen in het besteloverzicht. Dit komt omdat de minimumwaarde voor een groothandelsorder niet is bereikt. U plaatst een bestelling op basis van het huidige winkelwagentje.</iaixsl:when>




                                <iaixsl:when test="@type='openid_invalid_authorization'">Autorisatie fout.</iaixsl:when>
                                <iaixsl:when test="@type='suggest_sent'">Uw bericht is succesvol verzonden naar<iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='search_to_many_products'">Teveel producten gevonden. Gebruik de zoekmachine om uw zoekresultaten te verfijnen.</iaixsl:when>
                                <iaixsl:when test="@type='search_products_not_found'">Het product dat u zoekt is niet gevonden. Gebruik alsjeblieft<a href="/searching.php" title="Kliknij, aby przejść do wyszukiwarki zaawansowanej">zoekmachines</a>.</iaixsl:when>
                                <iaixsl:when test="@type='search_text_to_short'">De verstrekte tekst is te kort. Probeer een langere tekst te geven of gebruik een zoekmachine.</iaixsl:when>
                                <iaixsl:when test="@type='login taken'">De door u ingevoerde inlognaam is reeds door een andere klant geregistreerd. Kies een andere naam of wijzig deze door bijvoorbeeld cijfers toe te voegen.</iaixsl:when>
                                <iaixsl:when test="@type='account_not_added'">Er zijn fouten opgetreden en de klantaccount is niet toegevoegd - probeer het later nog eens</iaixsl:when>
                                <iaixsl:when test="@type='exists such account'">Een account met vergelijkbare gegevens bestaat al in onze winkel. Als u eerder een account bij ons hebt aangemaakt en het wachtwoord niet meer weet, gebruik dan de<a href="/password-recover.php">wachtwoord herinneringen</a></iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_not_deleted'">Het aangegeven afleveradres mag niet worden verwijderd.</iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_not_selected'">Het opgegeven afleveradres kan niet het standaardadres worden.</iaixsl:when>
                                <iaixsl:when test="@type='no login'">Je hebt geen login opgegeven.</iaixsl:when>
                                <iaixsl:when test="@type='incorect login'">De geselecteerde aanmelding is onjuist. De login moet minimaal 3 en maximaal 40 tekens bevatten (alleen letters of cijfers).</iaixsl:when>
                                <iaixsl:when test="@type='no password'">Je hebt geen wachtwoord opgegeven.</iaixsl:when>
                                <iaixsl:when test="@type='password to short'">Een geldig wachtwoord moet uit minstens 6 en hoogstens 15 tekens bestaan.</iaixsl:when>


                                <iaixsl:when test="@type='password_to_long'">Een geldig wachtwoord moet uit minstens 6 en hoogstens 15 tekens bestaan.</iaixsl:when>


                                <iaixsl:when test="@type='login equals password'">Het juiste wachtwoord moet verschillen van de login.</iaixsl:when>
                                <iaixsl:when test="@type='not equal passwords'">Wachtwoord en wachtwoordbevestiging zijn verschillend.</iaixsl:when>
                                <iaixsl:when test="@type='no firstname'">De gegeven naam is te kort.</iaixsl:when>
                                <iaixsl:when test="@type='no name'">Naam of achternaam ontbreekt.</iaixsl:when>
                                <iaixsl:when test="@type='birth_date'">De geboortedatum bevat onjuiste waarden of is in een onjuist formaat geschreven.</iaixsl:when>
                                <iaixsl:when test="@type='incorect email'">Het e-mailadres is onjuist.</iaixsl:when>
                                <iaixsl:when test="@type='incorect nip'">Gebruik bij het invoeren van het TIN het formaat PLXXXXXXXXXX voor het EU-TIN of XXXXXXXXXX voor het Poolse TIN.</iaixsl:when>

                                <iaixsl:when test="@type='no firmname'">De naam van het bedrijf werd niet correct vermeld.</iaixsl:when>

                                <iaixsl:when test="@type='incorrect region'">De opgegeven regio is onjuist.</iaixsl:when>
                                <iaixsl:when test="@type='no city'">De opgegeven stad is onjuist.</iaixsl:when>
                                <iaixsl:when test="@type='no street'">Het opgegeven adres is onjuist.</iaixsl:when>

                               <iaixsl:when test="@type='no_street_number'">Het opgegeven adres is onjuist.</iaixsl:when>


                                <iaixsl:when test="@type='incorect phone'">Het opgegeven telefoonnummer is onjuist.</iaixsl:when>
                                <iaixsl:when test="@type='incorect spare phone'">Het opgegeven back-up telefoonnummer is onjuist.</iaixsl:when>
                                <iaixsl:when test="@type='incorect zipcode'">Onjuiste postcode.</iaixsl:when>
                                <iaixsl:when test="@type='double_address_error'">Als het leveringsadres hetzelfde moet zijn als het adres van de koper, vinkt u de overeenkomstige optie aan.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery firstname'">De voornaam van de ontvanger is te kort.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery lastname'">De naam van de ontvanger is te kort.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery city'">De opgegeven stad van de ontvanger is onjuist.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery street'">Het opgegeven adres van de ontvanger is onjuist.</iaixsl:when>
                                <iaixsl:when test="@type='incorect delivery region'">De opgegeven ontvangersregio is onjuist.</iaixsl:when>
                                <iaixsl:when test="@type='incorect delivery zipcode'">Onjuiste postcode van de ontvanger.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_hhtransfer_error'">Er waren fouten in de betaling van punten.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_voucher_error'">Er zijn fouten bij de betaling van de bonnen opgetreden.<iaixsl:if test="@value='v1'">W tym sklepie, ten bon jest nieważny.</iaixsl:if>
                                    <iaixsl:if test="@value='v2'">Het bonnummer is onjuist. Een voucher met deze identificatiecode bestaat niet. Probeer de ID opnieuw in te voeren en controleer of deze correct is.</iaixsl:if>
                                    <iaixsl:if test="@value='v3'">Deze bon is geblokkeerd.</iaixsl:if>
                                    <iaixsl:if test="@value='v4'">Deze bon is al gebruikt.</iaixsl:if>
                                    <iaixsl:if test="@value='v5'">Deze bon is niet langer geldig - de vervaldatum is verstreken.</iaixsl:if>
                                    <iaixsl:if test="@value='v7'">De bon met het opgegeven ID bestaat niet. Probeer de identificatie opnieuw in te voeren.</iaixsl:if>
                                    <iaixsl:if test="@value='v8'">Er werd geen identificatiecode verstrekt.</iaixsl:if>
                                </iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_incorrect_paymentid'">Er zijn fouten opgetreden - kies een andere vorm van betaling.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_error'">Er zijn betalingsfouten opgetreden. Probeer zo meteen opnieuw te betalen.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_points_error'">U heeft niet genoeg spaarpunten om deze bestelling te betalen - kies een andere betaalmethode.</iaixsl:when>

                                <iaixsl:when test="@type='filter_products_not_found'">Producten met de opgegeven filtercriteria zijn niet gevonden. Verander de filterparameters.</iaixsl:when>
                                <iaixsl:when test="@type='questionnaire_error'">Er is een onbekende fout opgetreden. De enquête is niet verstuurd.</iaixsl:when>
                                <iaixsl:when test="@type='questionnaire_sent'">De enquête is verstuurd. Bedankt.</iaixsl:when>

                                <iaixsl:when test="@type='orderopen_not_found'">De door u ingevoerde gegevens zijn onjuist. Probeer het telefoonnummer of e-mailadres te achterhalen dat u bij het plaatsen van de bestelling hebt opgegeven of controleer of de door u opgegeven bestel-ID correct is. Als u er na verschillende pogingen niet in slaagt uw bestelling via deze pagina te openen, gelieve dan<a href="/contact.php">Neem contact op met</a>.</iaixsl:when>

                                <iaixsl:when test="@type='order_nonstandard_inactive'">Het spijt ons, maar we hebben geen verzendkosten voor uw bestelling opgegeven. We willen ze echter wel accepteren. Wij verzoeken u daarom contact op te nemen met<a href="/contact.php">service van onze winkel</a>om te bepalen of de bestelling kan worden aanvaard en uitgevoerd.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_inactive_worth'">Het spijt ons, maar we hadden de mogelijkheid van een bestelling met deze orderwaarde niet voorzien. Maar we willen het graag accepteren. Wij verzoeken u daarom contact op te nemen met<a href="/contact.php">service van onze winkel</a>om te bepalen of de bestelling kan worden aanvaard en uitgevoerd.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_inactive_weight'">Het spijt ons, maar we hadden de mogelijkheid niet voorzien om een bestelling te plaatsen met dit bestelgewicht. Maar we willen het graag accepteren. Wij verzoeken u daarom contact op te nemen met<a href="/contact.php">service van onze winkel</a>om te bepalen of de bestelling kan worden aanvaard en uitgevoerd.</iaixsl:when>
                                

                                <iaixsl:when test="@type='no-auction-info'">Geen informatie over de veiling.</iaixsl:when>
                                <iaixsl:when test="@type='no-auction-account'">Geen rekeninginformatie beschikbaar.</iaixsl:when>
                                <iaixsl:when test="@type='no-allegro-item'">Geen informatie over het onderwerp van de veiling.</iaixsl:when>
                                <iaixsl:when test="@type='no-buyer-info'">Geen informatie over de koper.</iaixsl:when>
                                <iaixsl:when test="@type='no-seller-info'">Geen informatie over de verkoper.</iaixsl:when>
                                <iaixsl:when test="@type='no-shipping'">Geen informatie over beschikbare zendingen.</iaixsl:when>
                                <iaixsl:when test="@type='no-order'">Geen bestelinformatie beschikbaar.</iaixsl:when>
                                <iaixsl:when test="@type='less_del'">Verwijdering van alle stukken is niet mogelijk. Uw bestelling moet minstens zoveel artikelen bevatten als u in de veiling hebt gekocht.</iaixsl:when>
                                <iaixsl:when test="@type='cant_del'">Het is niet mogelijk producten uit een bestelling te verwijderen, aangezien de hoeveelheid gelijk is aan de geboden hoeveelheid.</iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_ok'">De juiste kortingscode is ingevoerd.</iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_undefined'">De vermelde kortingscode bestaat niet.</iaixsl:when>

                                <iaixsl:when test="@type='rebates_code_used' and $rebates_code_used">
                                     <iaixsl:value-of select="$rebates_code_used"/>
                                </iaixsl:when>

                                <iaixsl:when test="@type='rebates_code_begins'">De promotie voor deze kortingscode is nog niet gestart.</iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_expires'">De promotie voor deze kortingscode is nu afgelopen.</iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_undefined'">Het ingevoerde kaartnummer is onjuist. Probeer het opnieuw of<a href="/contact.php">neem contact op met het winkelpersoneel</a>.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_expires'">De kaart is verlopen.</iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_blocked'">Deze kaart is geblokkeerd.<a href="/contact.php">Neem contact op met het winkelpersoneel</a>.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_ok'">De kaart is geactiveerd.</iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_application_error'">Er is een fout opgetreden bij het registreren van een verzoek.</iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_registered'">Uw account is geregistreerd als groothandel. U kunt geen andere aanvraag indienen.</iaixsl:when>
                                <iaixsl:when test="@type='ordered_empty'">Uw lijst met aangekochte producten is leeg.</iaixsl:when>

                                <iaixsl:when test="@type='shipping_error'">We verzenden niet naar uw land.</iaixsl:when>
                                <iaixsl:when test="@type='basket_empty'">Je mandje is leeg.</iaixsl:when>
                                <iaixsl:when test="@type='order_minimum'">Te kleine bestelwaarde.<iaixsl:if test="@value&gt;0">De minimale bestelwaarde is<iaixsl:if test="$signbeforeprice = 'true'">
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                        </iaixsl:if>
                                        <iaixsl:value-of select="@value"/>
                                        <iaixsl:if test="$signbeforeprice = 'false'">
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                        </iaixsl:if>

                                        
                                    </iaixsl:if>
                                </iaixsl:when>
                                <iaixsl:when test="@type='order_tomuch'">De waarde van het contract is te hoog.<iaixsl:if test="@value&gt;0">De maximale contractwaarde is<iaixsl:if test="$signbeforeprice = 'true'">
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                        </iaixsl:if>
                                        <iaixsl:value-of select="@value"/>
                                        <iaixsl:if test="$signbeforeprice = 'false'">
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                        </iaixsl:if>
                                    </iaixsl:if>
                                </iaixsl:when>
                                <iaixsl:when test="@type='requiredPhoneAndEmail'">De gekozen leveringsoptie vereist een telefoonnummer en een e-mailadres. Om deze informatie in te vullen, gebruikt u de<a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">Klik om naar de gegevens te gaan en de nodige informatie in te vullen.</iaixsl:attribute>het formulier voor het bewerken van klantgegevens</a>
                                    .
                                </iaixsl:when>
                                <iaixsl:when test="@type='noPickupSites'">Dit type levering is momenteel niet beschikbaar. Verzoek<a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">Klik om terug te keren naar uw keuze van leveringsmethode.</iaixsl:attribute>een andere wijze van levering of betaling te kiezen.</a>
                                    .
                                </iaixsl:when>
                                <iaixsl:when test="@type='noPickupStocks'">Persoonlijk afhalen van uw bestelling is op dit moment niet mogelijk. Alsjeblieft<a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">Klik om terug te keren naar uw keuze van leveringsmethode.</iaixsl:attribute>een andere wijze van levering of betaling te kiezen.</a>
                                    .
                                </iaixsl:when>

                                <iaixsl:when test="@type='rma_edit_error'">Er is een fout opgetreden tijdens het bewerken van de claim.</iaixsl:when>

                                <iaixsl:when test="@type='onlyHttps'">Kredietkaartbetalingen kunnen alleen via een gecodeerde verbinding worden verricht. Controleer of het adres van de winkel wordt voorafgegaan door HTTPS of neem contact op met de winkelondersteuning.</iaixsl:when>

                                <iaixsl:when test="@type='login_unavailable'">Het is niet mogelijk om vanuit een andere dienst verbinding te maken met de opgegeven rekening omdat de opgegeven rekening al verbonden is met een andere klantenrekening in onze winkel. U kunt uitloggen uit dit klantaccount en opnieuw inloggen met de gegevens van de externe dienst<iaixsl:value-of select="@value"/>.</iaixsl:when>

                                <iaixsl:otherwise>
                                    <iaixsl:value-of disable-output-escaping="yes" select="description"/>
                                </iaixsl:otherwise>

                        </iaixsl:choose></p>
                    </iaixsl:for-each>
            </div></div>
        </iaixsl:if>


        <iaixsl:if test="count(/shop/page/communicates/message) and not(/shop/page/communicates/message/@type = 'login_connect')">
            <div class="menu_messages_message" id="menu_messages_warning">


            <iaixsl:choose>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'message'">
                    <iaixsl:attribute name="class">menu_messages_message</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'warning'">
                    <iaixsl:attribute name="class">menu_messages_warning</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'error'">
                    <iaixsl:attribute name="class">menu_messages_error</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'success'">
                    <iaixsl:attribute name="class">menu_messages_success</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:otherwise/>
            </iaixsl:choose>


                <div class="menu_messages_message_sub">
                    <iaixsl:for-each select="/shop/page/communicates/message">
                        <p><iaixsl:choose>
                                <iaixsl:when test="@type='change_success' and $change_success">
                                     <iaixsl:value-of select="$change_success"/>
                                </iaixsl:when>
                                <iaixsl:when test="@type='change_success_despite_no_change' and $change_success_despite_no_change">
                                     <iaixsl:value-of select="$change_success_despite_no_change"/>
                                </iaixsl:when>

                                <iaixsl:when test="@type='affiliate_not_active'">U bent niet ingelogd of de winkel heeft geen actief affiliate programma.</iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_deleted'">Het aangegeven afleveradres is verwijderd.</iaixsl:when>
                                <iaixsl:when test="@type='affiliate_off'">Je hebt geen affiliate programma geactiveerd. Als u deze mogelijkheid wilt activeren, moet u contact opnemen met de winkelondersteuning.</iaixsl:when>
                                <iaixsl:when test="@type='affiliate_blocked'">Uw affiliate programma is geblokkeerd.</iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_selected'">Het opgegeven afleveradres kan niet het standaardadres worden.</iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_ok'">De juiste kortingscode is ingevoerd.</iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_application_added'">De kennisgeving is geregistreerd.</iaixsl:when>
                                <iaixsl:when test="@type='login_connected'">Succesvolle koppeling van een winkelrekening met een dienstenrekening<iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='login_disconnected'">De rekening is losgekoppeld van<iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='login_unavailable'">Het is niet mogelijk om vanuit een andere dienst verbinding te maken met de opgegeven rekening omdat de opgegeven rekening al verbonden is met een andere klantenrekening in onze winkel. U kunt uitloggen uit dit klantaccount en opnieuw inloggen met de gegevens van de externe dienst<iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='openid_login_canceled'">Inloggen geannuleerd.</iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_application_changed'">De kennisgeving is gewijzigd.</iaixsl:when>
                                <iaixsl:when test="@type='wisheslist_empty'">Je boodschappenlijstje is leeg.</iaixsl:when>
                                <iaixsl:when test="@type='products_requests_empty'">Uw lijst met gezochte producten is leeg.</iaixsl:when>
                                <iaixsl:when test="@type='products_requests_added'">Uw aanvraag voor het door u gezochte product is geregistreerd. U krijgt per e-mail antwoord of het mogelijk is het assortiment met dit product uit te breiden.</iaixsl:when>
                                <iaixsl:when test="@type='products_requests_removed'">De kennisgeving van het gezochte product is verwijderd.</iaixsl:when>
                                <iaixsl:when test="@type='rma_add'">De klacht is toegevoegd.</iaixsl:when>
                                <iaixsl:when test="@type='return_add'">De retourmelding is toegevoegd.</iaixsl:when>
                                <iaixsl:when test="@type='return_edit'">Wijzigingen in het rendement zijn geregistreerd</iaixsl:when>
                                <iaixsl:when test="@type='rma_edit'">De wijzigingen in de vordering zijn geregistreerd.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_reason'">Het spijt ons, maar we hebben geen standaard leveringskosten vastgesteld voor uw bestelling. U kunt uw bestelling blijven plaatsen, maar wij krijgen dan geen bindende leveringskosten. Dit wordt individueel bepaald door onze medewerkers nadat wij uw bestelling hebben geaccepteerd, waarna wij contact met u opnemen om dit te bevestigen. Als deze oplossing u niet bevalt,<a href="/contact.php">contact met ons opnemen</a>voor meer gedetailleerde informatie over de leveringskosten of om individueel te bestellen.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_reason_worth'">Het spijt ons, maar we hebben geen standaard leveringskosten gedefinieerd voor deze bestelwaarde. U kunt uw bestelling blijven plaatsen, maar wij krijgen dan geen bindende leveringskosten. Dit wordt individueel bepaald door onze medewerkers nadat wij uw bestelling hebben geaccepteerd, waarna wij contact met u opnemen om dit te bevestigen. Als deze oplossing u niet bevalt,<a href="/contact.php">contact met ons opnemen</a>voor meer gedetailleerde informatie over de leveringskosten of om individueel te bestellen.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_reason_weight'">Het spijt ons, maar we hebben geen standaard leveringskosten vastgesteld voor dit bestelgewicht. U kunt uw bestelling blijven plaatsen, maar wij krijgen dan geen bindende leveringskosten. Dit wordt individueel bepaald door onze medewerkers nadat wij uw bestelling hebben geaccepteerd, waarna wij contact met u opnemen om dit te bevestigen. Als deze oplossing u niet bevalt,<a href="/contact.php">contact met ons opnemen</a>voor meer gedetailleerde informatie over de leveringskosten of om individueel te bestellen.</iaixsl:when>
                                <iaixsl:when test="@type='mailing_addsuccess'">Het e-mailadres is toegevoegd aan de verzendlijst.</iaixsl:when>
                                <iaixsl:when test="@type='mailing_removesuccess'">Het e-mailadres is verwijderd van de mailinglijst.</iaixsl:when>
                                <iaixsl:when test="@type = 'mailing_nosuchemail'">We hebben het door u opgegeven e-mailadres niet gevonden in onze mailingdatabase.</iaixsl:when>
                                <iaixsl:when test="@type = 'mailing_sendingconfirm'">Er is een brief gestuurd naar het door u opgegeven e-mailadres om wijzigingen in onze mailinglijst te bevestigen. Ontvang de mail en volg de aanwijzingen in het bericht.</iaixsl:when>
                                <iaixsl:otherwise>
                                        <iaixsl:value-of disable-output-escaping="yes" select="description"/>
                                </iaixsl:otherwise>
                        </iaixsl:choose></p>
                    </iaixsl:for-each>
            </div></div>
        </iaixsl:if>


        <iaixsl:if test="/shop/order_edit/@order_number">
            <div class="menu_messages_message" id="menu_messages_warning">
                <div class="menu_messages_message_sub">
                    <p>U bewerkt het bestelnummer<iaixsl:value-of select="/shop/order_edit/@order_number"/>. Breng wijzigingen aan in uw bestelling of<a>
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/order_edit/@cancel_lik"/></iaixsl:attribute>terug naar bestelgegevens</a>.
                    </p>
                </div>
            </div>
        </iaixsl:if>


         <iaixsl:if test="/shop/return_edit/@return_id">
            <div class="menu_messages_message" id="menu_messages_warning">
                <div class="menu_messages_message_sub">
                    <p>U bewerkt het retournummer<iaixsl:value-of select="/shop/return_edit/@return_id"/>. Breng wijzigingen aan in de aangifte of keer terug naar de<a>
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/return_edit/@cancel_link"/></iaixsl:attribute>retourgegevens</a>.
                    </p>
                </div>
            </div>
        </iaixsl:if>

        <!--Warianty produktu (projector_productversions, 110590.1)-->
        <iaixsl:if test="compare/@count &gt; 0 or /shop/page/@cache_html = 'true'">
            <div id="menu_compare_product" class="compare mb-2 pt-sm-3 pb-sm-3 mb-sm-3 mx-3 ">
                <iaixsl:if test="/shop/page/@cache_html = 'true'">
                    <iaixsl:attribute name="style">display: none;</iaixsl:attribute>
                </iaixsl:if>

                <div class="compare__label d-none">Toegevoegd ter vergelijking</div>

                <div class="compare__sub">
                    <iaixsl:for-each select="compare/product">
                        <a class="compare__item btn --solid --icon-right icon-x">
                            <iaixsl:attribute name="href"><iaixsl:value-of select="@removelink"/></iaixsl:attribute>
                            <iaixsl:attribute name="data-remove_link"><iaixsl:value-of select="@removelink"/></iaixsl:attribute>
                            <iaixsl:attribute name="data-link"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                            <img>
                                <iaixsl:attribute name="src"><iaixsl:value-of select="iconsmall"/></iaixsl:attribute>
                                <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
                            </img>
                        </a>
                    </iaixsl:for-each>
                </div>

                <div class="compare__buttons">
                    <iaixsl:if test="compare/@count = 1">
                        <iaixsl:attribute name="class">compare__buttons --one</iaixsl:attribute>
                    </iaixsl:if>
                    <iaixsl:if test="compare/@count &gt; 1 or /shop/page/@cache_html = 'true'">
                        <a class="compare__button btn --outline" href="product-compare.php">
                            <iaixsl:if test="/shop/action/productCompare/@url">
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/productCompare/@url"/></iaixsl:attribute>
                            </iaixsl:if>
                            <iaixsl:attribute name="title">Alle producten vergelijken</iaixsl:attribute>
                            <iaixsl:attribute name="target">_blank</iaixsl:attribute>
                            <span>Producten vergelijken</span><span class="d-sm-none">(<iaixsl:value-of select="compare/@count"/>)</span>
                        </a>
                    </iaixsl:if>

                    <a class="compare__button --remove d-none d-sm-block">
                        <iaixsl:attribute name="href"><iaixsl:choose><iaixsl:when test="/shop/action/settings/@url"><iaixsl:value-of select="/shop/action/settings/@url"/></iaixsl:when><iaixsl:otherwise>settings.php</iaixsl:otherwise></iaixsl:choose>?comparers=remove&amp;product=<iaixsl:choose><iaixsl:when test="/shop/page/@cache_html = 'true'">###</iaixsl:when><iaixsl:otherwise><iaixsl:for-each select="compare/product"><iaixsl:value-of select="@id"/><iaixsl:if test="not(count(../product) = position())">,</iaixsl:if></iaixsl:for-each></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>

                        <iaixsl:attribute name="title">Alle producten verwijderen</iaixsl:attribute>Producten verwijderen</a>
                </div>

                <iaixsl:if test="/shop/page/@cache_html = 'true'">
                    <script>
                        var cache_html = true;
                    </script>
                </iaixsl:if>
            </div>
        </iaixsl:if>
    <!--Nazwa produktu na karcie (projector_productname, 116191.1)-->
			<section id="projector_productname" class="product_name  mb-5 mb-md-3 col-12">
				<div class="product_name__wrapper pr-md-2">
					
					<h1 class="product_name__name m-0">
						<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/>
					</h1>
				</div>

				<div class="product_info_top">
                    
					
					<iaixsl:if test="not(page/projector/product/firm/@name = '')">
						<div class="producer item_info">
							<span>Fabrikant:</span>
							<a class="brand">
								<iaixsl:attribute name="title">Klik om alle producten van deze fabrikant te zien</iaixsl:attribute>
								<iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/firm/@productslink"/></iaixsl:attribute>
								<iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/firm/@name"/>
							</a>
						</div>
					</iaixsl:if>

                    
					<iaixsl:if test="page/projector/product/series">
						<div class="series item_info">
							<span>Serie:</span>
							<a>
								<iaixsl:attribute name="title">Klik om alle producten uit de serie te zien</iaixsl:attribute>
								<iaixsl:attribute name="href"><iaixsl:value-of select="page/projector/product/series/@link"/></iaixsl:attribute>
								<iaixsl:value-of select="page/projector/product/series/@name"/>
							</a>
						</div>
					</iaixsl:if>

					
					<iaixsl:if test="page/projector/product/@code">
						<div class="code item_info">
							<span>Productcode:</span>
							<strong><iaixsl:value-of select="page/projector/product/@code"/></strong>
						</div>
					</iaixsl:if>
					
				</div>

			</section>
            <iaixsl:if test="/shop/page/projector/product/firm/@icon"> </iaixsl:if>
		<!--Zdjęcia produktu (projector_photos, 119731.1)-->
			<section id="projector_photos" class="photos col-12 col-md-6 col-lg-7 d-flex align-items-start mb-2 mb-md-4">
				<iaixsl:choose>
					<iaixsl:when test="count(/shop/page/projector/product/enclosures/images/enclosure) &gt; 0 or /shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]">
						
						<iaixsl:variable name="magnify"/>
						
						<iaixsl:variable name="thumbnailsCount">4</iaixsl:variable>
						<iaixsl:variable name="enclosureCount"><iaixsl:value-of select="count(/shop/page/projector/product/enclosures/images/enclosure)"/></iaixsl:variable>
						<iaixsl:variable name="bundledCount"><iaixsl:value-of select="count(/shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon])"/></iaixsl:variable>
						<iaixsl:variable name="imagesSum"><iaixsl:value-of select="$enclosureCount + $bundledCount"/></iaixsl:variable>
                        <iaixsl:variable name="trait_ID_youtube">13158</iaixsl:variable>
                        <iaixsl:variable name="trait_ID_3d">13156</iaixsl:variable>
            <script type="text/javascript">
             <iaixsl:if test="/shop/page/projector/product/traits/trait[@groupid=$trait_ID_3d]">
                var _3d_src = '<iaixsl:value-of select="/shop/page/projector/product/traits/trait[@groupid=$trait_ID_3d]/@traitlongdescription"/>';
            </iaixsl:if>
            
            </script>
						<iaixsl:if test="$imagesSum &gt; 1">
							
							<div id="photos_nav" class="photos__nav d-flex flex-md-column">
								<iaixsl:if test="$imagesSum &gt; $thumbnailsCount">
									<iaixsl:attribute name="data-more-slides"><iaixsl:value-of select="$imagesSum - $thumbnailsCount"/></iaixsl:attribute>
								</iaixsl:if>

                                <iaixsl:if test="/shop/page/projector/product/traits/trait[@groupid=$trait_ID_3d]">
                                <figure class="photos__figure --nav --no-click --v3d">
                                    <i class="icon-3d"></i>
                                </figure>
                                </iaixsl:if>
                                <iaixsl:if test="/shop/page/projector/product/traits/trait[@groupid=$trait_ID_youtube]">
                                <iaixsl:for-each select="/shop/page/projector/product/traits/trait[@groupid=$trait_ID_youtube]">
                                    <figure class="photos__figure --nav --no-click --youtube">
                                    <iaixsl:attribute name="data-link"><iaixsl:value-of select="@traitlongdescription"/></iaixsl:attribute>
                                    <iaixsl:attribute name="data-id"><iaixsl:value-of select="position()"/></iaixsl:attribute>
                                    <i class="icon-youtube-proj"></i>
                                    </figure>
                                </iaixsl:for-each>
                                </iaixsl:if>

								<iaixsl:for-each select="page/projector/product/enclosures/images/enclosure">
									<iaixsl:if test="not(position() - 1 &gt; $thumbnailsCount)">
										<figure class="photos__figure --nav">
											<iaixsl:choose>
												<iaixsl:when test="(position() - 1 = $thumbnailsCount) and ($imagesSum &gt; $thumbnailsCount)">
													<iaixsl:attribute name="class">photos__figure --nav --more</iaixsl:attribute>
													<a class="photos__link --nav --more">
														<iaixsl:attribute name="data-more"><iaixsl:value-of select="$imagesSum - $thumbnailsCount"/></iaixsl:attribute>
														<iaixsl:attribute name="data-slick-index"><iaixsl:value-of select="position() - 1"/></iaixsl:attribute>
														<iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="@url"/></iaixsl:attribute>
														<span class="photos__more_top">+<span class="photos__more_count"><iaixsl:value-of select="$imagesSum - $thumbnailsCount"/></span></span>
														<span class="photos__more_bottom">foto's</span>
													</a>
												</iaixsl:when>
												<iaixsl:otherwise>
													<a class="photos__link --nav">
														<iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="@url"/></iaixsl:attribute>
														<iaixsl:attribute name="data-slick-index"><iaixsl:value-of select="position() - 1"/></iaixsl:attribute>
														<iaixsl:attribute name="data-width"><iaixsl:value-of select="@icon_width"/></iaixsl:attribute>
														<iaixsl:attribute name="data-height"><iaixsl:value-of select="@icon_height"/></iaixsl:attribute>
														<img class="photos__photo b-lazy --nav">
															<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/></iaixsl:attribute>
															<iaixsl:attribute name="data-src"><iaixsl:value-of select="@icon"/></iaixsl:attribute>
														</img>
													</a>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</figure>
									</iaixsl:if>
								</iaixsl:for-each>
								<iaixsl:for-each select="page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]">
									<iaixsl:variable name="positionCount"><iaixsl:value-of select="$enclosureCount + position()"/></iaixsl:variable>
									<iaixsl:if test="not($positionCount - 1 &gt; $thumbnailsCount)">
										<figure class="photos__figure --nav">
											<iaixsl:choose>
												<iaixsl:when test="($positionCount - 1 = $thumbnailsCount) and ($imagesSum &gt; $thumbnailsCount)">
													<iaixsl:attribute name="class">photos__figure --nav --more</iaixsl:attribute>
													<a class="photos__link --nav --more">
														<iaixsl:attribute name="data-more"><iaixsl:value-of select="$imagesSum - $thumbnailsCount"/></iaixsl:attribute>
														<iaixsl:attribute name="data-slick-index"><iaixsl:value-of select="$positionCount - 1"/></iaixsl:attribute>
														<iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="enclosures/images/enclosure[1]/@url"/></iaixsl:attribute>
														<span class="photos__more_top">+<span class="photos__more_count"><iaixsl:value-of select="$imagesSum - $thumbnailsCount"/></span></span>
														<span class="photos__more_bottom">foto's</span>
													</a>
												</iaixsl:when>
												<iaixsl:otherwise>
													<a class="photos__link --nav">
														<iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="enclosures/images/enclosure[1]/@url"/></iaixsl:attribute>
														<iaixsl:attribute name="data-slick-index"><iaixsl:value-of select="$positionCount - 1"/></iaixsl:attribute>
														<iaixsl:attribute name="data-width"><iaixsl:value-of select="enclosures/images/enclosure[1]/@icon_width"/></iaixsl:attribute>
														<iaixsl:attribute name="data-height"><iaixsl:value-of select="enclosures/images/enclosure[1]/@icon_height"/></iaixsl:attribute>
														<img class="photos__photo b-lazy --nav">
															<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
															<iaixsl:attribute name="data-src"><iaixsl:value-of select="enclosures/images/enclosure[1]/@icon"/></iaixsl:attribute>
														</img>
													</a>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</figure>
									</iaixsl:if>
								</iaixsl:for-each>
							</div>
						</iaixsl:if>

						
						<div id="photos_slider" class="photos__slider">
							<iaixsl:if test="$imagesSum &gt; 1">
								<iaixsl:attribute name="data-nav">true</iaixsl:attribute>
							</iaixsl:if>

							<div class="photos___slider_wrapper">
								<iaixsl:for-each select="page/projector/product/enclosures/images/enclosure">
									<figure class="photos__figure">
                                        <div class="photos__wrapper">
                                            <a class="photos__link">
                                                <iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="@url"/></iaixsl:attribute>
                                                <iaixsl:attribute name="data-width"><iaixsl:value-of select="@width"/></iaixsl:attribute>
                                                <iaixsl:attribute name="data-height"><iaixsl:value-of select="@height"/></iaixsl:attribute>
                                                <img class="photos__photo slick-loading">
                                                    <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-lazy"><iaixsl:value-of select="@medium"/></iaixsl:attribute>
                                                    <iaixsl:if test="$magnify"><iaixsl:attribute name="data-src"><iaixsl:value-of select="@url"/></iaixsl:attribute></iaixsl:if>
                                                </img>
                                            </a>
                                        </div>
									</figure>
								</iaixsl:for-each>
								<iaixsl:for-each select="page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]">
									<figure class="photos__figure">
                                        <div class="photos__wrapper">
										<a class="photos__link">
											<iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="enclosures/images/enclosure[1]/@url"/></iaixsl:attribute>
											<iaixsl:attribute name="data-width"><iaixsl:value-of select="enclosures/images/enclosure[1]/@width"/></iaixsl:attribute>
											<iaixsl:attribute name="data-height"><iaixsl:value-of select="enclosures/images/enclosure[1]/@height"/></iaixsl:attribute>
											<img class="photos__photo slick-loading">
												<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
												<iaixsl:attribute name="data-lazy"><iaixsl:value-of select="enclosures/images/enclosure[1]/@medium"/></iaixsl:attribute>
												<iaixsl:if test="$magnify"><iaixsl:attribute name="data-src"><iaixsl:value-of select="enclosures/images/enclosure[1]/@url"/></iaixsl:attribute></iaixsl:if>
											</img>
										</a>
                                        </div>
									</figure>
								</iaixsl:for-each>
							</div>

                            

							
							<iaixsl:if test="$magnify"><span class="photos__magnify"><iaixsl:value-of select="$magnify"/></span></iaixsl:if>

						
						</div>
					</iaixsl:when>
					<iaixsl:otherwise>
						<div id="photos_default" class="photos__default d-flex justify-content-center">
							<figure class="photos__default_figure">
								<img class="photos__default_img">
									<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/projector/product/icon"/></iaixsl:attribute>
									<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/></iaixsl:attribute>
								</img>
							</figure>
						</div>
					</iaixsl:otherwise>
				</iaixsl:choose>
			</section>

			
			<div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="pswp__bg"/>
				<div class="pswp__scroll-wrap">
					<div class="pswp__container">
						<div class="pswp__item"/>
						<div class="pswp__item"/>
						<div class="pswp__item"/>
					</div>
					<div class="pswp__ui pswp__ui--hidden">
						<div class="pswp__top-bar">
							<div class="pswp__counter"/>
							<button class="pswp__button pswp__button--close" title="Close (Esc)"/>
							<button class="pswp__button pswp__button--share" title="Share"/>
							<button class="pswp__button pswp__button--fs" title="Toggle fullscreen"/>
							<button class="pswp__button pswp__button--zoom" title="Zoom in/out"/>

							<div class="pswp__preloader">
								<div class="pswp__preloader__icn">
								<div class="pswp__preloader__cut">
									<div class="pswp__preloader__donut"/>
								</div>
								</div>
							</div>
						</div>
						<div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
							<div class="pswp__share-tooltip"/>
						</div>

						<button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
						</button>

						<button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
						</button>

						<div class="pswp__caption">
							<div class="pswp__caption__center"/>
						</div>
					</div>
				</div>
			</div>
		<!--Dokładne dane o produkcie (projector_details, 116061.1)-->

            
            <iaixsl:variable name="showComments"/>
            
            <iaixsl:variable name="thresholdEnd_enable"/>
            <iaixsl:variable name="param_projector"/>
            <iaixsl:variable name="param_kropa"/>
            <iaixsl:variable name="amount_txt">%d </iaixsl:variable>
            <iaixsl:variable name="amount_txt2">%d </iaixsl:variable>
            <iaixsl:variable name="fashion_view">0</iaixsl:variable>
            <iaixsl:variable name="sizes_projector">1</iaixsl:variable>
            <iaixsl:variable name="versions_projector">1</iaixsl:variable>
            <iaixsl:variable name="points_in_prices_section">1</iaixsl:variable>
            <iaixsl:variable name="disable_projectorv3_ajax">1</iaixsl:variable>
            <iaixsl:variable name="advanceprice_txt">Voordat een bestelling met dit product wordt uitgevoerd, kan het nodig zijn een voorschot te betalen ten bedrage van</iaixsl:variable>
            <iaixsl:variable name="suma_cen_txt"/>
            <iaixsl:variable name="wysylka_bundle_txt">Wysyłka zaznaczonych &lt;span class="bundle_item_count"&gt;&lt;/span&gt; produktów:</iaixsl:variable>
            <iaixsl:variable name="cena_bundle_txt">Prijs van geselecteerde producten:</iaixsl:variable>
            <iaixsl:variable name="brutto_bundle_txt">van geselecteerde brutoproducten</iaixsl:variable>
            <iaixsl:variable name="taniej_bundle_txt">Kupując &lt;span class="bundle_item_count"&gt;&lt;/span&gt; produkty jako kolekcję zaoszczędzasz</iaixsl:variable>
            <iaixsl:variable name="projector_form_privacy_info_text1">De gegevens worden verwerkt in overeenstemming met</iaixsl:variable>
            <iaixsl:variable name="projector_form_privacy_info_text2">. Door het in te dienen, aanvaardt u de bepalingen ervan.</iaixsl:variable>
            <iaixsl:variable name="dokoszyka_bundle_txt">Naar uw mandje:</iaixsl:variable>
            <iaixsl:variable name="dokoszykabu_bundle_txt">Geselecteerde producten toevoegen aan winkelmandje</iaixsl:variable>

            
            <script class="ajaxLoad">
                cena_raty = <iaixsl:value-of select="page/projector/product/price/@value"/>;
                <iaixsl:choose>
                    <iaixsl:when test="basket/@login">var  client_login = 'true'</iaixsl:when>
                    <iaixsl:otherwise>var  client_login = 'false'</iaixsl:otherwise>
                </iaixsl:choose>
                var  client_points = '<iaixsl:value-of select="/shop/basket/@client_points"/>';
                var  points_used = '<iaixsl:value-of select="/shop/basket/@points_used"/>';
                var  shop_currency = '<iaixsl:value-of select="/shop/currency/@name"/>';
                var product_data = {
                "product_id": '<iaixsl:value-of select="/shop/page/projector/product/@id"/>',
                <iaixsl:if test="/shop/page/projector/product/@for_points = 'true'">
                    "for_points": '<iaixsl:value-of select="/shop/page/projector/product/@for_points"/>',
                </iaixsl:if>
                "currency":"<iaixsl:value-of select="/shop/currency/@name"/>",
                "product_type":"<iaixsl:value-of select="page/projector/product/@product_type"/>",
                "unit":"<iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/sizes/@unit"/>",
                "unit_plural":"<iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/sizes/@unit_plural"/>",

                "unit_sellby":"<iaixsl:value-of select="page/projector/product/sizes/@unit_sellby"/>",
                "unit_precision":"<iaixsl:value-of select="page/projector/product/sizes/@unit_precision"/>",

                "base_price":{
                <iaixsl:for-each select="/shop/page/projector/product/sizes/prices/@*">
                    "<iaixsl:value-of select="name()"/>":"<iaixsl:value-of select="."/>",
                </iaixsl:for-each>
                <iaixsl:for-each select="/shop/page/projector/product/price/@*">
                    "<iaixsl:value-of select="name()"/>":"<iaixsl:value-of select="."/>"<iaixsl:if test="position() != last()">,</iaixsl:if>
                </iaixsl:for-each>
                },

                "order_quantity_range":{
                <iaixsl:for-each select="/shop/page/projector/product/order_quantity_range/*">
                    "<iaixsl:value-of select="name()"/>":"<iaixsl:value-of select="."/>"<iaixsl:if test="position() != last()">,</iaixsl:if>
                </iaixsl:for-each>
                }

                <iaixsl:if test="$disable_projectorv3_ajax = '0'">
                    ,
                    "sizes":{
                    <iaixsl:for-each select="/shop/page/projector/product/sizes/size">
                    "<iaixsl:value-of select="@type"/>":
                    {
                    <iaixsl:for-each select="@*">
                        "<iaixsl:value-of select="name()"/>":"<iaixsl:value-of select="."/>",
                    </iaixsl:for-each>
                    <iaixsl:for-each select="/shop/page/projector/product/bundle_price">
                        "<iaixsl:value-of select="name()"/>":{
                        <iaixsl:for-each select="@*">
                        "<iaixsl:value-of select="name()"/>":"<iaixsl:value-of select="."/>"<iaixsl:if test="position() != last()">,</iaixsl:if>
                        </iaixsl:for-each>
                        },
                    </iaixsl:for-each>
                    <iaixsl:if test="price/rebateNumber/rebate">
                        "rebateNumber":[
                        <iaixsl:for-each select="price/rebateNumber/rebate">
                        {
                        <iaixsl:for-each select="@*">
                            "<iaixsl:value-of select="name()"/>":"<iaixsl:value-of select="."/>"<iaixsl:if test="position() != last()">,</iaixsl:if>
                        </iaixsl:for-each>
                        }<iaixsl:if test="position() != last()">,</iaixsl:if>
                        </iaixsl:for-each>
                        ],
                    </iaixsl:if>
                    <iaixsl:if test="availability/shipping_time">"shipping_time":{<iaixsl:for-each select="availability/shipping_time ">
                        <iaixsl:for-each select="@*">
                            "<iaixsl:value-of select="name()"/>":"<iaixsl:value-of disable-output-escaping="yes" select="."/>"<iaixsl:if test="position() != last()">,</iaixsl:if>
                        </iaixsl:for-each>
                        </iaixsl:for-each>},</iaixsl:if>
                    <iaixsl:if test="availability/delay_time">
                        "delay_time":{
                        <iaixsl:for-each select="availability/delay_time">
                        <iaixsl:for-each select="@*">
                            "<iaixsl:value-of select="name()"/>":"<iaixsl:value-of disable-output-escaping="yes" select="."/>"<iaixsl:if test="position() != last()">,</iaixsl:if>
                        </iaixsl:for-each>
                        </iaixsl:for-each>
                        },
                    </iaixsl:if>

                    <iaixsl:for-each select="node()">
                        "<iaixsl:value-of select="name()"/>":{
                        <iaixsl:for-each select="@*">
                        "<iaixsl:value-of select="name()"/>":"<iaixsl:value-of select="."/>"<iaixsl:if test="position() != last()">,</iaixsl:if>
                        </iaixsl:for-each>
                        }<iaixsl:if test="position() != last()">,</iaixsl:if>
                    </iaixsl:for-each>
                    }<iaixsl:if test="position() != last()">,</iaixsl:if>
                    </iaixsl:for-each>
                    }
                </iaixsl:if>

                }
                var  trust_level = '<iaixsl:value-of select="/shop/@trust_level"/>';
            </script>
            

            <form id="projector_form" action="/basketchange.php" method="post">
                <iaixsl:if test="/shop/action/basketChange/@url">
                    <iaixsl:attribute name="action"><iaixsl:value-of select="/shop/action/basketChange/@url"/></iaixsl:attribute>
                </iaixsl:if>
                <iaixsl:attribute name="data-product_id"><iaixsl:value-of select="/shop/page/projector/product/@id"/></iaixsl:attribute>
                <iaixsl:attribute name="class">
                     col-12 col-md-6 col-lg-5 mb-2 mb-md-4 
                    <iaixsl:if test="/shop/page/projector/bundled/@collection = 'true'"> collection</iaixsl:if>
                    <iaixsl:if test="/shop/page/projector/product/@price_from_formula='true'"> price_from_formula</iaixsl:if>
                    <iaixsl:if test="$fashion_view and not($fashion_view = '0')">fashion_view</iaixsl:if>
                </iaixsl:attribute>

                <input id="projector_product_hidden" type="hidden" name="product"><iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/product/@id"/></iaixsl:attribute></input>
                <input id="projector_size_hidden" type="hidden" name="size" autocomplete="off">
                    <iaixsl:choose>
                        <iaixsl:when test="page/projector/product/sizes/size[@selected='true']">
                            <iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/product/sizes/size[@selected='true']/@type"/></iaixsl:attribute>
                        </iaixsl:when>
                        <iaixsl:when test="page/projector/product/sizes/size/@type = 'onesize'">
                            <iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/product/sizes/size/@type"/></iaixsl:attribute>
                        </iaixsl:when>
                    </iaixsl:choose>
                </input>
                <input id="projector_mode_hidden" type="hidden" name="mode" value="1"/>

                <iaixsl:if test="page/projector/product/exchange/@exchange_id">
                    <input id="projector_exchange_id_hidden" type="hidden" name="exchange_id">
                        <iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/product/exchange/@exchange_id"/></iaixsl:attribute>
                    </input>
                    <input id="projector_change_hidden" type="hidden" name="change" value="change"/>
                </iaixsl:if>

                
                <div id="projector_details" class="product_info col-12 col-md-6 col-lg-5 mb-2 mb-md-4 ">
					<iaixsl:attribute name="class">product_info col-12 col-md-6 col-lg-5 mb-2 mb-md-4<iaixsl:if test="/shop/page/projector/product/@product_type = 'product_bundle'"> product_bundle</iaixsl:if></iaixsl:attribute>
                    
                    
                    <iaixsl:if test="(page/projector/product/multiversions) and (count(page/projector/product/multiversions/multi_version) &gt; 1)">
                        <div id="multi_versions">
                            <iaixsl:for-each select="page/projector/product/multiversions/multi_version">
                                <div class="multi_version product_section">
                                    <div class="fancy-select">
                                        <iaixsl:attribute name="id">mw_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                        <div class="trigger">
                                            <iaixsl:choose>
                                                <iaixsl:when test="item[@selected='true']/values/value">
                                                    <iaixsl:for-each select="item[@selected='true']/values/value">
                                                    <iaixsl:if test="not(position() = 1)">
                                                         / 
                                                    </iaixsl:if>
                                                    <em class="multiversion_label"><iaixsl:value-of disable-output-escaping="yes" select="../../../@name"/>:</em><span class="multiversion_value"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
                                                    </iaixsl:for-each>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>Selecteer...</iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </div>
                                        <ul class="options">
                                            <iaixsl:for-each select="item">
                                                <iaixsl:variable name="value_name"><iaixsl:for-each select="values/value"><iaixsl:if test="not(position() = 1)"> / </iaixsl:if><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:for-each></iaixsl:variable>
                                                <li>
                                                    <iaixsl:attribute name="class"><iaixsl:if test="@disabled='true'">disabled </iaixsl:if><iaixsl:if test="@selected='true'">selected</iaixsl:if></iaixsl:attribute>
                                                    <iaixsl:attribute name="id">v<iaixsl:value-of disable-output-escaping="yes" select="values/@id"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-values_id"><iaixsl:value-of disable-output-escaping="yes" select="values/@id"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-value"><iaixsl:value-of select="position()"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-title"><iaixsl:value-of select="$value_name"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-product"><iaixsl:value-of select="products/product/@product_id"/></iaixsl:attribute>
                                                    <a>
                                                        <iaixsl:attribute name="title"><iaixsl:value-of select="$value_name"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="products/product/@url"/></iaixsl:attribute>
                                                        <iaixsl:for-each select="values/value">
                                                            <iaixsl:if test="@gfx">
                                                            <span class="gfx">
                                                                <img>
                                                                    <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="$value_name"/></iaixsl:attribute>
                                                                </img>
                                                            </span>
                                                            </iaixsl:if>
                                                        </iaixsl:for-each>
                                                        <span>
                                                            <span><em class="multiversion_label"><iaixsl:value-of disable-output-escaping="yes" select="../@name"/>:</em><span class="multiversion_value"><iaixsl:value-of disable-output-escaping="yes" select="$value_name"/></span></span>
                                                            <iaixsl:for-each select="values/value">
                                                                <iaixsl:if test="description"><div class="description"><iaixsl:value-of disable-output-escaping="yes" select="description"/></div></iaixsl:if>
                                                            </iaixsl:for-each>
                                                            <p class="conflict_txt">Als u dit item selecteert, moeten andere opties worden aangepast.</p>
                                                        </span>
                                                    </a>
                                                </li>
                                            </iaixsl:for-each>
                                        </ul>
                                        <p class="conflict_txt">Selecteer een andere optie</p>
                                        <iaixsl:if test="description"><div class="description"><iaixsl:value-of disable-output-escaping="yes" select="description"/></div></iaixsl:if>
                                    </div>
                                    <iaixsl:if test="@gfx">
                                        <div class="gfx">
                                            <img>
                                            <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                            <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                            </img>
                                        </div>
                                    </iaixsl:if>
                                </div>
                            </iaixsl:for-each>
                        </div>
                    </iaixsl:if>

                    
                    <iaixsl:if test="(page/projector/product/versions/@count &gt; 0) and (count(page/projector/product/multiversions/multi_version) = 1)">
                        <iaixsl:choose>
                            <iaixsl:when test="not($versions_projector = '0')">
                                <div class="product_section versions mb-3">
                                    <div class="fancy-select">
                                        <div class="trigger">
                                            <div class="version_label"><iaixsl:value-of select="page/projector/product/versions/@name"/>:</div><span class="version_selected_name"><iaixsl:value-of select="page/projector/product/versions/version[@id = /shop/page/projector/product/@id]/@name"/></span>
                                        </div>
                                        <ul class="options">
                                            <iaixsl:for-each select="page/projector/product/versions/version">
                                                <li>
                                                    <a class="version_item">
                                                        <iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                        <iaixsl:if test="@id = /shop/page/projector/product/@id">
                                                            <iaixsl:attribute name="class">version_item selected</iaixsl:attribute>
                                                        </iaixsl:if>
                                                        
                                                        <span class="version_name"><iaixsl:value-of select="@name"/></span>
                                                    </a>
                                                </li>
                                            </iaixsl:for-each>
                                        </ul>
                                    </div>
                                </div>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                    <div class="product_section versions row mx-n1">
                                    <iaixsl:for-each select="page/projector/product/versions/version">
                                        <div class="col-4 col-md-2 p-1 select_link">
                                            <a>
                                                <iaixsl:if test="@id = /shop/page/projector/product/@id">
                                                    <iaixsl:attribute name="class">selected</iaixsl:attribute>
                                                </iaixsl:if>
                                                <iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                <iaixsl:if test="@gfx">
                                                    <span class="gfx">
                                                        <img>
                                                            <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                        </img>
                                                    </span>
                                                </iaixsl:if>
                                            </a>
                                        </div>
                                    </iaixsl:for-each>
                                </div>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                    </iaixsl:if>

                    
                    <div class="product_section sizes" id="projector_sizes_cont">
                        <iaixsl:if test="/shop/page/projector/product/sizes/size/@type = 'onesize' or /shop/page/projector/product/sizes/size/@type = 'uniw'">
                            <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                        </iaixsl:if>
                        <iaixsl:if test="((page/projector/text_sizesgroup) and (page/projector/text_sizesgroup != '')) or /shop/page/projector/product/sizes_chart">
                            <iaixsl:attribute name="data-show_size">true</iaixsl:attribute>
                        </iaixsl:if>
                        <div class="sizes__sub">
                            <iaixsl:choose>
                                <iaixsl:when test="(count(/shop/page/projector/product/sizes/size) &gt; 1) and not($sizes_projector = '0')">
                                    <iaixsl:attribute name="class">sizes__sub select</iaixsl:attribute>
                                    <select name="projector_sizes" id="projector_sizes_select" class="col p-0">
                                        <option value="">Selecteer grootte</option>
                                        <iaixsl:for-each select="page/projector/product/sizes/size">
                                            <option>
                                                <iaixsl:attribute name="class">size_<iaixsl:value-of select="@type"/><iaixsl:if test="(@amount = '0')"> disabled</iaixsl:if></iaixsl:attribute>
                                                <iaixsl:if test="@selected='true'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                <iaixsl:attribute name="data-count"><iaixsl:value-of select="@amount"/></iaixsl:attribute>
                                                <iaixsl:if test="availability/@status_id">
                                                    <iaixsl:attribute name="data-statusid"><iaixsl:value-of select="availability/@status_id"/></iaixsl:attribute>
                                                </iaixsl:if>
                                                <iaixsl:value-of select="@description"/>
                                            </option>
                                        </iaixsl:for-each>
                                    </select>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:for-each select="page/projector/product/sizes/size">
                                        <div class="col-3 p-1">
                                            <iaixsl:choose>
                                                <iaixsl:when test="(@amount &gt; 0) or (@amount = '-1')">
                                                    <a class="select_button">
                                                        <iaixsl:if test="@selected='true'"><iaixsl:attribute name="class">select_button active</iaixsl:attribute></iaixsl:if>
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/product/@link"/>?selected_size=<iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-type"><iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                        <iaixsl:value-of select="@description"/>
                                                    </a>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <a class="select_button disabled">
                                                        <iaixsl:if test="@selected='true'"><iaixsl:attribute name="class">select_button disabled active</iaixsl:attribute></iaixsl:if>
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/product/@link"/>?selected_size=<iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-type"><iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                        <iaixsl:value-of select="@description"/>
                                                    </a>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </div>
                                    </iaixsl:for-each>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </div>
                    </div>

                    <iaixsl:if test="((page/projector/text_sizesgroup) and (page/projector/text_sizesgroup != '')) or /shop/page/projector/product/sizes_chart">
                        <div class="product_section show_size" id="projector_show_size">
                            <a href="#show_size_cms" class="show_size_cms btn --icon-left --medium icon-pencil-and-ruler">Kijk welke maat je moet kiezen.</a>
                        </div>
                    </iaixsl:if>

                    <div class="projector_product_status_wrapper">
                        
                        <div id="projector_status_description_wrapper">
                            <iaixsl:attribute name="style">display:block</iaixsl:attribute>
                            <label>Beschikbaarheid:</label>
                            <div>
                                
                                <iaixsl:if test="/shop/page/projector/product/sizes/size/availability/@status_gfx">
																	<span class="projector_status_gfx_wrapper">
                                    <img id="projector_status_gfx" class="projector_status_gfx" alt="status_icon">
                                        <iaixsl:attribute name="src"><iaixsl:choose><iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/@status_gfx"><iaixsl:value-of select="/shop/page/projector/product/sizes/size[@selected='true']/availability/@status_gfx"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="/shop/page/projector/product/sizes/size/availability/@status_gfx"/></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>
                                    </img>
																	</span>
                                </iaixsl:if>
                                
                                <span class="projector_status_description" id="projector_status_description">
                                    <iaixsl:choose>
                                        <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/@status_description">
                                            <iaixsl:value-of select="/shop/page/projector/product/sizes/size[@selected='true']/availability/@status_description"/>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:value-of select="/shop/page/projector/product/sizes/size/availability/@status_description"/>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </span>
                                
                                <iaixsl:if test="$amount_txt and not(/shop/page/projector/product/@product_type = 'product_bundle')">
                                    <span class="projector_amount" id="projector_amount">
                                        <iaixsl:if test="/shop/page/projector/product/sizes/size[@selected='true']"><iaixsl:attribute name="style">display:none</iaixsl:attribute></iaixsl:if>
                                        <strong>
                                            <iaixsl:choose>
                                                <iaixsl:when test="$fashion_view and not($fashion_view = '0')">
                                                    <iaixsl:value-of disable-output-escaping="yes" select="$amount_txt2"/>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:value-of disable-output-escaping="yes" select="$amount_txt"/>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </strong>
                                        <iaixsl:if test="$fashion_view and not($fashion_view = '0')">op voorraad</iaixsl:if>
                                    </span>
                                </iaixsl:if>
                            </div>
                        </div>

                        
                        <iaixsl:if test="(/shop/page/projector/product/sizes/size/availability/delay_time/@unknown_delivery_time = 'true') or (/shop/page/projector/bundled/product/sizes/size/availability/delay_time/@unknown_delivery_time = 'true')">
                            <div id="projector_shipping_unknown">
                                <iaixsl:if test="not(/shop/page/projector/product/sizes/size[@selected='true'])">
                                    <iaixsl:attribute name="style">display:none</iaixsl:attribute>
                                </iaixsl:if>
                                <span>
                                    <a target="_blank">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>Neem contact op met het winkelpersoneel,</a>om de tijd in te schatten die nodig is om dit product klaar te maken voor verzending.</span>
                            </div>
                        </iaixsl:if>

                        
                        <iaixsl:if test="not(/shop/page/projector/product/@product_type = 'product_service')">
                            <div id="projector_shipping_info">
                                <iaixsl:if test="not(/shop/page/projector/product/sizes/size[@selected='true'])"><iaixsl:attribute name="style">display:none</iaixsl:attribute></iaixsl:if>
                                <label>
                                    <iaixsl:choose>
                                        <iaixsl:when test="/shop/page/projector/bundled/@collection = 'true' and $wysylka_bundle_txt">
                                            <iaixsl:value-of disable-output-escaping="yes" select="$wysylka_bundle_txt"/>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>Verzending</iaixsl:otherwise>
                                    </iaixsl:choose>
                                </label>
                                <div>
                                    <span class="projector_delivery_days" id="projector_delivery_days">
                                        <iaixsl:choose>
                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="(/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_amount = 0) and (/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@hours = 0) and (/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@minutes = 0)">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@today = 'true'">onmiddellijk</iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 1">op maandag</iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 2">op dinsdag</iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 3">op woensdag</iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 4">op donderdag</iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 5">op vrijdag</iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 6">op zaterdag</iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 7">op zondag</iaixsl:when>
                                                        </iaixsl:choose>
                                                    </iaixsl:when>
                                                    <iaixsl:when test="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days">tijdens<iaixsl:if test="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days &gt; 0">
                                                            <iaixsl:value-of select="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days"/>
                                                            <iaixsl:choose>
                                                            <iaixsl:when test="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days ='1'">dag</iaixsl:when>
                                                                <iaixsl:otherwise>dagen</iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:if>
                                                        <iaixsl:if test="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@hours &gt; 0">
                                                            <iaixsl:value-of select="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@hours"/>uur</iaixsl:if>
                                                        <iaixsl:if test="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@minutes &gt; 0">
                                                            <iaixsl:value-of select="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@minutes"/>minimaal</iaixsl:if>
                                                    </iaixsl:when>
                                                </iaixsl:choose>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="(/shop/page/projector/product/sizes/size/availability/shipping_time/@week_amount = 0) and (/shop/page/projector/product/sizes/size/availability/shipping_time/@hours = 0) and (/shop/page/projector/product/sizes/size/availability/shipping_time/@minutes = 0)">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@today = 'true'">onmiddellijk</iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 1">op maandag</iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 2">op dinsdag</iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 3">op woensdag</iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 4">op donderdag</iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 5">op vrijdag</iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 6">op zaterdag</iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 7">op zondag</iaixsl:when>
                                                        </iaixsl:choose>
                                                    </iaixsl:when>
                                                    <iaixsl:when test="page/projector/product/sizes/size/availability/shipping_time/@days">tijdens<iaixsl:if test="page/projector/product/sizes/size/availability/shipping_time/@days &gt; 0">
                                                            <iaixsl:value-of select="page/projector/product/sizes/size/availability/shipping_time/@days"/>
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="page/projector/product/sizes/size/availability/shipping_time/@days ='1'">dag</iaixsl:when>
                                                                <iaixsl:otherwise>dagen</iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:if>
                                                        <iaixsl:if test="page/projector/product/sizes/size/availability/shipping_time/@hours &gt; 0">
                                                            <iaixsl:value-of select="page/projector/product/sizes/size/availability/shipping_time/@hours"/>uur</iaixsl:if>
                                                        <iaixsl:if test="page/projector/product/sizes/size/availability/shipping_time/@minutes &gt; 0">
                                                            <iaixsl:value-of select="page/projector/product/sizes/size/availability/shipping_time/@minutes"/>minimaal</iaixsl:if>
                                                    </iaixsl:when>
                                                </iaixsl:choose>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </span>
                                </div>

                                <a class="shipping_info" href="#shipping_info">
                                    <iaixsl:attribute name="title">Controleer verzendtijden en -kosten</iaixsl:attribute>
                                    <i class="icon-question-1"></i>
                                </a>
                            </div>
                        </iaixsl:if>
                    </div>

					<div class="projector_custom_wrapper">
						
						<div id="projector_prices_wrapper">
							
							

							<div class="product_section" id="projector_price_value_wrapper">
								<label class="projector_label">
									<iaixsl:choose>
										<iaixsl:when test="/shop/page/projector/bundled/@collection = 'true' and $cena_bundle_txt">
											<iaixsl:value-of disable-output-escaping="yes" select="$cena_bundle_txt"/>
										</iaixsl:when>
										<iaixsl:otherwise>Onze prijs:</iaixsl:otherwise>
									</iaixsl:choose>
								</label>
								<div class="projector_price_subwrapper">
									
									<div id="projector_price_maxprice_wrapper">
										<iaixsl:if test="not(page/projector/product/price/@maxprice_formatted) and not(/shop/page/projector/product/sizes/size[@selected='true']/price/@maxprice_formatted)">
											<iaixsl:attribute name="style">display:none;</iaixsl:attribute>
										</iaixsl:if>
										<del class="projector_price_maxprice" id="projector_price_maxprice">
											<iaixsl:choose>
												<iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/price/@maxprice_formatted">
                                                    <iaixsl:attribute name="id">lewczyk_projector_price_maxprice</iaixsl:attribute>
													<iaixsl:value-of select="/shop/page/projector/product/sizes/size[@selected='true']/price/@maxprice_formatted"/>
												</iaixsl:when>
												<iaixsl:when test="/shop/page/projector/product/sizes/prices/@size_min_maxprice_formatted != /shop/page/projector/product/sizes/prices/@size_max_maxprice_formatted">
                                                    <iaixsl:attribute name="id">lewczyk_projector_price_maxprice</iaixsl:attribute>
													<span><iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@size_min_maxprice_formatted"/></span>
													<b> - </b>
													<span><iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@size_max_maxprice_formatted"/></span>
												</iaixsl:when>
												<iaixsl:when test="page/projector/product/price/@maxprice_formatted">
                                                    <iaixsl:attribute name="id">lewczyk_projector_price_maxprice</iaixsl:attribute>
													<iaixsl:value-of select="page/projector/product/price/@maxprice_formatted"/>
												</iaixsl:when>
											</iaixsl:choose>
										</del>
									</div>

									<iaixsl:choose>
										<iaixsl:when test="page/projector/product/price/@value = 0">
											<strong class="projector_price_value" id="projector_price_value">
												<a href="/contact-pol.html" target="_blank">
													<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
													<img>
														<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/projector/product/sizes/size/availability/@status_gfx_tel"/> </iaixsl:attribute>
														<iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/page/projector/product/sizes/size/availability/@status_description_tel"/> </iaixsl:attribute>
													</img>
												</a>
											</strong>
										</iaixsl:when>
										<iaixsl:otherwise>
											
											<strong class="projector_price_value" id="projector_price_value">
												<iaixsl:choose>
													<iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/price/@price_formatted">
														<iaixsl:value-of select="page/projector/product/price/@price_formatted"/>
													</iaixsl:when>
													<iaixsl:when test="/shop/page/projector/product/sizes/prices and /shop/page/projector/product/sizes/prices/@maxprice_formatted != /shop/page/projector/product/sizes/prices/@minprice_formatted">
														<iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@minprice_formatted"/>
														-
														<iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@maxprice_formatted"/>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:value-of select="page/projector/product/price/@price_formatted"/>
													</iaixsl:otherwise>
												</iaixsl:choose>
											</strong>
											<iaixsl:if test="(page/projector/product/sizes/@unit_sellby != '1') and (page/projector/product/sizes/size &gt; 1)">
												<script class="ajaxLoad">
													$('#projector_price_value').html(format_price("<iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@minprice * page/projector/product/sizes/@unit_sellby"/>",{mask: app_shop.vars.currency_format,currency: "<iaixsl:value-of select="/shop/currency/@name"/>",currency_space: app_shop.vars.currency_space,currency_before_price: app_shop.vars.currency_before_value})+' - '+format_price("<iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@maxprice * page/projector/product/sizes/@unit_sellby"/>",{mask: app_shop.vars.currency_format,currency: "<iaixsl:value-of select="/shop/currency/@name"/>",currency_space: app_shop.vars.currency_space,currency_before_price: app_shop.vars.currency_before_value}));
												</script>
											</iaixsl:if>

											<div class="price_gross_info">
												<small class="projector_price_unit_sep">
													 / 
												</small>
												<small class="projector_price_unit_sellby" id="projector_price_unit_sellby" style="display:none">
													<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_sellby"/>
												</small>
												<small class="projector_price_unit" id="projector_price_unit">
													<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit"/><iaixsl:value-of disable-output-escaping="yes" select="$hard_space"/>
												</small>
												<span>
													<iaixsl:if test="not(/shop/contact/owner/@vat_registered = 'false')">
														<iaixsl:choose>
															<iaixsl:when test="/shop/page/projector/bundled/@collection = 'true' and $brutto_bundle_txt">
																<iaixsl:value-of disable-output-escaping="yes" select="$brutto_bundle_txt"/>
															</iaixsl:when>
															<iaixsl:otherwise>bruto</iaixsl:otherwise>
														</iaixsl:choose>
													</iaixsl:if>
												</span>
											</div>
										</iaixsl:otherwise>
									</iaixsl:choose>

									
									<iaixsl:if test="page/projector/product/sizes/size[1]/price/rebateNumber">
										<div class="rebate_number pt-3" id="projector_rebateNumber">
											<iaixsl:for-each select="page/projector/product/sizes/size[1]/price/rebateNumber/rebate">
												<div class="rebate_number__item">
													<span class="rebate_number__literal --first">Koop</span>
													<span class="rebate_number__from"><iaixsl:choose><iaixsl:when test="contains(@threshold, '.00')"><iaixsl:value-of select="format-number(@threshold, '#')"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@threshold"/></iaixsl:otherwise></iaixsl:choose></span>
													<span class="rebate_number__literal --second"> </span>
													<span class="rebate_number__unit"><iaixsl:value-of select="/shop/page/projector/product/sizes/@unit"/></span>
													<iaixsl:if test="$thresholdEnd_enable and not(@threshold = @threshold_end)">
														<span class="rebate_number__literal --third">Naar</span>
														<span class="rebate_number__to"><iaixsl:value-of select="format-number(@threshold_end, '#')"/></span>
														<span class="rebate_number__literal --fourth"> </span>
														<span class="rebate_number__unit"><iaixsl:value-of select="/shop/page/projector/product/sizes/@unit"/></span>
													</iaixsl:if>
													<span class="rebate_number__literal --fifth">, bespaar</span>
													<span class="rebate_number__percent"><iaixsl:choose><iaixsl:when test="contains(@value, '.00')"><iaixsl:value-of select="format-number(@value, '#')"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@value"/></iaixsl:otherwise></iaixsl:choose></span>
													<span class="rebate_number__literal --sixth">%<span class="rebate_number__literal --eighth"> - </span></span>
													<span class="rebate_number__price"><iaixsl:value-of select="@price_formatted"/></span>
													<span class="rebate_number__literal --seventh"> / </span>
													<span class="rebate_number__unit"><iaixsl:value-of select="/shop/page/projector/product/sizes/@unit"/></span>
												</div>
											</iaixsl:for-each>
										</div>
									</iaixsl:if>

									<div class="instalment_yousave">
									<span id="projector_instalment_wrapper"/>

									<iaixsl:choose>
										<iaixsl:when test="/shop/page/projector/product/bundle_price/@amount_diff_gross and /shop/page/projector/bundled/@collection = 'true' and $taniej_bundle_txt">
											<span class="projector_price_yousave" id="projector_price_yousave_bundle">
												<iaixsl:if test="/shop/page/projector/product/bundle_price/@amount_diff_gross = '0.00'">
													<iaixsl:attribute name="style">display:none;</iaixsl:attribute>
												</iaixsl:if>
												<iaixsl:value-of disable-output-escaping="yes" select="$taniej_bundle_txt"/><span class="percent_diff"><iaixsl:value-of select="/shop/page/projector/product/bundle_price/@percent_diff"/></span>%<span class="rebate_number__literal --eighth"> - </span>
												(<span class="amount_diff_gross"><iaixsl:value-of select="/shop/page/projector/product/bundle_price/@amount_diff_gross_formatted"/></span>)
											</span>
										</iaixsl:when>
										<iaixsl:otherwise>
											<span class="projector_price_yousave" id="projector_price_yousave">
												<iaixsl:choose>
													<iaixsl:when test="/shop/page/projector/product/bundle_price/@amount_diff_gross">
														<span class="projector_price_save_text">Kopen als een set,<b>je bespaart</b> 
														</span>
														<span class="projector_price_save_percent">
															<iaixsl:value-of select="translate(/shop/page/projector/product/bundle_price/@percent_diff, '.', ',')"/><b>%</b> 
														</span>
														<span class="projector_price_save_value">
															(<span class="projector_price"><iaixsl:value-of select="/shop/page/projector/product/bundle_price/@amount_diff_gross"/><span class="projector_currency"><iaixsl:value-of select="/shop/currency/@name"/></span></span>)
														</span>
													</iaixsl:when>
													<iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/price/@yousave_percent">
														<span class="projector_price_save_text">Sla</span>
														<span class="projector_price_save_percent">
															<iaixsl:value-of select="/shop/page/projector/product/sizes/size[@selected='true']/price/@yousave_percent"/><b>%</b> 
														</span>
														<span class="projector_price_save_value">
															(<span class="projector_price"><iaixsl:value-of select="/shop/page/projector/product/sizes/size[@selected='true']/price/@yousave_formatted"/></span>)
														</span>
													</iaixsl:when>
													<iaixsl:when test="page/projector/product/price/@yousave_percent">
														<span class="projector_price_save_text">Sla</span>
														<span class="projector_price_save_percent">
															<iaixsl:value-of select="page/projector/product/price/@yousave_percent"/><b>%</b> 
														</span>
														<span class="projector_price_save_value">
															(<span class="projector_price"><iaixsl:value-of select="page/projector/product/price/@yousave_formatted"/></span>).</span>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:attribute name="style">display:none;</iaixsl:attribute>
													</iaixsl:otherwise>
												</iaixsl:choose>
											</span>
										</iaixsl:otherwise>
									</iaixsl:choose>
									</div>
								</div>
							</div>

							<iaixsl:if test="/shop/page/projector/product/price/@unit_converted_price_formatted">
								<div id="projector_unit_converted_price" class="projector_unit_converted_price product_section">
									<label class="projector_label">Hoofdprijs:</label>
									<span class="unit_converted_price" id="unit_converted_price">
										<iaixsl:value-of select="/shop/page/projector/product/price/@unit_converted_price_formatted"/>
										 / 
										<iaixsl:value-of select="/shop/page/projector/product/price/@unit_converted_format"/>
									</span>
								</div>
							</iaixsl:if>

							
							<iaixsl:if test="/shop/page/projector/product/bundle_price/@price_gross and $suma_cen_txt">
								<div id="projector_bundle_price_gross" class="product_section">
									<label class="projector_label"><iaixsl:value-of disable-output-escaping="yes" select="$suma_cen_txt"/></label>
									<strong class="projector_bundle_sum_price"><span class="projector_price"><iaixsl:value-of select="/shop/page/projector/product/bundle_price/@price_gross"/><span class="projector_currency"><iaixsl:value-of select="/shop/currency/@name"/></span></span></strong>
								</div>
							</iaixsl:if>

							<iaixsl:if test="page/projector/product/sizes/@unit_sellby != '1'">
								<div id="projector_sellbyrecount" class="projector_sellbyrecount product_section">
									<label class="projector_label">Verkocht bij:</label>
									<span>
										<iaixsl:value-of select="page/projector/product/sizes/@unit_sellby"/> <iaixsl:value-of select="page/projector/product/sizes/@unit"/>
										<span id="projector_sellbyprice_wrapper" style="display:none;">(<span id="projector_sellbyprice"><iaixsl:value-of select="/shop/page/projector/product/price/@price_formatted"/></span>/ 1<iaixsl:value-of select="page/projector/product/sizes/@unit"/>)</span>
									</span>
								</div>
							</iaixsl:if>

							<iaixsl:if test="$advanceprice_txt and page/projector/product/price/@advanceprice_formatted">
								<div id="projector_advanceprice_wrapper">
									<iaixsl:value-of disable-output-escaping="yes" select="$advanceprice_txt"/><b id="projector_advanceprice"><iaixsl:value-of select="page/projector/product/price/@advanceprice_formatted"/></b>. Exacte details worden gegeven in het besteloverzicht, voordat de bestelling wordt geplaatst.</div>
							</iaixsl:if>
						</div>

                        
                        <iaixsl:if test="not(page/projector/comments/notes/complex/item/@avg) and page/projector/comments/@all &gt; 0">
                            <div class="opinions_wrapper projector_info_opinions_wrapper">
                                <div class="note">
                                    <span>
                                        <i class="icon-star">
                                            <iaixsl:if test="page/projector/comments/@avg &gt; 0.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                        </i>
                                        <i class="icon-star">
                                            <iaixsl:if test="page/projector/comments/@avg &gt; 1.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                        </i>
                                        <i class="icon-star">
                                            <iaixsl:if test="page/projector/comments/@avg &gt; 2.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                        </i>
                                        <i class="icon-star">
                                            <iaixsl:if test="page/projector/comments/@avg &gt; 3.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                        </i>
                                        <i class="icon-star">
                                            <iaixsl:if test="page/projector/comments/@avg &gt; 4.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                        </i>
                                    </span>
                                    <strong><iaixsl:value-of select="page/projector/comments/@avg"/><iaixsl:text>/5</iaixsl:text></strong>
                                    <a href="#opinions_section" class="opinion_link"><span><iaixsl:value-of disable-output-escaping="yes" select="page/projector/comments/@all"/></span></a>
                                </div>
                            </div>
                        </iaixsl:if>

					</div>

                    
                    <iaixsl:if test="$showComments">
                        <div class="product_section comment">
                            <div class="product_section_sub">
                                <label>
                                    
                                </label>
                                <div>
                                    <textarea name="comment" maxlength="255"/>
                                </div>
                            </div>
                        </div>
                    </iaixsl:if>

                    
                    <div class="product_section tell_availability" id="projector_tell_availability">
                        <iaixsl:if test="not(/shop/page/projector/product/sizes/size[@selected='true']/availability/@status = 'disable')">
                            <iaixsl:attribute name="style">display:none</iaixsl:attribute>
                        </iaixsl:if>
                        <iaixsl:if test="$fashion_view and not($fashion_view = '0')">
                            <iaixsl:attribute name="class">product_section tell_availability col-md-7 col-sm-12 col-xs-12</iaixsl:attribute>
                        </iaixsl:if>
                        <label>Bericht:</label>
                        <div class="product_section_sub">
                            <div class="form-group">
                                <div class="input-group has-feedback has-required">
                                    <div class="input-group-addon"><i class="icon-envelope-alt"></i></div>
                                    <input type="text" class="form-control validate" name="email" data-validation-url="/ajax/client-new.php?validAjax=true" data-validation="client_email" required="required" disabled="disabled">
                                        <iaixsl:attribute name="placeholder">Uw e-mailadres</iaixsl:attribute>
                                    </input>
                                    <span class="form-control-feedback"/>
                                </div>
                            </div>
                            <div class="checkbox" style="display:none;" id="sms_active_checkbox">
                                <label>
                                    <input type="checkbox"/>Ik wil bovendien een SMS-bericht ontvangen</label>
                            </div>
                            <div class="form-group" style="display:none;" id="sms_active_group">
                                <div class="input-group has-feedback has-required">
                                    <div class="input-group-addon"><i class="icon-phone"></i></div>
                                    <input type="text" class="form-control validate" name="phone" data-validation-url="/ajax/client-new.php?validAjax=true" data-validation="client_phone" required="required" disabled="disabled">
                                        <iaixsl:attribute name="placeholder">Uw telefoonnummer</iaixsl:attribute>
                                    </input>
                                    <span class="form-control-feedback"/>
                                </div>
                            </div>

                            <iaixsl:if test="$projector_form_privacy_info_text1">
                                <p class="form-privacy-info"><iaixsl:value-of select="$projector_form_privacy_info_text1"/><a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute>privacybeleid</a><iaixsl:value-of select="$projector_form_privacy_info_text2"/></p>
                            </iaixsl:if>

                            <div class="form-group">
                                <button type="submit" class="btn --solid --large">Beschikbaarheid melden</button>
                            </div>
                            <div class="form-group">
                                <p>Deze gegevens worden niet gebruikt voor het versturen van nieuwsbrieven of andere reclame. Door de kennisgeving te activeren, stemt u er slechts mee in dat wij u eenmalig informatie over de herbeschikbaarheid van dit product toesturen.</p>
                            </div>
                        </div>
                    </div>

                    
                    <div id="projector_buy_section" class="product_section">
                        <label class="projector_label">
                            <iaixsl:if test="/shop/page/projector/product/@product_type = 'product_virtual'">
                                <iaixsl:attribute name="style">visibility: hidden;</iaixsl:attribute>
                            </iaixsl:if>
                            <iaixsl:choose>
                                <iaixsl:when test="/shop/page/projector/bundled/@collection = 'true' and $dokoszyka_bundle_txt">
                                    <iaixsl:value-of disable-output-escaping="yes" select="$dokoszyka_bundle_txt"/>
                                </iaixsl:when>
                                <iaixsl:otherwise>Hoeveelheid:</iaixsl:otherwise>
                            </iaixsl:choose>
                        </label>
                        <div class="projector_buttons" id="projector_buttons">
                          <div class="projector_buttons_wrapper">
                            <div class="projector_buttons_wrapper_border">
                              <iaixsl:if test="not(/shop/page/projector/product/@product_type = 'product_virtual')">
                                <div class="projector_number" id="projector_number_cont">
                                    <iaixsl:if test="not(page/projector/product/exchange/@exchange_id)">
                                        <button id="projector_number_down" class="projector_number_down" type="button">
                                            <i class="icon-minus"></i>
                                        </button>
                                    </iaixsl:if>
                                    <input class="projector_number" name="number" id="projector_number">
                                        <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_sellby"/></iaixsl:attribute>
                                        <iaixsl:if test="page/projector/product/exchange/@exchange_id">
                                            <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                        </iaixsl:if>
                                    </input>
                                    <iaixsl:if test="not(page/projector/product/exchange/@exchange_id)">
                                        <button id="projector_number_up" class="projector_number_up" type="button">
                                            <i class="icon-plus"></i>
                                        </button>
                                    </iaixsl:if>
                                </div>
                              </iaixsl:if>

                              <button class="btn --solid --large projector_butttons_buy" id="projector_button_basket" type="submit">
                                  
                                  <iaixsl:attribute name="title">Toevoegen aan winkelmandje</iaixsl:attribute>
                                  <iaixsl:choose>
                                      <iaixsl:when test="page/projector/product/exchange/@exchange_id">Het product vervangen</iaixsl:when>
                                      <iaixsl:when test="/shop/page/projector/bundled/@collection = 'true' and $dokoszykabu_bundle_txt">
                                          <iaixsl:value-of disable-output-escaping="yes" select="$dokoszykabu_bundle_txt"/>
                                      </iaixsl:when>
                                      <iaixsl:otherwise>Naar uw mandje</iaixsl:otherwise>
                                  </iaixsl:choose>
                              </button>
                            </div>
                          </div>

                          <div class="projector_links_wrapper">
                            <a href="#add_favorite" class="projector_buttons_obs" id="projector_button_observe">
                                <iaixsl:attribute name="title">Toevoegen aan boodschappenlijstje</iaixsl:attribute>Toevoegen aan boodschappenlijstje</a>
                            <iaixsl:if test="/shop/compare/@active = 'y'">
                                <a class="projector_prodstock_compare">
                                    <iaixsl:attribute name="href">settings.php?comparers=add&amp;product=<iaixsl:value-of select="page/projector/product/@id"/></iaixsl:attribute>
                                    <iaixsl:if test="/shop/action/settings/@url">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/settings/@url"/>?comparers=add&amp;product=<iaixsl:value-of select="page/projector/product/@id"/></iaixsl:attribute>
                                    </iaixsl:if>
                                    <iaixsl:attribute name="title">Toevoegen om te vergelijken</iaixsl:attribute>Toevoegen om te vergelijken</a>
                            </iaixsl:if>
                          </div>
                        </div>
                        <div class="mobile__fixed__bar">
                            <div class="mobile__fixed__bar__price">
                                
                                <div class="projector_price_maxprice_wrapper">
                                    <iaixsl:if test="not(page/projector/product/price/@maxprice_formatted) and not(/shop/page/projector/product/sizes/size[@selected='true']/price/@maxprice_formatted)">
                                        <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                    </iaixsl:if>
                                    <del class="projector_price_maxprice">
                                        <iaixsl:choose>
                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/price/@maxprice_formatted">
                                                <iaixsl:value-of select="/shop/page/projector/product/sizes/size[@selected='true']/price/@maxprice_formatted"/>
                                            </iaixsl:when>
                                            <iaixsl:when test="/shop/page/projector/product/sizes/prices/@size_min_maxprice_formatted != /shop/page/projector/product/sizes/prices/@size_max_maxprice_formatted">
                                                <span><iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@size_min_maxprice_formatted"/></span>
                                                <b> - </b>
                                                <span><iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@size_max_maxprice_formatted"/></span>
                                            </iaixsl:when>
                                            <iaixsl:when test="page/projector/product/price/@maxprice_formatted">
                                                <iaixsl:value-of select="page/projector/product/price/@maxprice_formatted"/>
                                            </iaixsl:when>
                                        </iaixsl:choose>
                                    </del>
                                </div>

                                <iaixsl:choose>
                                    <iaixsl:when test="page/projector/product/price/@value = 0">
                                        <strong class="projector_price_value">
                                            <a href="/contact-pol.html" target="_blank">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
                                                <img>
                                                    <iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/projector/product/sizes/size/availability/@status_gfx_tel"/> </iaixsl:attribute>
                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/page/projector/product/sizes/size/availability/@status_description_tel"/> </iaixsl:attribute>
                                                </img>
                                            </a>
                                        </strong>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        
                                        <strong class="projector_price_value">
                                            <iaixsl:choose>
                                                <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/price/@price_formatted">
                                                    <iaixsl:value-of select="page/projector/product/price/@price_formatted"/>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/page/projector/product/sizes/prices and /shop/page/projector/product/sizes/prices/@maxprice_formatted != /shop/page/projector/product/sizes/prices/@minprice_formatted">
                                                    <iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@minprice_formatted"/>
                                                    -
                                                    <iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@maxprice_formatted"/>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:value-of select="page/projector/product/price/@price_formatted"/>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </strong>
                                    </iaixsl:otherwise>
                                </iaixsl:choose>
                            </div>
                            <div class="mobile__fixed__bar__buttons">
                                <a class="projector_butttons_buy btn --solid" href="#">
                                    
                                    <iaixsl:attribute name="title">Toevoegen aan winkelmandje</iaixsl:attribute>
                                    <iaixsl:choose>
                                        <iaixsl:when test="page/projector/product/exchange/@exchange_id">Het product vervangen</iaixsl:when>
                                        <iaixsl:when test="/shop/page/projector/bundled/@collection = 'true' and $dokoszykabu_bundle_txt">
                                            <iaixsl:value-of disable-output-escaping="yes" select="$dokoszykabu_bundle_txt"/>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>Naar uw mandje</iaixsl:otherwise>
                                    </iaixsl:choose>
                                </a>
                            </div>
                            <div class="mobile__fixed__bar__scroll">
                                <a class="mobile__fixed__bar__scroll__txt" href="#">
                                    <i class="icon-angle-up"></i>
                                </a>
                            </div>
                        </div>
                    </div>


					<iaixsl:variable name="product_warranty_label">Garantie</iaixsl:variable>
					<iaixsl:variable name="product_warranty_period_unit">maandelijks</iaixsl:variable>
					<iaixsl:if test="page/projector/text/body">
						<div class="component_projector_cms cm">
							<iaixsl:attribute name="id"/>
							<div class="n56196_main">				
								<div class="n56196_sub">
                                <iaixsl:if test="$product_warranty_label and /shop/page/projector/product/warranty/@name">
                                    <ul class="benefits_projector_cms">
                                        <li class="lewczyk_warranty"><span><iaixsl:value-of disable-output-escaping="yes" select="$product_warranty_label"/><iaixsl:value-of disable-output-escaping="yes" select="$hard_space"/><strong><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/warranty/@name"/><iaixsl:text disable-output-escaping="yes"> </iaixsl:text><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/warranty/@period"/><iaixsl:value-of disable-output-escaping="yes" select="$hard_space"/><iaixsl:value-of disable-output-escaping="yes" select="$product_warranty_period_unit"/></strong></span>
                                            <div class="tooltip_wrapper"><span class="tooltip_icon"><i class="icon-question-1"></i></span>
                                                <div class="tooltipContent"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/warranty"/></div>
                                            </div>
                                        </li>
                                    </ul>
                                </iaixsl:if>
									<iaixsl:value-of disable-output-escaping="yes" select="page/projector/text/body"/>
								</div>
							
							</div>              
						</div>
					</iaixsl:if>

                    
                    <iaixsl:if test="$points_in_prices_section">
                        <div id="projector_points_wrapper" class="points_price_section">
                            <iaixsl:if test="not(/shop/page/projector/product/@for_points='true' or page/projector/product/price/@points &gt; 0 )"><iaixsl:attribute name="style">display:none;</iaixsl:attribute></iaixsl:if>
                            <div class="product_points_wrapper">
                                <iaixsl:if test="page/projector/product/price/@points">
                                    <div class="product_points_section">
                                        <label class="projector_label">Prijs in punten:</label>
                                        <span class="point_price" id="projector_price_points">
                                            <iaixsl:value-of select="page/projector/product/price/@points"/><span class="projector_currency">punt</span></span>
                                    </div>
                                </iaixsl:if>
                                <iaixsl:if test="page/projector/product/price/@points_recive">
                                    <div class="product_points_section">
                                        <iaixsl:if test="not(page/projector/product/price/@points_recive and page/projector/product/price/@points_recive &gt; 0)">
                                            <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                        </iaixsl:if>
                                        <label class="projector_label">Door te kopen win je:</label>
                                        <span class="point_price" id="projector_points_recive_points">
                                            <iaixsl:value-of select="page/projector/product/price/@points_recive"/><span class="projector_currency">punt</span>
                                        </span>
                                    </div>
                                </iaixsl:if>
                            </div>
                            <div class="product_points_buy">
                                <iaixsl:if test="not(/shop/page/projector/product/@for_points='true')">
                                    <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                </iaixsl:if>
                                <div>
                                    <button id="projector_button_points_basket" type="submit" name="forpoints" value="1" class="btn --solid --outline">Kopen per punt</button>
                                </div>
                            </div>
							<div class="product_points_more">
								<a href="/Program-Lojalnosciowy-clinks-pol-109.html" class="product_points_more_link">Hoe werkt het?</a>
							</div>
                        </div>
                    </iaixsl:if>

                    <iaixsl:if test="not($points_in_prices_section)">
                        <div class="product_section points points_price_old_section" id="projector_points_wrapper">
                            <iaixsl:if test="not(/shop/page/projector/product/@for_points='true' or page/projector/product/price/@points &gt; 0 )">
                                <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                            </iaixsl:if>
                            <div class="product_section_sub">
                                <div class="projector_points_sub_wrapper">
                                    <div class="projector_price_points_wrapper" id="projector_price_points_wrapper">
                                        <label class="projector_label">Prijs in punten:</label>
                                        <span class="projector_price_points" id="projector_price_points">
                                            <iaixsl:value-of select="page/projector/product/price/@points"/><span class="projector_currency">punt</span>                                   </span>
                                    </div>
                                    <div class="projector_price_points_recive_wrapper" id="projector_price_points_recive_wrapper">
                                        <iaixsl:if test="not(page/projector/product/price/@points_recive and page/projector/product/price/@points_recive &gt; 0)">
                                            <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                        </iaixsl:if>
                                        <label class="projector_label">Door te kopen win je:</label>
                                        <span class="projector_points_recive_points" id="projector_points_recive_points">
                                            <iaixsl:value-of select="page/projector/product/price/@points_recive"/><span class="projector_currency">punt</span>
                                        </span>
                                    </div>
                                </div>

                                <button id="projector_button_points_basket" type="submit" name="forpoints" value="1" class="btn --solid --outline">
                                    <iaixsl:if test="not(/shop/page/projector/product/@for_points='true')">
                                        <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                    </iaixsl:if>Kopen per punt</button>
                            </div>
                        </div>
                    </iaixsl:if>
                </div>

                
                <iaixsl:if test="/shop/@trust_level = '1'">
                    <div id="superfairshop_info">
                        <div class="superfairshop_info_wrapper">
                            <div>
                                <img src="/gfx/pol/iai_security_supershop.png?r=1685223127" alt="SuperFair.Shop badge"/>
                                <strong>Wij verzenden alle pakketten binnen de aangegeven tijd</strong>
                                <p>Wij bezitten de SuperFair.Shop™ onderscheiding waarbij onze zendingen dagelijks automatisch worden gecontroleerd op naleving van de aangegeven verzendtijden.</p>
                                <p>De prijs betekent dat onze zendingen volgens schema worden verzonden. Wij geven ook om uw veiligheid en gemak.</p>
                            </div>
                        </div>
                    </div>
                </iaixsl:if>
            </form>

            
            <div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();"/>
            <script class="ajaxLoad">
                app_shop.vars.contact_link = "<iaixsl:value-of select="/shop/contact/link/@url"/>";
            </script>

            
            <iaixsl:if test="/shop/@get_ajax_projector_xml"> </iaixsl:if>
            <iaixsl:if test="/shop/page/projector/bookmarklets/item/@icon_small"> </iaixsl:if>
            <iaixsl:if test="/shop/page/projector/product/products_other_founds"> </iaixsl:if>
            <iaixsl:if test="/shop/page/projector/product/payment/instalment/@src"> </iaixsl:if>
        <!--CMS w karcie produktu (projector_cms, 103395.1)-->


		
		

		<!--Karta produktu - bannery (projector_banner, 116244.1)-->
			
			<iaixsl:variable name="allow_returns_projector"><iaixsl:choose><iaixsl:when test="/shop/basket/@wholesaler = 'true' and /shop/basket/@blocked_wholesale_returns = 'true'">false</iaixsl:when><iaixsl:otherwise>true</iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

			<iaixsl:if test="/shop/page/projector/product/payment/instalment">
				<section id="projector_benefits" class="benefits">
					
					<iaixsl:if test="page/projector/product/payment/instalment">
            <div class="benefits__label">Bij ons kunt u kopen<b>op afbetaling</b>of<b>leasing</b></div>
						<div class="benefits__block --instalments">
							<iaixsl:for-each select="page/projector/product/payment/instalment">
                <div class="benefits__item">
                  <iaixsl:if test="@gfx">
                    <div class="benefits__image">
                      <a>
                        <iaixsl:attribute name="data-instalments"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:attribute>
                        <iaixsl:attribute name="onclick"> calculate_instalments('<iaixsl:value-of select="@minprice"/>','<iaixsl:value-of select="@maxprice"/>','<iaixsl:value-of select="@priceTotal"/>','<iaixsl:value-of select="@alert"/>',$(this).attr('data-window'),'<iaixsl:value-of select="@maxquantity"/>','<iaixsl:value-of select="@name"/>'); return false;</iaixsl:attribute>
                        <iaixsl:attribute name="href">javascript:<iaixsl:value-of select="@calculate"/></iaixsl:attribute>
                        <iaixsl:attribute name="data-window"><iaixsl:value-of select="@calculatePrice"/></iaixsl:attribute>
                        <iaixsl:choose>
                          <iaixsl:when test="@gfx">
                            <img class="benefits__instalment_img">
                              <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                              <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                            </img>
                          </iaixsl:when>
                          <iaixsl:otherwise>
                            <iaixsl:choose>
                              <iaixsl:when test="@name = 'LeaseLink'">
                                <span class="benefits__instalment_txt">Voorwaarden controleren</span>
                              </iaixsl:when>
                              <iaixsl:otherwise>
                                <span class="benefits__instalment_txt">De afbetaling berekenen</span>
                              </iaixsl:otherwise>
                            </iaixsl:choose>
                          </iaixsl:otherwise>
                        </iaixsl:choose>
                      </a>
                    </div>
                  </iaixsl:if>
                  
                </div>
							</iaixsl:for-each>
						</div>
					</iaixsl:if>
				</section>
			</iaixsl:if>
		<!--Karta produktu - Zestawy (projector_bundle_zone, 116211.1)-->
			<iaixsl:if test="page/projector/bundled/product">
				<div id="projector_bundle_product" class="col-12">
					<iaixsl:if test="/shop/page/projector/bundled/@left_quantity and not(/shop/page/projector/product/bundle_price/@amount_diff_gross = '0.00')">
						<div class="bundle_rabat bg_alter">
							<h2>Krijg korting bij aankoop van producten uit de collectie</h2>
							<div>
								<span>Kies ten minste<iaixsl:value-of select="/shop/page/projector/bundled/@left_quantity"/>producten om korting te krijgen!</span>
							</div>
						</div>
					</iaixsl:if>

					<h2 class="big_label product_bundle">
						<iaixsl:choose>
							<iaixsl:when test="/shop/page/projector/bundled/@collection='true'">De collectie omvat</iaixsl:when>
							<iaixsl:otherwise>De kit omvat</iaixsl:otherwise>
						</iaixsl:choose>
					</h2>
					<div class="product_bundle">

						<ul class="product_bundle row">
							<iaixsl:for-each select="page/projector/bundled/product">
								<li class="product_bundle col-12 col-sm-6 col-md-4">
									<iaixsl:attribute name="rel">#projector_image_bundled<iaixsl:value-of select="position()"/></iaixsl:attribute>
                                    <div class="product_bundle__sub">
                                        <div class="product_bundle__sub_left">
                                            <iaixsl:if test="/shop/page/projector/bundled/@collection='true'">
                                                <div class="product_bundle_quantity">
                                                    <input type="checkbox" class="bundled_quantity">
                                                        <iaixsl:attribute name="name">bundled_quantity[<iaixsl:value-of select="@id"/>]</iaixsl:attribute>
                                                        <iaixsl:attribute name="value"><iaixsl:value-of select="sizes/@unit_sellby"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-amount">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="sizes/size[@amount!=0][1]/@amount">
                                                                    <iaixsl:value-of select="sizes/size[@amount!=0][1]/@amount"/>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    <iaixsl:value-of select="sizes/size[1]/@amount"/>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:attribute>
                                                        <iaixsl:attribute name="data-unit_sellby"><iaixsl:value-of select="sizes/@unit_sellby"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-unit"><iaixsl:value-of select="sizes/@unit"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-unit_precision"><iaixsl:value-of select="sizes/@unit_precision"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="id">bundled_quantity_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                        <iaixsl:if test="count(sizes/size[@amount=0]) != count(sizes/size)"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                                    </input><label><iaixsl:attribute name="for">bundled_quantity_<iaixsl:value-of select="@id"/></iaixsl:attribute></label>
                                                </div>
                                            </iaixsl:if>
                                            <input type="hidden" class="bundled_product">
                                                <iaixsl:attribute name="name">bundled_product[<iaixsl:value-of select="@id"/>]</iaixsl:attribute>
                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@product_id"/></iaixsl:attribute>
                                            </input>

                                            <iaixsl:choose>
                                                <iaixsl:when test="@link != ''">
                                                    <iaixsl:text disable-output-escaping="yes">&lt;a class="product_bundle_icon" href="</iaixsl:text><iaixsl:value-of select="@link"/>
                                                    <iaixsl:text disable-output-escaping="yes">" &gt;</iaixsl:text>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:text disable-output-escaping="yes">&lt;span class="product_bundle_icon"&gt;</iaixsl:text>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>

                                            <img>
                                                <iaixsl:attribute name="src"><iaixsl:value-of select="enclosures/images/enclosure[1]/@icon"/></iaixsl:attribute>
                                                <iaixsl:attribute name="alt"><iaixsl:value-of select="name"/></iaixsl:attribute>
                                            </img>

                                            <iaixsl:choose>
                                                <iaixsl:when test="@link != ''">
                                                    <iaixsl:text disable-output-escaping="yes">&lt;/a&gt;</iaixsl:text>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:text disable-output-escaping="yes">&lt;/span&gt;</iaixsl:text>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </div>
                                        <div class="product_bundle__sub_right">
                                            <div class="bundled_name">
                                                <h2>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="@link != ''">
                                                            <iaixsl:text disable-output-escaping="yes">&lt;a class="product-name" href="</iaixsl:text><iaixsl:value-of select="@link"/>
                                                            <iaixsl:text disable-output-escaping="yes">" &gt;</iaixsl:text>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:text disable-output-escaping="yes">&lt;span class="product-name"&gt;</iaixsl:text>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>

                                                    <iaixsl:if test="@bundle_quantity and @bundle_quantity &gt; 1"><strong><iaixsl:value-of select="@bundle_quantity"/>x </strong></iaixsl:if><iaixsl:value-of select="name"/>


                                                    <iaixsl:choose>
                                                        <iaixsl:when test="@link != ''">
                                                            <iaixsl:text disable-output-escaping="yes">&lt;/a&gt;</iaixsl:text>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:text disable-output-escaping="yes">&lt;/span&gt;</iaixsl:text>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </h2>


                                                

                                                <div class="bundled_availability" style="display:none;">
                                                    <iaixsl:if test="count(sizes/size[@amount=0]) = count(sizes/size)"><iaixsl:attribute name="style">display:block;</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="multiversions and versions/@version_choice='true'">Product niet beschikbaar.</iaixsl:when>
                                                        <iaixsl:otherwise>Product niet beschikbaar.</iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </div>
                                            </div>
                                            <div>
                                                <iaixsl:if test="sizes/size/@type='onesize' and not(multiversions and versions/@version_choice='true') and not(sizes_chart)">
                                                    <iaixsl:attribute name="class">only_onesize</iaixsl:attribute>
                                                </iaixsl:if>
                                                <div class="bundled_options_select">
                                                    <iaixsl:if test="multiversions and versions/@version_choice='true'">
                                                        <div class="bundled_multi_versions clearfix">
                                                            <iaixsl:for-each select="multiversions/multi_version">
                                                                <iaixsl:variable name="bundle_id"><iaixsl:value-of select="../../@id"/></iaixsl:variable>
                                                                <div class="bundled_multi_version">

                                                                    <div class="fancy-select"><iaixsl:attribute name="id">mw_<iaixsl:value-of select="$bundle_id"/><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                        <div class="trigger"><iaixsl:value-of disable-output-escaping="yes" select="@name"/>: <span><iaixsl:for-each select="item[@selected='true']/values/value"><iaixsl:if test="not(position() = 1)"> / </iaixsl:if><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:for-each></span></div>
                                                                        <ul class="options">
                                                                            <iaixsl:for-each select="item">
                                                                                <iaixsl:variable name="value_name"><iaixsl:for-each select="values/value"><iaixsl:if test="not(position() = 1)"> / </iaixsl:if><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:for-each></iaixsl:variable>
                                                                                <li>
                                                                                    <iaixsl:attribute name="class"><iaixsl:if test="@disabled='true'">disabled </iaixsl:if><iaixsl:if test="@selected='true'">selected</iaixsl:if></iaixsl:attribute>
                                                                                    <iaixsl:attribute name="id">v<iaixsl:value-of select="$bundle_id"/><iaixsl:value-of disable-output-escaping="yes" select="values/@id"/></iaixsl:attribute>
                                                                                    <iaixsl:attribute name="data-values_id"><iaixsl:value-of disable-output-escaping="yes" select="values/@id"/></iaixsl:attribute>

                                                                                    

                                                                                    <iaixsl:attribute name="data-value"><iaixsl:value-of select="position()"/></iaixsl:attribute>
                                                                                    <iaixsl:attribute name="data-title"><iaixsl:value-of select="$value_name"/></iaixsl:attribute>
                                                                                    <iaixsl:attribute name="data-product"><iaixsl:value-of select="products/product/@product_id"/></iaixsl:attribute>
                                                                                    <iaixsl:attribute name="data-bundle_product"><iaixsl:value-of select="$bundle_id"/></iaixsl:attribute>

                                                                                    <a>
                                                                                        <iaixsl:attribute name="title"><iaixsl:value-of select="$value_name"/></iaixsl:attribute>
                                                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="products/product/@url"/></iaixsl:attribute>
                                                                                        <iaixsl:for-each select="values/value">
                                                                                            <iaixsl:if test="@gfx">
                                                                                                <span class="gfx">
                                                                                                    <img>
                                                                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                                                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="$value_name"/></iaixsl:attribute>
                                                                                                    </img>
                                                                                                </span>
                                                                                            </iaixsl:if>
                                                                                        </iaixsl:for-each>
                                                                                        <span>
                                                                                            <span><iaixsl:value-of disable-output-escaping="yes" select="$value_name"/></span>
                                                                                            <iaixsl:for-each select="values/value">
                                                                                                <iaixsl:if test="description"><div class="description"><iaixsl:value-of disable-output-escaping="yes" select="description"/></div></iaixsl:if>
                                                                                            </iaixsl:for-each>
                                                                                            <p class="conflict_txt">Als u dit item selecteert, moet u andere</p>
                                                                                        </span>
                                                                                    </a>
                                                                                </li>
                                                                            </iaixsl:for-each>
                                                                        </ul>
                                                                        <p class="conflict_txt">Selecteer een andere optie</p>
                                                                        <iaixsl:if test="description"><div class="description"><iaixsl:value-of disable-output-escaping="yes" select="description"/></div></iaixsl:if>
                                                                    </div>
                                                                    <iaixsl:if test="@gfx">
                                                                        <div class="gfx">
                                                                            <img>
                                                                                <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                                                                <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                            </img>
                                                                        </div>
                                                                    </iaixsl:if>
                                                                </div>
                                                            </iaixsl:for-each>
                                                        </div>
                                                    </iaixsl:if>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="sizes/size/@type='onesize'">
                                                            <input class="product_bundle_size" type="hidden" value="">
                                                                <iaixsl:attribute name="name">bundled_size[<iaixsl:value-of select="@id"/>]</iaixsl:attribute>
                                                                <iaixsl:attribute name="value"><iaixsl:value-of select="sizes/size[1]/@type"/></iaixsl:attribute>
                                                            </input>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <select class="product_bundle_size">
                                                                <iaixsl:attribute name="id">s_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="name">bundled_size[<iaixsl:value-of select="@id"/>]</iaixsl:attribute>

                                                                <iaixsl:attribute name="data-label">Maat:</iaixsl:attribute>
                                                                <iaixsl:for-each select="sizes/size">
                                                                    <option class="enabled">
                                                                        <iaixsl:if test="@amount != 0 and (@type = ../size[@amount!=0][1]/@type)">
                                                                            <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                                        </iaixsl:if>
                                                                        <iaixsl:if test="@amount = 0"><iaixsl:attribute name="class">disabled</iaixsl:attribute></iaixsl:if>
                                                                        <iaixsl:attribute name="value"><iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                                        <iaixsl:attribute name="data-amount"><iaixsl:value-of select="@amount"/></iaixsl:attribute>
                                                                        <iaixsl:value-of select="@description"/><iaixsl:if test="@amount = 0">(geen)</iaixsl:if>
                                                                    </option>
                                                                </iaixsl:for-each>
                                                            </select>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </div>
                                                

                                                <iaixsl:if test="sizes_chart">
                                                    <a href="#show_size_bundle" class="show_size_bundle">
                                                        <iaixsl:attribute name="data-id">#component_colection_sizes_chart_<iaixsl:value-of select="sizes_chart/@id"/>_<iaixsl:value-of select="../@id"/></iaixsl:attribute>
                                                        <i class="icon-table"></i>Maattabel</a>

                                                    <div class="component_projector_sizes_chart" style="display:none;">

                                                        <iaixsl:attribute name="id">component_colection_sizes_chart_<iaixsl:value-of select="sizes_chart/@id"/>_<iaixsl:value-of select="../@id"/></iaixsl:attribute>
                                                        <iaixsl:if test="sizes_chart/descriptions/description">
                                                            <h2/>
                                                            <table class="table-condensed">
                                                                <iaixsl:attribute name="class">ui-responsive table-stroke ui-table ui-table-reflow table-condensed</iaixsl:attribute>
                                                                <thead>
                                                                    <tr>
                                                                        <th class="table-first-column">Maat</th>
                                                                        <iaixsl:for-each select="sizes_chart/descriptions/description">
                                                                            <th>
                                                                                <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                                                                            </th>
                                                                        </iaixsl:for-each>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <iaixsl:for-each select="sizes_chart/sizes/size">
                                                                        <tr>
                                                                            <td class="table-first-column">
                                                                                <iaixsl:value-of disable-output-escaping="yes" select="@description"/>
                                                                            </td>
                                                                            <iaixsl:for-each select="description">
                                                                                <td>
                                                                                    <iaixsl:value-of disable-output-escaping="yes" select="@text"/>
                                                                                </td>
                                                                            </iaixsl:for-each>
                                                                        </tr>
                                                                    </iaixsl:for-each>
                                                                </tbody>
                                                            </table>
                                                        </iaixsl:if>
                                                        <div class="sizes_chart_cms">
                                                            <iaixsl:if test="sizes_chart/text">
                                                                <iaixsl:value-of disable-output-escaping="yes" select="sizes_chart/text"/>
                                                            </iaixsl:if>
                                                        </div>
                                                    </div>
                                                </iaixsl:if>
                                                
                                            </div>
                                        </div>
                                    </div>
								</li>
							</iaixsl:for-each>
						</ul>
						<div class="clearBoth"/>
					</div>
				</div>
			</iaixsl:if>

			<script class="ajaxLoad">
				var bundle_title =   "Cena produktów poza zestawem";
			</script>
		<!--Ukrywanie innych komponentów projektora (projector_components_hiding, 116193.1)-->
            <div class="projector_tabs col-12"/>
        <!--Karta produktu - w zestawiaj taniej (projector_in_bundle, 116261.1)-->
            <iaixsl:variable name="count_bundles">2</iaixsl:variable>
			<iaixsl:variable name="more_bundles">Meer kits bekijken</iaixsl:variable>
			<iaixsl:if test="page/projector/bundle/product">
				<section id="projector_in_bundle" class="hotspot --list mb-5 col-12">
					<h2>
						<span class="headline"><span class="headline__name">Koop goedkoper als set</span></span>
					</h2>

					<div class="products d-flex flex-wrap">
                        <iaixsl:if test="$more_bundles and count(/shop/page/projector/bundle/product) &gt; $count_bundles">
                            <iaixsl:attribute name="class">products d-flex flex-wrap blur</iaixsl:attribute>
                        </iaixsl:if>
						<iaixsl:for-each select="page/projector/bundle/product">
							
							<iaixsl:variable name="var_name"><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:variable>
							<iaixsl:variable name="var_icon"><iaixsl:value-of select="icon"/></iaixsl:variable>
							<iaixsl:variable name="var_link"><iaixsl:value-of select="@link"/></iaixsl:variable>
							<iaixsl:variable name="var_net_prices"/>

							<div class="product">
                                <iaixsl:if test="position() &gt; $count_bundles">
                                    <iaixsl:attribute name="data-hide">true</iaixsl:attribute>
                                </iaixsl:if>
                                <iaixsl:attribute name="data-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
								<div class="product__wrapper">
                                    <div class="product__image load-content col-12 col-md-9"/>
                                    <div class="product__info col-12 col-md-3">
                                        <iaixsl:choose>
                                            
                                            <iaixsl:when test="$var_net_prices = ''">
                                                <div class="product__prices">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="price/@value &gt; 0">
                                                            <div class="product__promo">
                                                                <del class="price --max">
                                                                    <iaixsl:value-of select="bundle_price/@price_gross_formatted"/>
                                                                </del>
                                                            </div>
                                                            <div class="product__price_wrapper">
                                                                <strong class="price">
                                                                    <iaixsl:value-of select="price/@price_formatted"/>
                                                                </strong>
                                                            </div>
                                                            <iaixsl:if test="not(bundle_price/@percent_diff = 0)">
                                                            <span class="product__promo_info">Sla<strong><iaixsl:value-of select="bundle_price/@percent_diff"/>%</strong><iaixsl:text> (</iaixsl:text><iaixsl:value-of select="bundle_price/@amount_diff_gross_formatted"/><iaixsl:text>)</iaixsl:text></span>
                                                            </iaixsl:if>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <a class="price --phone">
                                                                <iaixsl:attribute name="title">Klik om naar het contactformulier te gaan</iaixsl:attribute>
                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>Prijs op de telefoon</a>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </div>
                                            </iaixsl:when>

                                            
                                            <iaixsl:otherwise>
                                                <div class="product__prices">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="price_net/@value &gt; 0">
                                                            <div class="product__promo">
                                                                <del class="price --max">
                                                                    <iaixsl:value-of select="bundle_price/@price_net_formatted"/>
                                                                </del>
                                                                <span class="product__promo_info">Sla<iaixsl:value-of select="bundle_price/@percent_diff"/>%</span>
                                                            </div>
                                                            <div class="product__price_wrapper">
                                                                <strong class="price">
                                                                    <iaixsl:value-of select="price/@price_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                </strong>
                                                            </div>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <a class="price --phone">
                                                                <iaixsl:attribute name="title">Klik om naar het contactformulier te gaan</iaixsl:attribute>
                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>Prijs op de telefoon</a>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </div>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>

                                        
                                        <a class="product__see btn --solid --outline">
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>Bekijk set</a>
                                    </div>
                                    <h2 class="product__name"><iaixsl:value-of select="name"/></h2>
								</div>
							</div>
						</iaixsl:for-each>
					</div>
                    
                    <iaixsl:if test="$more_bundles and count(/shop/page/projector/bundle/product) &gt; $count_bundles">
                        <div class="bundles__more">
                            <a href="#more_bundles" class="bundles__more_txt btn --solid --outline"><iaixsl:value-of select="$more_bundles"/></a>
                        </div>
                    </iaixsl:if>
				</section>
			</iaixsl:if>
		<!--Długi opis produktu z HTML (projector_longdescription, 111555.1)-->
            <iaixsl:if test="page/projector/product/vlongdescription and not(page/projector/product/vlongdescription = '')">
                <section id="projector_longdescription" class="longdescription cm  col-12"><iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/vlongdescription/text()"/></section>
            </iaixsl:if>
        <!--Karta produktu - słownik opisu (projector_dictionary, 116958.1)-->
			
			<iaixsl:variable name="product_producer_label"/>
			<iaixsl:variable name="product_code_label"/>
			<iaixsl:variable name="product_series_label"/>

			<iaixsl:if test="(count(/shop/page/projector/product/dictionary/items) &gt; 0) or ($product_producer_label and not(/shop/page/projector/product/firm/@name = '')) or ($product_code_label and /shop/page/projector/product/@code) or ($product_series_label and /shop/page/projector/product/series)">
				
				<iaixsl:variable name="label_no_group"/>

				<section id="projector_dictionary" class="dictionary col-12 mb-5">
					<div class="dictionary__group --first">
						<iaixsl:if test="(($product_producer_label and not(/shop/page/projector/product/firm/@name = '')) or ($product_code_label and /shop/page/projector/product/@code) or ($product_series_label and /shop/page/projector/product/series)) or not(/shop/page/projector/product/dictionary/items/item[1]/type = 'group')">
							<iaixsl:attribute name="class">dictionary__group --first --no-group</iaixsl:attribute>
							<iaixsl:if test="$label_no_group">
								
								<div class="dictionary__label d-flex align-items-center justify-content-center">
									<span class="dictionary__label_txt"><iaixsl:value-of select="$label_no_group"/></span>
								</div>
							</iaixsl:if>
						</iaixsl:if>
						
						<iaixsl:if test="$product_producer_label and not(/shop/page/projector/product/firm/@name = '')">
							<div class="dictionary__param row">
								
								<div class="dictionary__name col-6 d-flex align-items-center justify-content-start">
									<span class="dictionary__name_txt"><iaixsl:value-of disable-output-escaping="yes" select="$product_producer_label"/></span>
								</div>
								
								<div class="dictionary__values col-6">
									<div class="dictionary__value">
										<a class="dictionary__value_txt">
											<iaixsl:attribute name="href"><iaixsl:value-of select="page/projector/product/firm/@productslink"/></iaixsl:attribute>
											<iaixsl:attribute name="title">Klik om alle producten van deze fabrikant te zien</iaixsl:attribute>
											<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/firm/@name"/>
										</a>
									</div>
								</div>
							</div>
						</iaixsl:if>
						
						<iaixsl:if test="$product_code_label and /shop/page/projector/product/@code">
							<div class="dictionary__param row">
								
								<div class="dictionary__name col-6 d-flex align-items-center justify-content-start">
									<span class="dictionary__name_txt"><iaixsl:value-of disable-output-escaping="yes" select="$product_code_label"/></span>
								</div>
								
								<div class="dictionary__values col-6">
									<div class="dictionary__value">
										<span class="dictionary__value_txt"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/@code"/></span>
									</div>
								</div>
							</div>
						</iaixsl:if>
						
						<iaixsl:if test="$product_series_label and /shop/page/projector/product/series">
							<div class="dictionary__param row">
								
								<div class="dictionary__name col-6 d-flex align-items-center justify-content-start">
									<span class="dictionary__name_txt"><iaixsl:value-of disable-output-escaping="yes" select="$product_series_label"/></span>
								</div>
								
								<div class="dictionary__values col-6">
									<div class="dictionary__value">
										<a class="dictionary__value_txt">
											<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/product/series/@link"/></iaixsl:attribute>
											<iaixsl:attribute name="title">Klik om alle producten uit de serie te zien</iaixsl:attribute>
											<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/series/@name"/>
										</a>
									</div>
								</div>
							</div>
						</iaixsl:if>
						
						<iaixsl:for-each select="/shop/page/projector/product/dictionary/items/item">
							<iaixsl:choose>
								<iaixsl:when test="@type = 'group'">
									<iaixsl:if test="position() &gt; 1 or (($product_code_label and /shop/page/projector/product/@code) or ($product_series_label and /shop/page/projector/product/series))">
										<iaixsl:text disable-output-escaping="yes">&lt;/div&gt;&lt;div class="dictionary__group"&gt;</iaixsl:text>
									</iaixsl:if>
									
									<div class="dictionary__label d-flex align-items-center justify-content-center">
										<span class="dictionary__label_txt"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
										<iaixsl:if test="desc != ''">
											<i class="icon-question showTip"></i>
											<div class="tooltipContent"><iaixsl:value-of disable-output-escaping="yes" select="desc"/></div>
										</iaixsl:if>
									</div>
								</iaixsl:when>
								<iaixsl:otherwise>
									
									<div class="dictionary__param row">
										
										<div class="dictionary__name col-6 d-flex align-items-center justify-content-start">
											<span class="dictionary__name_txt"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
											<iaixsl:if test="desc != ''">
												<i class="icon-question showTip"></i>
												<div class="tooltipContent"><iaixsl:value-of disable-output-escaping="yes" select="desc"/></div>
											</iaixsl:if>
										</div>
										
										<div class="dictionary__values col-6">
                                            <iaixsl:variable name="counter_value"><iaixsl:value-of select="count(values/value)"/></iaixsl:variable>
											<iaixsl:for-each select="values/value">
												<div class="dictionary__value">
													<span class="dictionary__value_txt">
                                                        <iaixsl:value-of disable-output-escaping="yes" select="@value"/>
                                                        <iaixsl:if test="not(@gfx) and not(position()=last()) and $counter_value &gt; 1">, </iaixsl:if>
                                                    </span>
													<iaixsl:if test="@gfx">
														<img class="dictionary__value_img">
															<iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
															<iaixsl:attribute name="alt"><iaixsl:value-of select="@value"/></iaixsl:attribute>
														</img>
                                                        <iaixsl:if test="not(position()=last()) and $counter_value &gt; 1">, </iaixsl:if>
													</iaixsl:if>
													<iaixsl:if test="desc != ''">
														<i class="icon-question showTip"></i>
														<div class="tooltipContent"><iaixsl:value-of disable-output-escaping="yes" select="desc"/></div>
													</iaixsl:if>
												</div>
											</iaixsl:for-each>
										</div>
									</div>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:for-each>
					</div>
				</section>
			</iaixsl:if>
		<!--Karta towaru - opinie (projector_projector_opinons_form, 116332.1)-->

			<section id="opinions_section" class="d-flex flex-wrap col-12 mb-4 mx-0">
                <iaixsl:if test="/shop/page/projector/comments/@all &gt; '0'"><iaixsl:attribute name="data-count"><iaixsl:value-of select="/shop/page/projector/comments/@all"/></iaixsl:attribute></iaixsl:if>

				<iaixsl:variable name="count_opinions">3</iaixsl:variable>
				<iaixsl:variable name="more_opinions">Zobacz więcej</iaixsl:variable>

				<iaixsl:if test="/shop/page/projector/comments/@all &gt; '0'">
					<div class="col-12">
						<h2 class="headline">
							<span class="headline__name">Feedback van onze klanten</span>
						</h2>
					</div>

					<div class="average_opinions_container mb-4">
						<div class="row">
							<div class="col-12 col-sm-6 col-md-12">
								<div class="average_opinions_box">
									<div class="comments">
										<div class="note">
											<span>
												<i class="icon-star">
													<iaixsl:if test="page/projector/comments/@avg &gt; 0.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
												</i>
												<i class="icon-star">
													<iaixsl:if test="page/projector/comments/@avg &gt; 1.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
												</i>
												<i class="icon-star">
													<iaixsl:if test="page/projector/comments/@avg &gt; 2.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
												</i>
												<i class="icon-star">
													<iaixsl:if test="page/projector/comments/@avg &gt; 3.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
												</i>
												<i class="icon-star">
													<iaixsl:if test="page/projector/comments/@avg &gt; 4.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
												</i>
											</span>
										</div>
									</div>
									<div class="average_opinions_score">
										<iaixsl:value-of disable-output-escaping="yes" select="page/projector/comments/@avg"/>
									</div>
									<div class="average_opinions_desc">Aantal afgegeven beoordelingen:<iaixsl:value-of select="page/projector/comments/@all"/>
									</div>
								</div>
								<div class="opinions_add">
									<iaixsl:choose>
										<iaixsl:when test="(page/projector/comments/opinionClient/opinion/@stat = 'y')">
											<div class="opinions_avg_info menu_messages_message small">Uw recensie is al goedgekeurd. Je kunt geen reviews meer toevoegen voor dit product.</div>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:if test="(page/projector/comments/opinionClient/opinion/@stat = 'n')">
												<div class="opinions_avg_info menu_messages_message small">Uw recensie wordt voor publicatie gecontroleerd op moraliteit.</div>
											</iaixsl:if>
											<a href="#showOpinionForm" id="show_opinion_form" class="btn --solid --medium">
												<iaixsl:choose>
													<iaixsl:when test="(page/projector/comments/opinionClient/opinion/@stat = 'n')">Voeg uw mening toe</iaixsl:when>
													<iaixsl:otherwise>Voeg uw mening toe</iaixsl:otherwise>
												</iaixsl:choose>
											</a>
											<iaixsl:if test="/shop/page/projector/comments/opinionClient/@points">
												<div class="opinions_affiliate_points">
													<iaixsl:choose>
														<iaixsl:when test="/shop/page/projector/comments/opinionClient/image/@points">Voor feedback met een foto ontvangt u</iaixsl:when>
														<iaixsl:otherwise>Voor uw advies ontvangt u</iaixsl:otherwise>
													</iaixsl:choose>
													<strong>
														<iaixsl:choose>
															<iaixsl:when test="substring-after(/shop/page/projector/comments/opinionClient/@points, '.') = '00'">
																<iaixsl:value-of select="substring-before(/shop/page/projector/comments/opinionClient/@points, '.')"/>
															</iaixsl:when>
															<iaixsl:otherwise>
																<iaixsl:value-of select="/shop/page/projector/comments/opinionClient/@points"/>
															</iaixsl:otherwise>
														</iaixsl:choose>

														<iaixsl:text> </iaixsl:text>punt</strong>
													<br/>in ons loyaliteitsprogramma.</div>
											</iaixsl:if>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</div>
							</div>


							<iaixsl:variable name="totalOpinionsAll"><iaixsl:value-of select="page/projector/comments/@all"/></iaixsl:variable>
							<div class="col-12 col-sm-6 col-md-12">
								<div class="average_opinions_list">
									<div class="opinion_rate" id="shop-opinion_rate_5">
										<span class="opinion_number">5</span><span class="opinion_number_star"><i class="icon-star"> </i></span>
										<div class="opinions_bar_container">
											<div class="opinions_bar_active">
												<iaixsl:variable name="total5"><iaixsl:value-of select="count(/shop/page/projector/comments/opinions/opinion[@note='5'])"/></iaixsl:variable>
												<iaixsl:attribute name="style">width: <iaixsl:value-of select="$total5 div $totalOpinionsAll * 100"/>%</iaixsl:attribute>
											</div>
										</div>
										<span class="rate_count"><iaixsl:value-of select="count(page/projector/comments/opinions/opinion[@note='5'])"/></span>
									</div>
									<div class="opinion_rate" id="shop-opinion_rate_4">
										<span class="opinion_number">4</span><span class="opinion_number_star"><i class="icon-star"> </i></span>
										<div class="opinions_bar_container">
											<div class="opinions_bar_active">
												<iaixsl:variable name="total4"><iaixsl:value-of select="count(/shop/page/projector/comments/opinions/opinion[@note='4'])"/></iaixsl:variable>
												<iaixsl:attribute name="style">width: <iaixsl:value-of select="$total4 div $totalOpinionsAll * 100"/>%</iaixsl:attribute>
											</div>
										</div>
										<span class="rate_count"><iaixsl:value-of select="count(page/projector/comments/opinions/opinion[@note='4'])"/></span>
									</div>
									<div class="opinion_rate" id="shop-opinion_rate_3">
										<span class="opinion_number">3</span><span class="opinion_number_star"><i class="icon-star"> </i></span>
										<div class="opinions_bar_container">
											<div class="opinions_bar_active">
												<iaixsl:variable name="total3"><iaixsl:value-of select="count(/shop/page/projector/comments/opinions/opinion[@note='3'])"/></iaixsl:variable>
												<iaixsl:attribute name="style">width: <iaixsl:value-of select="$total3 div $totalOpinionsAll * 100"/>%</iaixsl:attribute>
											</div>
										</div>
										<span class="rate_count"><iaixsl:value-of select="count(page/projector/comments/opinions/opinion[@note='3'])"/></span>
									</div>
									<div class="opinion_rate" id="shop-opinion_rate_2">
										<span class="opinion_number">2</span><span class="opinion_number_star"><i class="icon-star"> </i></span>
										<div class="opinions_bar_container">
											<div class="opinions_bar_active">
												<iaixsl:variable name="total2"><iaixsl:value-of select="count(/shop/page/projector/comments/opinions/opinion[@note='2'])"/></iaixsl:variable>
												<iaixsl:attribute name="style">width: <iaixsl:value-of select="$total2 div $totalOpinionsAll * 100"/>%</iaixsl:attribute>
											</div>
										</div>
										<span class="rate_count"><iaixsl:value-of select="count(page/projector/comments/opinions/opinion[@note='2'])"/></span>
									</div>
									<div class="opinion_rate" id="shop-opinion_rate_1">
										<span class="opinion_number">1</span><span class="opinion_number_star"><i class="icon-star"> </i></span>
										<div class="opinions_bar_container">
											<div class="opinions_bar_active">
												<iaixsl:variable name="total1"><iaixsl:value-of select="count(/shop/page/projector/comments/opinions/opinion[@note='1'])"/></iaixsl:variable>
												<iaixsl:attribute name="style">width: <iaixsl:value-of select="$total1 div $totalOpinionsAll * 100"/>%</iaixsl:attribute>
											</div>
										</div>
										<span class="rate_count"><iaixsl:value-of select="count(page/projector/comments/opinions/opinion[@note='1'])"/></span>
									</div>
								</div>
								<div class="opinions-shop_guide">Klik op een beoordeling om meningen te filteren</div>
							</div>
						</div>
					</div>

					
					<div class="opinions_list col-12 col-md-8 ml-md-auto">
						<div class="row">
							<iaixsl:for-each select="/shop/page/projector/comments/opinions/opinion">
								<div class="opinions-shop_opinion wrapper">
									<iaixsl:choose>
										<iaixsl:when test="@note &gt; 4.5"><iaixsl:attribute name="data-opinion_rate">shop-opinion_rate_5</iaixsl:attribute></iaixsl:when>
										<iaixsl:when test="@note &gt; 3.5"><iaixsl:attribute name="data-opinion_rate">shop-opinion_rate_4</iaixsl:attribute></iaixsl:when>
										<iaixsl:when test="@note &gt; 2.5"><iaixsl:attribute name="data-opinion_rate">shop-opinion_rate_3</iaixsl:attribute></iaixsl:when>
										<iaixsl:when test="@note &gt; 1.5"><iaixsl:attribute name="data-opinion_rate">shop-opinion_rate_2</iaixsl:attribute></iaixsl:when>
										<iaixsl:when test="@note &gt; 0.5"><iaixsl:attribute name="data-opinion_rate">shop-opinion_rate_1</iaixsl:attribute></iaixsl:when>
									</iaixsl:choose>
									<iaixsl:if test="position() &gt; $count_opinions">
										<iaixsl:attribute name="data-hide">true</iaixsl:attribute>
									</iaixsl:if>
									<div class="opinions_element_holder d-flex mb-4 pb-4 align-items-start">
										<iaixsl:if test="@image_small and not(@image_small = '')">
											<div class="opinions_element_photo">
												<a data-imagelightbox="o" target="_blank">
													<iaixsl:attribute name="href"><iaixsl:value-of select="@image_large"/></iaixsl:attribute>
													<iaixsl:attribute name="style">background-image: url('<iaixsl:value-of select="@image_small"/>');</iaixsl:attribute>

													<img>
														<iaixsl:attribute name="alt"><iaixsl:value-of select="@client"/></iaixsl:attribute>
														<iaixsl:attribute name="title"><iaixsl:value-of select="@client"/></iaixsl:attribute>
														<iaixsl:attribute name="src"><iaixsl:value-of select="@image_large"/></iaixsl:attribute>
													</img>
												</a>
											</div>
										</iaixsl:if>
										<div class="opinions_element">
											
											<div class="opinions_element_top justify-content-between">
												
												<iaixsl:if test="(@note)">
													<div class="opinions_element_stars">
														<div class="note">
															<span>
																<i class="icon-star">
																	<iaixsl:if test="@note &gt; 0.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
																</i>
																<i class="icon-star">
																	<iaixsl:if test="@note &gt; 1.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
																</i>
																<i class="icon-star">
																	<iaixsl:if test="@note &gt; 2.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
																</i>
																<i class="icon-star">
																	<iaixsl:if test="@note &gt; 3.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
																</i>
																<i class="icon-star">
																	<iaixsl:if test="@note &gt; 4.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
																</i>
															</span>
															<strong><iaixsl:value-of select="@note"/>/5</strong>
														</div>
													</div>
												</iaixsl:if>
											</div>
											
											<div class="opinions_element_text">
												<iaixsl:value-of select="text" disable-output-escaping="yes"/>
											</div>
											<div class="opinions_element_opinion_bottom">
												<span class="opinion_date"><iaixsl:value-of select="@date"/></span>
												
												<div class="opinion_author">
													<b class="opinions_element_author_title">
														
													</b>
													<span class="opinions_element_author_desc">
														<iaixsl:value-of select="@client"/>
													</span>
												</div>
												<div class="rate_opinion">

													<span>Was het advies nuttig?</span>
													<a href="" class="opinion_rate_yes">
														<input name="opinionState" type="hidden">
															<iaixsl:attribute name="value">positive</iaixsl:attribute>
														</input>
														<i class="icon-thumbs-down-alt"></i>Ja<span class="rate_count"><iaixsl:value-of select="@rate_yes"/></span>
													</a>
													<a href="" class="opinion_rate_no">
														<input name="opinionState" type="hidden">
															<iaixsl:attribute name="value">negative</iaixsl:attribute>
														</input>
														<i class="icon-thumbs-down"></i>Niet<span class="rate_count"><iaixsl:value-of select="@rate_no"/></span>
													</a>
													<input name="opinionId" type="hidden">
														<iaixsl:attribute name="value"><iaixsl:value-of select="@opinionId"/></iaixsl:attribute>
													</input>
												</div>
											</div>
											<iaixsl:if test="response and response != ''">
												<div class="opinion_response">
													<div class="opinion_response_top">
														<b>Winkel reactie</b>
														<span class="opinion_date"><iaixsl:value-of select="response/@date"/></span>
													</div>
													<div class="response_text"><iaixsl:value-of select="response" disable-output-escaping="yes"/></div>
												</div>
											</iaixsl:if>
										</div>
									</div>
								</div>
							</iaixsl:for-each>
						</div>
						<div class="menu_messages_message d-none" id="no_opinions_of_type">Geen recensies met dit aantal sterren.</div>
						
						<iaixsl:if test="$more_opinions and count(/shop/page/projector/comments/opinions/opinion) &gt; $count_opinions">
							<div class="opinions__more">
								<a href="#more_opinions" class="opinions__more_txt btn --solid --outline"><iaixsl:value-of select="$more_opinions"/></a>
							</div>
						</iaixsl:if>
					</div>
				</iaixsl:if>

				
				<iaixsl:if test="not(page/projector/comments/opinionClient/opinion/@stat = 'y')">
					<div class="opinions_add_form col-12">
						<iaixsl:if test="/shop/page/projector/comments/@all &gt; '0'">
							<iaixsl:attribute name="class">opinions_add_form d-none</iaixsl:attribute>
						</iaixsl:if>

						<div class="big_label">
							<iaixsl:choose>
								<iaixsl:when test="(/shop/page/projector/comments/opinionClient/opinion/@stat = 'n')">Verander je mening</iaixsl:when>
								<iaixsl:otherwise>Schrijf uw mening</iaixsl:otherwise>
							</iaixsl:choose>
						</div>
						<form class="row flex-column align-items-center shop_opinion_form" enctype="multipart/form-data" id="shop_opinion_form" action="/settings.php" method="post">
							<input type="hidden" name="product">
								<iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/product/@id"/></iaixsl:attribute>
							</input>

							
							<div class="shop_opinions_notes col-12 col-sm-6">
								<div class="shop_opinions_name">Uw beoordeling:</div>
								<div class="shop_opinions_note_items">
									
									<div class="opinion_note">
										<iaixsl:variable name="starSelected">
											<iaixsl:choose>
												<iaixsl:when test="/shop/page/projector/comments/opinionClient/notes/note[@selected = 'true']/@value">
													<iaixsl:value-of select="/shop/page/projector/comments/opinionClient/notes/note[@selected = 'true']/@value"/>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:value-of select="count(/shop/page/projector/comments/opinionClient/notes/note)"/>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</iaixsl:variable>
										<iaixsl:for-each select="/shop/page/projector/comments/opinionClient/notes/note">
											<a href="#" class="opinion_star">
												<iaixsl:choose>
													<iaixsl:when test="@value &gt; $starSelected">
														<iaixsl:attribute name="class">opinion_star</iaixsl:attribute>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:attribute name="class">opinion_star active</iaixsl:attribute>
													</iaixsl:otherwise>
												</iaixsl:choose>
												<iaixsl:attribute name="rel"><iaixsl:value-of select="@value"/></iaixsl:attribute>
												<iaixsl:attribute name="title">
													<iaixsl:value-of select="@value"/>/<iaixsl:value-of select="count(../note)"/>
												</iaixsl:attribute>
												<span>
													<i class="icon-star"> </i>
												</span>
											</a>
										</iaixsl:for-each>
										<strong>
											<iaixsl:value-of select="$starSelected"/>/<iaixsl:value-of select="count(/shop/page/projector/comments/opinionClient/notes/note)"/>
										</strong>
										<input type="hidden" name="note">
											<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
											<iaixsl:choose>
												<iaixsl:when test="/shop/page/projector/comments/opinionClient/notes/note/@selected = 'true'">
													<iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/projector/comments/opinionClient/notes/note[@selected = 'true']/@value"/></iaixsl:attribute>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:attribute name="value"><iaixsl:value-of select="count(/shop/page/projector/comments/opinionClient/notes/note)"/></iaixsl:attribute>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</input>
									</div>
								</div>
							</div>

							
							<div class="form-group col-12 col-sm-7">
								<div class="has-feedback">
									<textarea id="addopp" class="form-control" name="opinion">
										<iaixsl:if test="/shop/page/projector/comments/opinionClient/opinion and not(/shop/page/projector/comments/opinionClient/opinion = '')">
											<iaixsl:attribute name="class">form-control focused</iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:value-of select="/shop/page/projector/comments/opinionClient/opinion"/>
									</textarea>
									<label for="opinion" class="control-label">Inhoud van uw mening</label>
									<span class="form-control-feedback"/>

									
									<iaixsl:if test="/shop/page/projector/comments/opinionClient/opinion/@points">
										<strong class="opinions_points">
											<iaixsl:text>+ </iaixsl:text>
											<iaixsl:choose>
												<iaixsl:when test="substring-after(/shop/page/projector/comments/opinionClient/opinion/@points, '.') = '00'">
													<iaixsl:value-of select="substring-before(/shop/page/projector/comments/opinionClient/opinion/@points, '.')"/>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:value-of select="/shop/page/projector/comments/opinionClient/opinion/@points"/>
												</iaixsl:otherwise>
											</iaixsl:choose>punt</strong>
									</iaixsl:if>
								</div>
							</div>

							
							<iaixsl:if test="(page/projector/comments/opinionClient/image/@enabled='true')">
								<div class="opinion_add_photos col-12 col-sm-7">
									<div class="opinion_add_photos_wrapper d-flex align-items-center">
										<span class="opinion_add_photos_text">
											<i class="icon-file-image"></i>Voeg uw eigen productafbeelding toe:</span>
										<input class="opinion_add_photo" type="file" name="opinion_photo">
											<iaixsl:if test="/shop/form_data/upload_file/max_filesize/@bytes">
												<iaixsl:attribute name="data-max_filesize"><iaixsl:value-of select="/shop/form_data/upload_file/max_filesize/@bytes"/></iaixsl:attribute>
											</iaixsl:if>
										</input>

										
										<iaixsl:if test="/shop/page/projector/comments/opinionClient/image/@points">
											<strong class="opinions_points">
												<iaixsl:text>+ </iaixsl:text>
												<iaixsl:choose>
													<iaixsl:when test="substring-after(/shop/page/projector/comments/opinionClient/image/@points, '.') = '00'">
														<iaixsl:value-of select="substring-before(/shop/page/projector/comments/opinionClient/image/@points, '.')"/>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:value-of select="/shop/page/projector/comments/opinionClient/image/@points"/>
													</iaixsl:otherwise>
												</iaixsl:choose>punt</strong>
										</iaixsl:if>
									</div>
									<iaixsl:if test="/shop/page/projector/comments/opinionClient/image/@points">
										<div class="opinions_points_picture">Voeg een door u gemaakte foto van dit product toe<br/>en krijg extra<strong>
												<iaixsl:choose>
													<iaixsl:when test="substring-after(/shop/page/projector/comments/opinionClient/image/@points, '.') = '00'">
														<iaixsl:value-of select="substring-before(/shop/page/projector/comments/opinionClient/image/@points, '.')"/>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:value-of select="/shop/page/projector/comments/opinionClient/image/@points"/>
													</iaixsl:otherwise>
												</iaixsl:choose>punt</strong>in ons loyaliteitsprogramma.</div>
									</iaixsl:if>
								</div>
							</iaixsl:if>

							
							<iaixsl:if test="/shop/page/projector/sender/@opinion_unregistered = 'true'">
								<div class="form-group col-12 col-sm-7">
									<div class="has-feedback has-required">
										<input id="addopinion_name" class="form-control" type="text" name="addopinion_name" value="">
											<iaixsl:attribute name="required">required</iaixsl:attribute>
										</input>
										<label for="addopinion_name" class="control-label">Uw naam</label>
										<span class="form-control-feedback"/>
									</div>
								</div>
								<div class="form-group col-12 col-sm-7">
									<div class="has-feedback has-required">
										<input id="addopinion_email" class="form-control" type="email" name="addopinion_email" value="">
											<iaixsl:attribute name="required">required</iaixsl:attribute>
										</input>
										<label for="addopinion_email" class="control-label">Uw e-mail</label>
										<span class="form-control-feedback"/>
									</div>
								</div>
							</iaixsl:if>
							<div class="shop_opinions_button col-12">
								<button type="submit" class="btn --solid --medium opinions-shop_opinions_button px-5">
									<iaixsl:choose>
										<iaixsl:when test="/shop/page/projector/comments/opinionClient/opinion and not(/shop/page/projector/comments/opinionClient/opinion = '')">
											<iaixsl:attribute name="title">Verander je mening</iaixsl:attribute>
											<iaixsl:attribute name="data-button_edit">true</iaixsl:attribute>Verander je mening</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:attribute name="title">Advies toevoegen</iaixsl:attribute>Een mening sturen</iaixsl:otherwise>
									</iaixsl:choose>
								</button>
							</div>
						</form>
					</div>
				</iaixsl:if>
			</section>

			<iaixsl:if test="/shop/page/projector/sender/@active='true'">
				<iaixsl:if test="/shop/page/projector/comments/opinions/opinion/response"/>
			</iaixsl:if>

		<!--Product questions (projector_product_questions, 116262.1)-->

            
            <iaixsl:variable name="label_askforproduct_1"><span>Heb je vragen?</span></iaixsl:variable><iaixsl:variable name="label_askforproduct_2"><span>We zullen binnen 24 uur reageren</span></iaixsl:variable>
            <iaixsl:variable name="privacy_text1_askforproduct">De gegevens worden verwerkt in overeenstemming met</iaixsl:variable>
            <iaixsl:variable name="privacy_text2_askforproduct">privacybeleid</iaixsl:variable>
            <iaixsl:variable name="privacy_text3_askforproduct">. Door het in te dienen, aanvaardt u de bepalingen ervan.</iaixsl:variable>
            <iaixsl:variable name="button_legend_askforproduct"/>

            <iaixsl:variable name="count_questions">3</iaixsl:variable>
			<iaixsl:variable name="more_questions">Zie meer</iaixsl:variable>

            <iaixsl:choose>
                <iaixsl:when test="count(page/projector/questions/question)">
                    
                    <iaixsl:variable name="label_questions">Vragen van andere klanten</iaixsl:variable>

                    <section id="product_questions_list" class="questions mb-5 col-12">
                        

                        <div class="questions__wrapper row align-items-start">
                            
                            <div class="questions__block --questions col-12 col-md-6 mb-5 mb-md-0">
                                
                                <iaixsl:if test="$label_questions">
                                    <div class="questions__label headline">
                                        <span class="questions__label_txt headline__name"><iaixsl:value-of select="$label_questions"/></span>
                                    </div>
                                </iaixsl:if>
                                <iaixsl:for-each select="page/projector/questions/question">
                                    <div class="questions__item">
                                        <iaixsl:if test="position() &gt; $count_questions">
                                            <iaixsl:attribute name="data-hide">true</iaixsl:attribute>
                                        </iaixsl:if>
                                        <a href="#showAnswer" class="questions__question d-flex align-items-center justify-content-between">
                                            <span class="questions__question_txt py-2"><iaixsl:value-of disable-output-escaping="yes" select="@question"/></span>
                                        </a>
                                        <div class="questions__answer pb-2">
                                            <span class="questions__answer_txt"><iaixsl:value-of disable-output-escaping="yes" select="@answer"/></span>
                                        </div>
                                    </div>
                                </iaixsl:for-each>
                                
                                <iaixsl:if test="$more_questions and count(/shop/page/projector/questions/question) &gt; $count_questions">
                                    <div class="questions__more">
                                        <a href="#more_questions" class="questions__more_txt btn --solid --outline"><iaixsl:value-of select="$more_questions"/></a>
                                    </div>
                                </iaixsl:if>
                            </div>
                            
                            <div id="product_askforproduct" class="askforproduct questions__block --banner col-12 col-md-6">
                                <div class="questions__banner">
                                    <strong class="questions__txt1"><span>Heb je vragen?</span><span>We zullen binnen 24 uur reageren</span></strong>
                                    <div class="questions__button_wrapper">
                                        <div class="questions__txt_wrapper">
                                            <form action="/settings.php" class="askforproduct__form row flex-column align-items-center" method="post" novalidate="novalidate">
                                                <input type="hidden" name="question_product_id"><iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/product/@id"/></iaixsl:attribute></input>
                                                <input type="hidden" name="question_action" value="add"/>

                                                <div class="askforproduct__inputs col-12 col-sm-7">
                                                    
                                                    <div class="f-group askforproduct__email">
                                                        <div class="f-feedback askforproduct__feedback --email">
                                                            <input id="askforproduct__email_input" type="email" class="f-control --validate" name="question_email" required="required">
                                                                <iaixsl:if test="page/projector/sender/@email and not(page/projector/sender/@email = '') ">
                                                                    <iaixsl:attribute name="class">f-control --validate --focused</iaixsl:attribute>
                                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/sender/@email"/></iaixsl:attribute>
                                                                </iaixsl:if>
                                                            </input>
                                                            <label for="askforproduct__email_input" class="f-label">E-mail</label>
                                                            <span class="f-control-feedback"/>
                                                        </div>
                                                    </div>

                                                    
                                                    <div class="f-group askforproduct__question">
                                                        <div class="f-feedback askforproduct__feedback --question">
                                                            <textarea id="askforproduct__question_input" rows="2" cols="52" type="question" class="f-control --validate" name="product_question" minlength="3" required="required"/>
                                                            <label for="askforproduct__question_input" class="f-label">Vraag</label>
                                                            <span class="f-control-feedback"/>
                                                        </div>
                                                    </div>
                                                </div>

                                                
                                                <div class="askforproduct__submit  col-12 col-sm-7">
                                                    <button class="btn --solid --medium px-5 mb-2 askforproduct__button">Stel een vraag</button>
                                                    <iaixsl:if test="$button_legend_askforproduct">
                                                        <div class="askforproduct__button_legend">
                                                            <iaixsl:value-of select="$button_legend_askforproduct"/>
                                                        </div>
                                                    </iaixsl:if>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="/shop/contact/contact_nodes/node[@type='phone'][1]/@link">
                                                            <a class="questions__phone --link">
                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/contact_nodes/node[@type='phone'][1]/@link"/></iaixsl:attribute>
                                                                <iaixsl:value-of select="/shop/contact/contact_nodes/node[@type='phone'][1]/@value"/>
                                                            </a>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <span class="questions__phone"><iaixsl:value-of select="/shop/contact/contact_nodes/node[@type='phone'][1]/@value"/></span>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </section>
                </iaixsl:when>
                <iaixsl:otherwise>
                    
                    <section id="product_askforproduct" class="askforproduct mb-5 col-12">
                        <iaixsl:if test="count(page/projector/questions/question)">
                            <iaixsl:attribute name="data-questions">true</iaixsl:attribute>
                        </iaixsl:if>

                        
                        <iaixsl:if test="$label_askforproduct_1">
                            <div class="askforproduct__label headline">
                                <span class="askforproduct__label_txt headline__name"><iaixsl:value-of select="$label_askforproduct_1"/><iaixsl:value-of disable-output-escaping="yes" select="$hard_space"/><iaixsl:value-of select="$label_askforproduct_2"/></span>
                            </div>
                        </iaixsl:if>

                        <form action="/settings.php" class="askforproduct__form row flex-column align-items-center" method="post" novalidate="novalidate">
                            
                            <div class="askforproduct__description col-12 col-sm-7 mb-4">
                                <span class="askforproduct__description_txt">Als de bovenstaande beschrijving niet voldoende is voor u, stuur ons dan uw vraag over dit product. We zullen proberen zo snel mogelijk te antwoorden.</span>
                                <span class="askforproduct__privacy"><iaixsl:value-of select="$privacy_text1_askforproduct"/><a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute><iaixsl:value-of select="$privacy_text2_askforproduct"/></a><iaixsl:value-of select="$privacy_text3_askforproduct"/></span>
                            </div>

                            <input type="hidden" name="question_product_id"><iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/product/@id"/></iaixsl:attribute></input>
                            <input type="hidden" name="question_action" value="add"/>

                            <div class="askforproduct__inputs col-12 col-sm-7">
                                
                                <div class="f-group askforproduct__email">
                                    <div class="f-feedback askforproduct__feedback --email">
                                        <input id="askforproduct__email_input" type="email" class="f-control --validate" name="question_email" required="required">
                                            <iaixsl:if test="page/projector/sender/@email and not(page/projector/sender/@email = '') ">
                                                <iaixsl:attribute name="class">f-control --validate --focused</iaixsl:attribute>
                                                <iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/sender/@email"/></iaixsl:attribute>
                                            </iaixsl:if>
                                        </input>
                                        <label for="askforproduct__email_input" class="f-label">E-mail</label>
                                        <span class="f-control-feedback"/>
                                    </div>
                                </div>

                                
                                <div class="f-group askforproduct__question">
                                    <div class="f-feedback askforproduct__feedback --question">
                                        <textarea id="askforproduct__question_input" rows="6" cols="52" type="question" class="f-control --validate" name="product_question" minlength="3" required="required"/>
                                        <label for="askforproduct__question_input" class="f-label">Vraag</label>
                                        <span class="f-control-feedback"/>
                                    </div>
                                </div>
                            </div>

                            
                            <div class="askforproduct__submit  col-12 col-sm-7">
                                <button class="btn --solid --medium px-5 mb-2 askforproduct__button">Stel een vraag</button>
                                <iaixsl:if test="$button_legend_askforproduct">
                                    <div class="askforproduct__button_legend">
                                        <iaixsl:value-of select="$button_legend_askforproduct"/>
                                    </div>
                                </iaixsl:if>
                            </div>
                        </form>
                    </section>
                </iaixsl:otherwise>
            </iaixsl:choose>

            <iaixsl:if test="/shop/page/projector/product/firm/description">
                <section id="product_producer" class="product_producer mb-5 col-12">
                    <div class="product_producer__label headline">
                        <span class="product_producer__label_txt headline__name">Beschrijving van de fabrikant</span>
                    </div>
                    <div class="product_producer__wrapper row">
                        <iaixsl:if test="/shop/page/projector/product/firm/@icon">
                            <div class="product_producer__image col-12 col-md-3">
                                <img>
                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/page/projector/product/firm/@name"/></iaixsl:attribute>
                                    <iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/projector/product/firm/@icon"/></iaixsl:attribute>
                                </img>
                            </div>
                        </iaixsl:if>
                        <iaixsl:if test="/shop/page/projector/product/firm/description">
                            <div class="product_producer__info col-12">
                                <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/firm/description"/>
                            </div>
                        </iaixsl:if>
                    </div>
                </section>
            </iaixsl:if>

			
			<iaixsl:if test="/shop/@projector_askforproduct"> </iaixsl:if>
		<!--Produkty powiązane z tym produktem - strefa 2 (projector_associated_zone2, 117914.1)-->
            
                <iaixsl:if test="page/projector/products_associated_zone2">

                    <section id="products_associated_zone2" class="hotspot mb-5 col-12 mx-md-n3">
                        
                        <iaixsl:variable name="headline_after_products_associated_zone2"/>
                        
                        <iaixsl:if test="not(page/projector/products_associated_zone2/product or page/projector/products_associated_zone2/opinion)">
                            <iaixsl:attribute name="data-ajaxLoad">true</iaixsl:attribute>
                            <iaixsl:attribute name="data-pageType">projector</iaixsl:attribute>
                        </iaixsl:if>
                        <iaixsl:choose>
                            <iaixsl:when test="page/projector/products_associated_zone2/product or page/projector/products_associated_zone2/opinion">

                            
                            <h2>
                                <iaixsl:choose>
                                    <iaixsl:when test="page/projector/products_associated_zone2/@link">
                                        <a class="headline">
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="page/projector/products_associated_zone2/@link"/></iaixsl:attribute>
                                            <iaixsl:attribute name="title"/>

                                            <span class="headline__name">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="page/projector/products_associated_zone2/@name"><iaixsl:value-of select="page/projector/products_associated_zone2/@name"/></iaixsl:when>
                                                    <iaixsl:otherwise>Producten gekocht met dit product</iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </span>
                                            <iaixsl:if test="$headline_after_products_associated_zone2">
                                                <span class="headline__after"><iaixsl:value-of select="$headline_after_products_associated_zone2"/></span>
                                            </iaixsl:if>
                                        </a>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <span class="headline">
                                            <span class="headline__name">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="page/projector/products_associated_zone2/@name"><iaixsl:value-of select="page/projector/products_associated_zone2/@name"/></iaixsl:when>
                                                    <iaixsl:otherwise>Producten gekocht met dit product</iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </span>
                                        </span>
                                    </iaixsl:otherwise>
                                </iaixsl:choose>
                            </h2>

                            <div class="products d-flex flex-wrap justify-content-center">
                                <iaixsl:for-each select="page/projector/products_associated_zone2/*">
                                    
                                    <iaixsl:variable name="var_name"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of disable-output-escaping="yes" select="product/name/text()"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                    <iaixsl:variable name="var_icon"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                    <iaixsl:variable name="var_icon_small"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon_small"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon_small"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                    <iaixsl:variable name="var_link"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/@link"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@link"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                    <iaixsl:variable name="var_yousave"/>
                                    <iaixsl:variable name="var_net_prices"/>
                                    <iaixsl:variable name="var_b2b"/>

                                    <div class="product col-lg-2 col-sm-3 py-3">

                                        
                                        <iaixsl:if test="$var_yousave and not($var_yousave = '') and price/@yousave_formatted != ''">
                                            <div class="product__yousave">
                                                <span class="product__yousave --label"><iaixsl:value-of select="$var_yousave"/></span>
                                                <span class="product__yousave --value"><iaixsl:value-of select="price/@yousave_formatted"/></span>
                                            </div>
                                        </iaixsl:if>

                                        
                                        <a class="product__icon d-flex justify-content-center align-items-center">
                                            <iaixsl:attribute name="data-product-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                            <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>

                                            <img src="/gfx/pol/loader.gif?r=1685223127" class="b-lazy">
                                                <iaixsl:attribute name="data-src-small"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon_small"/></iaixsl:attribute>
                                                <iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon"/></iaixsl:attribute>
                                                <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="$var_name"/></iaixsl:attribute>
                                            </img>
                                        </a>

                                        
                                        <h2>
                                            <a class="product__name">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>
                                                <iaixsl:value-of select="$var_name"/>
                                            </a>
                                        </h2>

                                        <iaixsl:choose>
                                            
                                            <iaixsl:when test="$var_net_prices = ''">
                                                <iaixsl:variable name="var_size_min_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                <iaixsl:variable name="var_size_max_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                <iaixsl:variable name="var_size_min_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_maxprice_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_maxprice_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                <iaixsl:variable name="var_size_max_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_maxprice_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_maxprice_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                <iaixsl:variable name="var_points"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@points"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@points"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

                                                <iaixsl:variable name="var_value"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                <iaixsl:variable name="var_price_formatted">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="price/@price_unit_formatted and sizes/@unit"><iaixsl:value-of select="price/@price_unit_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/></iaixsl:when>
                                                        <iaixsl:when test="product/price/@price_unit_formatted and product/sizes/@unit"><iaixsl:value-of select="product/price/@price_unit_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="product/sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="product/sizes/@unit"/></iaixsl:when>
                                                        <iaixsl:otherwise><iaixsl:value-of select="$var_size_min_formatted"/></iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </iaixsl:variable>

                                                <iaixsl:variable name="var_maxprice_formatted">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="price/@maxprice_unit_formatted"><iaixsl:value-of select="price/@maxprice_unit_formatted"/></iaixsl:when>
                                                        <iaixsl:when test="product/price/@maxprice_unit_formatted"><iaixsl:value-of select="product/price/@maxprice_unit_formatted"/></iaixsl:when>
                                                        <iaixsl:when test="product"><iaixsl:value-of select="product/price/@maxprice_formatted"/></iaixsl:when>
                                                        <iaixsl:otherwise><iaixsl:value-of select="price/@maxprice_formatted"/></iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </iaixsl:variable>

                                                <div class="product__prices">
                                                    <iaixsl:choose>
                                                        
                                                        <iaixsl:when test="$var_size_min_formatted != $var_size_max_formatted">
                                                            <iaixsl:if test="$var_size_min_maxprice_formatted != ''">
                                                                <del class="price --max">
                                                                    <span><iaixsl:value-of select="$var_size_min_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_formatted"/></span>
                                                                </del>
                                                            </iaixsl:if>
                                                            <strong class="price">
                                                                <iaixsl:value-of select="$var_size_min_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_formatted"/>
                                                            </strong>
                                                            <iaixsl:if test="$var_points != ''">
                                                                <span class="price --points">
                                                                    <iaixsl:value-of select="$var_points"/><span class="currency">punt</span>
                                                                </span>
                                                            </iaixsl:if>
                                                        </iaixsl:when>

                                                        
                                                        <iaixsl:when test="(($var_value = 0) and $var_points = '') or ($var_value = 0 and $var_b2b and not($var_b2b = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="$var_b2b and not($var_b2b = '')">
                                                                  <a class="price --phone" href="/signin.php">
                                                                    <iaixsl:attribute name="title"><iaixsl:value-of select="$var_b2b"/></iaixsl:attribute>
                                                                    <iaixsl:value-of select="$var_b2b"/>
                                                                  </a>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                  <a class="price --phone" href="/contact.php">
                                                                    <iaixsl:attribute name="title">Klik om naar het contactformulier te gaan</iaixsl:attribute>Prijs op de telefoon</a>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:when>

                                                        
                                                        <iaixsl:otherwise>
                                                            <iaixsl:if test="$var_maxprice_formatted != ''">
                                                                <del class="price --max">
                                                                    <iaixsl:value-of select="$var_maxprice_formatted"/>
                                                                </del>
                                                            </iaixsl:if>
                                                            <strong class="price">
                                                                <iaixsl:value-of select="$var_price_formatted"/>
                                                            </strong>
                                                            <iaixsl:if test="$var_points != ''">
                                                                <span class="price --points">
                                                                    <iaixsl:value-of select="$var_points"/><span class="currency">punt</span>
                                                                </span>
                                                            </iaixsl:if>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </div>
                                                <iaixsl:if test="price/@unit_converted_price_formatted">
                                                    <small class="s_unit_converted_price"><iaixsl:value-of select="price/@unit_converted_price_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/></small>
                                                </iaixsl:if>
                                            </iaixsl:when>

                                            
                                            <iaixsl:otherwise>
                                                <iaixsl:variable name="var_size_min_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                <iaixsl:variable name="var_size_max_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                <iaixsl:variable name="var_size_min_net_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_maxprice_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_maxprice_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                <iaixsl:variable name="var_size_max_maxprice_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_maxprice_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_maxprice_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                <iaixsl:variable name="var_points_net"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@points"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@points"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

                                                <iaixsl:variable name="var_net_value"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_net"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_net"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                <iaixsl:variable name="var_price_formatted">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="price/@price_unit_net_formatted and sizes/@unit"><iaixsl:value-of select="price/@price_unit_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/></iaixsl:when>
                                                        <iaixsl:when test="product/price/@price_unit_net_formatted and product/sizes/@unit"><iaixsl:value-of select="product/price/@price_unit_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="product/sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="product/sizes/@unit"/></iaixsl:when>
                                                        <iaixsl:otherwise><iaixsl:value-of select="$var_size_min_net_formatted"/></iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </iaixsl:variable>

                                                <iaixsl:variable name="var_maxprice_net_formatted">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="price/@maxprice_unit_net_formatted"><iaixsl:value-of select="price/@maxprice_unit_net_formatted"/></iaixsl:when>
                                                        <iaixsl:when test="product/price/@maxprice_unit_net_formatted"><iaixsl:value-of select="product/price/@maxprice_unit_net_formatted"/></iaixsl:when>
                                                        <iaixsl:when test="product"><iaixsl:value-of select="product/price/@maxprice_net_formatted"/></iaixsl:when>
                                                        <iaixsl:otherwise><iaixsl:value-of select="price/@maxprice_net_formatted"/></iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </iaixsl:variable>

                                                <div class="product__prices">
                                                    <iaixsl:choose>
                                                        
                                                        <iaixsl:when test="$var_size_min_net_formatted != $var_size_max_net_formatted">
                                                            <iaixsl:if test="$var_size_min_net_maxprice_formatted != ''">
                                                                <del class="price --max">
                                                                    <span><iaixsl:value-of select="$var_size_min_net_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_net_formatted"/></span><iaixsl:value-of select="$var_net_prices"/>
                                                                </del>
                                                            </iaixsl:if>
                                                            <strong class="price">
                                                                <iaixsl:value-of select="$var_size_min_net_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                            </strong>
                                                            <iaixsl:if test="$var_points_net != ''">
                                                                <span class="price --points">
                                                                    <iaixsl:value-of select="$var_points_net"/><span class="currency">punt</span>
                                                                </span>
                                                            </iaixsl:if>
                                                        </iaixsl:when>

                                                        
                                                        <iaixsl:when test="(($var_net_value = 0) and $var_points_net = '') or ($var_net_value = 0 and $var_b2b and not($var_b2b = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="$var_b2b and not($var_b2b = '')">
                                                                  <a class="price --phone" href="/signin.php">
                                                                    <iaixsl:attribute name="title"><iaixsl:value-of select="$var_b2b"/></iaixsl:attribute>
                                                                    <iaixsl:value-of select="$var_b2b"/>
                                                                  </a>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                  <a class="price --phone" href="/contact.php">
                                                                    <iaixsl:attribute name="title">Klik om naar het contactformulier te gaan</iaixsl:attribute>Prijs op de telefoon</a>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:when>

                                                        
                                                        <iaixsl:otherwise>
                                                            <iaixsl:if test="$var_maxprice_net_formatted != ''">
                                                                <del class="price --max">
                                                                    <iaixsl:value-of select="$var_maxprice_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                </del>
                                                            </iaixsl:if>
                                                            <strong class="price">
                                                                <iaixsl:value-of select="$var_price_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                            </strong>
                                                            <iaixsl:if test="$var_points_net != ''">
                                                                <span class="price --points">
                                                                    <iaixsl:value-of select="$var_points_net"/><span class="currency">punt</span>
                                                                </span>
                                                            </iaixsl:if>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                    <iaixsl:if test="price/@unit_converted_price_net_formatted">
                                                        <small class="s_unit_converted_price"><iaixsl:value-of select="price/@unit_converted_price_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/><iaixsl:value-of select="$var_net_prices"/></small>
                                                    </iaixsl:if>
                                                </div>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>

                                        
                                        <iaixsl:if test="client/@client or @note or content">
                                            <div class="product__opinion">
                                                
                                                <iaixsl:if test="client/@client">
                                                    <div class="product__opinion_client"><iaixsl:value-of disable-output-escaping="yes" select="client/@client"/></div>
                                                </iaixsl:if>

                                                
                                                <iaixsl:if test="@note">
                                                    <div class="note">
                                                        <span>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note &gt; 0.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note &gt; 1.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note &gt; 2.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note &gt; 3.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note &gt; 4.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                        </span>
                                                        <small>Evaluatie:<iaixsl:value-of disable-output-escaping="yes" select="@note"/>/5</small>
                                                    </div>
                                                </iaixsl:if>

                                                
                                                <iaixsl:if test="content">
                                                    <div class="product__opinion_content"><iaixsl:value-of disable-output-escaping="yes" select="content"/></div>
                                                </iaixsl:if>
                                            </div>
                                        </iaixsl:if>
                                    </div>
                                </iaixsl:for-each>
                            </div>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <div class="hotspot mb-5 skeleton">
                                <span class="headline"/>
                                <div class="products d-flex flex-wrap">
                                    <div class="product col-6 col-sm-3 py-3">
                                        <span class="product__icon d-flex justify-content-center align-items-center"/>
                                        <span class="product__name"/>
                                        <div class="product__prices"/>
                                    </div>
                                    <div class="product col-6 col-sm-3 py-3">
                                        <span class="product__icon d-flex justify-content-center align-items-center"/>
                                        <span class="product__name"/>
                                        <div class="product__prices"/>
                                    </div>
                                    <div class="product col-6 col-sm-3 py-3">
                                        <span class="product__icon d-flex justify-content-center align-items-center"/>
                                        <span class="product__name"/>
                                        <div class="product__prices"/>
                                    </div>
                                    <div class="product col-6 col-sm-3 py-3">
                                        <span class="product__icon d-flex justify-content-center align-items-center"/>
                                        <span class="product__name"/>
                                        <div class="product__prices"/>
                                    </div>
                                </div>
                            </div>
                        </iaixsl:otherwise>
                        </iaixsl:choose>
                    </section>
                </iaixsl:if>

                <iaixsl:if test="/shop/page/projector/products_associated_zone2/@iairs_ajax"> </iaixsl:if>
                <iaixsl:if test="/shop/page/projector/products_associated_zone2/@hotspot_ajax"> </iaixsl:if>
                
            
        <!--Produkty powiązane z tym produktem - strefa 3 (projector_associated_zone3, 116371.1)-->
            
                <iaixsl:if test="page/projector/products_associated_zone3">

                    <section id="products_associated_zone3" class="hotspot mb-5 col-12 mx-md-n3">
                        
                        <iaixsl:variable name="headline_after_products_associated_zone3"/>
                        
                        <iaixsl:if test="not(page/projector/products_associated_zone3/product or page/projector/products_associated_zone3/opinion)">
                            <iaixsl:attribute name="data-ajaxLoad">true</iaixsl:attribute>
                            <iaixsl:attribute name="data-pageType">projector</iaixsl:attribute>
                        </iaixsl:if>
                        <iaixsl:choose>
                            <iaixsl:when test="page/projector/products_associated_zone3/product or page/projector/products_associated_zone3/opinion">

                            
                            <h2>
                                <iaixsl:choose>
                                    <iaixsl:when test="page/projector/products_associated_zone3/@link">
                                        <a class="headline">
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="page/projector/products_associated_zone3/@link"/></iaixsl:attribute>
                                            <iaixsl:attribute name="title"/>

                                            <span class="headline__name">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="page/projector/products_associated_zone3/@name"><iaixsl:value-of select="page/projector/products_associated_zone3/@name"/></iaixsl:when>
                                                    <iaixsl:otherwise>Producten gekocht met dit product</iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </span>
                                            <iaixsl:if test="$headline_after_products_associated_zone3">
                                                <span class="headline__after"><iaixsl:value-of select="$headline_after_products_associated_zone3"/></span>
                                            </iaixsl:if>
                                        </a>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <span class="headline">
                                            <span class="headline__name">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="page/projector/products_associated_zone3/@name"><iaixsl:value-of select="page/projector/products_associated_zone3/@name"/></iaixsl:when>
                                                    <iaixsl:otherwise>Producten gekocht met dit product</iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </span>
                                        </span>
                                    </iaixsl:otherwise>
                                </iaixsl:choose>
                            </h2>

                            <div class="products d-flex flex-wrap">
                                <iaixsl:for-each select="page/projector/products_associated_zone3/*">
                                    
                                    <iaixsl:variable name="var_name"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of disable-output-escaping="yes" select="product/name/text()"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                    <iaixsl:variable name="var_icon"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                    <iaixsl:variable name="var_icon_small"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon_small"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon_small"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                    <iaixsl:variable name="var_link"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/@link"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@link"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                    <iaixsl:variable name="var_yousave"/>
                                    <iaixsl:variable name="var_net_prices"/>
                                    <iaixsl:variable name="var_b2b"/>

                                    <div class="product col-12 col-sm-6 px-0 px-md-3 py-3">

                                        <div class="product__wrapper">
                                            <div class="product__wrapper__image col-12 col-md-5">
                                                
                                                <iaixsl:if test="$var_yousave and not($var_yousave = '') and price/@yousave_formatted != ''">
                                                    <div class="product__yousave">
                                                        <span class="product__yousave --label"><iaixsl:value-of select="$var_yousave"/></span>
                                                        <span class="product__yousave --value"><iaixsl:value-of select="price/@yousave_formatted"/></span>
                                                    </div>
                                                </iaixsl:if>
                                                
                                                <a class="product__icon d-flex justify-content-center align-items-center">
                                                    <iaixsl:attribute name="data-product-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>

                                                    <img src="/gfx/pol/loader.gif?r=1685223127" class="b-lazy">
                                                        <iaixsl:attribute name="data-src-small"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon_small"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="$var_name"/></iaixsl:attribute>
                                                    </img>
                                                </a>
                                            </div>
                                            <div class="product__wrapper__info col-12 col-md-7">
                                                
                                                <h2>
                                                    <a class="product__name">
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>
                                                        <iaixsl:value-of select="$var_name"/>
                                                    </a>
                                                </h2>

                                                <iaixsl:if test="cleardescription">
                                                    <div class="product__desc">
                                                        <iaixsl:value-of disable-output-escaping="yes" select="cleardescription"/>
                                                    </div>
                                                </iaixsl:if>

                                                <iaixsl:choose>
                                                    
                                                    <iaixsl:when test="$var_net_prices = ''">
                                                        <iaixsl:variable name="var_size_min_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_min_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_maxprice_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_maxprice_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_maxprice_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_maxprice_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_points"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@points"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@points"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

                                                        <iaixsl:variable name="var_value"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_price_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@price_unit_formatted and sizes/@unit"><iaixsl:value-of select="price/@price_unit_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@price_unit_formatted and product/sizes/@unit"><iaixsl:value-of select="product/price/@price_unit_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="product/sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="product/sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="$var_size_min_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        <iaixsl:variable name="var_maxprice_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@maxprice_unit_formatted"><iaixsl:value-of select="price/@maxprice_unit_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@maxprice_unit_formatted"><iaixsl:value-of select="product/price/@maxprice_unit_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product"><iaixsl:value-of select="product/price/@maxprice_formatted"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="price/@maxprice_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        <div class="product__prices">
                                                            <iaixsl:choose>
                                                                
                                                                <iaixsl:when test="$var_size_min_formatted != $var_size_max_formatted">
                                                                    <iaixsl:if test="$var_size_min_maxprice_formatted != ''">
                                                                        <del class="price --max">
                                                                            <span><iaixsl:value-of select="$var_size_min_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_formatted"/></span>
                                                                        </del>
                                                                    </iaixsl:if>
                                                                    <strong class="price">
                                                                        <iaixsl:value-of select="$var_size_min_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_formatted"/>
                                                                    </strong>
                                                                    <iaixsl:if test="$var_points != ''">
                                                                        <span class="price --points">
                                                                            <iaixsl:value-of select="$var_points"/><span class="currency">punt</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:when>

                                                                
                                                                <iaixsl:when test="(($var_value = 0) and $var_points = '') or ($var_value = 0 and $var_b2b and not($var_b2b = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="$var_b2b and not($var_b2b = '')">
                                                                        <a class="price --phone" href="/signin.php">
                                                                        <iaixsl:attribute name="title"><iaixsl:value-of select="$var_b2b"/></iaixsl:attribute>
                                                                        <iaixsl:value-of select="$var_b2b"/>
                                                                        </a>
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                        <a class="price --phone" href="/contact.php">
                                                                        <iaixsl:attribute name="title">Klik om naar het contactformulier te gaan</iaixsl:attribute>Prijs op de telefoon</a>
                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                                </iaixsl:when>

                                                                
                                                                <iaixsl:otherwise>
                                                                    <iaixsl:if test="$var_maxprice_formatted != ''">
                                                                        <del class="price --max">
                                                                            <iaixsl:value-of select="$var_maxprice_formatted"/>
                                                                        </del>
                                                                    </iaixsl:if>
                                                                    <strong class="price">
                                                                        <iaixsl:value-of select="$var_price_formatted"/>
                                                                    </strong>
                                                                    <iaixsl:if test="$var_points != ''">
                                                                        <span class="price --points">
                                                                            <iaixsl:value-of select="$var_points"/><span class="currency">punt</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </div>
                                                        <iaixsl:if test="price/@unit_converted_price_formatted">
                                                            <small class="s_unit_converted_price"><iaixsl:value-of select="price/@unit_converted_price_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/></small>
                                                        </iaixsl:if>
                                                    </iaixsl:when>

                                                    
                                                    <iaixsl:otherwise>
                                                        <iaixsl:variable name="var_size_min_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_min_net_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_maxprice_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_maxprice_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_maxprice_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_maxprice_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_maxprice_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_points_net"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@points"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@points"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

                                                        <iaixsl:variable name="var_net_value"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_net"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_net"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_price_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@price_unit_net_formatted and sizes/@unit"><iaixsl:value-of select="price/@price_unit_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@price_unit_net_formatted and product/sizes/@unit"><iaixsl:value-of select="product/price/@price_unit_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="product/sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="product/sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="$var_size_min_net_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        <iaixsl:variable name="var_maxprice_net_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@maxprice_unit_net_formatted"><iaixsl:value-of select="price/@maxprice_unit_net_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@maxprice_unit_net_formatted"><iaixsl:value-of select="product/price/@maxprice_unit_net_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product"><iaixsl:value-of select="product/price/@maxprice_net_formatted"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="price/@maxprice_net_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        <div class="product__prices">
                                                            <iaixsl:choose>
                                                                
                                                                <iaixsl:when test="$var_size_min_net_formatted != $var_size_max_net_formatted">
                                                                    <iaixsl:if test="$var_size_min_net_maxprice_formatted != ''">
                                                                        <del class="price --max">
                                                                            <span><iaixsl:value-of select="$var_size_min_net_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_net_formatted"/></span><iaixsl:value-of select="$var_net_prices"/>
                                                                        </del>
                                                                    </iaixsl:if>
                                                                    <strong class="price">
                                                                        <iaixsl:value-of select="$var_size_min_net_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                    </strong>
                                                                    <iaixsl:if test="$var_points_net != ''">
                                                                        <span class="price --points">
                                                                            <iaixsl:value-of select="$var_points_net"/><span class="currency">punt</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:when>

                                                                
                                                                <iaixsl:when test="(($var_net_value = 0) and $var_points_net = '') or ($var_net_value = 0 and $var_b2b and not($var_b2b = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="$var_b2b and not($var_b2b = '')">
                                                                        <a class="price --phone" href="/signin.php">
                                                                        <iaixsl:attribute name="title"><iaixsl:value-of select="$var_b2b"/></iaixsl:attribute>
                                                                        <iaixsl:value-of select="$var_b2b"/>
                                                                        </a>
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                        <a class="price --phone" href="/contact.php">
                                                                        <iaixsl:attribute name="title">Klik om naar het contactformulier te gaan</iaixsl:attribute>Prijs op de telefoon</a>
                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                                </iaixsl:when>

                                                                
                                                                <iaixsl:otherwise>
                                                                    <iaixsl:if test="$var_maxprice_net_formatted != ''">
                                                                        <del class="price --max">
                                                                            <iaixsl:value-of select="$var_maxprice_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                        </del>
                                                                    </iaixsl:if>
                                                                    <strong class="price">
                                                                        <iaixsl:value-of select="$var_price_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                    </strong>
                                                                    <iaixsl:if test="$var_points_net != ''">
                                                                        <span class="price --points">
                                                                            <iaixsl:value-of select="$var_points_net"/><span class="currency">punt</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                            <iaixsl:if test="price/@unit_converted_price_net_formatted">
                                                                <small class="s_unit_converted_price"><iaixsl:value-of select="price/@unit_converted_price_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/><iaixsl:value-of select="$var_net_prices"/></small>
                                                            </iaixsl:if>
                                                        </div>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>

                                                
                                                <iaixsl:if test="client/@client or @note or content">
                                                    <div class="product__opinion">
                                                        
                                                        <iaixsl:if test="client/@client">
                                                            <div class="product__opinion_client"><iaixsl:value-of disable-output-escaping="yes" select="client/@client"/></div>
                                                        </iaixsl:if>

                                                        
                                                        <iaixsl:if test="@note">
                                                            <div class="note">
                                                                <span>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note &gt; 0.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note &gt; 1.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note &gt; 2.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note &gt; 3.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note &gt; 4.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                </span>
                                                                <small>Evaluatie:<iaixsl:value-of disable-output-escaping="yes" select="@note"/>/5</small>
                                                            </div>
                                                        </iaixsl:if>

                                                        
                                                        <iaixsl:if test="content">
                                                            <div class="product__opinion_content"><iaixsl:value-of disable-output-escaping="yes" select="content"/></div>
                                                        </iaixsl:if>
                                                    </div>
                                                </iaixsl:if>

                                                <div class="product__link">
                                                    <a class="product__link_txt btn --solid --outline">
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>Zie</a>
                                                </div>
                                            </div>
                                        </div> 
                                    </div>
                                </iaixsl:for-each>
                            </div>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <div class="hotspot mb-5 skeleton">
                                <span class="headline"/>
                                <div class="products d-flex flex-wrap">
                                    <div class="product col-12 col-sm-6 px-0 px-md-3 py-3">
                                        <span class="product__icon d-flex justify-content-center align-items-center"/>
                                        <span class="product__name"/>
                                        <div class="product__prices"/>
                                    </div>
                                    <div class="product col-12 col-sm-6 px-0 px-md-3 py-3">
                                        <span class="product__icon d-flex justify-content-center align-items-center"/>
                                        <span class="product__name"/>
                                        <div class="product__prices"/>
                                    </div>
                                </div>
                            </div>
                        </iaixsl:otherwise>
                        </iaixsl:choose>
                    </section>
                </iaixsl:if>

                <iaixsl:if test="/shop/page/projector/products_associated_zone3/@iairs_ajax"> </iaixsl:if>
                <iaixsl:if test="/shop/page/projector/products_associated_zone3/@hotspot_ajax"> </iaixsl:if>

            
        <!--Karta produktu - załączniki (projector_enclosures, 111598.1)-->
			<iaixsl:if test="(/shop/page/projector/product/enclosures/documents/item) or (/shop/page/projector/product/enclosures/audio/item)  or (/shop/page/projector/product/enclosures/other)  or (/shop/page/projector/product/enclosures/images_attachments/item) or (/shop/page/projector/product/enclosures/video/item)">
				
				<iaixsl:variable name="label_enclosures">Om te downloaden</iaixsl:variable>

				<section id="projector_enclosures" class="enclosures mb-5 col-12">
					<iaixsl:if test="$label_enclosures">
						<div class="enclosures__label mb-3">
							<span class="enclosures__label_txt"><iaixsl:value-of select="$label_enclosures"/></span>
						</div>
					</iaixsl:if>
					<ul class="enclosures__list row">
						<iaixsl:for-each select="/shop/page/projector/product/enclosures/*/item">
							<li class="enclosures__item col-12 col-sm-4 col-md-3 mb-2">
								<a>
									<iaixsl:choose>
										<iaixsl:when test="@extension = 'swf'">
											<iaixsl:attribute name="class">enclosures__name --swf</iaixsl:attribute>
										</iaixsl:when>
										<iaixsl:when test="@type = 'video'">
											<iaixsl:attribute name="class">enclosures__name --video</iaixsl:attribute>
										</iaixsl:when>
										<iaixsl:when test="@type = 'audio/mpeg'">
											<iaixsl:attribute name="class">enclosures__name --audio</iaixsl:attribute>
										</iaixsl:when>
										<iaixsl:when test="@type = 'image/image'">
											<iaixsl:attribute name="class">enclosures__name --image</iaixsl:attribute>
										</iaixsl:when>
										<iaixsl:when test="@type = 'doc'">
											<iaixsl:attribute name="class">enclosures__name --document</iaixsl:attribute>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:attribute name="class">enclosures__name --download</iaixsl:attribute>
										</iaixsl:otherwise>
									</iaixsl:choose>
									<iaixsl:if test="@type = 'doc' or @extension = 'swf' or @type='other'"><iaixsl:attribute name="target">_blank</iaixsl:attribute></iaixsl:if>
									<iaixsl:attribute name="href"><iaixsl:value-of select="@url"/></iaixsl:attribute>
									<iaixsl:value-of select="@name"/>
								</a>
							</li>
						</iaixsl:for-each>
					</ul>
				</section>
			</iaixsl:if>
		<!--Karta produktu - gwarancja (projector_warranty, 116889.1)-->
            <iaixsl:if test="page/projector/product/warranty and not(page/projector/product/warranty= '')">
                
            </iaixsl:if>
        <!--Produkty powiązane z tym produktem - strefa 4 (projector_associated_zone4, 88393.1)-->

            <iaixsl:if test="/shop/page/projector/products_associated_zone4/@name"> </iaixsl:if>
            <iaixsl:if test="page/projector/products_associated_zone4/opinion"> </iaixsl:if>
            <iaixsl:if test="/shop/page/projector/products_associated_zone4"> </iaixsl:if>

        <!--CMS w karcie produktu dla rozmiarów (projector_cms_sizes, 106721.1)-->
        <iaixsl:if test="/shop/page/projector/product/sizes_chart">
            <div class="component_projector_sizes_chart">
                <iaixsl:attribute name="id">component_projector_sizes_cms_not</iaixsl:attribute>
                <iaixsl:if test="/shop/page/projector/product/sizes_chart/descriptions/description">
                    <table class="table-condensed">
                        <iaixsl:attribute name="class">ui-responsive table-stroke ui-table ui-table-reflow table-condensed</iaixsl:attribute>
                        <thead>
                            <tr>
                                <th class="table-first-column">Maat</th>
                                <iaixsl:for-each select="/shop/page/projector/product/sizes_chart/descriptions/description">
                                    <th>
                                        <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                                    </th>
                                </iaixsl:for-each>

                            </tr>
                        </thead>
                        <tbody>
                            <iaixsl:for-each select="/shop/page/projector/product/sizes_chart/sizes/size">

                                <tr>
                                    <td class="table-first-column">
                                        <iaixsl:value-of disable-output-escaping="yes" select="@description"/>
                                    </td>
                                    <iaixsl:for-each select="description">
                                        <td>
                                            <iaixsl:value-of disable-output-escaping="yes" select="@text"/>
                                        </td>
                                    </iaixsl:for-each>
                                </tr>
                            </iaixsl:for-each>
                        </tbody>
                    </table>
                </iaixsl:if>
                <div class="sizes_chart_cms">
                    <iaixsl:if test="/shop/page/projector/product/sizes_chart/text">
                        <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/sizes_chart/text"/>
                    </iaixsl:if>
                </div>

            </div>
        </iaixsl:if>

        <iaixsl:if test="not(/shop/page/projector/product/sizes_chart) and ((page/projector/text_sizesgroup) and (page/projector/text_sizesgroup != ''))">
            <div class="component_projector_sizes_chart">
                <iaixsl:attribute name="id">component_projector_sizes_cms_not</iaixsl:attribute>
                <div class="sizes_chart_cms">
                    <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/text_sizesgroup"/>
                </div>
            </div>
        </iaixsl:if>

        <!--Menu - Drzewo 5 (menu_tree5, 63237.1)-->
		<iaixsl:if test="/shop/navigation5/item/@display_all_link"/>
        
                        </div>
                    </iaixsl:if>
                </div>
             </div>

            
            <iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'footer')">
                <footer>
                    <iaixsl:attribute name="class"/>
                    <!--Bannery sekcji 2 (menu_banners2, 109348.1)-->

            <iaixsl:if test="count(commercial_banner2/link)"> 
                <section id="menu_banners2" class="container mb-5">
                    <iaixsl:for-each select="commercial_banner2/link">
                        <div class="menu_button_wrapper">
                            <iaixsl:choose>
                                <iaixsl:when test="not(html)">
                                    <iaixsl:choose>
                                        <iaixsl:when test="@href">
                                            <a target="_self">
                                            <iaixsl:if test="@target"><iaixsl:attribute name="target"><iaixsl:value-of select="@target"/></iaixsl:attribute></iaixsl:if>
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@href"/></iaixsl:attribute>
                                                <iaixsl:if test="text"><iaixsl:attribute name="title"><iaixsl:value-of select="text"/></iaixsl:attribute></iaixsl:if>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="image or image_desktop or image_tablet or image_mobile">
                                                        <img src="/gfx/pol/loader.gif?r=1685223127">
                                                            <iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
                                                            <iaixsl:if test="image_desktop or image_tablet or image_mobile">
                                                                <iaixsl:attribute name="class">rwd-src</iaixsl:attribute>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="image/@src">
                                                                <iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="image_desktop/@src">
                                                                <iaixsl:attribute name="data-src_desktop"><iaixsl:value-of select="image_desktop/@src"/></iaixsl:attribute>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="image_tablet/@src">
                                                                <iaixsl:attribute name="data-src_tablet"><iaixsl:value-of select="image_tablet/@src"/></iaixsl:attribute>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="image_mobile/@src">
                                                                <iaixsl:attribute name="data-src_mobile"><iaixsl:value-of select="image_mobile/@src"/></iaixsl:attribute>
                                                            </iaixsl:if>
                                                        </img>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:value-of disable-output-escaping="yes" select="text"/>      
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </a>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:choose>
                                                <iaixsl:when test="image or image_desktop or image_tablet or image_mobile">
                                                    <img src="/gfx/pol/loader.gif?r=1685223127">
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
                                                        <iaixsl:if test="image_desktop or image_tablet or image_mobile">
                                                            <iaixsl:attribute name="class">rwd-src</iaixsl:attribute>
                                                        </iaixsl:if>

                                                        <iaixsl:if test="image/@src">
                                                            <iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
                                                        </iaixsl:if>

                                                        <iaixsl:if test="image_desktop/@src">
                                                            <iaixsl:attribute name="data-src_desktop"><iaixsl:value-of select="image_desktop/@src"/></iaixsl:attribute>
                                                        </iaixsl:if>

                                                        <iaixsl:if test="image_tablet/@src">
                                                            <iaixsl:attribute name="data-src_tablet"><iaixsl:value-of select="image_tablet/@src"/></iaixsl:attribute>
                                                        </iaixsl:if>

                                                        <iaixsl:if test="image_mobile/@src">
                                                            <iaixsl:attribute name="data-src_mobile"><iaixsl:value-of select="image_mobile/@src"/></iaixsl:attribute>
                                                        </iaixsl:if>
                                                    </img>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:value-of disable-output-escaping="yes" select="text"/>      
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                    </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:value-of disable-output-escaping="yes" select="html"/>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </div>
                    </iaixsl:for-each>
                </section>
            </iaixsl:if>
        <!--Menu - Drzewo 4 (menu_tree4, 113289.1)-->
			<div id="footer_links">
				<iaixsl:choose>
					<iaixsl:when test="count(navigation4/item) = 1 and (/shop/action/shop_information/@order_link_active='y' or /shop/action/shipping_cost/@order_link_active='y' or /shop/action/payment_methods/@order_link_active='y' or /shop/action/terms/@order_link_active='y' or /shop/action/private_policy/@order_link_active='y' or /shop/action/order_cancel/@order_link_active='y')">
						<iaixsl:attribute name="class">row container<iaixsl:text> </iaixsl:text>four_elements</iaixsl:attribute>
					</iaixsl:when>
					
					<iaixsl:when test="count(navigation4/item) = 2 and (/shop/action/shop_information/@order_link_active='n' and /shop/action/shipping_cost/@order_link_active='n' and /shop/action/payment_methods/@order_link_active='n' and /shop/action/terms/@order_link_active='n' and /shop/action/private_policy/@order_link_active='n' and /shop/action/order_cancel/@order_link_active='n')">
						<iaixsl:attribute name="class">row container<iaixsl:text> </iaixsl:text>four_elements</iaixsl:attribute>
					</iaixsl:when>
					<iaixsl:otherwise>
						<iaixsl:attribute name="class">row container</iaixsl:attribute>
					</iaixsl:otherwise>
				</iaixsl:choose>
				
				<ul id="menu_orders" class="footer_links col-md-4 col-sm-6 col-12">
					<iaixsl:choose>
						<iaixsl:when test="count(navigation4/item) = 1 and (/shop/action/shop_information/@order_link_active='y' or /shop/action/shipping_cost/@order_link_active='y' or /shop/action/payment_methods/@order_link_active='y' or /shop/action/terms/@order_link_active='y' or /shop/action/private_policy/@order_link_active='y' or /shop/action/order_cancel/@order_link_active='y')">
							<iaixsl:attribute name="class">footer_links col-md-4 col-sm-6 col-12 orders_bg</iaixsl:attribute>
						</iaixsl:when>
					
						<iaixsl:when test="count(navigation4/item) = 2 and (/shop/action/shop_information/@order_link_active='n' and /shop/action/shipping_cost/@order_link_active='n' and /shop/action/payment_methods/@order_link_active='n' and /shop/action/terms/@order_link_active='n' and /shop/action/private_policy/@order_link_active='n' and /shop/action/order_cancel/@order_link_active='n')">
							<iaixsl:attribute name="class">footer_links col-md-4 col-sm-6 col-12 orders_bg</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="count(navigation4/item) = 0">
							<iaixsl:attribute name="class">footer_links col-md-4 col-sm-6 col-12 orders_bg</iaixsl:attribute>
						</iaixsl:when>
					</iaixsl:choose>
					<li>
						<a id="menu_orders_header" class=" footer_links_label">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>
							<iaixsl:attribute name="title"/>Mijn bestelling</a>
						<ul class="footer_links_sub">
							<li id="order_status" class="menu_orders_item">
								<i class="icon-battery"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/orderOpen/@url"/></iaixsl:attribute>Orderstatus</a>
							</li>
							<li id="order_status2" class="menu_orders_item">
								<i class="icon-truck"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/orderOpen/@url"/></iaixsl:attribute>Het volgen van de zending</a>
							</li>
							<li id="order_rma" class="menu_orders_item">
								<i class="icon-sad-face"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/addRma/@url"/></iaixsl:attribute>Ik wil reclame maken voor een product</a>
							</li>
							<li id="order_returns" class="menu_orders_item">
								<i class="icon-refresh-dollar"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/addReturn/@url"/></iaixsl:attribute>Ik wil een product terugsturen</a>
							</li>
							<iaixsl:variable name="order_contact_literal">true</iaixsl:variable>
							<iaixsl:if test="$order_contact_literal">
								<li id="order_contact" class="menu_orders_item">
									<i class="icon-phone"></i>
									<a>
										<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>Neem contact op met</a>
								</li>
							</iaixsl:if>
							<li id="order_exchange" class="menu_orders_item">
								
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/returnExchangeLink/@url"/></iaixsl:attribute>
									
								</a>
							</li> 
						</ul>
					</li>
				</ul>
				
				<ul id="menu_account" class="footer_links col-md-4 col-sm-6 col-12">
					<li>
						<a id="menu_account_header" class=" footer_links_label">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>
							<iaixsl:attribute name="title"/>Mijn rekening</a>
						<ul class="footer_links_sub">
							<iaixsl:choose>
								<iaixsl:when test="basket/@login">
									<li id="account_register" class="menu_orders_item">
										<i class="icon-user"></i>
										<a>
											<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/loginEdit/@url"/></iaixsl:attribute>Uw gegevens</a>
									</li>
								</iaixsl:when>
								<iaixsl:otherwise>
									<iaixsl:for-each select="/shop/action/registration_options/wholesale">
										<li id="account_register_wholesale" class="menu_orders_item">
											<i class="icon-wholesaler-register"></i>
											<a>
												<iaixsl:attribute name="href"><iaixsl:value-of select="@registration_url"/></iaixsl:attribute>Registreren als groothandelaar</a>
										</li>
									</iaixsl:for-each>
									<iaixsl:for-each select="/shop/action/registration_options/retail">
										<li id="account_register_retail" class="menu_orders_item">
											<i class="icon-register-card"></i>
											<a>
												<iaixsl:attribute name="href"><iaixsl:value-of select="@registration_url"/></iaixsl:attribute>Register</a>
										</li>
									</iaixsl:for-each>
								</iaixsl:otherwise>
							</iaixsl:choose>
							<li id="account_orders" class="menu_orders_item">
								<i class="icon-menu-lines"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/clientOrders/@url"/></iaixsl:attribute>Mijn bestellingen</a>
							</li>
							<li id="account_boughts" class="menu_orders_item">
								<i class="icon-menu-lines"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/productsBought/@url"/></iaixsl:attribute>Lijst van gekochte producten</a>
							</li>
							<li id="account_basket" class="menu_orders_item">
								<i class="icon-basket"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/></iaixsl:attribute>Mand</a>
							</li>
							<li id="account_observed" class="menu_orders_item">
								<i class="icon-star-empty"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/observed/@url"/></iaixsl:attribute>Boodschappenlijst</a>
							</li>
							<li id="account_history" class="menu_orders_item">
								<i class="icon-clock"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/clientOrders/@url"/></iaixsl:attribute>Transactiegeschiedenis</a>
							</li>
							<li id="account_rebates" class="menu_orders_item">
								<i class="icon-scissors-cut"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/clientRebate/@url"/></iaixsl:attribute>Mijn kortingen</a>
							</li>
							<li id="account_newsletter" class="menu_orders_item">
								<i class="icon-envelope-empty"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/newsletter/@url"/></iaixsl:attribute>Newsletter</a>
							</li>
						</ul>
					</li>
				</ul>

				
				<iaixsl:if test="/shop/action/shop_information/@order_link_active='y' or /shop/action/shipping_cost/@order_link_active='y' or /shop/action/payment_methods/@order_link_active='y' or /shop/action/terms/@order_link_active='y' or /shop/action/private_policy/@order_link_active='y' or /shop/action/order_cancel/@order_link_active='y'">

					<ul id="menu_regulations" class="footer_links col-md-4 col-sm-6 col-12">
						<li><span class="footer_links_label">Voorschriften</span>
							<ul class="footer_links_sub">
								<iaixsl:if test="/shop/action/shop_information/@order_link_active='y' and not(/shop/action/shop_information/@url = '')">
									<li>
										<a>
											<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shop_information/@url"/></iaixsl:attribute>Winkel informatie</a>
									</li>
								</iaixsl:if>
								<iaixsl:if test="/shop/action/shipping_cost/@order_link_active='y' and not(/shop/action/shipping_cost/@url = '')">
									<li>
										<a>
											<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shipping_cost/@url"/></iaixsl:attribute>Verzending</a>
									</li>
								</iaixsl:if>
								<iaixsl:if test="/shop/action/payment_methods/@order_link_active='y' and not(/shop/action/payment_methods/@url = '')">
									<li>
										<a>
											<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/payment_methods/@url"/></iaixsl:attribute>Betaalmethoden en commissies</a>
									</li>
								</iaixsl:if>
								<iaixsl:if test="/shop/action/terms/@order_link_active='y' and not(/shop/action/terms/@url = '')">
									<li>
										<a>
											<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/terms/@url"/></iaixsl:attribute>Reglement</a>
									</li>
								</iaixsl:if>
								<iaixsl:if test="/shop/action/private_policy/@order_link_active='y' and not(/shop/action/private_policy/@url = '')">
									<li>
										<a>
											<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute>Privacybeleid</a>
									</li>
								</iaixsl:if>
								<iaixsl:if test="/shop/action/order_cancel/@order_link_active='y' and not(/shop/action/order_cancel/@url = '')">
									<li>
										<a>
											<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/order_cancel/@url"/></iaixsl:attribute>Terugtrekking uit het contract</a>
									</li>
								</iaixsl:if>
							</ul>
						</li>
					</ul>
				</iaixsl:if>


				
				<iaixsl:if test="navigation4/item">
					<iaixsl:for-each select="navigation4/item">
						<ul class="footer_links col-md-4 col-sm-6 col-12">
							<iaixsl:attribute name="id">links_footer_<iaixsl:value-of select="position()"/></iaixsl:attribute>
							<li>
								<iaixsl:choose>
									<iaixsl:when test="@link">
										<iaixsl:text disable-output-escaping="yes">&lt;a href="</iaixsl:text>
										<iaixsl:value-of select="@link"/>
										<iaixsl:text disable-output-escaping="yes">" target="</iaixsl:text><iaixsl:value-of select="@target"/>
										<iaixsl:text disable-output-escaping="yes">" title="</iaixsl:text><iaixsl:value-of select="@name"/>
										<iaixsl:text disable-output-escaping="yes">" class="footer_links_label</iaixsl:text>
										<iaixsl:text disable-output-escaping="yes">" &gt;</iaixsl:text>
									</iaixsl:when>
									<iaixsl:otherwise>
										<iaixsl:text disable-output-escaping="yes">&lt;span </iaixsl:text>
										<iaixsl:text disable-output-escaping="yes"> title="</iaixsl:text><iaixsl:value-of select="@name"/>
										<iaixsl:text disable-output-escaping="yes">" class="footer_links_label</iaixsl:text>
										<iaixsl:text disable-output-escaping="yes">" &gt;</iaixsl:text>
									</iaixsl:otherwise>
								</iaixsl:choose>
								<iaixsl:if test="@gfx">
									<img>
										<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:attribute>
										<iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
										<iaixsl:if test="@gfx_onmouseover">
											<iaixsl:attribute name="data-onmouseover"><iaixsl:value-of disable-output-escaping="yes" select="@gfx_onmouseover"/></iaixsl:attribute>
										</iaixsl:if>
									</img>
								</iaixsl:if>
								<iaixsl:if test="not(@gfx)">
									<span><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
								</iaixsl:if>
								<iaixsl:choose>
									<iaixsl:when test="@link">
										<iaixsl:text disable-output-escaping="yes">&lt;/a&gt;</iaixsl:text>
									</iaixsl:when>
									<iaixsl:otherwise>
										<iaixsl:text disable-output-escaping="yes">&lt;/span&gt;</iaixsl:text>
									</iaixsl:otherwise>
								</iaixsl:choose>
								<iaixsl:if test="item">
									<ul class="footer_links_sub">
										<iaixsl:for-each select="item">

											<li>
												<iaixsl:choose>
													<iaixsl:when test="@link">
														<iaixsl:text disable-output-escaping="yes">&lt;a</iaixsl:text>
														<iaixsl:text disable-output-escaping="yes"> href="</iaixsl:text>
														<iaixsl:value-of select="@link"/>
														<iaixsl:text disable-output-escaping="yes">" target="</iaixsl:text><iaixsl:value-of select="@target"/>
														<iaixsl:text disable-output-escaping="yes">" title="</iaixsl:text><iaixsl:value-of select="@name"/>
														<iaixsl:text disable-output-escaping="yes">" &gt;</iaixsl:text>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:text disable-output-escaping="yes">&lt;span</iaixsl:text>
														<iaixsl:text disable-output-escaping="yes"> title="</iaixsl:text>
														<iaixsl:text disable-output-escaping="yes">" &gt;</iaixsl:text>
													</iaixsl:otherwise>
												</iaixsl:choose>

												<iaixsl:if test="@gfx">
													<img>
														<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:attribute>
														<iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
														<iaixsl:if test="@gfx_onmouseover">
															<iaixsl:attribute name="data-onmouseover"><iaixsl:value-of disable-output-escaping="yes" select="@gfx_onmouseover"/></iaixsl:attribute>
														</iaixsl:if>
													</img>
												</iaixsl:if>
												<iaixsl:if test="not(@gfx)">
													<span><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
												</iaixsl:if>
												<iaixsl:choose>
													<iaixsl:when test="@link">
														<iaixsl:text disable-output-escaping="yes">&lt;/a&gt;</iaixsl:text>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:text disable-output-escaping="yes">&lt;/span&gt;</iaixsl:text>
													</iaixsl:otherwise>
												</iaixsl:choose>

											</li>
										</iaixsl:for-each>
									</ul>
								</iaixsl:if>
							</li>
						</ul>
					</iaixsl:for-each>
					<iaixsl:if test="opinions/service or insurances/service">
						<iaixsl:if test="insurances/service">
							<div id="menu_insurances" class="col-md-6 col-12 mb-4">
								<iaixsl:for-each select="insurances/service">
									<div class="menu_insurances_item">
										<iaixsl:value-of disable-output-escaping="yes" select="sealbox_html"/>
									</div>
								</iaixsl:for-each>
							</div>
						</iaixsl:if>
					</iaixsl:if>
				</iaixsl:if>
			</div>
		<!--Dane kontaktowe w menu (menu_contact, 118280.1)-->
            <iaixsl:variable name="hideAdress">true</iaixsl:variable>
            <div id="menu_contact" class="container d-md-flex align-items-md-center justify-content-md-between d-md-block">
                <div class="d-flex col-md-9 justify-content-md-between">
                <div class="d-none d-md-block">
					<iaixsl:attribute name="style">padding-top:16px;</iaixsl:attribute>
					<b>
                        <small>BETALINGSMETHODEN</small>
                    </b>
                <ul>
                    <li><img src="/data/include/cms/data/236.png"/></li>    
                    <li><img src="/data/include/cms/data/47.png"/></li> 
                    <li><img src="/data/include/cms/data/45.png"/></li>   
                    <li><img src="/data/include/cms/data/44.png"/></li>
                </ul>
                </div>
                <div class="d-none d-md-block">
					<iaixsl:attribute name="style">padding-top:16px;</iaixsl:attribute>
					<b>
                        <small>LEVERINGSMETHODEN</small>
                    </b>
                <ul>
                    <li><img src="/data/include/cms/data/85_10.gif"/></li>    
                    <li><img src="/data/include/cms/data/100163_7.gif"/></li> 
                </ul>
                </div>
                <div>
                <ul>
                    <li><div class="widget_container_stars_badge"/></li>                   
                </ul>
                </div>
                </div>
                <div class="logo_iai col-md-3">
                    <iaixsl:if test="/shop/iai/@button_src">
                        <iaixsl:choose>
                            <iaixsl:when test="/shop/iai/@is_mobile_application = 'yes'">
                                <span class="n53399_iailogo">
                                    <img class="n53399_iailogo">
                                        <iaixsl:attribute name="src"><iaixsl:value-of select="/shop/iai/@button_src"/></iaixsl:attribute>
                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/iai/@button_text"/></iaixsl:attribute>
                                    </img>
                                </span>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <a class="n53399_iailogo" target="_blank">
                                    <iaixsl:if test="/shop/iai/@button_target">
                                        <iaixsl:attribute name="target"><iaixsl:value-of select="/shop/iai/@button_target"/></iaixsl:attribute>
                                    </iaixsl:if>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/iai/@button_link"/></iaixsl:attribute>
                                    <iaixsl:attribute name="title"><iaixsl:value-of select="/shop/iai/@button_text"/></iaixsl:attribute>
                                    <img class="n53399_iailogo">
                                        <iaixsl:attribute name="src"><iaixsl:value-of select="/shop/iai/@button_src"/></iaixsl:attribute>
                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/iai/@button_text"/></iaixsl:attribute>
                                    </img>
                                </a>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                    </iaixsl:if>
                </div>
            </div>

            <iaixsl:if test="/shop/iai/@mobile_link">
                <div class="rwdswicher">
                    <a class="rs-link">
                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/iai/@mobile_link"/></iaixsl:attribute>
                        
                    </a>
                </div>
            </iaixsl:if> 
        <!--Stopka (menu_footer, 106456.1)-->
             <iaixsl:if test="/shop/iai/@button_src"/>
        <!--Podpowiedzi - Tooltip (menu_tooltip, 108066.1)-->
            <iaixsl:if test="(/shop/iai/@is_mobile_application = 'yes')"> 
                <script>
                    app_shop.vars.isMobileApp = true;
                </script>
            </iaixsl:if>
        <!--Action alert (menu_alert, 111454.1)-->
            <iaixsl:if test="/shop/action_alert/@type = 'add_basket'">
                <div id="menu_preloader_add" class="added">
                    <div class="headline">Toegevoegd aan winkelmandje</div>

                    <div class="added__block">
                        <div class="added__product product py-3 px-sm-2">

                            
                            <a class="product__icon d-flex justify-content-center align-items-center">
                                <iaixsl:attribute name="data-product-id"><iaixsl:value-of select="/shop/action_alert/products/product/@id"/></iaixsl:attribute>
                                <iaixsl:attribute name="href">
                                    <iaixsl:value-of select="/shop/action_alert/products/product/@link"/>
                                </iaixsl:attribute>
                                <iaixsl:attribute name="title">
                                    <iaixsl:value-of select="/shop/action_alert/products/product/name"/>
                                </iaixsl:attribute>

                                <img src="/gfx/pol/loader.gif?r=1685223127" class="b-lazy">
                                    <iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="/shop/action_alert/products/product/icon"/>
                                    </iaixsl:attribute>
                                    <iaixsl:attribute name="alt">
                                        <iaixsl:value-of disable-output-escaping="yes" select="/shop/action_alert/products/product/name"/>
                                    </iaixsl:attribute>
                                </img>
                            </a>

                            <div class="added__details pl-sm-3">
                                
                                <h3>
                                    <a class="product__name">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action_alert/products/product/@link"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title"><iaixsl:value-of select="/shop/action_alert/products/product/name"/></iaixsl:attribute>
                                        <iaixsl:value-of select="/shop/action_alert/products/product/name"/>
                                    </a>
                                </h3>

                                
                                <iaixsl:variable name="var_net_prices_toplayer"/>
                                <div class="product__prices mb-5 pt-sm-4">
                                    <iaixsl:choose>
                                        <iaixsl:when test="$var_net_prices_toplayer = ''">
                                            <iaixsl:if test="/shop/action_alert/products/product/price/@max_price_formatted">
                                                <del class="price --max">
                                                    <iaixsl:value-of select="/shop/action_alert/products/product/price/@maxprice_formatted"/>
                                                </del>
                                            </iaixsl:if>

                                            <strong class="price">
                                                <iaixsl:value-of select="/shop/action_alert/products/product/price/@price_formatted"/>
                                            </strong>

                                            <iaixsl:if test="/shop/action_alert/products/product/price/@points != ''">
                                                <span class="price --points">
                                                    <iaixsl:value-of select="/shop/action_alert/products/product/price/@points"/><span class="currency">punt</span>
                                                </span>
                                            </iaixsl:if>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:if test="/shop/action_alert/products/product/price/@max_price_formatted">
                                                <del class="price --max">
                                                    <iaixsl:value-of select="/shop/action_alert/products/product/price/@maxprice_net_formatted"/>
                                                </del>
                                            </iaixsl:if>

                                            <strong class="price">
                                                <iaixsl:value-of select="/shop/action_alert/products/product/price/@price_net_formatted"/><iaixsl:value-of select="$var_net_prices_toplayer"/>
                                            </strong>

                                            <iaixsl:if test="/shop/action_alert/products/product/price/@points != ''">
                                                <span class="price --points">
                                                    <iaixsl:value-of select="/shop/action_alert/products/product/price/@points"/><span class="currency">punt</span>
                                                </span>
                                            </iaixsl:if>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </div>

                                <div class="added__buttons">
                                    <a class="btn --solid --medium added__button --add" href="/basketedit.php?mode=1">Ga naar winkelwagen</a>

                                    <a class="btn --medium --outline added__button --close mt-1 mt-sm-0 ml-sm-5" href="#close">Verder winkelen</a>

                                </div>
                            </div>

                        </div>
                    </div>

                    
                        <iaixsl:if test="/shop/page/projector/products_associated_zone4">

                            <section id="products_associated_zone4" class="hotspot pt-5">
                                
                                <iaixsl:variable name="headline_after_products_associated_zone4"/>
                                
                                <iaixsl:if test="not(/shop/page/projector/products_associated_zone4/product or /shop/page/projector/products_associated_zone4/opinion)">
                                    <iaixsl:attribute name="data-ajaxLoad">true</iaixsl:attribute>
                                    <iaixsl:attribute name="data-pageType">menu</iaixsl:attribute>
                                </iaixsl:if>
                                <iaixsl:choose>
                                    <iaixsl:when test="/shop/page/projector/products_associated_zone4/product or /shop/page/projector/products_associated_zone4/opinion">

                                    
                                    <h2>
                                        <iaixsl:choose>
                                            <iaixsl:when test="/shop/page/projector/products_associated_zone4/@link">
                                                <a class="headline">
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/products_associated_zone4/@link"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="title">Klik om alle producten te zien</iaixsl:attribute>

                                                    <span class="headline__name">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="/shop/page/projector/products_associated_zone4/@name"><iaixsl:value-of select="/shop/page/projector/products_associated_zone4/@name"/></iaixsl:when>
                                                            <iaixsl:otherwise>Andere klanten kochten ook</iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    </span>
                                                    <iaixsl:if test="$headline_after_products_associated_zone4">
                                                        <span class="headline__after"><iaixsl:value-of select="$headline_after_products_associated_zone4"/></span>
                                                    </iaixsl:if>
                                                </a>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <span class="headline">
                                                    <span class="headline__name">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="/shop/page/projector/products_associated_zone4/@name"><iaixsl:value-of select="/shop/page/projector/products_associated_zone4/@name"/></iaixsl:when>
                                                            <iaixsl:otherwise>Andere klanten kochten ook</iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    </span>
                                                </span>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </h2>

                                    <div class="products d-flex flex-wrap">
                                        <iaixsl:for-each select="/shop/page/projector/products_associated_zone4/*">
                                            
                                            <iaixsl:variable name="var_name"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of disable-output-escaping="yes" select="product/name/text()"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_icon"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_icon_small"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon_small"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon_small"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_link"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/@link"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@link"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_yousave"/>
                                            <iaixsl:variable name="var_net_prices"/>
                                            <iaixsl:variable name="var_b2b"/>

                                            <div class="product col-6 col-sm-3 px-0 pb-3">

                                                
                                                <iaixsl:if test="$var_yousave and not($var_yousave = '') and price/@yousave_formatted != ''">
                                                    <div class="product__yousave">
                                                        <span class="product__yousave --label"><iaixsl:value-of select="$var_yousave"/></span>
                                                        <span class="product__yousave --value"><iaixsl:value-of select="price/@yousave_formatted"/></span>
                                                    </div>
                                                </iaixsl:if>

                                                
                                                <a class="product__icon d-flex justify-content-center align-items-center">
                                                    <iaixsl:attribute name="data-product-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>

                                                    <img src="/gfx/pol/loader.gif?r=1685223127" class="b-lazy">
                                                        <iaixsl:attribute name="data-src-small"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon_small"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="$var_name"/></iaixsl:attribute>
                                                    </img>
                                                </a>

                                                
                                                <h3>
                                                    <a class="product__name">
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>
                                                        <iaixsl:value-of select="$var_name"/>
                                                    </a>
                                                </h3>

                                                <iaixsl:choose>
                                                    
                                                    <iaixsl:when test="$var_net_prices = ''">
                                                        <iaixsl:variable name="var_size_min_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_min_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_maxprice_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_maxprice_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_maxprice_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_maxprice_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_points"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@points"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@points"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

                                                        <iaixsl:variable name="var_value"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_price_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@price_unit_formatted and sizes/@unit"><iaixsl:value-of select="price/@price_unit_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@price_unit_formatted and product/sizes/@unit"><iaixsl:value-of select="product/price/@price_unit_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="product/sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="product/sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="$var_size_min_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        <iaixsl:variable name="var_maxprice_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@maxprice_unit_formatted"><iaixsl:value-of select="price/@maxprice_unit_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@maxprice_unit_formatted"><iaixsl:value-of select="product/price/@maxprice_unit_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product"><iaixsl:value-of select="product/price/@maxprice_formatted"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="price/@maxprice_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        <div class="product__prices">
                                                            <iaixsl:choose>
                                                                
                                                                <iaixsl:when test="$var_size_min_formatted != $var_size_max_formatted">
                                                                    <iaixsl:if test="$var_size_min_maxprice_formatted != ''">
                                                                        <del class="price --max">
                                                                            <span><iaixsl:value-of select="$var_size_min_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_formatted"/></span>
                                                                        </del>
                                                                    </iaixsl:if>
                                                                    <strong class="price">
                                                                        <iaixsl:value-of select="$var_size_min_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_formatted"/>
                                                                    </strong>
                                                                    <iaixsl:if test="$var_points != ''">
                                                                        <span class="price --points">
                                                                            <iaixsl:value-of select="$var_points"/><span class="currency">punt</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:when>

                                                                
                                                                <iaixsl:when test="(($var_value = 0) and $var_points = '') or ($var_value = 0 and $var_b2b and not($var_b2b = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="$var_b2b and not($var_b2b = '')">
                                                                          <a class="price --phone" href="/signin.php">
                                                                            <iaixsl:attribute name="title"><iaixsl:value-of select="$var_b2b"/></iaixsl:attribute>
                                                                            <iaixsl:value-of select="$var_b2b"/>
                                                                          </a>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>
                                                                          <a class="price --phone" href="/contact.php">
                                                                            <iaixsl:attribute name="title">Klik om naar het contactformulier te gaan</iaixsl:attribute>Prijs op de telefoon</a>
                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </iaixsl:when>

                                                                
                                                                <iaixsl:otherwise>
                                                                    <iaixsl:if test="$var_maxprice_formatted != ''">
                                                                        <del class="price --max">
                                                                            <iaixsl:value-of select="$var_maxprice_formatted"/>
                                                                        </del>
                                                                    </iaixsl:if>
                                                                    <strong class="price">
                                                                        <iaixsl:value-of select="$var_price_formatted"/>
                                                                    </strong>
                                                                    <iaixsl:if test="$var_points != ''">
                                                                        <span class="price --points">
                                                                            <iaixsl:value-of select="$var_points"/><span class="currency">punt</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </div>
                                                        <iaixsl:if test="price/@unit_converted_price_formatted">
                                                            <small class="s_unit_converted_price"><iaixsl:value-of select="price/@unit_converted_price_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/></small>
                                                        </iaixsl:if>
                                                    </iaixsl:when>

                                                    
                                                    <iaixsl:otherwise>
                                                        <iaixsl:variable name="var_size_min_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_min_net_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_maxprice_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_maxprice_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_maxprice_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_maxprice_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_maxprice_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_points_net"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@points"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@points"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

                                                        <iaixsl:variable name="var_net_value"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_net"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_net"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_price_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@price_unit_net_formatted and sizes/@unit"><iaixsl:value-of select="price/@price_unit_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@price_unit_net_formatted and product/sizes/@unit"><iaixsl:value-of select="product/price/@price_unit_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="product/sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="product/sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="$var_size_min_net_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        <iaixsl:variable name="var_maxprice_net_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@maxprice_unit_net_formatted"><iaixsl:value-of select="price/@maxprice_unit_net_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@maxprice_unit_net_formatted"><iaixsl:value-of select="product/price/@maxprice_unit_net_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product"><iaixsl:value-of select="product/price/@maxprice_net_formatted"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="price/@maxprice_net_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        <div class="product__prices">
                                                            <iaixsl:choose>
                                                                
                                                                <iaixsl:when test="$var_size_min_net_formatted != $var_size_max_net_formatted">
                                                                    <iaixsl:if test="$var_size_min_net_maxprice_formatted != ''">
                                                                        <del class="price --max">
                                                                            <span><iaixsl:value-of select="$var_size_min_net_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_net_formatted"/></span><iaixsl:value-of select="$var_net_prices"/>
                                                                        </del>
                                                                    </iaixsl:if>
                                                                    <strong class="price">
                                                                        <iaixsl:value-of select="$var_size_min_net_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                    </strong>
                                                                    <iaixsl:if test="$var_points_net != ''">
                                                                        <span class="price --points">
                                                                            <iaixsl:value-of select="$var_points_net"/><span class="currency">punt</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:when>

                                                                
                                                                <iaixsl:when test="(($var_net_value = 0) and $var_points_net = '') or ($var_net_value = 0 and $var_b2b and not($var_b2b = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                                   <iaixsl:choose>
                                                                        <iaixsl:when test="$var_b2b and not($var_b2b = '')">
                                                                          <a class="price --phone" href="/signin.php">
                                                                            <iaixsl:attribute name="title"><iaixsl:value-of select="$var_b2b"/></iaixsl:attribute>
                                                                            <iaixsl:value-of select="$var_b2b"/>
                                                                          </a>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>
                                                                          <a class="price --phone" href="/contact.php">
                                                                            <iaixsl:attribute name="title">Klik om naar het contactformulier te gaan</iaixsl:attribute>Prijs op de telefoon</a>
                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </iaixsl:when>

                                                                
                                                                <iaixsl:otherwise>
                                                                    <iaixsl:if test="$var_maxprice_net_formatted != ''">
                                                                        <del class="price --max">
                                                                            <iaixsl:value-of select="$var_maxprice_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                        </del>
                                                                    </iaixsl:if>
                                                                    <strong class="price">
                                                                        <iaixsl:value-of select="$var_price_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                    </strong>
                                                                    <iaixsl:if test="$var_points_net != ''">
                                                                        <span class="price --points">
                                                                            <iaixsl:value-of select="$var_points_net"/><span class="currency">punt</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                            <iaixsl:if test="price/@unit_converted_price_net_formatted">
                                                                <small class="s_unit_converted_price"><iaixsl:value-of select="price/@unit_converted_price_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/><iaixsl:value-of select="$var_net_prices"/></small>
                                                            </iaixsl:if>
                                                        </div>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>

                                                
                                                <iaixsl:if test="client/@client or @note or content">
                                                    <div class="product__opinion">
                                                        
                                                        <iaixsl:if test="client/@client">
                                                            <div class="product__opinion_client"><iaixsl:value-of disable-output-escaping="yes" select="client/@client"/></div>
                                                        </iaixsl:if>

                                                        
                                                        <iaixsl:if test="@note">
                                                            <div class="note">
                                                                <span>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note &gt; 0.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note &gt; 1.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note &gt; 2.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note &gt; 3.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note &gt; 4.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                </span>
                                                                <small>Evaluatie:<iaixsl:value-of disable-output-escaping="yes" select="@note"/>/5</small>
                                                            </div>
                                                        </iaixsl:if>

                                                        
                                                        <iaixsl:if test="content">
                                                            <div class="product__opinion_content"><iaixsl:value-of disable-output-escaping="yes" select="content"/></div>
                                                        </iaixsl:if>
                                                    </div>
                                                </iaixsl:if>
                                            </div>
                                        </iaixsl:for-each>
                                    </div>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <div class="hotspot mt-5 skeleton">
                                        <span class="headline"/>
                                        <div class="products d-flex flex-wrap">
                                            <div class="product col-6 col-sm-3 px-0 pb-3">
                                                <span class="product__icon d-flex justify-content-center align-items-center"/>
                                                <span class="product__name"/>
                                                <div class="product__prices"/>
                                            </div>
                                            <div class="product col-6 col-sm-3 px-0 pb-3">
                                                <span class="product__icon d-flex justify-content-center align-items-center"/>
                                                <span class="product__name"/>
                                                <div class="product__prices"/>
                                            </div>
                                            <div class="product col-6 col-sm-3 px-0 pb-3">
                                                <span class="product__icon d-flex justify-content-center align-items-center"/>
                                                <span class="product__name"/>
                                                <div class="product__prices"/>
                                            </div>
                                            <div class="product col-6 col-sm-3 px-0 pb-3">
                                                <span class="product__icon d-flex justify-content-center align-items-center"/>
                                                <span class="product__name"/>
                                                <div class="product__prices"/>
                                            </div>
                                        </div>
                                    </div>
                                </iaixsl:otherwise>
                                </iaixsl:choose>
                            </section>
                        </iaixsl:if>

                    
                </div>
            </iaixsl:if>
        <!--Kalkulatory rat (menu_instalment, 108070.1)-->

        <script>
            var instalment_currency = '<iaixsl:value-of select="/shop/currency/@name"/>';
            <iaixsl:choose>
                <iaixsl:when test="page/@type = 'projector'">
                    var koszyk_raty = parseFloat(<iaixsl:value-of select="/shop/basket/@cost"/>);
                </iaixsl:when>
                <iaixsl:otherwise>var koszyk_raty = 0;</iaixsl:otherwise>
            </iaixsl:choose>

            
            <iaixsl:choose>
                <iaixsl:when test="basket/@count &gt; 0">
                    var basket_count = parseInt(<iaixsl:value-of select="basket/@count"/>);
                </iaixsl:when>
                <iaixsl:otherwise>var basket_count = 0;</iaixsl:otherwise>
            </iaixsl:choose>


            
            <iaixsl:choose>
                <iaixsl:when test="page/@type = 'projector'">

                </iaixsl:when>
                <iaixsl:when test="page/@type = 'basketedit'">
                    var cena_raty = parseFloat(<iaixsl:value-of select="/shop/page/basket-details/summary/money/@to_pay"/>);
                </iaixsl:when>
                <iaixsl:otherwise>var cena_raty = '';</iaixsl:otherwise>
            </iaixsl:choose>
        </script>
        <iaixsl:if test="/shop/page/basket-details/summary/payment/instalment"> </iaixsl:if>
        <iaixsl:if test="/shop/page/projector/product/payment/instalment"> </iaixsl:if>
        <!--Structured data markup (menu_structured_data, 117988.1)-->

    <iaixsl:variable name="menu_structured_data_hurt"/>
    <iaixsl:variable name="curr_url"><iaixsl:value-of select="/shop/@currurl"/></iaixsl:variable>
    <iaixsl:variable name="url_length"><iaixsl:value-of select="string-length($curr_url)"/></iaixsl:variable>
    <iaixsl:variable name="productLink"><iaixsl:value-of select="substring-after(/shop/page/projector/product/@link, '/')"/></iaixsl:variable>

    <iaixsl:if test="page/@type = 'navigation' or page/@type = 'search' or page/@type = 'projector' or page/@type = 'main'">
      <script type="application/ld+json">
        {
        "@context": "http://schema.org",
        "@type": "Organization",
        "url": "<iaixsl:value-of select="/shop/@currurl"/>",
        "logo": "<iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/><iaixsl:value-of select="/shop/mask/top/link/image/@src"/>"
        }
      </script>
    </iaixsl:if>

    <iaixsl:if test="bc/item and (page/@type = 'navigation' or page/@type = 'search' or page/@type = 'projector')">
      <script type="application/ld+json">
        {
            "@context": "http://schema.org",
            "@type": "BreadcrumbList",
            "itemListElement": [<iaixsl:for-each select="bc/item"><iaixsl:if test="not(position() = 1)">,</iaixsl:if>
            {
            "@type": "ListItem",
            "position": <iaixsl:value-of select="position()"/>,
            "item": "<iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/><iaixsl:value-of select="@link"/>",
            "name": "<iaixsl:value-of select="@title"/>"
            }
        </iaixsl:for-each>]
        }
    </script>
  </iaixsl:if>
    <script type="application/ld+json">
      {
      "@context": "http://schema.org",
      "@type": "WebSite",
      <iaixsl:if test="/shop/@shopname">"name":"<iaixsl:value-of select="/shop/@shopname"/>",</iaixsl:if>
      <iaixsl:if test="/shop/@shopshortname">"alternateName": "<iaixsl:value-of select="/shop/@shopshortname"/>",</iaixsl:if>
      "url": "<iaixsl:value-of select="/shop/@currurl"/>",
      "potentialAction": {
      "@type": "SearchAction",
      "target": "<iaixsl:value-of select="/shop/@currurl"/>search.php?text={search_term_string}",
      "query-input": "required name=search_term_string"
      }
      }
    </script>
  <iaixsl:if test="page/@type = 'projector'">
    <script type="application/ld+json">
      {
      "@context": "http://schema.org",
      "@type": "Product",
      <iaixsl:if test="page/projector/comments/opinions/opinion">
        "aggregateRating": {
        "@type": "AggregateRating",
        "ratingValue": "<iaixsl:value-of disable-output-escaping="yes" select="page/projector/comments/@avg"/>",
        "reviewCount": "<iaixsl:value-of select="page/projector/comments/@all"/>"
        },
      </iaixsl:if>
      "description": <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="page/projector/product/cleardescription"/></iaixsl:call-template>,
      "name": <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="/shop/page/projector/product/name"/></iaixsl:call-template>,
      "productID": "mpn:<iaixsl:value-of select="page/projector/product/@code"/>",
      "brand": <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="page/projector/product/firm/@name"/></iaixsl:call-template>,
      "sku": "<iaixsl:value-of select="page/projector/product/@id"/>-<iaixsl:value-of select="page/projector/product/sizes/size/@name"/>",
      <iaixsl:if test="page/projector/product/sizes/size/@code_producer"><iaixsl:choose><iaixsl:when test="page/projector/product/@producer_code_type = 'EAN-8'">"gtin8":"<iaixsl:value-of select="page/projector/product/sizes/size/@code_producer"/>",</iaixsl:when><iaixsl:when test="page/projector/product/@producer_code_type = 'EAN-13'">"gtin13":"<iaixsl:value-of select="page/projector/product/sizes/size/@code_producer"/>",</iaixsl:when><iaixsl:when test="page/projector/product/@producer_code_type = 'EAN-14'">"gtin14":"<iaixsl:value-of select="page/projector/product/sizes/size/@code_producer"/>",</iaixsl:when><iaixsl:otherwise>"mpn":"<iaixsl:value-of select="page/projector/product/sizes/size/@code_producer"/>",</iaixsl:otherwise></iaixsl:choose></iaixsl:if>
      "image": "<iaixsl:if test="not(contains(/shop/page/projector/product/enclosures/images/enclosure/@url, 'http'))"><iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/></iaixsl:if><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/enclosures/images/enclosure/@url"/>"
      <iaixsl:if test="((/shop/page/projector/product/versions/version[@id = /shop/page/projector/product/@id]/size/price/@value != 0 or /shop/basket/@wholesaler = 'true') and $menu_structured_data_hurt != '') or not($menu_structured_data_hurt != '')">,
        "offers": [
            <iaixsl:for-each select="page/projector/product/sizes/size">
            <iaixsl:if test="not(position() = 1)">,</iaixsl:if>
            {
            "@type": "Offer",
            "availability": "<iaixsl:choose><iaixsl:when test="availability[(@status = 'enable') or (@status = 'order')]">http://schema.org/InStock</iaixsl:when><iaixsl:otherwise>http://schema.org/OutOfStock</iaixsl:otherwise></iaixsl:choose>",
            "price": "<iaixsl:value-of select="price/@value"/>",
            "priceCurrency": "<iaixsl:value-of select="/shop/currency/@id"/>",
            <iaixsl:if test="availability/shipping_time/@time"><iaixsl:variable name="date"><iaixsl:value-of select="availability/shipping_time/@time"/></iaixsl:variable><iaixsl:variable name="daysDiff">14</iaixsl:variable><iaixsl:variable name="year"><iaixsl:value-of select="substring($date, 1, 4)"/></iaixsl:variable><iaixsl:variable name="month"><iaixsl:value-of select="substring($date, 6, 2)"/></iaixsl:variable><iaixsl:variable name="day"><iaixsl:value-of select="substring($date, 9, 2)"/></iaixsl:variable><iaixsl:variable name="a"><iaixsl:value-of select="floor((14 - $month) div 12)"/></iaixsl:variable><iaixsl:variable name="y"><iaixsl:value-of select="$year + 4800 - $a"/></iaixsl:variable><iaixsl:variable name="m"><iaixsl:value-of select="$month + 12*$a - 3"/></iaixsl:variable><iaixsl:variable name="JDN"><iaixsl:value-of select="$day + floor((153*$m + 2) div 5) + 365*$y + floor($y div 4) - floor($y div 100) + floor($y div 400) - 32045 + $daysDiff"/></iaixsl:variable><iaixsl:variable name="f"><iaixsl:value-of select="$JDN + 1401 + floor((floor((4 * $JDN + 274277) div 146097) * 3) div 4) - 38"/></iaixsl:variable><iaixsl:variable name="e"><iaixsl:value-of select="4*$f + 3"/></iaixsl:variable><iaixsl:variable name="g"><iaixsl:value-of select="floor(($e mod 1461) div 4)"/></iaixsl:variable><iaixsl:variable name="h"><iaixsl:value-of select="5*$g + 2"/></iaixsl:variable><iaixsl:variable name="D"><iaixsl:value-of select="floor(($h mod 153) div 5 ) + 1"/></iaixsl:variable><iaixsl:variable name="M"><iaixsl:value-of select="(floor($h div 153) + 2) mod 12 + 1"/></iaixsl:variable><iaixsl:variable name="Y"><iaixsl:value-of select="floor($e div 1461) - 4716 + floor((14 - $M) div 12)"/></iaixsl:variable><iaixsl:variable name="MM"><iaixsl:value-of select="substring(100 + $M, 2)"/></iaixsl:variable><iaixsl:variable name="DD"><iaixsl:value-of select="substring(100 + $D, 2)"/></iaixsl:variable><iaixsl:variable name="newDate"><iaixsl:value-of select="concat($Y, '-', $MM, '-', $DD)"/></iaixsl:variable>"priceValidUntil": "<iaixsl:value-of select="$newDate"/>",</iaixsl:if>
            "eligibleQuantity": {
            "value":  "<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_sellby"/>",
            "unitCode": "<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_single"/>",
            "@type": [
            "QuantitativeValue"
            ]
            },
            "url": "<iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/><iaixsl:value-of select="/shop/page/projector/product/@link"/>?selected_size=<iaixsl:value-of select="@type"/>"
            }
            </iaixsl:for-each>    
        ]</iaixsl:if>
        <iaixsl:if test="page/projector/comments/opinions/opinion">,
          "review": [
          <iaixsl:for-each select="page/projector/comments/opinions/opinion">
            <iaixsl:if test="not(position() = 1)">,</iaixsl:if>
            {
            "@type": "Review",
            "author": "<iaixsl:value-of select="@client"/>",
            "description": <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="."/></iaixsl:call-template>,
            "reviewRating": {
            "@type": "Rating",
            "bestRating": "5",
            "ratingValue": "<iaixsl:value-of select="round(@note)"/>",
            "worstRating": "1"
            }
            }
          </iaixsl:for-each>
          ]
        </iaixsl:if>
        }
        
      </script>
    </iaixsl:if>
    <iaixsl:if test="page/@type = 'blog-item'">
      <script type="application/ld+json">
        {
        "@context": "http://schema.org",
        "@type": "NewsArticle",
        "headline": "<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/title/text()"/>",
        "mainEntityOfPage": "<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/link/@href"/>",
        "datePublished": "<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/date/text()"/>",
        "dateModified": "<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/date/text()"/>",
        "image": {
        "@type":"ImageObject",
        "url":"<iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/image/@src"/>",
        "width":"<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/image/@width"/>",
        "height":"<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/image/@height"/>"
        },
        "description": "<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/description/text()"/>",
        "author":{
        "@type": "Organization",
        "name":"<iaixsl:value-of select="/shop/contact/owner/@shopshortname"/>"
        },
        "publisher":{
        "@type": "Organization",
        "name": "<iaixsl:value-of select="/shop/contact/owner/@shopshortname"/>",
        "logo": {
        "@type":"ImageObject",
        "url":"<iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/><iaixsl:value-of select="/shop/mask/top/link/image/@src"/>",
        "width":"<iaixsl:value-of select="/shop/mask/top/link/image/@width"/>",
        "height":"<iaixsl:value-of select="/shop/mask/top/link/image/@height"/>"
        }
        }
        }
      </script>
    </iaixsl:if>

<!--Menu powiadomienia (menu_notice, 107640.1)-->

        <iaixsl:if test="/shop/order_edit/@order_number">

            <iaixsl:if test="/shop/action_alert or /shop/page/projector/product/exchange/@exchange_id or (/shop/page/@type = 'order2') or (/shop/page/@type = 'order-wrappers')">

                <div id="menu_preloader" class="menu_preolader_1">

                    <iaixsl:choose>
                        <iaixsl:when test="/shop/action_alert/@type = 'order_edit'">

                            <div id="menu_notice">
                                <h2>Bestel bewerken</h2>

                                <strong>U bevindt zich in de bewerkingsmodus voor de bestelling die u hebt geplaatst. Om wijzigingen toe te passen, moet u alle stappen van het plaatsen van een bestelling doorlopen. Als u niet alle stappen van het plaatsen van een bestelling doorloopt, wordt de eerder geplaatste bestelling niet gewijzigd.</strong>
                                <div class="menu_notice_button">
                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">Venster sluiten</button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="/shop/action_alert/@type = 'order_edit_auction'">

                            <div id="menu_notice">
                                <h2>Bestel bewerken</h2>

                                <strong>U bevindt zich in de bewerkingsmodus van een bestelling die via het veilingsysteem is geplaatst. U kunt een product ruilen voor een ander product uit dezelfde groep (bijvoorbeeld een andere kleur of maat) of meer (willekeurige) producten toevoegen om uw bestelling te vergroten. Om de wijzigingen toe te passen, moet u alle stappen van het plaatsen van een bestelling doorlopen.</strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">Venster sluiten</button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="/shop/action_alert/@type = 'order1'">

                            <div id="menu_notice">
                                <h2>Bestel bewerken</h2>

                                <strong>U bevindt zich in de bewerkingsmodus voor de bestelling die u hebt geplaatst. Uw eerder geselecteerde verzend- en betalingsinstellingen worden gemarkeerd. Je kunt ze veranderen. Om de wijzigingen van kracht te laten worden, moet u alle stappen van het plaatsen van een bestelling doorlopen.</strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">Venster sluiten</button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>



                        <iaixsl:when test="/shop/page/@type = 'order2'">
                            <div id="menu_notice">
                                <h2>Bestel bewerken</h2>

                                <strong>Controleer of de volgorde zoals die nu is, bij u past. Zo ja, klik dan op de knop Wijziging bestelling om de wijzigingen in uw bestelling goed te keuren. Zo niet, keer dan terug naar het winkelwagentje en ga verder zoals voorheen.</strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">Venster sluiten</button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="/shop/page/@type = 'order-wrappers'">
                            <div id="menu_notice">
                                <h2>Bestel bewerken</h2>

                                <strong>In deze stap van het bewerken van de bestelling kunt u de verpakking selecteren waarin u geïnteresseerd bent. Om de wijzigingen toe te passen, moet u alle bestelstappen doorlopen.</strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">Venster sluiten</button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="/shop/action_alert/@type = 'add_basket'">

                            <div id="menu_notice">
                                <h2>Bestel bewerken</h2>

                                <strong>U hebt de inhoud van uw winkelwagen gewijzigd, vergeet niet om deze wijzigingen toe te passen, u moet alle bestelstappen opnieuw doorlopen.</strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">Venster sluiten</button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>



                        <iaixsl:when test="/shop/action_alert/@type = 'change_basket'">

                            <div id="menu_notice">
                                <h2>Bestel bewerken</h2>

                                <strong>U hebt de inhoud van uw winkelwagen gewijzigd, vergeet niet om deze wijzigingen toe te passen, u moet alle bestelstappen opnieuw doorlopen.</strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">Venster sluiten</button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="page/projector/product/exchange/@exchange_id">

                            <div id="menu_notice">
                                <h2>Bestel bewerken</h2>

                                <strong>Om een product in de winkelwagen te vervangen, kunt u bijvoorbeeld een andere kleur of maat van hetzelfde product selecteren en het systeem zal het automatisch vervangen door het product dat in de veiling is geselecteerd.</strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">Venster sluiten</button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>





                    </iaixsl:choose>



                </div>
            </iaixsl:if>

        </iaixsl:if>

        <iaixsl:if test="/shop/page/@type = 'search' and ((/shop/page/sameday/@couriers_available = 'true' and /shop/page/sameday/@client_localized = 'false') or (/shop/page/nextday/@couriers_available = 'true' and /shop/page/nextday/@client_localized = 'false'))">
            <div id="xpress_toplayer">
                <div class="header_wrapper col-md-12">
                    <h2>Locatie</h2>
                </div>
                <div id="xpress_zipcode">
                    <p class="col-md-12">Voer de postcode van het afleveradres in</p>
                    <div class="form-group">
                        <div class="has-feedback has-required col-md-12 col-xs-12">
                            <input id="xpress_zipcode" class="form-control validate" name="client_zipcode" data-validation="client_zipcode" data-validation-url="/ajax/client-new.php?validAjax=true" data-serialize="data-region" value="" required="required" type="text" data-region="client_region=1143020003">
                                <iaixsl:attribute name="placeholder">Postcode</iaixsl:attribute>
                            </input>
                            <span class="form-control-feedback"/>
                        </div>
                    </div>
                    <div class="xpress_button_sub col-md-12"><a id="xpress_zipcode_submit" class="btn --solid">OK</a></div>
                    <p class="col-md-12">of deel de locatie, zodat we kunnen bepalen of express-levering beschikbaar is voor die locatie.</p>
                    <div class="xpress_button_sub col-md-12"><a id="xpress_zipcode_geolocation" class="btn --solid">Deel de locatie</a></div>
                </div>
            </div>
            <div id="xpress_toplayer_error">
                <div class="header_wrapper col-md-12">
                    <h2>Locatie</h2>
                </div>
                <div id="xpress_zipcode">
                    <p class="col-md-12">Het spijt ons, maar onze koeriersdienst bedient dit gebied niet.</p>
                    <p class="col-md-12">Uw bestelling wordt geleverd binnen een standaard tijdsbestek en u kiest de koerier bij het plaatsen van uw bestelling.</p>
                    <div class="xpress_button_sub col-md-12"><a id="express_close_dialog" href="#" class="btn --solid">OK</a></div>
                </div>
            </div>
        </iaixsl:if>

        <iaixsl:if test="/shop/page/@type = 'prepaid'">
            <div id="menu_preloader" class="menu_preolader_2">
                <div id="menu_notice">
                    <h2>Annulering van een bestelling</h2>
                    <strong/>
                    <div class="menu_notice_button">
                        <button class="btn prepaid_cancel" onclick="$('#dialog_close').click();">Venster sluiten</button>
                        <button class="btn --solid  prepaid_confirm">Bestelling annuleren</button>
                    </div>
                    <div class="clearboth"/>
                </div>
            </div>

        </iaixsl:if>



        <!--Elementy dodawane dynamicznie (menu_dynamically_added_content, 106830.1)-->
        
            <script>
                app_shop.vars.request_uri = <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="/shop/page/additional_ajax/@request_uri"/></iaixsl:call-template>
                app_shop.vars.additional_ajax = '<iaixsl:value-of select="/shop/page/additional_ajax/@additional_ajax"/>'
            </script>

            
            <iaixsl:if test="/shop/@menu_dynamically_added_content"> </iaixsl:if>
        
                </footer>
            </iaixsl:if>
            <iaixsl:variable name="projector_script_bottom">true</iaixsl:variable>
            <iaixsl:if test="/shop/page/@type = 'main' or /shop/page/@type = 'search' or /shop/page/@type = 'place-order' or /shop/page/@type = 'noproduct' or ($projector_script_bottom and /shop/page/@type = 'projector')">
                <iaixsl:choose>
                    <iaixsl:when test="/shop/@preview &gt; 0">
                        <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/shop.js</iaixsl:attribute></script>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1685223127</iaixsl:attribute></script>
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </iaixsl:if>
            <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/menu_alert.js.gzip?r=1685223127</iaixsl:attribute></script>
            <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/projector_photos.js.gzip?r=1685223127</iaixsl:attribute></script><script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/projector_details.js.gzip?r=1685223127</iaixsl:attribute></script><script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/projector_bundle_zone.js.gzip?r=1685223127</iaixsl:attribute></script><script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/projector_components_hiding.js.gzip?r=1685223127</iaixsl:attribute></script><script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/projector_projector_opinons_form.js.gzip?r=1685223127</iaixsl:attribute></script>
            <script>
                app_shop.runApp();
            </script>

            
            <iaixsl:if test="/shop/page/seolink_with_language_directory"/>

        
            <iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
                <iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_scripts')"/>
                <iaixsl:text disable-output-escaping="yes">&lt;/body&gt;&lt;/html&gt;</iaixsl:text>
            </iaixsl:if>
        </iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>
