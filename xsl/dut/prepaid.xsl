<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop"><!--Typ strony (envelope, 119565.1)-->
            <iaixsl:variable name="meta_langcode_iso639">nl</iaixsl:variable>
            <iaixsl:variable name="html5_layout">1</iaixsl:variable>
            <iaixsl:variable name="asyncJS"/>
            <iaixsl:variable name="themeColor">#0090f6</iaixsl:variable>
            <iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
                <iaixsl:text disable-output-escaping="yes">&lt;html lang="</iaixsl:text><iaixsl:value-of select="/shop/language/option[@selected = 'true']/@name"/><iaixsl:text disable-output-escaping="yes">"</iaixsl:text><iaixsl:if test="(/shop/page/@type = 'prepaid' and /shop/page/prepaid/details/@msg = 'order') or /shop/page/@type = 'order-nonstandardized' or /shop/page/@type = 'order1' or /shop/page/@type = 'order2' or /shop/page/@type = 'pickup-sites' or /shop/page/@type = 'place-order'"><iaixsl:text disable-output-escaping="yes"> class="order_process"</iaixsl:text></iaixsl:if><iaixsl:text disable-output-escaping="yes"> &gt;</iaixsl:text>
                <iaixsl:if test="$meta_langcode_iso639"><iaixsl:attribute name="lang"><iaixsl:value-of select="$meta_langcode_iso639"/></iaixsl:attribute></iaixsl:if>
                <head>
                    <iaixsl:text disable-output-escaping="yes">&lt;meta name='viewport' content='user-scalable=no, initial-scale = 1.0, maximum-scale = 1.0, width=device-width'/&gt; &lt;link rel='preconnect' href='https://fonts.gstatic.com'&gt; &lt;link href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&amp;display=swap" rel="stylesheet"&gt; &lt;link rel="stylesheet" href="https://use.typekit.net/mfe7xbz.css"&gt; &lt;link rel="preload" crossorigin="anonymous" as="font" href="/gfx/pol/fontello.woff?v=2"&gt; &lt;link rel="preload" crossorigin="anonymous" as="font" href="/gfx/pol/TacticSansExd-BlkIt.otf?v=2"&gt;</iaixsl:text>
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
                    <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/orderdetails_payments.js.gzip?r=1685223127</iaixsl:attribute></script>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1685223127</iaixsl:attribute></script>
                    <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/orderdetails_payments.js.gzip?r=1685223127</iaixsl:attribute></script>
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

        <!--Buttony sekcji 3 (menu_buttons3, 108143.1)-->
            <iaixsl:variable name="hidebuttons3COP"/>

            <iaixsl:if test="not($hidebuttons3COP) or ( $hidebuttons3COP and not(( page/@type = 'basketedit') or ( page/@type='login' and page/login/onceorder/@display='y') or ( ((page/@type = 'client-new') and not(page/client-data/@register='true') and not(page/client-data/@edit='true'))) or ( page/@type = 'order1') or ( page/@type = 'order-nonstandardized') or ( page/@type = 'pickup-sites') or ( page/@type = 'order2') or ( page/@type = 'client-save') or ( page/@type = 'prepaid') or ( page/@type = 'order-payment') or ( page/@type = 'order-newpayment')) ) ">
                <iaixsl:if test="count(commercial_button3/link)">
                    <div id="menu_buttons3" class="d-none d-md-block col-md-7 ml-auto">
                        <iaixsl:for-each select="commercial_button3/link">
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
                    </div>
                </iaixsl:if>
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
        <iaixsl:variable name="breadcrumbs_label"/>
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
        <!--Postęp składania zamówienia (*mod) (menu_order_progress, 117807.1)-->
        
        <iaixsl:variable name="wholesalerPrice_order_progress">true</iaixsl:variable>
        <iaixsl:variable name="cop_global_label"/>

        <iaixsl:if test="not(/shop/page/client-data/@registerByExternalService = 'true')">
            <iaixsl:choose>
                
                <iaixsl:when test="page/@type = 'basketedit'">
                    <iaixsl:if test="$cop_global_label">
                        <span class="big_label cop_global_label">
                            <iaixsl:value-of select="$cop_global_label"/>
                        </span>
                    </iaixsl:if>

                    <section id="Progress" class="progress mb-1 mb-sm-5 py-1 py-md-0">
                        
                        <div class="progress__item --first --active --shopping-cart">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-none">
                                    <span class="progress__step">
                                        <strong>1</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-flex flex-column flex-md-row">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Mand</strong>
                                <span class="progress__description">Waarde:<iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
                            </div>
                        </div>
                        
                        <div class="progress__item --second --truck">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-none">
                                    <span class="progress__step">
                                        <strong>2</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-flex flex-column flex-md-row">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Betaling en levering</strong>
                                <span class="progress__description">Selecteer betaling en leveringsmethode</span>
                            </div>
                        </div>
                        
                        <div class="progress__item --third --comment">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-none">
                                    <span class="progress__step">
                                        <strong>3</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-flex flex-column flex-md-row">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Samenvatting</strong>
                                <span class="progress__description">Aanvaarding voor uitvoering</span>
                            </div>
                        </div>
                    </section>
                </iaixsl:when>
                
                <iaixsl:when test="page/@type='login' and page/login/onceorder/@display='y'">
                    <iaixsl:if test="$cop_global_label">
                        <span class="big_label cop_global_label">
                            <iaixsl:value-of select="$cop_global_label"/>
                        </span>
                    </iaixsl:if>

                    <section id="Progress" class="progress mb-1 mb-sm-5 py-1 py-md-0">
                        
                        <div class="progress__item --first --shopping-cart --inactive">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-none">
                                    <span class="progress__step">
                                        <strong>1</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <a href="/basketedit.php?mode=1" class="progress__icon --desktop d-flex flex-column flex-md-row">
                                    <span class="progress__fontello"/>
                                </a>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Mand</strong>
                                <span class="progress__description">Waarde:<iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
                            </div>
                        </div>
                        
                        <div class="progress__item --second --active --file-text">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-none">
                                    <span class="progress__step">
                                        <strong>2</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-flex flex-column flex-md-row">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Uw gegevens</strong>
                                <span class="progress__description">Inloggen of gegevens invoeren</span>
                            </div>
                        </div>
                        
                        <div class="progress__item --third --truck">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-none">
                                    <span class="progress__step">
                                        <strong>3</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-flex flex-column flex-md-row">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Betaling en levering</strong>
                                <span class="progress__description">Selecteer betaling en leveringsmethode</span>
                            </div>
                        </div>
                    </section>
                </iaixsl:when>
                
                <iaixsl:when test="page/@type='place-order'">
                    <iaixsl:if test="$cop_global_label">
                        <span class="big_label cop_global_label">
                            <iaixsl:value-of select="$cop_global_label"/>
                        </span>
                    </iaixsl:if>

                    <section id="Progress" class="progress mb-1 mb-sm-5 py-1 py-md-0">
                        
                        <div class="progress__item --first --shopping-cart --inactive">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-none">
                                    <span class="progress__step">
                                        <strong>1</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <a href="/basketedit.php?mode=1" class="progress__icon --desktop d-flex flex-column flex-md-row">
                                    <span class="progress__fontello"/>
                                </a>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Mand</strong>
                                <span class="progress__description">Waarde:<iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
                            </div>
                        </div>
                        
                        <div class="progress__item --second --active --truck">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-none">
                                    <span class="progress__step">
                                        <strong>3</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-flex flex-column flex-md-row">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Betaling en levering</strong>
                                <span class="progress__description">Selecteer betaling en leveringsmethode</span>
                            </div>
                        </div>
                        
                        <div class="progress__item --third --comment">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-none">
                                    <span class="progress__step">
                                        <strong>4</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-flex flex-column flex-md-row">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Samenvatting</strong>
                                <span class="progress__description">Aanvaarding voor uitvoering</span>
                            </div>
                        </div>
                    </section>
                </iaixsl:when>
                
                <iaixsl:when test="page/@type = 'prepaid' and page/prepaid/details/@msg = 'order'">
                    <iaixsl:if test="$cop_global_label">
                        <span class="big_label cop_global_label">
                            <iaixsl:value-of select="$cop_global_label"/>
                        </span>
                    </iaixsl:if>

                    <section id="Progress" class="progress mb-1 mb-sm-5 py-1 py-md-0">
                        
                        <div class="progress__item --first --shopping-cart --inactive">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-none">
                                    <span class="progress__step">
                                        <strong>1</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-flex flex-column flex-md-row">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Mand</strong>
                                <span class="progress__description">Waarde:<iaixsl:value-of select="page/prepaid/details/@currencytotal_formatted"/></span>
                            </div>
                        </div>
                        
                        <div class="progress__item --second --truck">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-none">
                                    <span class="progress__step">
                                        <strong>3</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-flex flex-column flex-md-row">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Betaling en levering</strong>
                                <span class="progress__description">Selecteer betaling en leveringsmethode</span>
                            </div>
                        </div>
                        
                        <div class="progress__item --third --active --comment">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-none">
                                    <span class="progress__step">
                                        <strong>4</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-flex flex-column flex-md-row">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Samenvatting</strong>
                                <span class="progress__description">Aanvaarding voor uitvoering</span>
                            </div>
                        </div>
                    </section>
                </iaixsl:when>
            </iaixsl:choose>
        </iaixsl:if>
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

        <!--CMS na stronę przedpłat (orderdetails_cms, 58341.1)-->
<iaixsl:if test="page/prepaid/text/body != ''">

    <div class="orderdetails_cms">
      <iaixsl:attribute name="class">orderdetails_cms cm</iaixsl:attribute>
        <div class="orderdetails_cms_sub"><iaixsl:value-of disable-output-escaping="yes" select="page/prepaid/text/body"/></div>
    </div>
</iaixsl:if>
    <!--Informacje o zamówieniu (orderdetails_info, 116517.1)-->
			<iaixsl:if test="/shop/page/prepaid/opinions_forms/trusted_shops"> </iaixsl:if>
			<iaixsl:if test="/shop/page/prepaid/editlink/@active='y'"> </iaixsl:if>
			<iaixsl:if test="/shop/page/prepaid/cancellink/@active='y'"> </iaixsl:if>
			<iaixsl:if test="/shop/page/prepaid/confirmlink/@link"> </iaixsl:if>
			<iaixsl:if test="/shop/page/prepaid/cancellink/@link"> </iaixsl:if>
			<iaixsl:if test="/shop/page/prepaid/cancellink/@link"> </iaixsl:if>
		<!--Płatności do zamówienia (orderdetails_payments, 118298.1)-->
                <iaixsl:variable name="prepaidProForma2">Pro forma</iaixsl:variable>

                <h2 class="big_label">
                    <span>Details van bestelnr.<iaixsl:value-of disable-output-escaping="yes" select="page/prepaid/details/@orderid"/></span>
                    <span class="order-date">Bestel met<iaixsl:value-of select="page/prepaid/details/@datetime"/>
                        <iaixsl:if test="not(page/prepaid/status_explanation = '')"> <span> <iaixsl:value-of disable-output-escaping="yes" select="page/prepaid/status_explanation"/></span></iaixsl:if>
                    </span>
                </h2>

                <div class="orderdetails_summary">
                    <div class="row --gray">
                        <div class="col-12 col-md-3">
                            <div id="orderdetails_info" class="orderdetails_info">
                                <div class="orderdetails_info__icon">
                                    <iaixsl:attribute name="data-status"><iaixsl:value-of select="/shop/page/prepaid/details/@wykonane"/></iaixsl:attribute>
                                    <iaixsl:if test="page/prepaid/details/@wykonane = 't' and page/prepaid/details/@personal_collection = 'yes'">
                                        <iaixsl:attribute name="data-received">true</iaixsl:attribute>
                                    </iaixsl:if>
                                </div>
                                <div class="orderdetails_info__wrapper">
                                    <div class="orderdetails_info__label">
                                        <strong class="orderdetails_info__label_text">
                                            <iaixsl:choose>
                                                <iaixsl:when test="(page/prepaid/details/@wykonane = 'n')">Bestelling geaccepteerd!<span>Te betalen</span></iaixsl:when>
                                                <iaixsl:when test="(page/prepaid/details/@wykonane = 't')"><iaixsl:choose><iaixsl:when test="(page/prepaid/details/@personal_collection = 'yes')">Bestelling ontvangen.</iaixsl:when><iaixsl:otherwise>Bestelling verzonden.</iaixsl:otherwise></iaixsl:choose></iaixsl:when>
                                                <iaixsl:when test="(page/prepaid/details/@wykonane = 'i')">Bestelling afgewezen.</iaixsl:when>
                                                <iaixsl:when test="(page/prepaid/details/@wykonane = 's')">Bestelling geannuleerd.</iaixsl:when>
                                                <iaixsl:when test="(page/prepaid/details/@wykonane = 'o')">Opdracht uitgevoerd.</iaixsl:when>
                                                <iaixsl:when test="(page/prepaid/details/@wykonane = 'p')">Bestel klaar</iaixsl:when>
                                                <iaixsl:when test="(page/prepaid/details/@wykonane = 'h')">Bestelling in de wacht</iaixsl:when>
                                                <iaixsl:when test="(page/prepaid/details/@wykonane = 'w')">In afwachting van betaling</iaixsl:when>
                                                <iaixsl:when test="(page/prepaid/details/@wykonane = 'd')">In afwachting van levering</iaixsl:when>
                                                <iaixsl:when test="(page/prepaid/details/@wykonane = 'z')">Bestelling teruggestuurd.</iaixsl:when>
                                                <iaixsl:when test="(page/prepaid/details/@wykonane = 'k')">Bestelling geannuleerd.</iaixsl:when>
                                                <iaixsl:when test="(page/prepaid/details/@wykonane = 'r')">Bestelling geadverteerd.</iaixsl:when>
                                                <iaixsl:when test="(page/prepaid/details/@wykonane = 'j')">Gecombineerde bestelling.</iaixsl:when>
                                                <iaixsl:when test="(page/prepaid/details/@wykonane = 'l')">Orde verloren.</iaixsl:when>
                                                <iaixsl:when test="(page/prepaid/details/@wykonane = 'a')">Opdracht uitgevoerd.</iaixsl:when>
                                                <iaixsl:when test="(page/prepaid/details/@wykonane = 'b')">Bestel verpakt.</iaixsl:when>
                                            </iaixsl:choose>
                                        </strong>
                                        <iaixsl:if test="not(page/prepaid/status_explanation = '')">
                                            <a href="#show_status_explanation" class="orderdetails_info__status"/>
                                            <div class="orderdetails_info__description d-none"><iaixsl:value-of disable-output-escaping="yes" select="page/prepaid/status_explanation"/></div>
                                        </iaixsl:if>
                                    </div>
                                    <div class="orderdetails_info__dates">
                                        <span class="orderdetails_info__number">Bestelnr.<iaixsl:value-of select="page/prepaid/details/@orderid"/></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-4">
                                <iaixsl:if test="page/prepaid/details/@paymentstatus != 'g' and /shop/page/prepaid_methods/item and (page/prepaid/prepaid_history/item[position() = last()]/@status = 'n' or page/prepaid/prepaid_history/@show_payment_button = 'true')">
                                
                                        <div class="orderdetails_summary_price">
                                        <div class="orderdetails_calculations">
                                                <div class="orderdetails_product_summary">
                                                <label>Contractwaarde:</label>
                                                <strong><iaixsl:value-of select="page/prepaid/details/@currencycost_formatted"/></strong>
                                                </div>

                                                <iaixsl:if test="page/prepaid/details/@deliveryid != '47'">
                                                <div class="orderdetails_product_summary">
                                                <label>Extra kosten:</label>
                                                <strong id="additional_cost_prepaid"><iaixsl:value-of select="page/prepaid/details/@currency_additional_cost_formatted"/></strong>
                                                </div>
                                                </iaixsl:if>
                                        </div>
                                        
                                        <iaixsl:if test="(/shop/page/prepaid/details/@advance &gt; 0)">
                                                <div class="orderdetails_product_summary advance">
                                                <label class="txt_wrap">Aanbetaling vereist:</label>
                                                <strong><iaixsl:value-of select="/shop/page/prepaid/details/@advance_formatted"/></strong>
                                                </div>
                                        </iaixsl:if>
                                        </div>
                                
                                </iaixsl:if>
                        </div>
                        <div class="col-12 col-md-5">
                            
                                <div id="orderdetails_payments" class="orderdetails_payments">
                                    <iaixsl:attribute name="data-cancel_link">
                                    <iaixsl:choose>
                                        <iaixsl:when test="page/prepaid/prepaid_history/item[position() = last()]/@cancel_link">
                                                <iaixsl:value-of select="page/prepaid/prepaid_history/item[position() = last()]/@cancel_link"/>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>false</iaixsl:otherwise>
                                    </iaixsl:choose>
								    </iaixsl:attribute>
                                    <iaixsl:attribute name="data-action">/order-newpayment.php?order=<iaixsl:value-of select="/shop/page/prepaid/details/@id"/></iaixsl:attribute>
                                    <iaixsl:if test="/shop/page/prepaid/details/@paymentlink">
                                        <iaixsl:attribute name="data-action"><iaixsl:value-of select="/shop/page/prepaid/details/@paymentlink"/></iaixsl:attribute>
                                    </iaixsl:if>
                                    
                                    <div id="orderdetails_payments_content" class="orderdetails_payments__content d-md-block">
                                        <div class="orderdetails_payments__history">
                                            <iaixsl:for-each select="page/prepaid/prepaid_history/item[@status = 'y' and position() != last()]">
                                                <div class="orderdetails_payments__item">
                                                    <div class="orderdetails_payments__wrapper">
                                                        <strong class="orderdetails_payments__date">
                                                            <iaixsl:choose>
                                                                    <iaixsl:when test="dates/date_cancelled/@date">
                                                                            <iaixsl:value-of select="dates/date_cancelled/@date"/>
                                                                    </iaixsl:when>
                                                                    <iaixsl:when test="dates/date_confirm/@date">
                                                                            <iaixsl:value-of select="dates/date_confirm/@date"/>
                                                                    </iaixsl:when>
                                                                    <iaixsl:when test="dates/date_add/@date">
                                                                            <iaixsl:value-of select="dates/date_add/@date"/>
                                                                    </iaixsl:when>
                                                            </iaixsl:choose>
                                                        </strong>
                                                        <div class="orderdetails_payments__explanation">
                                                            <iaixsl:choose>
                                                                    <iaixsl:when test="amount/@mark='negativ'">
                                                                            Wybrano
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>Je hebt gekozen</iaixsl:otherwise>
                                                            </iaixsl:choose>

                                                            <iaixsl:choose>
                                                                    <iaixsl:when test="@payment_id='27'"> 
                                                                            Saldo (nadpłata na koncie klienta)
                                                                    </iaixsl:when>
                                                                    <iaixsl:when test="@payment_id='38'"> 
                                                                            Kredyt Kupiecki
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                            <iaixsl:value-of select="@payment_name"/>
                                                                    </iaixsl:otherwise>
                                                            </iaixsl:choose>

                                                            <iaixsl:if test="not(dates/date_canceled/@date)">
                                                                 jako formę płatności.Wpłacono 
                                                            </iaixsl:if>

                                                            <iaixsl:value-of select="amount/client_currency/@value_formatted"/>.
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="orderdetails_payments__icon">
                                                        <iaixsl:if test="@icon">
                                                                <img>
                                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute>
                                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="@payment_name"/></iaixsl:attribute>
                                                                </img>
                                                        </iaixsl:if>
                                                    </div>
                                                </div>
                                            </iaixsl:for-each>
                                            <iaixsl:for-each select="page/prepaid/prepaid_history/item[position() = last()]">
                                                <div class="orderdetails_payments__item">
                                                    <div class="orderdetails_payments__wrapper">
                                                        <strong class="orderdetails_payments__date">
                                                            <iaixsl:choose>
                                                                    <iaixsl:when test="dates/date_cancelled/@date">
                                                                            <iaixsl:value-of select="dates/date_cancelled/@date"/>
                                                                    </iaixsl:when>
                                                                    <iaixsl:when test="dates/date_confirm/@date">
                                                                            <iaixsl:value-of select="dates/date_confirm/@date"/>
                                                                    </iaixsl:when>
                                                                    <iaixsl:when test="dates/date_add/@date">
                                                                            <iaixsl:value-of select="dates/date_add/@date"/>
                                                                    </iaixsl:when>
                                                            </iaixsl:choose>
                                                        </strong>
                                                        <div class="orderdetails_payments__explanation">
                                                            <iaixsl:choose>
                                                                    <iaixsl:when test="dates/date_canceled/@date">
                                                                            <iaixsl:choose>
                                                                                    <iaixsl:when test="amount/@mark='negativ'">
                                                                                            Wybrano, ale zrezygnowano ze zwrotu
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>U heeft gekozen maar gekozen voor geen betaling</iaixsl:otherwise>
                                                                            </iaixsl:choose>
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                            <iaixsl:choose>
                                                                                    <iaixsl:when test="amount/@mark='negativ'">
                                                                                            Wybrano
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>Je hebt gekozen</iaixsl:otherwise>
                                                                            </iaixsl:choose>
                                                                    </iaixsl:otherwise>
                                                            </iaixsl:choose>

                                                            <iaixsl:choose>
                                                                    <iaixsl:when test="@payment_id='27'"> 
                                                                            Saldo (nadpłata na koncie klienta)
                                                                    </iaixsl:when>
                                                                    <iaixsl:when test="@payment_id='38'"> 
                                                                            Kredyt Kupiecki
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                            <iaixsl:value-of select="@payment_name"/>
                                                                    </iaixsl:otherwise>
                                                            </iaixsl:choose>

                                                            <iaixsl:if test="dates/date_canceled/@date">
                                                                    <iaixsl:choose>
                                                                            <iaixsl:when test="amount/@mark='negativ'">
                                                                                     na kwotę 
                                                                            </iaixsl:when>
                                                                            <iaixsl:otherwise>ten bedrage van</iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="not(dates/date_canceled/@date)">
                                                                    <iaixsl:choose>
                                                                            <iaixsl:when test="amount/@mark='negativ'">
                                                                                     jako formę zwrotu.
                                                                                     Kwota do zwrotu to 
                                                                            </iaixsl:when>
                                                                            <iaixsl:otherwise>als een vorm van betaling.<iaixsl:choose>
                                                                                        <iaixsl:when test="@status = 'y'">Gedeponeerd</iaixsl:when>
                                                                                        <iaixsl:otherwise>Het te storten bedrag is</iaixsl:otherwise>
                                                                                    </iaixsl:choose>
                                                                            </iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                            </iaixsl:if>

                                                            <iaixsl:value-of select="amount/client_currency/@value_formatted"/>.

                                                            <iaixsl:if test="@status = 'n'">
                                                                    <iaixsl:if test="not(amount/@mark='negativ')">
                                                                            <iaixsl:if test="additional_info/data">
                                                                                    <iaixsl:choose>
                                                                                            <iaixsl:when test="@other_payments= 'true'">
                                                                                                    <br/>Dokonaj wpłaty na poniższe dane lub wybierz inny sposób zapłaty. 
                                                                                            </iaixsl:when>
                                                                                            <iaixsl:otherwise>
                                                                                                    <br/>Doe een betaling naar onderstaande gegevens.</iaixsl:otherwise>
                                                                                    </iaixsl:choose>

                                                                                    <div class="orderdetails_payments__transfer pt-2 pb-1">
                                                                                        <div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
                                                                                            <span class="orderdetails_payments__transfer_name">Naam van de ontvanger:</span>
                                                                                            <strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@receiver"/></strong>
                                                                                        </div>
                                                                                        <div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
                                                                                            <span class="orderdetails_payments__transfer_name">Rekeningnummer:</span>
                                                                                            <strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@account"/></strong>
                                                                                        </div>
                                                                                        <iaixsl:if test="additional_info/data/@bankname != ''">
                                                                                            <div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
                                                                                                <span class="orderdetails_payments__transfer_name">Bank:</span>
                                                                                                <strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@bankname"/></strong>
                                                                                            </div>
                                                                                        </iaixsl:if>
                                                                                        <iaixsl:if test="additional_info/data/@swift_bic != ''">
                                                                                            <div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
                                                                                                <span class="orderdetails_payments__transfer_name">SWIFT:</span>
                                                                                                <strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@swift_bic"/></strong>
                                                                                            </div>
                                                                                        </iaixsl:if>
                                                                                        <div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
                                                                                            <span class="orderdetails_payments__transfer_name">Transfer titel:</span>
                                                                                            <strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@title"/></strong>
                                                                                        </div>
                                                                                        <div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
                                                                                            <span class="orderdetails_payments__transfer_name">Overschrijvingsbedrag:</span>
                                                                                            <strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="amount/client_currency/@value_formatted"/></strong>
                                                                                        </div>
                                                                                    </div>
                                                                            </iaixsl:if>
                                                                    </iaixsl:if>
                                                            </iaixsl:if>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="orderdetails_payments__icon">
                                                        <iaixsl:if test="@icon">
                                                                <img>
                                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute>
                                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="@payment_name"/></iaixsl:attribute>
                                                                </img>
                                                        </iaixsl:if>
                                                    </div>
                                                </div>
                                                
                                                
                                            </iaixsl:for-each>
                                            
                                            <iaixsl:if test="/shop/page/prepaid/points/@display">
                                                <div class="orderdetails_summary_debit">Je hebt momenteel<b><iaixsl:value-of select="/shop/page/prepaid/points/@client_points"/><span>punt</span></b>
                                                    
                                                </div>
                                            </iaixsl:if>
                                            
                                            <iaixsl:if test="page/prepaid/details/@paymentstatus != 'g' and /shop/page/prepaid_methods/item and (page/prepaid/prepaid_history/item[position() = last()]/@status = 'n' or page/prepaid/prepaid_history/@show_payment_button = 'true')">
                                                <iaixsl:if test="page/prepaid/prepaid_history/item[position() = last()]/@payment_form_id != 153">
                                                  <span class="orderdetails_payments__unfinished">Als het betalingsproces om welke reden dan ook niet is voltooid, doe de betaling dan opnieuw of kies een andere manier van betalen.</span>
                                                </iaixsl:if>
                                                <div class="orderdetails_retry align-items-center justify-content-center flex-column flex-sm-row">
                                                      <iaixsl:attribute name="data-payform_id"><iaixsl:value-of select="page/prepaid/prepaid_history/item[position() = last()]/@payment_form_id"/></iaixsl:attribute>
                                                      <iaixsl:attribute name="data-retry_payment"><iaixsl:value-of select="page/prepaid/prepaid_history/@retry_payment"/></iaixsl:attribute>
                                                      <iaixsl:attribute name="data-pay_link"><iaixsl:value-of select="page/prepaid/prepaid_history/item[position()=last()]/@pay_link"/></iaixsl:attribute>
                                                      <iaixsl:if test="page/prepaid/prepaid_history/item[position() = last()]/@payment_form_id != '153' and page/prepaid/prepaid_history/item[position() = last()]/@payment_form_id != '110' and /shop/page/prepaid/prepaid_history/item[position() = last()]/@status='n'">
                                                            <div class="orderdetails_retry__topay"><span>Te betalen:</span><iaixsl:value-of select="/shop/page/prepaid/prepaid_history/item[position() = last()]/amount/client_currency/@value_formatted"/></div>
                                                          <a href="#orderdetails_retry_same" class="orderdetails_retry__button --same btn --solid --large">Doe een betaling<iaixsl:if test="/shop/page/prepaid/points/@display">
                                                                  <span>
                                                                       + 
                                                                      <iaixsl:value-of select="/shop/page/prepaid/points/@order_cost"/>punt</span>
                                                              </iaixsl:if>
                                                          </a>
                                                      </iaixsl:if>
                                                      <iaixsl:if test="(/shop/page/prepaid/prepaid_history/item[position() = last()]/@status != 'n' and /shop/page/prepaid/prepaid_history/@currencysum * 100 &gt; 0) or (not(count(/shop/page/prepaid/prepaid_history/item) &gt; 0) and page/prepaid/prepaid_history/@show_payment_button = 'true')">
                                                        <div class="orderdetails_retry__topay"><span>Te betalen:</span><iaixsl:value-of select="/shop/page/prepaid/prepaid_history/@currencysum_formatted"/></div>
                                                          <a href="#orderdetails_retry_new_payment" class="orderdetails_retry__button --new --new_payment btn --solid --large">Doe een betaling</a>
                                                      </iaixsl:if>
                                                      <iaixsl:if test="/shop/page/prepaid/prepaid_history/item[position() = last()]/@status='n'">
                                                          <a href="#orderdetails_retry_new" class="orderdetails_retry__button --new btn d-none">Kies een andere vorm van betaling</a>
                                                      </iaixsl:if>
                                                  </div>
                                            
                                            </iaixsl:if>
                                                
                                            <iaixsl:if test="/shop/allow_division_order/@turn_on = 'yes'">
                                                <div class="orderdetails_division">
                                                    <strong>Zodra de betaling is verricht, wordt de bestelling gesplitst in twee afzonderlijke bestellingen.</strong>
                                                </div>
                                            </iaixsl:if>
                                        </div>
                                    </div>
                                    <script>
                                        app_shop.vars.leftToPay = '<iaixsl:value-of select="/shop/page/prepaid/prepaid_history/item[position() = last()]/amount/client_currency/@value_formatted"/>';
                                    </script>
                                </div>
                            
                        </div>
                    </div>
                    <div class="row --white">
                        
                        <div class="prepaid_buttons2 col-12">
                            <iaixsl:if test="/shop/page/prepaid/documents/document/@type='invoice_proforma' and $prepaidProForma2">
                                <a class="prepaid_buttons__button --proforma">
                                <iaixsl:attribute name="title">Pro forma</iaixsl:attribute>
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/prepaid/documents/document[@type='invoice_proforma']/@link"/></iaixsl:attribute>Pro forma</a>
                            </iaixsl:if>

                            <iaixsl:if test="page/prepaid/editlink/@active = 'y'">
                                <a class="prepaid_buttons__button --edit">
                                <iaixsl:attribute name="title">Klik om uw bestelling te bewerken.</iaixsl:attribute>
                                <iaixsl:attribute name="href"><iaixsl:value-of select="page/prepaid/editlink/@link"/></iaixsl:attribute>Wijzigingsopdracht</a>
                            </iaixsl:if>

                            <iaixsl:if test="count(page/prepaid/prepaid_history/item[@status = 'y']) &gt; 1">
                                <span class="prepaid_buttons__button --history_toggle">Bekijk depositogeschiedenis</span>
                            </iaixsl:if>
                        </div>

                        <div class="orderdetails_payments__history2 col-12 col-md-6">
                            <div class="orderdetails_payments__history2__toggle">
                                <iaixsl:for-each select="page/prepaid/prepaid_history/item[@status = 'y' and position() != last()]">             
                                    <div class="orderdetails_payments__item">
                                        <div class="orderdetails_payments__wrapper">
                                            <small class="orderdetails_payments__date">
                                                <iaixsl:choose>
                                                        <iaixsl:when test="dates/date_cancelled/@date">
                                                                <iaixsl:value-of select="dates/date_cancelled/@date"/>
                                                        </iaixsl:when>
                                                        <iaixsl:when test="dates/date_confirm/@date">
                                                                <iaixsl:value-of select="dates/date_confirm/@date"/>
                                                        </iaixsl:when>
                                                        <iaixsl:when test="dates/date_add/@date">
                                                                <iaixsl:value-of select="dates/date_add/@date"/>
                                                        </iaixsl:when>
                                                </iaixsl:choose>
                                            </small>
                                            <div class="orderdetails_payments__explanation">
                                                <iaixsl:choose>
                                                        <iaixsl:when test="amount/@mark='negativ'">
                                                                Wybrano
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>Je hebt gekozen</iaixsl:otherwise>
                                                </iaixsl:choose>

                                                <iaixsl:choose>
                                                        <iaixsl:when test="@payment_id='27'"> 
                                                                Saldo (nadpłata na koncie klienta)
                                                        </iaixsl:when>
                                                        <iaixsl:when test="@payment_id='38'"> 
                                                                Kredyt Kupiecki
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                                <iaixsl:value-of select="@payment_name"/>
                                                        </iaixsl:otherwise>
                                                </iaixsl:choose>

                                                <iaixsl:if test="not(dates/date_canceled/@date)">
                                                     jako formę płatności.<span>Gedeponeerd</span>
                                                </iaixsl:if>

                                                <span><iaixsl:value-of select="amount/client_currency/@value_formatted"/>.</span>
                                                
                                            </div>
                                        </div>
                                        
                                        <div class="orderdetails_payments__icon">
                                            <iaixsl:if test="@icon">
                                                    <img>
                                                            <iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="alt"><iaixsl:value-of select="@payment_name"/></iaixsl:attribute>
                                                    </img>
                                            </iaixsl:if>
                                        </div>
                                    </div>
                                </iaixsl:for-each>
                            </div>
                            <iaixsl:for-each select="page/prepaid/prepaid_history/item[position() = last()]">
                                <div class="orderdetails_payments__item">
                                    <div class="orderdetails_payments__wrapper">
                                        <small class="orderdetails_payments__date">
                                            <iaixsl:choose>
                                                    <iaixsl:when test="dates/date_cancelled/@date">
                                                            <iaixsl:value-of select="dates/date_cancelled/@date"/>
                                                    </iaixsl:when>
                                                    <iaixsl:when test="dates/date_confirm/@date">
                                                            <iaixsl:value-of select="dates/date_confirm/@date"/>
                                                    </iaixsl:when>
                                                    <iaixsl:when test="dates/date_add/@date">
                                                            <iaixsl:value-of select="dates/date_add/@date"/>
                                                    </iaixsl:when>
                                            </iaixsl:choose>
                                        </small>
                                        <div class="orderdetails_payments__explanation">
                                            <iaixsl:choose>
                                                    <iaixsl:when test="dates/date_canceled/@date">
                                                            <iaixsl:choose>
                                                                    <iaixsl:when test="amount/@mark='negativ'">
                                                                            Wybrano, ale zrezygnowano ze zwrotu
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>U heeft gekozen maar gekozen voor geen betaling</iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                            <iaixsl:choose>
                                                                    <iaixsl:when test="amount/@mark='negativ'">
                                                                            Wybrano
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>Je hebt gekozen</iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                    </iaixsl:otherwise>
                                            </iaixsl:choose>

                                            <iaixsl:choose>
                                                    <iaixsl:when test="@payment_id='27'"> 
                                                            Saldo (nadpłata na koncie klienta)
                                                    </iaixsl:when>
                                                    <iaixsl:when test="@payment_id='38'"> 
                                                            Kredyt Kupiecki
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                            <iaixsl:value-of select="@payment_name"/>
                                                    </iaixsl:otherwise>
                                            </iaixsl:choose>

                                            <iaixsl:if test="dates/date_canceled/@date">
                                                    <iaixsl:choose>
                                                            <iaixsl:when test="amount/@mark='negativ'">
                                                                     na kwotę 
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>ten bedrage van</iaixsl:otherwise>
                                                    </iaixsl:choose>
                                            </iaixsl:if>

                                            <iaixsl:if test="not(dates/date_canceled/@date)">
                                                    <iaixsl:choose>
                                                            <iaixsl:when test="amount/@mark='negativ'">
                                                                     jako formę zwrotu.
                                                                    <span>Het terug te betalen bedrag is</span>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>als een vorm van betaling.<span><iaixsl:choose>
                                                                        <iaixsl:when test="@status = 'y'">Gedeponeerd</iaixsl:when>
                                                                        <iaixsl:otherwise>Het te storten bedrag is</iaixsl:otherwise>
                                                                    </iaixsl:choose></span>
                                                            </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                            </iaixsl:if>

                                            <span><iaixsl:value-of select="amount/client_currency/@value_formatted"/>.</span>

                                            <iaixsl:if test="@status = 'n'">
                                                    <iaixsl:if test="not(amount/@mark='negativ')">
                                                            <iaixsl:if test="additional_info/data">
                                                                    <iaixsl:choose>
                                                                            <iaixsl:when test="@other_payments= 'true'">
                                                                                    <br/>Dokonaj wpłaty na poniższe dane lub wybierz inny sposób zapłaty. 
                                                                            </iaixsl:when>
                                                                            <iaixsl:otherwise>
                                                                                    <br/>Doe een betaling naar onderstaande gegevens.</iaixsl:otherwise>
                                                                    </iaixsl:choose>

                                                                    <div class="orderdetails_payments__transfer pt-2 pb-1">
                                                                        <div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
                                                                            <span class="orderdetails_payments__transfer_name">Naam van de ontvanger:</span>
                                                                            <strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@receiver"/></strong>
                                                                        </div>
                                                                        <div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
                                                                            <span class="orderdetails_payments__transfer_name">Rekeningnummer:</span>
                                                                            <strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@account"/></strong>
                                                                        </div>
                                                                        <iaixsl:if test="additional_info/data/@bankname != ''">
                                                                            <div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
                                                                                <span class="orderdetails_payments__transfer_name">Bank:</span>
                                                                                <strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@bankname"/></strong>
                                                                            </div>
                                                                        </iaixsl:if>
                                                                        <iaixsl:if test="additional_info/data/@swift_bic != ''">
                                                                            <div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
                                                                                <span class="orderdetails_payments__transfer_name">SWIFT:</span>
                                                                                <strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@swift_bic"/></strong>
                                                                            </div>
                                                                        </iaixsl:if>
                                                                        <div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
                                                                            <span class="orderdetails_payments__transfer_name">Transfer titel:</span>
                                                                            <strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@title"/></strong>
                                                                        </div>
                                                                        <div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
                                                                            <span class="orderdetails_payments__transfer_name">Overschrijvingsbedrag:</span>
                                                                            <strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="amount/client_currency/@value_formatted"/></strong>
                                                                        </div>
                                                                    </div>
                                                            </iaixsl:if>
                                                    </iaixsl:if>
                                            </iaixsl:if>
                                        </div>
                                    </div>
                                    
                                    <div class="orderdetails_payments__icon">
                                        <iaixsl:if test="@icon">
                                                <img>
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="@payment_name"/></iaixsl:attribute>
                                                </img>
                                        </iaixsl:if>
                                    </div>
                                </div>
                                
                                
                                
                            </iaixsl:for-each>
                            
                            <iaixsl:if test="/shop/page/prepaid/points/@display">
                                <div class="orderdetails_summary_debit">Je hebt momenteel<b><iaixsl:value-of select="/shop/page/prepaid/points/@client_points"/><span>punt</span></b>
                                    
                                </div>
                            </iaixsl:if>
                        </div>

                        <div class="orderdetails_payments__help col-12 col-md-6">
                            <iaixsl:if test="/shop/contact/contact_nodes/node[@type = 'phone']">
                                <div class="orderdetails_payments__help__sub">
                                        <span class="orderdetails_payments__help__info">Heb je hulp nodig? Bel ons:</span>
                                        <a class="--phone">
                                        <iaixsl:attribute name="title"><iaixsl:value-of select="/shop/contact/contact_nodes/node[@type = 'phone'][1]/@title"/></iaixsl:attribute>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/contact_nodes/node[@type = 'phone'][1]/@link"/></iaixsl:attribute>
                                        <iaixsl:value-of select="/shop/contact/contact_nodes/node[@type = 'phone'][1]/@value"/>
                                        </a>
                                </div>
                            </iaixsl:if>
                        </div>
                    </div>
                </div>

				

				<iaixsl:if test="page/prepaid/details/@paymentstatus != 'g' ">
                    <div id="orderdetails_prepaid_methods" class="orderdetails_prepaid_methods" data-action="/order-newpayment.php" data-method="post">
                        <div id="prepaid_pay_label">
                            <span class="prepaid_pay_label">Betaal het geaccepteerde bestelnummer.<iaixsl:value-of select="page/prepaid/details/@orderid"/></span>
                        </div>
                        <script>
                            
                            const prepaid_data = {
                                cancel_link: <iaixsl:choose>
                                                <iaixsl:when test="page/prepaid/prepaid_history/item[position() = last()]/@cancel_link">
                                                    '<iaixsl:value-of select="page/prepaid/prepaid_history/item[position() = last()]/@cancel_link"/>',
                                                </iaixsl:when>
                                                <iaixsl:otherwise>false,</iaixsl:otherwise>
                                            </iaixsl:choose>
                                refresh_link: `/orderdetails.php?order_number=<iaixsl:value-of select="/shop/page/prepaid/details/@orderid"/>`,
                                views: {
                                    selectPaymentGroup: false,
                                    selectPaymentMethod: false,
                                    payWithSelectedPaymentMethod:<iaixsl:choose>
                                        <iaixsl:when test="page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true' and page/prepaid/prepaid_history/item[position()=last()]/@pay_link">true</iaixsl:when>
                                        <iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose>,
                                    paymentWarning: false,
                                    orderSummary: false,
                                },
                                allowChoosePaymentType: '<iaixsl:value-of select="/shop/page/prepaid/details/@allowChoosePaymentType"/>',
                                literals: {
                                    paymentTitle: ``,
                                    paymentPay: `Dokonaj płatności `,
                                    paymentGoBack: `Wybierz inną formę płatności`,
                                    reloadPrepaid: `Powrót do zamówienia`, 
                                },
                                lastSelectedPaymentGroup: `<iaixsl:value-of select="/shop/page/prepaid_methods/item[@id = /shop/page/prepaid/prepaid_history/item[position()=last()]/@payment_form_id]/@group"/>`,
                                lastSelectedPaymentMethod: `<iaixsl:value-of select="/shop/page/prepaid/prepaid_history/item[position()=last()]/@payment_form_id"/>`,
                                paymentHMTL: null,
                                warning: false,
                                paymentMethodData: null,
                                paymentGroupsOrder: [<iaixsl:for-each select="/shop/page/prepaid_methods/item[@single_group_payment_method = 'true']">'<iaixsl:value-of select="@id"/>',</iaixsl:for-each><iaixsl:for-each select="/shop/page/groupList/item">'<iaixsl:value-of select="@id"/>',</iaixsl:for-each>],
                                paymentGroups: {
                                    <iaixsl:for-each select="/shop/page/prepaid_methods/item[@single_group_payment_method = 'true']">
                                      <iaixsl:value-of select="@id"/>: {
                                        groupID: '<iaixsl:value-of select="@id"/>',
                                        open: <iaixsl:choose>
                                            <iaixsl:when test="/shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true' and /shop/page/prepaid/prepaid_history/item[position()=last()]/@pay_link and @icon = /shop/page/prepaid/prepaid_history/item[position() = last()]/@icon">
                                                true
                                            </iaixsl:when>
                                            <iaixsl:otherwise>false</iaixsl:otherwise>
                                        </iaixsl:choose>,
                                        single_choice: true,
                                        name: `<iaixsl:value-of select="@name"/>`,
                                        icon: [
                                          {
                                            alt: `<iaixsl:value-of select="@name"/>`,
                                            src: `<iaixsl:value-of select="@icon"/>`,
                                          },
                                        ],
                                        paymentMethods: [
                                          {
                                            id: <iaixsl:value-of select="@id"/>,
                                            selected: <iaixsl:choose>
                                                <iaixsl:when test="@checked = 'true'">true</iaixsl:when>
                                                <iaixsl:when test="/shop/page/prepaid/prepaid_history/item[position()=last()]/@pay_link and /shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true' and @icon = /shop/page/prepaid/prepaid_history/item[position() = last()]/@icon">true</iaixsl:when>
                                                <iaixsl:otherwise>false</iaixsl:otherwise>
                                            </iaixsl:choose>,
                                            name: `<iaixsl:value-of disable-output-escaping="yes" select="@name"/>`,
                                            icon: `<iaixsl:value-of select="@icon"/>`,
                                            description: <iaixsl:choose>
                                                <iaixsl:when test="@description and not(@description = ' ')">`<iaixsl:value-of disable-output-escaping="yes" select="@description"/>`</iaixsl:when>
                                                <iaixsl:otherwise>false</iaixsl:otherwise>
                                            </iaixsl:choose>,
                                          },
                                        ],
                                      },
                                    </iaixsl:for-each>
                                    <iaixsl:for-each select="/shop/page/groupList/item">
                                        <iaixsl:variable name="groupID"><iaixsl:value-of select="@id"/></iaixsl:variable>
                                        <iaixsl:if test="/shop/page/prepaid_methods/item[@group = $groupID]">
                                        <iaixsl:value-of select="@id"/>:    {
                                                groupID: '<iaixsl:value-of select="@id"/>',
                                                open: <iaixsl:choose>
                                                    <iaixsl:when test="(/shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true' and (/shop/page/prepaid/prepaid_history/item[position()=last()]/@pay_link and /shop/page/prepaid_methods/item[@group = $groupID]/@icon = /shop/page/prepaid/prepaid_history/item[position() = last()]/@icon)) or (@selected = 'true' and /shop/page/prepaid/prepaid_history/@show_selected_group = 'true')">
                                                        true
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>false</iaixsl:otherwise>
                                                </iaixsl:choose>,
                                                single_choice: <iaixsl:choose>
                                                    <iaixsl:when test="@id = 'blik' or @id = 'simple_transfer' or @single_form = 'true'">true</iaixsl:when>
                                                    <iaixsl:otherwise>false</iaixsl:otherwise>
                                                </iaixsl:choose>,
                                                name: `<iaixsl:value-of select="@name"/>`,
                                                icon: [
                                                  <iaixsl:for-each select="/shop/page/prepaid_methods/item[@group = $groupID][not(@single_group_payment_method) or @single_group_payment_method != 'true'][not(position() &gt; 6)]">
                                                  {
                                                    src: `<iaixsl:value-of select="@icon"/>`,
                                                    alt: `<iaixsl:value-of select="@name"/>`,
                                                  },
                                                  </iaixsl:for-each>
                                                ],
                                                paymentMethods: [
                                                    <iaixsl:for-each select="/shop/page/prepaid_methods/item[@group = $groupID][not(@single_group_payment_method) or @single_group_payment_method != 'true']">
                                                        {
                                                            id: <iaixsl:value-of select="@id"/>,
                                                            selected: <iaixsl:choose>
                                                                <iaixsl:when test="@checked = 'true'">true</iaixsl:when>
                                                                <iaixsl:when test="/shop/page/prepaid/prepaid_history/item[position()=last()]/@pay_link and /shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true' and @icon = /shop/page/prepaid/prepaid_history/item[position() = last()]/@icon">true</iaixsl:when>
                                                                <iaixsl:otherwise>false</iaixsl:otherwise>
                                                            </iaixsl:choose>,
                                                            name: `<iaixsl:value-of disable-output-escaping="yes" select="@name"/>`,
                                                            icon: `<iaixsl:value-of select="@icon"/>`,
                                                            description: <iaixsl:choose>
                                                                <iaixsl:when test="@description and not(@description = ' ')">`<iaixsl:value-of disable-output-escaping="yes" select="@description"/>`</iaixsl:when>
                                                                <iaixsl:otherwise>false</iaixsl:otherwise>
                                                            </iaixsl:choose>,
                                                        },
                                                    </iaixsl:for-each>
                                                ],
                                            },
                                        </iaixsl:if>
                                    </iaixsl:for-each>
                            },
                            }
                        </script>
                        <div id="prepaid_app" class="prepaid_payitems_wrapper"/>
                    </div>
				</iaixsl:if>

				<script>
						var orderID = '<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/prepaid/details/@id"/>';
						var orderKey = '<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/prepaid/payback/@key"/>';
						var orderFirstPay = '';
						<iaixsl:if test="page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true' and page/prepaid/prepaid_history/item[position()=last()]/@pay_link">
						orderFirstPay = '<iaixsl:value-of disable-output-escaping="yes" select="page/prepaid/prepaid_history/item[position()=last()]/@pay_link"/><iaixsl:text disable-output-escaping="yes">&amp;ajax=true</iaixsl:text>';
						</iaixsl:if>

				</script>

				<div style="display:none">
                    <iaixsl:for-each select="/shop/page/payments_static/*">
                            <div data-altid="orderdetails_payments_payment_card">
                                    <iaixsl:attribute name="class">embeded_card_form_<iaixsl:value-of select="@id"/></iaixsl:attribute>

                                    <div class="payment_card_sub">
                                            <div class="payment_card_info_new" data-altid="payment_card_info_new">U bevindt zich in een beveiligde SSL-verbinding, waardoor onbevoegden de door u ingevoerde gegevens niet kunnen zien. Bij een betaling kunt u kiezen of u wilt dat uw kaartgegevens in ons systeem worden opgeslagen. Door uw toestemming te geven, hoeft u de gegevens in de toekomst niet opnieuw in te voeren.</div>

                                            <iaixsl:if test="payform/headermessage or payform/headerlogo">
                                                    <div class="payment_head_info" style="display: none;">
                                                            <iaixsl:if test="payform/headermessage">
                                                                    <div class="payment_headermessage">
                                                                            <iaixsl:value-of disable-output-escaping="yes" select="payform/headermessage"/>
                                                                    </div>
                                                            </iaixsl:if>
                                                            <iaixsl:if test="payform/headerlogo">
                                                                    <div class="payment_headerlogo">
                                                                            <img>
                                                                                    <iaixsl:attribute name="src"><iaixsl:value-of select="payform/headerlogo"/></iaixsl:attribute>
                                                                            </img>
                                                                    </div>
                                                            </iaixsl:if>
                                                    </div>
                                            </iaixsl:if>

                                            <form class="payment_card clearfix">
                                                    <iaixsl:attribute name="action"><iaixsl:value-of select="payform/@action"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="method"><iaixsl:value-of select="payform/@method"/></iaixsl:attribute>
                                                    <iaixsl:for-each select="payform/item">
                                                            <iaixsl:choose>
                                                                    <iaixsl:when test="@name = 'creditCard[system]'">
                                                                            <div class="payment_card_formel cc_wrapper">
                                                                                    <label for="credit_card_system" class="card_type_label">Soorten kaarten die worden ondersteund:</label>
                                                                                    <div class="clear_data" data-altid="credit_card_system">
                                                                                            <iaixsl:for-each select="option">
                                                                                                    <label class="card-icon">
                                                                                                            <iaixsl:attribute name="id">card_icon_<iaixsl:value-of select="@value"/></iaixsl:attribute>
                                                                                                            <input type="radio" class="validate required" data-serialize="#dialog_wrapper #credit_card_system input">
                                                                                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                                                                                                    <iaixsl:attribute name="name"><iaixsl:value-of select="../@name"/></iaixsl:attribute>
                                                                                                                    <iaixsl:if test="@name != ''">
                                                                                                                            <iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                                                                    </iaixsl:if>
                                                                                                                    <iaixsl:if test="@altName != ''">
                                                                                                                            <iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
                                                                                                                    </iaixsl:if>
                                                                                                            </input>
                                                                                                            <div>
                                                                                                                    <img>
                                                                                                                            <iaixsl:attribute name="src"><iaixsl:value-of select="@data-img"/></iaixsl:attribute>
                                                                                                                            <iaixsl:attribute name="alt"><iaixsl:value-of select="@label"/></iaixsl:attribute>
                                                                                                                    </img>
                                                                                                                    <span><iaixsl:value-of select="@label"/></span>
                                                                                                            </div>
                                                                                                    </label>
                                                                                            </iaixsl:for-each>

                                                                                    </div>
                                                                                    

                                                                            </div>
                                                                    </iaixsl:when>
                                                                    <iaixsl:when test="@name = 'creditCard[number]'">
                                                                            <div class="form-group row clearfix">
                                                                                    <div class="col-12">
                                                                                            <label for="credit_card_number" class="control-label">Kaartnummer:</label>
                                                                                    </div>
                                                                                    <div class="has-feedback col-12 has-required">
                                                                                            <input type="text" data-altid="credit_card_number" class="form-control validate" data-serialize="#dialog_wrapper #credit_card_number">
                                                                                                    <iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                                                    <iaixsl:if test="@value != ''">
                                                                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                                                                                    </iaixsl:if>
                                                                                                    <iaixsl:if test="@name != ''">
                                                                                                            <iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                                                    </iaixsl:if>
                                                                                                    <iaixsl:if test="@altName != ''">
                                                                                                            <iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
                                                                                                    </iaixsl:if>
                                                                                            </input>
                                                                                            <span class="form-control-feedback"/>
                                                                                    </div>
                                                                                    
                                                                            </div>
                                                                    </iaixsl:when>
                                                                    <iaixsl:when test="@name = 'creditCard[endDateMonth]'">
                                                                            <iaixsl:text disable-output-escaping="yes">&lt;div  class="row" &gt;</iaixsl:text>
                                                                            <div class="form-group date_select col-7 col-sm-8">
                                                                                    <div class="row clearfix">
                                                                                            <div class="col-12">
                                                                                                    <label for="credit_card_month" class="control-label">Vervaldatum:</label>
                                                                                            </div>
                                                                                            <div class="col-12">
                                                                                                    <input type="text" data-altid="credit_card_month" class="form-control" data-serialize="#dialog_wrapper #credit_card_month, #dialog_wrapper #credit_card_year">
                                                                                                            <iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                                                            <iaixsl:if test="@value != ''">
                                                                                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                                                                                            </iaixsl:if>
                                                                                                            <iaixsl:if test="@name != ''">
                                                                                                                    <iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                                                            </iaixsl:if>
                                                                                                            <iaixsl:if test="@altName != ''">
                                                                                                                    <iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
                                                                                                            </iaixsl:if>
                                                                                                    </input>

                                                                                                    <iaixsl:if test="../item[@name = 'creditCard[endDateYear]']/@name">

                                                                                                            <span class="payment_card_expire"> / </span>
                                                                                                            <input type="text" data-altid="credit_card_year" class="form-control" data-serialize="#dialog_wrapper #credit_card_month, #dialog_wrapper #credit_card_year">
                                                                                                                    <iaixsl:attribute name="name"><iaixsl:value-of select="../item[@name = 'creditCard[endDateYear]']/@name"/></iaixsl:attribute>
                                                                                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="../item[@name = 'creditCard[endDateYear]']/@value"/></iaixsl:attribute>
                                                                                                                    <iaixsl:if test="@name != ''">
                                                                                                                            <iaixsl:attribute name="data-name"><iaixsl:value-of select="../item[@name = 'creditCard[endDateYear]']/@name"/></iaixsl:attribute>
                                                                                                                    </iaixsl:if>
                                                                                                                    <iaixsl:if test="../item[@name = 'creditCard[endDateYear]']/@altName != ''">
                                                                                                                            <iaixsl:attribute name="data-altName"><iaixsl:value-of select="../item[@name = 'creditCard[endDateYear]']/@altName"/></iaixsl:attribute>
                                                                                                                    </iaixsl:if>
                                                                                                            </input>

                                                                                                    </iaixsl:if>
                                                                                            </div>
                                                                                    </div>
                                                                                    
                                                                            </div>

                                                                    </iaixsl:when>
                                                                    <iaixsl:when test="@name = 'creditCard[securityCode]'">
                                                                            <div class="form-group security_code col-5 col-sm-4">
                                                                                    <div class="row clearfix">
                                                                                            <div class="col-12">
                                                                                                    <label for="credit_card_code" class="control-label">CVV2/CVC2:</label>
                                                                                            </div>
                                                                                            <div class="has-feedback col-12 has-required">
                                                                                                    <input type="text" data-altid="credit_card_code" class="form-control validate" data-serialize="#dialog_wrapper #credit_card_code">
                                                                                                            <iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                                                            <iaixsl:if test="@value != ''">
                                                                                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                                                                                            </iaixsl:if>
                                                                                                            <iaixsl:if test="@name != ''">
                                                                                                                    <iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                                                            </iaixsl:if>
                                                                                                            <iaixsl:if test="@altName != ''">
                                                                                                                    <iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
                                                                                                            </iaixsl:if>
                                                                                                    </input>
                                                                                                    <span class="form-control-feedback"/>
                                                                                            </div>
                                                                                    </div>
                                                                            </div>
                                                                            <iaixsl:text disable-output-escaping="yes">&lt;/div&gt;</iaixsl:text>
                                                                    </iaixsl:when>
                                                                    <iaixsl:when test="@name = 'creditCard[name]'">
                                                                            <div class="form-group row clearfix">
                                                                                    <div class="col-12">
                                                                                            <label for="credit_card_name" class="control-label">Naam:</label>
                                                                                    </div>
                                                                                    <div class="has-feedback col-12 has-required">
                                                                                            <input type="text" data-altid="credit_card_name" class="form-control validate" data-serialize="#dialog_wrapper #credit_card_name">
                                                                                                    <iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                                                    <iaixsl:if test="@value != ''">
                                                                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                                                                                    </iaixsl:if>
                                                                                                    <iaixsl:if test="@name != ''">
                                                                                                            <iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                                                    </iaixsl:if>
                                                                                                    <iaixsl:if test="@altName != ''">
                                                                                                            <iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
                                                                                                    </iaixsl:if>
                                                                                            </input>
                                                                                            <span class="form-control-feedback"/>
                                                                                    </div>
                                                                            </div>
                                                                    </iaixsl:when>
                                                                    <iaixsl:when test="@name = 'payment'">
                                                                            <input data-altid="credit_card_payment" type="hidden">
                                                                                    <iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                                    <iaixsl:if test="@value != ''">
                                                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                                                                    </iaixsl:if>
                                                                                    <iaixsl:if test="@name != ''">
                                                                                            <iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                                    </iaixsl:if>
                                                                                    <iaixsl:if test="@altName != ''">
                                                                                            <iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
                                                                                    </iaixsl:if>
                                                                            </input>
                                                                    </iaixsl:when>
                                                                    <iaixsl:when test="@name = 'payformid'">
                                                                            <input data-altid="credit_card_payformid" type="hidden">
                                                                                    <iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                                    <iaixsl:if test="@value != ''">
                                                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                                                                    </iaixsl:if>
                                                                                    <iaixsl:if test="@name != ''">
                                                                                            <iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                                    </iaixsl:if>
                                                                                    <iaixsl:if test="@altName != ''">
                                                                                            <iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
                                                                                    </iaixsl:if>
                                                                            </input>
                                                                    </iaixsl:when>

                                                                    <iaixsl:when test="@type = 'hidden'">
                                                                            <input type="hidden">
                                                                                    <iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                                    <iaixsl:if test="@value != ''">
                                                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                                                                    </iaixsl:if>
                                                                            </input>
                                                                    </iaixsl:when>

                                                            </iaixsl:choose>
                                                    </iaixsl:for-each>
                                                    <div class="clear_data cc_wrapper" data-altid="credit_card_agree">

                                                    </div>
                                                    <div class="credit_card_submit" data-altid="credit_card_submit">
                                                            <button class="credit_card_submit_no_store btn --medium --outline" type="submit">
                                                                    <iaixsl:attribute name="title">Betalen zonder uw kaart op te slaan</iaixsl:attribute>Betalen zonder uw kaart op te slaan</button>
                                                            <button class="credit_card_submit_store btn --medium --solid" type="submit">
                                                                    <iaixsl:attribute name="title">Betaal- en spaarkaart</iaixsl:attribute>Betaal- en spaarkaart</button>
                                                    </div>
                                                    <div class="clear_data cc_wrapper" data-altid="credit_card_buttons">

                                                    </div>
                                                    <div class="row">
                                                            <div class="credit_card_pci_dss col-12">
                                                                    <span class="pci_dss_label">Payment Card Industry Data Security Standard</span>
                                                                    <span class="pci_dss_icon_container">
                                                                            <img src="/gfx/pol/pci_css_logo.png?r=1685223127" alt="PCI DSS Compilant"/>
                                                                    </span>
                                                            </div>
                                                    </div>
                                            </form>
                                    </div>
                            </div>
                    </iaixsl:for-each>
				</div>

				<iaixsl:if test="/shop/page/prepaid_methods/item[@id = '190']">
                    <div id="giftcard_data" class="giftcard_form_wrapp" style="display: none;">
                            <form class="giftcard_form" id="giftcard_form">
                                    <iaixsl:attribute name="data-action">/order-newpayment.php?order=<iaixsl:value-of select="/shop/page/prepaid/details/@id"/></iaixsl:attribute>
                                    <iaixsl:if test="/shop/page/prepaid/details/@paymentlink">
                                            <iaixsl:attribute name="data-action"><iaixsl:value-of select="/shop/page/prepaid/details/@paymentlink"/></iaixsl:attribute>
                                    </iaixsl:if>
                                    <iaixsl:attribute name="action">/order-newpayment.php?order=<iaixsl:value-of select="/shop/page/prepaid/details/@id"/></iaixsl:attribute>
                                    <iaixsl:if test="/shop/page/prepaid/details/@paymentlink">
                                            <iaixsl:attribute name="action"><iaixsl:value-of select="/shop/page/prepaid/details/@paymentlink"/></iaixsl:attribute>
                                    </iaixsl:if>
                                    <input name="payform_id" type="checkbox" checked="checked" class="orderdetails_radio" value="190" id="payform_190"/>
                                    
                                    <p>Betaal uw aankopen met uw Gift Card</p>
                                    
                                    <div class="giftcard_inputs">
                                            <div class="form-group row">
                                                    <div class="col-12">
                                                            <label class="control-label">Nummer:</label>
                                                    </div>
                                                    <div class="has-feedback col-12 has-required">
                                                            <input class="form-control" value="" name="voucher_id" type="text">
                                                                    <iaixsl:attribute name="placeholder">Voer uw kaartnummer in</iaixsl:attribute>
                                                            </input>
                                                            <span class="form-control-feedback"/>
                                                    </div>
                                            </div>
                                            <div class="form-group row">
                                                    <div class="col-12">
                                                            <label class="control-label">PIN:</label>
                                                    </div>
                                                    <div class="has-feedback col-12 has-required">
                                                            <input class="form-control" value="" name="pin_value" type="password">
                                                                    <iaixsl:attribute name="placeholder">Voer PIN-code in</iaixsl:attribute>
                                                            </input>
                                                            <span class="form-control-feedback"/>
                                                    </div>
                                            </div>
                                    </div>
                                    <button class="btn --medium --solid">Kaart goedkeuren</button>
                            </form>
                    </div>
				</iaixsl:if>

				<iaixsl:if test="/shop/page/prepaid_methods/item[@id = '2']">
                    <div id="voucher_data" class="voucher_form_wrapp" style="display: none;">
                            <form class="giftcard_form" id="voucher_form">
                                    <iaixsl:attribute name="data-action">/order-newpayment.php?order=<iaixsl:value-of select="/shop/page/prepaid/details/@id"/></iaixsl:attribute>
                                    <iaixsl:if test="/shop/page/prepaid/details/@paymentlink">
                                            <iaixsl:attribute name="data-action"><iaixsl:value-of select="/shop/page/prepaid/details/@paymentlink"/></iaixsl:attribute>
                                    </iaixsl:if>
                                    <iaixsl:attribute name="action">/order-newpayment.php?order=<iaixsl:value-of select="/shop/page/prepaid/details/@id"/></iaixsl:attribute>
                                    <iaixsl:if test="/shop/page/prepaid/details/@paymentlink">
                                            <iaixsl:attribute name="action"><iaixsl:value-of select="/shop/page/prepaid/details/@paymentlink"/></iaixsl:attribute>
                                    </iaixsl:if>
                                    <input name="payform_id" type="checkbox" checked="checked" class="orderdetails_radio" value="2" id="payform_2"/>
                                    
                                    <p>Betaal uw aankopen met een productvoucher</p>
                                    
                                    <div class="giftcard_inputs">
                                            <div class="form-group row">
                                                    <div class="col-12">
                                                            <label for="prepaid_voucher" class="control-label"/>
                                                    </div>
                                                    <div class="has-feedback col-12 has-required">
                                                            <input class="form-control" name="voucher_id" type="text" minlength="10"/>
                                                            <span class="form-control-feedback"/>
                                                    </div>
                                            </div>
                                    </div>
                                    <button class="btn --medium --solid">Goedkeuring voucher</button>

                                    <small>Als u meer vouchers hebt, kunt u hun nummers invoeren nadat u uw huidige voucher hebt gevalideerd.</small>
                            </form>
                    </div>
				</iaixsl:if>

				
				<div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();"/>

				
				<iaixsl:if test="/shop/page/prepaid_methods/@extended_js"> </iaixsl:if>
				<iaixsl:if test="/shop/page/prepaid_methods/@internal_blik"> </iaixsl:if>
				<iaixsl:if test="/shop/page/prepaid/onside_terms/@active='y'"> </iaixsl:if>
				<iaixsl:if test="/shop/page/prepaid/editlink/@active='y'"> </iaixsl:if>
				<iaixsl:if test="page/prepaid/details/@paymentstatus"> </iaixsl:if>
				<iaixsl:if test="/shop/page/payments_static/embeded_card_form"> </iaixsl:if>
				<!--Szczegóły zamówienia - adres (prepaid_address, 107688.1)-->
            <div id="prepaid_address" class="mb-4 mb-md-5">        
                <div class="n57857_label big_label">
                    <span class="n57857_label">Informatie verstrekt bij het plaatsen van een bestelling</span>
                </div>

                <div class="order2_info">
                    <div class="order2_info_sub">
                        <div class="n57857_item">
                            <div class="order2_info_label_sub">
                                <h3 class="order2_info1">Gegevens van de besteller:</h3>
                            </div>

                            <div class="order2_info1">
                                <iaixsl:if test="page/client/billing_address/@firm != ''">
                                    <iaixsl:value-of select="page/client/billing_address/@firm"/><br/>
                                </iaixsl:if>
                                <iaixsl:if test="not(page/client/billing_address/@firm)">
                                    <iaixsl:value-of select="page/client/billing_address/@firstname"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/client/billing_address/@lastname"/><br/>
                                </iaixsl:if>
                                <iaixsl:value-of select="page/client/billing_address/@street"/><br/>
                                <iaixsl:value-of select="page/client/billing_address/@zipcode"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/client/billing_address/@city"/><iaixsl:text> </iaixsl:text>(<iaixsl:if test="page/client/billing_address/@province"><iaixsl:value-of select="page/client/billing_address/@province"/><iaixsl:text>, </iaixsl:text></iaixsl:if><iaixsl:value-of select="page/client/billing_address/@country_long"/>)
                                <br/>
                                <iaixsl:if test="page/client/billing_address/@nip != ''">
                                    NIP: <iaixsl:value-of select="page/client/billing_address/@nip"/><br/>
                                </iaixsl:if>
                                <iaixsl:if test="(page/client/@phone1) and not(page/client/@phone1 = '')">
                                    telefon:  <iaixsl:value-of select="page/client/@phone1"/><br/>
                                </iaixsl:if>
                                <iaixsl:if test="(page/client/@email) and not(page/client/@email = '')">
                                    e-mail:  <iaixsl:value-of select="page/client/@email"/><br/>
                                </iaixsl:if>
                            </div>
                        </div>
                    </div>
                    <div class="order2_info_sub">
                        <div class="n57857_item">

                            <iaixsl:choose>
                                <iaixsl:when test="page/stock">

                            <div class="order2_info_label_sub">
                                <h3 class="order2_info1">Verzamelpunt voor bestellingen:</h3>
                            </div>

                            <div class="order2_info1">

                                        <span class="prepaid_stock_name"><iaixsl:value-of select="page/stock/@name"/></span><br/>
                                        <iaixsl:value-of select="page/stock/@street"/><br/>
                                        <iaixsl:value-of select="page/stock/@zipcode"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/stock/@city"/><iaixsl:text> </iaixsl:text>(<iaixsl:value-of select="page/stock/@country"/>)<br/>

                                        <iaixsl:if test="page/stock/@mail != ''">
                                            <span class="prepaid_stock_contact_item">e-mail:<a><iaixsl:attribute name="href">mailto:<iaixsl:value-of select="page/stock/@mail"/></iaixsl:attribute><iaixsl:value-of select="page/stock/@mail"/></a></span><br/>
                                        </iaixsl:if>

                                        <iaixsl:if test="page/stock/@phone != ''">
                                            <span class="prepaid_stock_contact_item">Telefoon:<span><iaixsl:value-of select="page/stock/@phone"/></span></span><br/>
                                        </iaixsl:if>

                                        <iaixsl:if test="page/stock/@fax != ''">
                                            <span class="prepaid_stock_contact_item">fax:<span><iaixsl:value-of select="page/stock/@fax"/></span></span><br/>
                                        </iaixsl:if>

                                        <iaixsl:if test="page/stock/@gg != ''">
                                            <span class="prepaid_stock_contact_item">gg:<a><iaixsl:attribute name="href">gg:<iaixsl:value-of select="page/stock/@gg"/></iaixsl:attribute><iaixsl:value-of select="page/stock/@gg"/></a></span><br/>
                                        </iaixsl:if>

                                        <iaixsl:if test="page/stock/@skype != ''">
                                            <span class="prepaid_stock_contact_item">skype:<a target="_blank"><iaixsl:attribute name="href">callto://<iaixsl:value-of select="page/stock/@skype"/></iaixsl:attribute><iaixsl:value-of select="page/stock/@skype"/></a></span><br/>
                                        </iaixsl:if>

                                        <div class="prepaid_stock_link">
                                            <a class="prepaid_stock_link" target="_blank">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="page/stock/@link"/></iaixsl:attribute>meer informatie</a>
                                        </div>
                            </div>

                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <div class="order2_info_label_sub">
                                        <h3 class="order2_info1">Leveringsadres:</h3>
                                    </div>

                                    <div class="order2_info1">

                                        <iaixsl:if test="page/client/shipping_address/@additional != ''"><iaixsl:value-of select="page/client/shipping_address/@additional"/><br/></iaixsl:if>
                                        <iaixsl:value-of select="page/client/shipping_address/@firstname"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/client/shipping_address/@lastname"/><br/>
                                        <iaixsl:value-of select="page/client/shipping_address/@street"/><br/>
                                        <iaixsl:value-of select="page/client/shipping_address/@zipcode"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/client/shipping_address/@city"/><iaixsl:text> </iaixsl:text>(<iaixsl:if test="page/client/shipping_address/@province"><iaixsl:value-of select="page/client/shipping_address/@province"/><iaixsl:text>, </iaixsl:text></iaixsl:if><iaixsl:value-of select="page/client/shipping_address/@country_long"/>)<br/>
                                        <iaixsl:if test="(page/client/shipping_address/@phone) and not(page/client/shipping_address/@phone = '')">
                                            telefon:  <iaixsl:value-of select="page/client/shipping_address/@phone"/><br/>
                                        </iaixsl:if>
                                    </div>
                                </iaixsl:otherwise>
                            </iaixsl:choose>

                        </div>
                    </div>
                    <div class="order2_info_sub">
                        <div class="n57857_item">
                            <div class="order2_info_label_sub">
                                <h3 class="order2_info1">Gegevens van de ontvanger:</h3>
                            </div>

                            <div class="order2_info1">
                                <iaixsl:value-of select="page/client/shipping_address/@firstname"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/client/shipping_address/@lastname"/><br/>

                                <iaixsl:value-of select="page/client/shipping_address/@street"/><br/>
                                <iaixsl:value-of select="page/client/shipping_address/@zipcode"/><iaixsl:text> </iaixsl:text>
                                <iaixsl:value-of select="page/client/shipping_address/@city"/> (<iaixsl:if test="page/client/shipping_address/@province"><iaixsl:value-of select="page/client/shipping_address/@province"/><iaixsl:text>, </iaixsl:text></iaixsl:if><iaixsl:value-of select="page/client/shipping_address/@country_long"/>)<br/>
                                <iaixsl:if test="page/client/shipping_address/@phone and page/client/shipping_address/@phone != ''">
                                    telefon: <iaixsl:value-of select="page/client/shipping_address/@phone"/><br/>
                                </iaixsl:if>
                            </div>
                        </div>
                    </div>
                </div>

                <iaixsl:if test="page/prepaid/details/@remarks or page/prepaid/details/@deliverer_note">
                    <div class="order2_info comments_container">
                    <a href="#toggleComments" id="toggle_comments_button">Opmerkingen voor de winkel en de koerier</a>

                    <div class="ordered_comments">
                        <iaixsl:if test="page/prepaid/details/@remarks">
                            <div class="order2_info_sub">
                                <div class="n57857_item">
                                    <div class="order2_info_label_sub">
                                        <h3 class="order2_info1">Opmerkingen voor de winkel gegeven tijdens de bestelling:</h3>
                                    </div>

                                    <div class="order2_info1">
                                        <iaixsl:value-of select="page/prepaid/details/@remarks"/>
                                    </div>
                                </div>
                            </div>
                        </iaixsl:if>

                        <iaixsl:if test="page/prepaid/details/@deliverer_note">
                            <div class="order2_info_sub">
                                <div class="n57857_item">
                                    <div class="order2_info_label_sub">
                                        <h3 class="order2_info1">Opmerkingen aan de leverancier bij de bestelling:</h3>
                                    </div>

                                    <div class="order2_info1">
                                        <iaixsl:value-of select="page/prepaid/details/@deliverer_note"/>
                                    </div>
                                </div>
                            </div>
                        </iaixsl:if>
                    </div>
                    </div>
                </iaixsl:if>
            </div>
        <!--Prepaid - płtności i dostawa (lista) (prepaid_payment_and_delivery_list, 107679.1)-->


        <div id="prepaid_delivery_list">
            <h2 class="big_label">
                <iaixsl:choose>
                    <iaixsl:when test="/shop/page/insurance_product">
                        Dodatkowe opłaty i usługi
                    </iaixsl:when>
                    <iaixsl:otherwise>Bijkomende kosten en diensten</iaixsl:otherwise>
                </iaixsl:choose>
            </h2>


            
            <table>
                <tr>
                    <th/>
                    <th/>
                    <th>Waarde</th>
                </tr>
                <tr>
                    <td class="ordered-icon">
                        <img src="/gfx/pol/shipping_icon.png?r=1685223127">
                            <iaixsl:if test="page/shipping/delivery[@checked='true']/@icon"><iaixsl:attribute name="src"><iaixsl:value-of select="page/shipping/delivery[@checked='true']/@icon"/></iaixsl:attribute></iaixsl:if>
                            <iaixsl:attribute name="alt"><iaixsl:value-of select="page/shipping/delivery[@checked='true']/@name"/></iaixsl:attribute>
                        </img>
                    </td>
                    <td class="ordered-name">Vorm van levering:<strong><iaixsl:value-of select="page/shipping/delivery[@checked='true']/@name"/></strong>

                        <ul>
                            <iaixsl:if test="page/prepaid/details/@select_date_additional != ''">
                                <li>
                                    <strong>Opmerkingen over de leveringsdatum:</strong>
                                    <iaixsl:value-of select="page/prepaid/details/@select_date_additional"/>
                                </li>
                            </iaixsl:if>

                            <iaixsl:if test="page/prepaid/details/@delivery = 'true'">
                                <li>
                                    <strong>Perceelnummer:</strong>
                                    <iaixsl:choose>
                                        <iaixsl:when test="not(page/prepaid/details/@cancelationpath) and not(page/prepaid/details/@cancelable = 'yes')">
                                            <iaixsl:value-of select="page/prepaid/details/@dispatchid"/>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            -
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </li>
                                <iaixsl:if test="page/prepaid/details/@link_tracking != ''">
                                    <li>
                                        <strong>Het volgen van de zending:</strong>
                                        <a target="_blank">
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="page/prepaid/details/@link_tracking"/></iaixsl:attribute>website van de vervoerder</a>
                                    </li>
                                </iaixsl:if>
                            </iaixsl:if>
                            <iaixsl:if test="page/prepaid/dispatch/@date_sent != ''">
                                <iaixsl:choose>
                                    <iaixsl:when test="page/prepaid/details/@deliveryid = '0'">
                                        <li>
                                            <strong>Levering ontvangen:</strong>
                                            <iaixsl:value-of select="page/prepaid/dispatch/@date_sent"/>
                                        </li>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <li>
                                            <strong>Verzonden:</strong>
                                            <iaixsl:value-of select="page/prepaid/dispatch/@date_sent"/>
                                        </li>
                                        <iaixsl:if test="page/prepaid/dispatch/@date_delivery">
                                            <li>
                                                <strong>Verwachte leveringsdatum:</strong>
                                                <iaixsl:value-of select="page/prepaid/dispatch/@date_delivery"/>
                                                <iaixsl:if test="page/prepaid/dispatch/@delivery_range != ''">
                                                     w przedziale godzin 
                                                    <iaixsl:value-of select="page/prepaid/dispatch/@delivery_range"/>
                                                </iaixsl:if>
                                            </li>
                                        </iaixsl:if>
                                    </iaixsl:otherwise>
                                </iaixsl:choose>
                            </iaixsl:if>
                            <iaixsl:if test="page/prepaid/details/@select_date != ''">
                                <li>
                                    <strong>
                                        <iaixsl:choose>
                                            <iaixsl:when test="page/stock">
                                                Wybrana data odbioru zamówienia: 
                                            </iaixsl:when>
                                            <iaixsl:otherwise>Gekozen leveringsdatum van de bestelling:</iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </strong>
                                    <iaixsl:value-of select="page/prepaid/details/@select_date"/>
                                </li>
                            </iaixsl:if>
                        </ul>

                    </td>


                    <td class="ordered-price">
                        <iaixsl:choose>
                            <iaixsl:when test="page/shipping/@hide_cost='true'"/>
                            <iaixsl:when test="page/shipping/delivery[@checked='true']/@points_cost &gt; 0">
                                <span><iaixsl:value-of select="page/shipping/delivery[@checked='true']/@points_cost"/>punt</span>
                            </iaixsl:when>
                            <iaixsl:when test="page/shipping/delivery[@checked='true']/@cost &gt; 0">
                                <span>
                                    <iaixsl:value-of select="page/shipping/delivery[@checked='true']/@currencycost_formatted"/>
                                    
                                </span>
                            </iaixsl:when>
                            <iaixsl:when test="page/shipping/delivery[@checked='true']/@cost = 0">
                                Gratis!
                            </iaixsl:when>
                        </iaixsl:choose>
                    </td>
                </tr>

                <iaixsl:choose>
                    <iaixsl:when test="/shop/page/prepaid/prepaid_history/item/@status = 'n'">
                        <iaixsl:for-each select="/shop/page/prepaid/prepaid_history/item[@status = 'n']">
                            <tr class="payment_form_item">
                                <td class="ordered-icon">
                                    <img src="/gfx/pol/prepaid_method_icon.png?r=1685223127">
                                        <iaixsl:if test="@icon">
                                            <iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute>
                                        </iaixsl:if>
                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="@payment_name"/></iaixsl:attribute>
                                    </img>
                                </td>
                                <td class="ordered-name">Vorm van betaling:<strong><iaixsl:value-of select="@payment_name"/></strong>
                                </td>
                                <td>
                                    <iaixsl:if test="amount/order_currency/@payform_cost &gt; 0">
                                        <span>
                                            <iaixsl:value-of select="amount/order_currency/@payform_cost_formatted"/>
                                            <iaixsl:if test="not(amount/client_currency/@currencysign = amount/order_currency/@currencysign)">
                                                <small> (<iaixsl:value-of select="amount/client_currency/@payform_cost_formatted"/>)</small>
                                            </iaixsl:if>
                                        </span>
                                    </iaixsl:if>
                                </td>
                            </tr>
                        </iaixsl:for-each>
                    </iaixsl:when>
                    <iaixsl:when test="not(not(page/prepaid_methods/item[@checked='true']) and not(page/prepaid/details/@paymentstatus = 'g') and not(page/prepaid/details/@paymentstatus = 'tc'))">
                        <tr>
                            <td class="ordered-icon">
                                <img src="/gfx/pol/prepaid_method_icon.png?r=1685223127">
                                    <iaixsl:if test="/shop/page/prepaid/prepaid_history/item[position() = last()]/@icon and not(page/prepaid/details/@paymentstatus = 'g')">
                                        <iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/prepaid/prepaid_history/item[position() = last()]/@icon"/></iaixsl:attribute>
                                    </iaixsl:if>
                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="page/prepaid_methods/item[@checked='true']/@name"/></iaixsl:attribute>
                                </img>
                            </td>
                            <td class="ordered-name">Vorm van betaling:<strong>
                                    <iaixsl:choose>
                                        <iaixsl:when test="page/prepaid/details/@paymentstatus = 'g'">
                                            Płatność przy odbiorze 
                                        </iaixsl:when>
                                        <iaixsl:when test="page/prepaid/details/@paymentstatus = 'tc'">
                                            Kredyt kupiecki
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:value-of select="page/prepaid_methods/item[@checked='true']/@name"/>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </strong>

                                <iaixsl:variable name="delivery_id"><iaixsl:value-of select="/shop/page/shipping/delivery/@id"/></iaixsl:variable>

                                <iaixsl:choose>
                                    <iaixsl:when test="($delivery_id='0-1'                                                         or $delivery_id = '77-1'                                                         or $delivery_id = '89-1'                                                         or $delivery_id = '90-1'                                                         or $delivery_id = '100023-1'                                                         or $delivery_id = '100075-1'                                                         or $delivery_id = '100149-1'                                                         or $delivery_id = '100148-1'                                                         or $delivery_id = '100150-1'                                                         or $delivery_id = '100153-1'                                                         or $delivery_id = '100061-1'                                                         or $delivery_id = '100063-1'                                                         or $delivery_id = '100041-1'                                                         or $delivery_id = '76-1'                                                         or $delivery_id = '38-1'                                                         or (substring-before($delivery_id, '-') &gt; 100100 and substring-after($delivery_id, '-') = '1') ) and page/stock/@stock_id">

                                        

                                        <ul>
                                            <li>U betaalt in het verkooppunt wanneer u uw bestelling afhaalt.</li>
                                        </ul>
                                    </iaixsl:when>
                                    <iaixsl:when test="page/prepaid/details/@paymentstatus = 'g'">
                                        <ul>
                                            <li>U betaalt de postbode of koerier die het pakket bij u aflevert.</li>
                                        </ul>
                                    </iaixsl:when>
                                    <iaixsl:when test="page/prepaid/details/@paymentstatus = 'tc'">
                                    </iaixsl:when>
                                </iaixsl:choose>
                            </td>
                            <td class="ordered-price">
                                <iaixsl:choose>
                                    <iaixsl:when test="/shop/page/shipping/delivery/@id='0-1' and page/stock/@stock_id">
                                    </iaixsl:when>
                                    <iaixsl:when test="page/prepaid/details/@paymentstatus = 'g'">
                                    </iaixsl:when>
                                    <iaixsl:when test="page/prepaid/details/@paymentstatus = 'tc'">
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <iaixsl:if test="page/prepaid/details/@currencycost &gt; 0">
                                            <span>
                                                <iaixsl:value-of select="page/prepaid/details/@currency_payform_cost_formatted"/>
                                                
                                            </span>
                                        </iaixsl:if>
                                    </iaixsl:otherwise>
                                </iaixsl:choose>
                            </td>
                        </tr>
                    </iaixsl:when>
                </iaixsl:choose>

                <iaixsl:if test="/shop/page/insurance_product">

                    <tr>
                        <td class="ordered-icon">
                            <img src="/gfx/pol/insurance_icon.png?r=1685223127" alt="insurance_icon"/>
                        </td>
                        <td class="ordered-name">Kopersbescherming:<strong><iaixsl:value-of select="/shop/page/insurance_product/@service"/></strong>
                            <ul>
                                <li>
                                    <iaixsl:choose>
                                        <iaixsl:when test="/shop/page/insurance_product/@status = 'unconfirmed'">
                                            <strong>Status:</strong> niepotwierdzone
                                        </iaixsl:when>
                                        <iaixsl:when test="/shop/page/insurance_product/@status = 'confirmed'">
                                            <strong>Status:</strong> potwierdzone
                                        </iaixsl:when>
                                    </iaixsl:choose>
                                </li>
                            </ul>
                        </td>
                        <td class="ordered-price">
                            <iaixsl:if test="/shop/page/insurance_product/@price_gross &gt; 0">
                                <span><iaixsl:if test="$signbeforeprice = 'true'">
                                    <iaixsl:value-of select="/shop/page/insurance_product/@currency"/>
                                    <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                </iaixsl:if>
                                    <iaixsl:value-of select="/shop/page/insurance_product/@price_gross"/>
                                    <iaixsl:if test="$signbeforeprice = 'false'">
                                        <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                        <iaixsl:value-of select="/shop/page/insurance_product/@currency"/>
                                    </iaixsl:if></span>
                            </iaixsl:if>
                        </td>
                    </tr>
                </iaixsl:if>

                <tr style="display:none" id="prepaid_item_copy">
                    <td class="ordered-icon">
                        <img src="/gfx/pol/prepaid_method_icon.png?r=1685223127">
                            <iaixsl:attribute name="alt">.</iaixsl:attribute>
                        </img>
                    </td>
                    <td class="ordered-name">Vorm van betaling:<strong/>
                    </td>
                    <td class="ordered-price">
                        <iaixsl:if test="amount/order_currency/@payform_cost &gt; 0">
                            <span/>
                        </iaixsl:if>
                    </td>
                </tr>

            </table>
            
        </div>

        
        <!--Lista zamówionych produktów (prepaid_order_products, 107682.1)-->
        <iaixsl:if test="page/ordered_products/product">

            
            <iaixsl:variable name="setIconLarge"/>



            <div id="prepaid_order_products">
                <h2 class="big_label">Bestelde producten</h2>
                <table class="ui-responsive table-stroke ui-table ui-table-reflow">
                    <thead>
                        <tr>
                            <th/>
                            <th/>
                            <iaixsl:if test="not(page/ordered_products/product/@size_id = 'uniw')">
                                <th>Maat</th>
                            </iaixsl:if>

                            <iaixsl:if test="/shop/page/ordered_products/product[not(@code = '')]">
                                <th>Productcode</th>
                            </iaixsl:if>
                            <th>Hoeveelheid</th>
                            <th>Waarde</th>
                        </tr>
                    </thead>
                    <tbody>
                        <iaixsl:for-each select="page/ordered_products/product">
                            <tr>
                                <td class="ordered-icon">
                                    <iaixsl:choose>
                                        <iaixsl:when test="@link">
                                            <a>
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="$setIconLarge">
                                                        <img>
                                                            <iaixsl:attribute name="src"><iaixsl:value-of select="icon"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                        </img>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <img>
                                                            <iaixsl:attribute name="src"><iaixsl:value-of select="iconsmall"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                        </img>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </a>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:choose>
                                                <iaixsl:when test="$setIconLarge">
                                                    <img>
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="icon"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                    </img>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <img>
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="iconsmall"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                    </img>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </td>
                                <td class="ordered-name">
                                    <iaixsl:choose>
                                        <iaixsl:when test="@link">
                                            <a>
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                <iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                <iaixsl:value-of select="@name"/>
                                            </a>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <span>
                                                <iaixsl:value-of select="@name"/>
                                            </span>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>

                                    <iaixsl:if test="priceformula/parameters">
                                        <ul>
                                            <iaixsl:for-each select="priceformula/parameters/parameter">
                                                <li class="orderdetails_priceformula">
                                                    <b><iaixsl:value-of select="name"/>: </b>
                                                    <iaixsl:value-of select="values/value"/>
                                                </li>
                                            </iaixsl:for-each>
                                        </ul>
                                    </iaixsl:if>

                                    <iaixsl:if test="version or serial_number">
                                        <ul>
                                            
                                            <iaixsl:if test="version">
                                                <li><b><iaixsl:value-of select="version/@name"/>: </b><iaixsl:value-of select="version/@product_name"/></li>
                                            </iaixsl:if>

                                            
                                            <iaixsl:if test="serial_number">
                                                <li>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="count(serial_number/number) = 1">
                                                            <b>Serienummer:</b>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <b>Serienummers</b>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                    <iaixsl:for-each select="serial_number/number">
                                                        <iaixsl:value-of select="@value"/><iaixsl:if test="not(position()=last())">, </iaixsl:if>
                                                    </iaixsl:for-each>
                                                </li>
                                            </iaixsl:if>
                                        </ul>
                                    </iaixsl:if>


                                    
                                    <iaixsl:if test="@product_type = 'product_bundle'">
                                        <div class="ordered-product_bundle">
                                            <label>Kit onderdelen:</label>
                                            <ul>
                                                <iaixsl:for-each select="bundled/product">
                                                    <li>
                                                        <iaixsl:if test="@quantity &gt; 1">
                                                            <iaixsl:value-of select="@quantity"/>x 
                                                        </iaixsl:if>
                                                        <iaixsl:value-of select="@name"/>
                                                        <iaixsl:if test="not(@size_id = 'uniw') or ((version) and (not(version/@product_name='')))">
                                                            (
                                                            <iaixsl:if test="not(@size_id = 'uniw')">
                                                                Maat: <b><iaixsl:value-of select="@size_desc"/></b></iaixsl:if>
                                                            <iaixsl:if test="not(@size_id = 'uniw') and ((version) and (not(version/@product_name='')))">
                                                                , 
                                                            </iaixsl:if>
                                                            <iaixsl:if test="(version) and (not(version/@product_name=''))"><iaixsl:value-of select="version/@name"/>
                                                                : <b><iaixsl:value-of select="version/@product_name"/></b></iaixsl:if>
                                                            )
                                                        </iaixsl:if>
                                                    </li>
                                                </iaixsl:for-each>
                                            </ul>
                                        </div>
                                    </iaixsl:if>

                                    
                                    <iaixsl:if test="order_files/file">
                                        <div class="ordered-files">
                                            <label>De bestanden die je hebt toegevoegd:</label>
                                            <ul>
                                                <iaixsl:for-each select="order_files/file">
                                                    <li>
                                                        <span><iaixsl:value-of select="@file"/></span>

                                                        <iaixsl:if test="@path">
                                                             [
                                                            <a>
                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@path"/></iaixsl:attribute>

                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="@preview = 'true'">
                                                                        <iaixsl:attribute name="data-imagelightbox">f</iaixsl:attribute>
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                        <iaixsl:attribute name="target">_blank</iaixsl:attribute>
                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>voorbeeld</a>
                                                            ]
                                                        </iaixsl:if>

                                                    </li>
                                                </iaixsl:for-each>
                                            </ul>
                                        </div>
                                    </iaixsl:if>



                                    
                                    <iaixsl:if test="@product_type = 'product_virtual'">
                                        <div class="ordered-info">Downloadbare bestanden verschijnen in de<a>
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/clientFiles/@url"/></iaixsl:attribute>"Moje pliki"</a>in het klantenpaneel nadat de hele bestelling is betaald.</div>
                                    </iaixsl:if>


                                    <iaixsl:if test="not(/shop/page/ordered_products/product/@size_id = 'uniw')">
                                        <div class="ordered-size d-sm-none">Maat:<iaixsl:value-of select="@size_desc"/></div>
                                    </iaixsl:if>


                                    <iaixsl:if test="/shop/page/ordered_products/product[not(@code = '')]">
                                        <div class="ordered-code d-sm-none">Productcode:<iaixsl:value-of select="@code"/></div>
                                    </iaixsl:if>

                                    <div class="ordered-quantity d-sm-none">Hoeveelheid:<iaixsl:value-of select="@quantity"/>
                                        <iaixsl:text> </iaixsl:text>
                                        <iaixsl:choose>
                                            <iaixsl:when test="@quantity &gt; '1'">
                                                <iaixsl:value-of select="@unit"/>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <iaixsl:value-of select="@unit_s"/>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </div>

                                    <iaixsl:if test="comment">
                                        <div class="ordered-comment">
                                            <iaixsl:value-of select="comment"/>
                                        </div>
                                    </iaixsl:if>

                                    <div class="ordered-price d-sm-none">

                                        

                                        
                                        <strong>
                                            <iaixsl:choose>
                                                <iaixsl:when test="@quantity != '1'">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="@forpoints='true'">
                                                            <iaixsl:value-of select="@points_sum"/>
                                                             pkt.
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:value-of select="@bruttoworth_formatted"/>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="@gratis='y'">Gratis!</iaixsl:when>
                                                        <iaixsl:when test="@forpoints='true'">
                                                            <iaixsl:value-of select="@points"/>
                                                             pkt.
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:value-of select="@detalprice_formatted"/>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </strong>
                                    </div>

                                </td>

                                
                                <iaixsl:if test="not(/shop/page/ordered_products/product/@size_id = 'uniw')">
                                    <td class="ordered-size d-none d-sm-table-cell"><iaixsl:value-of select="@size_desc"/></td>
                                </iaixsl:if>


                                <iaixsl:if test="/shop/page/ordered_products/product[not(@code = '')]">
                                    <td class="ordered-code d-none d-sm-table-cell"><iaixsl:value-of select="@code"/></td>
                                </iaixsl:if>

                                <td class="ordered-quantity d-none d-sm-table-cell">
                                    <iaixsl:value-of select="@quantity"/>
                                    <iaixsl:text> </iaixsl:text>
                                    <iaixsl:choose>
                                        <iaixsl:when test="@quantity &gt; '1'">
                                            <iaixsl:value-of select="@unit"/>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:value-of select="@unit_s"/>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </td>
                                <td class="ordered-price d-none d-sm-table-cell">
                                    
                                    <iaixsl:choose>
                                        <iaixsl:when test="@quantity != '1'">
                                            <iaixsl:choose>
                                                <iaixsl:when test="@forpoints='true'">
                                                    <iaixsl:value-of select="@points_sum"/>
                                                     pkt.
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:value-of select="@bruttoworth_formatted"/>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:choose>
                                                <iaixsl:when test="@gratis='y'">Gratis!</iaixsl:when>
                                                <iaixsl:when test="@forpoints='true'">
                                                    <iaixsl:value-of select="@points"/>
                                                     pkt.
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:value-of select="@detalprice_formatted"/>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </td>
                            </tr>
                        </iaixsl:for-each>
                    </tbody>
                </table>
            </div>
        </iaixsl:if>
        <!--Dokumenty do zamówienia (prepaid_documents, 107686.1)-->
            <iaixsl:choose>
                <iaixsl:when test="count(page/prepaid/documents/document) &gt; 0">
                    <div id="ordered_documents" class="order2_info comments_container d-block">
                        <a href="#toggleDocuments" id="toggle_documents_button" class="d-sm-none">Te downloaden documenten</a>

                        <div class="big_label">Te downloaden documenten</div>

                        <div class="order2_info_sub ordered_documents" id="order2_info_sub1">
                            <iaixsl:for-each select="page/prepaid/documents/document">
                                <div class="n57857_item">
                                    <div class="order2_info1">
                                        <li class="n54116_item">
                                            <a class="n54116_item" target="_blank">
                                                <iaixsl:attribute name="title">Het document downloaden of afdrukken</iaixsl:attribute>
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                <iaixsl:value-of select="@id"/>
                                            </a>
                                        </li>
                                    </div>
                                </div>
                            </iaixsl:for-each>
                        </div>
                    </div>
                </iaixsl:when>
            </iaixsl:choose>
        <!--Formularz płatności (orderdetails_payform, 107692.1)-->
    <iaixsl:variable name="prepaidzt_txt">Dien een klacht in</iaixsl:variable> 
    <iaixsl:variable name="prepaidrt_txt">Stuur het product terug</iaixsl:variable> 

    <iaixsl:if test="($prepaidrt_txt and /shop/page/prepaid/actions/return/@url) or ($prepaidzt_txt and /shop/page/prepaid/actions/rma/@url)">
        <div class="actions_return_rma row">
            <iaixsl:if test="$prepaidrt_txt and /shop/page/prepaid/actions/return/@url">
                <div class="actions_return col-12 col-sm-6">
                    <div class="actions_return_sub col-12 mb-4">
                        <h3>Probleemloze teruggave van producten</h3>
                        <div>
                            <img alt="returns" src="/gfx/pol/returns_action.png?r=1685223127"/><span>Als u gebruik wilt maken van uw recht om uw aankoop zonder opgaaf van reden te retourneren, gebruik dan ons retoursysteem, dat het proces eenvoudig en veilig maakt.</span></div>
                            <a class="btn --solid">
                                <iaixsl:attribute name="title">Klik om een productclaim in te dienen bij de winkel.</iaixsl:attribute>
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/prepaid/actions/return/@url"/></iaixsl:attribute><iaixsl:value-of select="$prepaidrt_txt"/>
                            </a>
                    </div>
                </div>
            </iaixsl:if>
            <iaixsl:if test="$prepaidzt_txt and /shop/page/prepaid/actions/rma/@url">
                <div class="actions_rma col-12 col-sm-6">
                    <div class="actions_rma_sub col-12">
                        <h3>Probleemloze productclaim</h3>
                        <div>
                            <img alt="rma" src="/gfx/pol/rma_action.png?r=1685223127"/><span>Als het product in goede staat was op het moment van levering, maar defect is geraakt en u een garantieclaim wilt indienen via onze winkel, gebruik dan ons claimsysteem, dat het proces gemakkelijker en sneller maakt.</span></div>
                            <a class="btn --solid">
                                <iaixsl:attribute name="title">Klik om het product terug te sturen naar de winkel.</iaixsl:attribute>
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/prepaid/actions/rma/@url"/></iaixsl:attribute><iaixsl:value-of select="$prepaidzt_txt"/>
                            </a>
                    </div>
                </div>
            </iaixsl:if>
        </div>
    </iaixsl:if>
<!--Prepaid summary  (prepaid_summary, 115041.1)-->
    <iaixsl:if test="(page/prepaid/cancellink/@active='y') and not(page/prepaid/order/@payment_paid)">
      <div id="prepaid_summary">
        <a class="prepaid-cancel orderdetails_info_cancel">
            <iaixsl:attribute name="onclick">return confirm('Anulowanie zamówienia jest czynnością nieodwracalną. Aby kontynuować wciśnij przycisk "Anuluj zamówienie".')</iaixsl:attribute>
            <iaixsl:attribute name="title">Annulering van een bestelling</iaixsl:attribute>
            <iaixsl:attribute name="href"><iaixsl:value-of select="page/prepaid/cancellink/@link"/></iaixsl:attribute>
            <small><i class="icon-x mr-2"></i></small><span>Bestelling annuleren</span>
        </a>
      </div>
    </iaixsl:if>
    
                        </div>
                    </iaixsl:if>
                </div>
             </div>

            
            <iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'footer')">
                <footer>
                    <iaixsl:attribute name="class"/>
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
                        <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/orderdetails_payments.js.gzip?r=1685223127</iaixsl:attribute></script>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1685223127</iaixsl:attribute></script>
                        <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/orderdetails_payments.js.gzip?r=1685223127</iaixsl:attribute></script>
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </iaixsl:if>
            <script>
                  app_shop.runApp();
            </script>

            
            <iaixsl:if test="/shop/page/seolink_with_language_directory"/>

        
            <iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
                <iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_scripts')"/>
                <iaixsl:text disable-output-escaping="yes">&lt;/body&gt;&lt;/html&gt;</iaixsl:text>
            </iaixsl:if>
        </iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>
