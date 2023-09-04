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
                    <iaixsl:text disable-output-escaping="yes">&lt;meta name='viewport' content='user-scalable=no, initial-scale = 1.0, maximum-scale = 1.0, width=device-width'/&gt; &lt;link rel='preconnect' href='https://fonts.gstatic.com'&gt; &lt;link href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&amp;display=swap" rel="stylesheet"&gt; &lt;link rel="stylesheet" href="https://use.typekit.net/mfe7xbz.css"&gt; &lt;link rel="preload" crossorigin="anonymous" as="font" href="/gfx/dut/fontello.woff?v=2"&gt; &lt;link rel="preload" crossorigin="anonymous" as="font" href="/gfx/dut/TacticSansExd-BlkIt.otf?v=2"&gt;</iaixsl:text>
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
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/style.css.gzip?r=1612518076</iaixsl:attribute></link>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <iaixsl:choose>
                                <iaixsl:when test="/shop/@preview &gt; 0">
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/style.css</iaixsl:attribute></link>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/style.css.gzip?r=1612518076</iaixsl:attribute></link>
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
                                <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1612518076</iaixsl:attribute></script>
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
                                                            <img src="/gfx/dut/loader.gif?r=1612518076">
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
                                                        <img src="/gfx/dut/loader.gif?r=1612518076">
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

        <!--OSCOP - Javascript (place_order_scripts, 109751.2)-->

        <!--Jednokrokowy COP formularz (place_order_form, 109713.1)-->

            <iaixsl:variable name="var_layout_cms"/>
            <iaixsl:variable name="var_layout_basket"/>
            <iaixsl:variable name="var_layout_freebie"/>
            <iaixsl:variable name="var_layout_rebate"/>
            <iaixsl:variable name="var_layout_footer"/>
            <iaixsl:variable name="var_layout_remarks">place-order__remarks</iaixsl:variable>
            
            <iaixsl:choose>
                <iaixsl:when test="/shop/basket/@count= '0'">
                    <script>window.location.href="/return.php?status=basket_empty"</script>
                </iaixsl:when>
                <iaixsl:when test="/shop/client_data/@signin= 'cookie'">
                    <script>window.location.href="/signin.php"</script>
                </iaixsl:when>
                <iaixsl:otherwise>

                    <div id="place-order" class="place-order skeleton">
                        <form method="post" action="/place-order.php" enctype="multipart/form-data" id="place-order__form">

                            <iaixsl:if test="$var_layout_cms and not($var_layout_cms = '')">
                                <div class="row">
                                    <div class="col-12 mb-3">
                                        <div class="place-order__cms">
                                            <iaixsl:attribute name="data-item"><iaixsl:value-of select="$var_layout_cms"/></iaixsl:attribute>
                                            
                                            <span class="skeleton_header"> </span>
                                            <span class="skeleton_content"> </span>
                                        </div>
                                    </div>
                                </div>
                            </iaixsl:if>

                            <iaixsl:if test="$var_layout_basket and not($var_layout_basket = '')">
                                <div class="row">
                                    <div class="col-12 mb-3">
                                        <div class="place-order__basket">
                                            <iaixsl:attribute name="data-item"><iaixsl:value-of select="$var_layout_basket"/></iaixsl:attribute>
                                            
                                            <span class="skeleton_header"> </span>
                                            <span class="skeleton_content"> </span>
                                        </div>
                                    </div>
                                </div>
                            </iaixsl:if> 

                            <iaixsl:if test="$var_layout_freebie and not($var_layout_freebie = '')">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="place-order__freebie">
                                            <iaixsl:attribute name="data-item"><iaixsl:value-of select="$var_layout_freebie"/></iaixsl:attribute>
                                            
                                            <span class="skeleton_header"> </span>
                                            <span class="skeleton_content"> </span>
                                        </div>
                                    </div>
                                </div>
                            </iaixsl:if>
                            
                            <div class="row mb-3">
                                <div class="col-12">
                                    <div class="place-order__client-data">
                                        <iaixsl:attribute name="data-item">place-order__client-data</iaixsl:attribute>
                                        
                                        <span class="skeleton_header"> </span>
                                        <span class="skeleton_content"> </span>
                                    </div>
                                    <iaixsl:if test="$var_layout_remarks and not($var_layout_remarks = '')">
                                        <div class="place-order__remarks">
                                            <iaixsl:attribute name="data-item"><iaixsl:value-of select="$var_layout_remarks"/></iaixsl:attribute>
                                            
                                            <span class="skeleton_header"> </span>
                                            <span class="skeleton_content"> </span>
                                        </div>
                                    </iaixsl:if>
                                    <iaixsl:if test="$var_layout_rebate and not($var_layout_rebate = '')">
                                        <div class="place-order__rebate">
                                            <iaixsl:attribute name="data-item"><iaixsl:value-of select="$var_layout_rebate"/></iaixsl:attribute>
                                            
                                            <span class="skeleton_header"> </span>
                                            <span class="skeleton_content"> </span>
                                        </div>
                                    </iaixsl:if>
                                </div>
                                <div class="col-12">
                                    <div class="place-order__payment">
                                        <iaixsl:attribute name="data-item">place-order__payment</iaixsl:attribute>
                                        
                                        <span class="skeleton_header"> </span>
                                        <span class="skeleton_content"> </span>
                                    </div>
                                    <div class="place-order__delivery">
                                        <iaixsl:attribute name="data-item">place-order__delivery</iaixsl:attribute>
                                        
                                        <span class="skeleton_header"> </span>
                                        <span class="skeleton_content"> </span>
                                    </div>
                                    <div class="place-order__summary">
                                        <iaixsl:attribute name="data-item">place-order__summary</iaixsl:attribute>
                                        
                                        <span class="skeleton_header"> </span>
                                        <span class="skeleton_content"> </span>
                                    </div>
                                </div>
                            </div>

                            <iaixsl:if test="$var_layout_footer and not($var_layout_footer = '')">
                                <div class="row">
                                    <div class="col-12 mb-3">
                                        <div class="place-order__footer">
                                            <iaixsl:attribute name="data-item"><iaixsl:value-of select="$var_layout_footer"/></iaixsl:attribute>
                                            
                                            <span class="skeleton_header"> </span>
                                            <span class="skeleton_content"> </span>
                                        </div>
                                    </div>
                                </div>
                            </iaixsl:if>

                            <div class="place-order__pickup-sites d-none">
                                <iaixsl:attribute name="data-item">place-order__pickup-sites</iaixsl:attribute>
                            </div>

                        </form>
                    </div>
                </iaixsl:otherwise>

            </iaixsl:choose>

            <iaixsl:if test="/shop/page/client-data/delivery_data/@use='hide'"> </iaixsl:if>
            <iaixsl:if test="/shop/page/client-data/allow_change_company_data"> </iaixsl:if>
            <iaixsl:if test="/shop/page/communicates/warning/@type='illegal_characters_client_firstname'"> </iaixsl:if>

        <!--OSCOP - Konto użytkownika (place_order_client, 118496.1)-->
            

                <iaixsl:variable name="client_new_mode"><iaixsl:choose><iaixsl:when test="/shop/page/client-data/addresses-list">edit</iaixsl:when><iaixsl:otherwise>register</iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                <iaixsl:variable name="is_firm"><iaixsl:choose><iaixsl:when test="(/shop/page/client-data/client_type/@type = 'firm') or (page/client-data/@operation = 'register-wholesale-add') or (page/client-data/@operation = 'edit-wholesale-add') or  (page/client-data/@operation = 'edit-wholesale-edit')">true</iaixsl:when><iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                <iaixsl:variable name="invoice_info"><strong>BTW-factuur</strong> wyślemy w formie elektronicznej na podany adres e-mail</iaixsl:variable>
                
                <script type="text/javascript" class="ajaxLoad">
                    <iaixsl:if test="/shop/page/client-data/profile_data/@min_password_length and /shop/page/client-data/profile_data/@max_password_length">
                        var ClNewPasswordLengthMin ="<iaixsl:value-of select="/shop/page/client-data/profile_data/@min_password_length"/>";
                        var ClNewPasswordLengthMax ="<iaixsl:value-of select="/shop/page/client-data/profile_data/@max_password_length"/>";
                    </iaixsl:if>
                    var is_firm = <iaixsl:value-of select="$is_firm"/>;
                    var client_new_mode = "<iaixsl:value-of select="$client_new_mode"/>";
                </script>

                <section class="client-data" id="place-order__client-data">

                    <iaixsl:if test="$client_new_mode != 'edit'">

                        <div class="row" id="client-data__register_login">
                            <section class="client-data__register-switch col-12 col-sm-6 mb-3" id="client-data__register-switch">

                                <h2 class="big_label">Voor het eerst kopen?</h2>

                                <div class="f-radio-group register_switcher">
                                    <div class="f-group --radio">
                                        <input type="radio" name="register_order" class="f-control focused" id="register_order_yes" value="1"/>
                                        <label class="f-label" for="register_order_yes">Maak een account aan tijdens het bestelproces</label>
                                    </div>
                                    <div class="f-group --radio">
                                        <input type="radio" name="register_order" class="f-control focused" id="register_order_no" value="0">
                                            <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                        </input>
                                        <label class="f-label" for="register_order_no">Bestellen zonder een account aan te maken</label>
                                    </div>
                                </div>
                                
                            </section>

                            <section class="client-data__login-method col-12 col-sm-6 mb-3" id="client-data__login-method">
                                
                                <h2 class="big_label">Heb je al een account?</h2>

                                <ul class="login-methods">
                                    <li class="login-methods__method">
                                        <button class="btn --medium --outline" type="button" id="shop-login-btn">
                                            <iaixsl:attribute name="title">Klik om in te loggen</iaixsl:attribute>Inloggen</button>
                                    </li>
                                    <iaixsl:if test="not(login_options/service[@connected='true']) and (/shop/page/client-data) and (count(login_options/service) &gt; 1) and not(/shop/page/client-data/@registerByExternalService='true')">
                                        <iaixsl:for-each select="login_options/service[not(@name='shop_register') and @login_url]">
                                            <li class="login-methods__method">
                                                <iaixsl:attribute name="class">login-methods__method service_oscop_item service_<iaixsl:value-of select="translate(@name, ' +', '_')"/></iaixsl:attribute>
                                                <a class="btn --large">
                                                    <iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="@login_url"/></iaixsl:attribute>
                                                    <span><iaixsl:value-of select="@name"/></span>
                                                </a>
                                            </li>
                                        </iaixsl:for-each>
                                    </iaixsl:if>
                                </ul>

                            </section>
                        </div>

                        <div class="row">
                            <section class="client-data__register-data col-12 mb-3 hidden" id="client-data__register-data">

                                <h2 class="big_label">Inloggegevens</h2>

                                <div class="row">

                                    <div class="f-group col-12 col-sm-6">
                                        <div>
                                            <iaixsl:attribute name="class">f-feedback</iaixsl:attribute>
                                            <input type="text" class="f-control validate" id="client_login" name="client_login" data-create_client="login" disabled="disabled" required="required">
                                                <iaixsl:if test="not(/shop/page/client-data/profile_data/@login = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                            </input>
                                            <label class="f-label" for="client_login">Login</label>
                                            <span class="f-control-feedback"/>
                                        </div>
                                    </div>

                                    <div class="f-group col-12 col-sm-6">
                                        <div>
                                            <iaixsl:attribute name="class">f-feedback <iaixsl:if test="/shop/page/client-data/profile_data/@mandatory_password='true'">--required</iaixsl:if></iaixsl:attribute>
                                            <input type="password" class="f-control validate" id="client_password" name="client_password" disabled="disabled">
                                                <iaixsl:if test="/shop/page/client-data/profile_data/@max_password_length and /shop/page/client-data/profile_data/@max_password_length &gt; 0">
                                                    <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/client-data/profile_data/@max_password_length"/></iaixsl:attribute>
                                                </iaixsl:if>
                                            </input>
                                            <label class="f-label" for="client_password">Wachtwoord</label>
                                            <span class="f-control-feedback"/>
                                        </div>
                                        <iaixsl:if test="/shop/page/client-data/profile_data/@mandatory_password!='true'">
                                            <input id="cnew-generate_password" type="hidden" value="n" name="client_generate_password"/>
                                        </iaixsl:if>
                                    </div>

                                    <div class="f-group col-12 col-sm-6">
                                        <div>
                                            <iaixsl:attribute name="class">f-feedback <iaixsl:if test="/shop/page/client-data/profile_data/@mandatory_password='true'">--required</iaixsl:if></iaixsl:attribute>
                                            <input type="password" class="f-control validate" id="repeat_password" name="repeat_password" disabled="disabled" data-serialize="#client_password">
                                                <iaixsl:if test="/shop/page/client-data/profile_data/@max_password_length and /shop/page/client-data/profile_data/@max_password_length &gt; 0">
                                                    <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/client-data/profile_data/@max_password_length"/></iaixsl:attribute>
                                                </iaixsl:if>
                                            </input>
                                            <label class="f-label" for="repeat_password">Herhaal wachtwoord</label>
                                            <span class="f-control-feedback"/>
                                        </div>
                                    </div>
                                </div>

                            </section>
                        </div>

                    </iaixsl:if>

                    <div class="row">
                        <section class="client-data__client-data col-12 mb-3" id="client-data__client-data">
                            <div class="row" id="oscop_client">

                                <div class="col-12 col-sm-6">
                                    <h2 class="big_label">Uw gegevens</h2>
                                </div>

                                <iaixsl:if test="not((page/client-data/@operation = 'register-wholesale-add') or (page/client-data/@operation = 'edit-wholesale-add') or  (page/client-data/@operation = 'edit-wholesale-edit')) or (page/client-data/@disallow_change_company_data = 'false')">
                                    
                                    <div class="f-radio-group firm_switcher col-12 col-sm-6">
                                        <label class="f-radio-group-label">
                                            
                                        </label>
                                        <div class="f-group --radio">
                                            <input type="radio" name="client_type" class="f-control focused" id="client_type_private" value="private" data-create_client="type">
                                                <iaixsl:if test="$is_firm = 'false'">
                                                    <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                                </iaixsl:if>
                                            </input>
                                            <label class="f-label" for="client_type_private">Particulier</label>
                                        </div>
                                        <div class="f-group --radio">
                                            <input type="radio" name="client_type" class="f-control focused" id="client_type_firm" value="firm" data-create_client="type">
                                                <iaixsl:if test="$is_firm = 'true'">
                                                    <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                                </iaixsl:if>
                                            </input>
                                            <label class="f-label" for="client_type_firm">Bedrijf</label>
                                        </div>
                                    </div>

                                    <div class="f-group firm-group hidden col-12 col-sm-6">
                                        <iaixsl:if test="$is_firm = 'true'"><iaixsl:attribute name="class">f-group firm-group col-12 col-sm-6</iaixsl:attribute></iaixsl:if>
                                        <div>
                                            <iaixsl:attribute name="class">f-feedback --required</iaixsl:attribute>
                                            <input type="text" class="f-control validate" id="client_firm" name="client_firm" data-create_client="firm" required="required">
                                                <iaixsl:if test="not(/shop/page/client-data/invoice_data/@firm = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:if test="$is_firm = 'false'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@additional"/></iaixsl:attribute>
                                                <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data/@firm"/></iaixsl:attribute>
                                            </input>
                                            <label class="f-label" for="client_firm">Naam van het bedrijf</label>
                                            <span class="f-control-feedback"/>
                                        </div>
                                    </div>

                                    <iaixsl:if test="/shop/page/client-data/nip/@active != 'hide'">
                                        <div class="f-group firm-group hidden col-12 col-sm-6">
                                            <iaixsl:if test="$is_firm = 'true'"><iaixsl:attribute name="class">f-group firm-group col-12 col-sm-6</iaixsl:attribute></iaixsl:if>
                                            <div>
                                                <iaixsl:attribute name="class">f-feedback <iaixsl:if test="/shop/page/client-data/nip/@active = 'required'"> --required</iaixsl:if> </iaixsl:attribute>
                                                <input type="text" class="f-control validate" id="client_nip" name="client_nip" data-serialize="#client_region" data-create_client="nip">
                                                    <iaixsl:if test="not(/shop/page/client-data/invoice_data/@nip = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:if test="/shop/page/client-data/nip/@active = 'required'"><iaixsl:attribute name="required">required</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:if test="$is_firm = 'false'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@tax_number"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data/@nip"/></iaixsl:attribute>
                                                </input>
                                                <label class="f-label" for="client_nip">NIP</label>
                                                <span class="f-control-feedback"/>
                                            </div>
                                        </div>
                                    </iaixsl:if>

                                </iaixsl:if>

                                <div class="f-group col-12 col-sm-6">
                                    <div>
                                        <iaixsl:attribute name="class">f-feedback --required</iaixsl:attribute>
                                        <input type="text" class="f-control validate" id="client_firstname" name="client_firstname" data-create_client="firstname" required="required">
                                            <iaixsl:if test="not(/shop/page/client-data/invoice_data/@firstname = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@name"/></iaixsl:attribute>
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data/@firstname"/></iaixsl:attribute>
                                        </input>
                                        <label class="f-label" for="client_firstname">Naam</label>
                                        <span class="f-control-feedback"/>
                                    </div>
                                </div>

                                <div class="f-group col-12 col-sm-6">
                                    <div>
                                        <iaixsl:attribute name="class">f-feedback <iaixsl:if test="/shop/page/client-data/profile_data/@mandatory_lastname = 'true'"> --required</iaixsl:if> </iaixsl:attribute>
                                        <input type="text" class="f-control validate" id="client_lastname" name="client_lastname" data-create_client="lastname">
                                            <iaixsl:if test="not(/shop/page/client-data/invoice_data/@lastname = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:if test="/shop/page/client-data/profile_data/@mandatory_lastname = 'true'"><iaixsl:attribute name="required">required</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@lastname"/></iaixsl:attribute>
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data/@lastname"/></iaixsl:attribute>
                                        </input>
                                        <label class="f-label" for="client_lastname">Naam</label>
                                        <span class="f-control-feedback"/>
                                    </div>
                                </div>

                                <iaixsl:if test="(/shop/page/client-data/client_type/@active != 'n') and not(/shop/page/client-data/client_type/@type = 'firm')">
                                    <div class="f-radio-group client_sex col-12" id="client_sex">
                                        <label class="f-radio-group-label">Geslacht:</label>
                                        <div class="f-group --radio">
                                            <input type="radio" name="client_sex" class="f-control focused" id="client_sex_male" value="male" data-create_client="client_sex">
                                                <iaixsl:if test="(/shop/page/client-data/client_type/@type = 'male')"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:attribute name="required">required</iaixsl:attribute>
                                            </input>
                                            <label class="f-label" for="client_sex_male">Mannelijk</label>
                                        </div>
                                        <div class="f-group --radio">
                                            <input type="radio" name="client_sex" class="f-control focused" id="client_sex_female" value="female" data-create_client="client_sex">
                                                <iaixsl:if test="(/shop/page/client-data/client_type/@type = 'female')"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:attribute name="required">required</iaixsl:attribute>
                                            </input>
                                            <label class="f-label" for="client_sex_female">Vrouw</label>
                                        </div>
                                    </div>
                                </iaixsl:if>
                                
                                <iaixsl:if test="/shop/page/client-data/birth_date/@active != 'hide'">
                                    <div class="f-group col-12">
                                        <div>
                                            <iaixsl:attribute name="class">f-feedback <iaixsl:if test="/shop/page/client-data/birth_date/@active='required'"> --required</iaixsl:if> </iaixsl:attribute>
                                            <input type="text" class="f-control validate" id="birth_date" name="birth_date">
                                                <iaixsl:if test="not(/shop/page/client-data/birth_date/@date = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:if test="/shop/page/client-data/birth_date/@date != '0000-00-00'"><iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/birth_date/@date"/></iaixsl:attribute></iaixsl:if>
                                                <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:if test="/shop/page/client-data/birth_date/@active='required'"><iaixsl:attribute name="required">required</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@birthdate"/></iaixsl:attribute>
                                            </input>
                                            <label class="f-label" for="birth_date">Geboortedatum</label>
                                            <span class="f-control-feedback"/>
                                        </div>
                                    </div>
                                </iaixsl:if>

                                <div class="f-group col-12 col-sm-6">
                                    <div>
                                        <iaixsl:attribute name="class">f-feedback --required</iaixsl:attribute>
                                        <input type="text" class="f-control validate" id="client_street" name="client_street" data-serialize="#client_region" data-create_client="street" required="required">
                                            <iaixsl:if test="not(/shop/page/client-data/invoice_data/@street = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@addres"/></iaixsl:attribute>
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data/@street"/></iaixsl:attribute>
                                        </input>
                                        <label class="f-label" for="client_street">Straat en nummer</label>
                                        <span class="f-control-feedback"/>
                                    </div>
                                </div>

                                <div class="f-group col-12 col-sm-6">
                                    <div>
                                        <iaixsl:attribute name="class">f-feedback --required</iaixsl:attribute>
                                        <input type="text" class="f-control validate" id="client_zipcode" name="client_zipcode" data-serialize="#client_region" data-create_client="zipcode" required="required">
                                            <iaixsl:if test="not(/shop/page/client-data/invoice_data/@zipcode = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@zipcode"/></iaixsl:attribute>
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data/@zipcode"/></iaixsl:attribute>
                                        </input>
                                        <label class="f-label" for="client_zipcode">Postcode</label>
                                        <span class="f-control-feedback"/>
                                    </div>
                                </div>

                                <div class="f-group col-12 col-sm-6">
                                    <div>
                                        <iaixsl:attribute name="class">f-feedback --required</iaixsl:attribute>
                                        <input type="text" class="f-control validate" id="client_city" name="client_city" data-create_client="city" required="required">
                                            <iaixsl:if test="not(/shop/page/client-data/invoice_data/@city = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@city"/></iaixsl:attribute>
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data/@city"/></iaixsl:attribute>
                                        </input>
                                        <label class="f-label" for="client_city">Stad</label>
                                        <span class="f-control-feedback"/>
                                    </div>
                                </div>

                                
                                <iaixsl:choose>
                                    <iaixsl:when test="count(/shop/page/options/countries/country) = 1 and (/shop/page/options/countries/country/@id = 1143020003)">
                                        <input id="client_region" type="hidden" name="client_region" data-create_client="region">
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/options/countries/country/@id"/></iaixsl:attribute>
                                            <iaixsl:attribute name="data-vat_company"><iaixsl:value-of select="/shop/page/options/countries/country/@vat_company"/></iaixsl:attribute>
                                            <iaixsl:attribute name="data-vat"><iaixsl:value-of select="/shop/page/options/countries/country/@vat"/></iaixsl:attribute>
                                        </input>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <div class="f-group col-12 col-sm-6 client_regions">
                                            <div class="f-feedback">
                                                <select class="f-control delivery_countries focused" id="client_region" name="client_region" data-revalidate="#client_street,#client_zipcode" data-create_client="region">
                                                    <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:for-each select="/shop/page/options/countries/country">
                                                        <option>
                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="data-vat_company"><iaixsl:value-of select="@vat_company"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="data-vat"><iaixsl:value-of select="@vat"/></iaixsl:attribute>
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="/shop/page/client-data/invoice_data/@region &gt; 0">
                                                                    <iaixsl:if test="@id = /shop/page/client-data/invoice_data/@region">
                                                                        <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                                    </iaixsl:if>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    <iaixsl:if test="@selected = 'true'">
                                                                        <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                                    </iaixsl:if>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                            <iaixsl:value-of select="@name"/>
                                                        </option>
                                                    </iaixsl:for-each>
                                                </select>
                                                <label for="client_region" class="f-label">Staat</label>
                                            </div>
                                        </div>

                                        
                                        

                                    </iaixsl:otherwise>
                                </iaixsl:choose>

                                <iaixsl:for-each select="/shop/page/options/countries/country">
                                    <iaixsl:if test="provinces/province">
                                        <div class="f-group col-12 col-sm-6 client_provinces" style="display: none;">
                                            <iaixsl:if test="@selected = 'true'"><iaixsl:attribute name="style">display: block;</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="id">client_region_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                            <div class="f-feedback ">
                                                <select class="f-control focused" name="client_province" data-create_client="province">
                                                    <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:if test="not(@selected = 'true')"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="id">client_province_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                    <iaixsl:for-each select="provinces/province">
                                                        <option>
                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>

                                                            <iaixsl:choose>
                                                                <iaixsl:when test="/shop/page/client-data/invoice_data/@province &gt; 0">
                                                                    <iaixsl:if test="@id = /shop/page/client-data/invoice_data/@province">
                                                                        <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                                    </iaixsl:if>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    <iaixsl:if test="@selected = 'true'">
                                                                        <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                                    </iaixsl:if>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                            <iaixsl:value-of select="@name"/>
                                                        </option>
                                                    </iaixsl:for-each>
                                                </select>
                                                <label for="client_province" class="f-label">
                                                    <iaixsl:for-each select="province_types/type">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="text() = 'state'">Status</iaixsl:when>
                                                            <iaixsl:when test="text() = 'province'">Provincie</iaixsl:when>
                                                            <iaixsl:when test="text() = 'territory'">Gebied</iaixsl:when>
                                                            <iaixsl:otherwise>Regio</iaixsl:otherwise>
                                                        </iaixsl:choose><iaixsl:if test="not(position() = last())">/</iaixsl:if></iaixsl:for-each>:
                                                </label>
                                            </div>
                                        </div>
                                    </iaixsl:if>
                                </iaixsl:for-each>

                                <div class="f-group col-12 col-sm-6">
                                    <div>
                                        <iaixsl:attribute name="class">f-feedback  <iaixsl:if test="/shop/page/client-data/contact_data/@mandatory_phone = 'true'">--required</iaixsl:if></iaixsl:attribute>
                                        <input type="tel" class="f-control validate" id="client_phone" name="client_phone" data-serialize="#client_region" data-create_client="phone">
                                            <iaixsl:if test="not(/shop/page/client-data/contact_data/@phone = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:if test="/shop/page/client-data/contact_data/@mandatory_phone = 'true'"><iaixsl:attribute name="required">required</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/contact_data/@phone"/></iaixsl:attribute>
                                        </input>
                                        <label class="f-label" for="client_phone">Telefoon</label>
                                        <span class="f-control-feedback"/>
                                    </div>
                                </div>

                                <div class="f-group col-12 col-sm-6">
                                    <div>
                                        <iaixsl:attribute name="class">f-feedback  <iaixsl:if test="/shop/page/client-data/contact_data/@mandatory_email = 'true'">--required</iaixsl:if></iaixsl:attribute>
                                        <input type="email" class="f-control validate" id="client_email" name="client_email" data-create_client="email">
                                            <iaixsl:if test="not(/shop/page/client-data/contact_data/@email = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:if test="/shop/page/client-data/contact_data/@mandatory_email = 'true'"><iaixsl:attribute name="required">required</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/contact_data/@email"/></iaixsl:attribute>
                                        </input>
                                        <label class="f-label" for="client_email">E-mailadres</label>
                                        <span class="f-control-feedback"/>
                                    </div>
                                </div>

                            </div>

                            <div class="row" id="delivery_switcher">

                                <div class="f-radio-group delivery_switcher col-12 col-sm-6">
                                    <label class="f-radio-group-label">Levering aan een ander adres:</label>
                                    <div class="f-group --radio">
                                        <input type="radio" name="deliver_to_billingaddr" class="f-control focused" id="deliver_to_billingaddr_no" value="1">
                                            <iaixsl:if test="(/shop/page/client-data/delivery_data/@use = 'no')"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                        </input>
                                        <label class="f-label" for="deliver_to_billingaddr_no">Niet</label>
                                    </div>
                                    <div class="f-group --radio">
                                        <input type="radio" name="deliver_to_billingaddr" class="f-control focused" id="deliver_to_billingaddr_yes" value="0">
                                            <iaixsl:if test="(/shop/page/client-data/delivery_data/@use = 'yes')"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                        </input>
                                        <label class="f-label" for="deliver_to_billingaddr_yes">Ja</label>
                                    </div>
                                </div>
                                <iaixsl:if test="$invoice_info != ''">
                                  <div class="col-12 col-sm-6 --invoice_info">
                                    <i class="icon-file-empty"></i>
                                    <span><strong>BTW-factuur</strong>wordt elektronisch verzonden naar het opgegeven e-mailadres</span>
                                  </div>
                                </iaixsl:if>

                            </div>

                            <div class="row hidden" id="oscop_delivery">
                                <iaixsl:if test="/shop/page/options/countries/country[@selected='true']">
                                    <iaixsl:attribute name="data-active-country"><iaixsl:value-of select="/shop/page/options/countries/country[@selected='true']/@id"/></iaixsl:attribute>
                                </iaixsl:if>

                                <iaixsl:if test="basket/@login">

                                    <iaixsl:for-each select="page/client-data/addresses-list/address[@default = 'yes']">

                                        <iaixsl:if test="count(/shop/page/client-data/addresses-list/address) &gt; 1">
                                            <div class="form-group addresses_list_wrapper col-12">

                                                <iaixsl:for-each select="/shop/page/client-data/addresses-list/address[@default = 'yes']">
                                                    <input type="hidden" name="delivery_id" id="delivery_id" class="addresse_id"><iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute></input>
                                                    <input type="hidden" name="default_delivery_id" id="default_delivery_id"><iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute></input>
                                                </iaixsl:for-each>

                                                <div class="addresses_list">
                                                    <div class="dropdown cn_dropdown">
                                                        <button class="btn --solid dropdown-toggle" type="button" id="dropdownAdressMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Kies uit de lijst met adressen</button>
                                                        <ul class="dropdown-menu addresses-list" aria-labelledby="dropdownAdressMenu">
                                                            <iaixsl:for-each select="/shop/page/client-data/addresses-list/address">
                                                                <li>
                                                                    <a>
                                                                        <iaixsl:attribute name="data-wrapper">#client_new_additional</iaixsl:attribute>
                                                                        <iaixsl:attribute name="data-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                        <iaixsl:attribute name="data-zipcode"><iaixsl:value-of select="@zipcode"/></iaixsl:attribute>
                                                                        <iaixsl:attribute name="data-phone"><iaixsl:value-of select="@phone"/></iaixsl:attribute>
                                                                        <iaixsl:attribute name="data-region_id"><iaixsl:value-of select="@region_id"/></iaixsl:attribute>
                                                                        <iaixsl:attribute name="data-country_name"><iaixsl:value-of select="@country_name"/></iaixsl:attribute>
                                                                        <iaixsl:attribute name="data-removable"><iaixsl:value-of select="@removable"/></iaixsl:attribute>
                                                                        <iaixsl:attribute name="data-editable"><iaixsl:value-of select="@editable"/></iaixsl:attribute>
                                                                        <iaixsl:attribute name="data-used"><iaixsl:value-of select="@used"/></iaixsl:attribute>

                                                                        <iaixsl:if test="@default = 'yes'"><iaixsl:attribute name="class">active</iaixsl:attribute></iaixsl:if>
                                                                        <iaixsl:attribute name="href">#address_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                        <span><iaixsl:if test="not(@additional = '')"><iaixsl:value-of select="@additional"/><iaixsl:text> </iaixsl:text></iaixsl:if><iaixsl:value-of select="@firstname"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="@lastname"/></span>
                                                                        <span><iaixsl:value-of select="@street"/></span>
                                                                        <span><iaixsl:value-of select="@zipcode"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="@city"/></span>

                                                                        <span style="display:none">
                                                                            <span class="data-additional"><iaixsl:value-of select="@additional"/></span>
                                                                            <span class="data-firstname"><iaixsl:value-of select="@firstname"/></span>
                                                                            <span class="data-lastname"><iaixsl:value-of select="@lastname"/></span>
                                                                            <span class="data-street"><iaixsl:value-of select="@street"/></span>
                                                                            <span class="data-city"><iaixsl:value-of select="@city"/></span>
                                                                        </span>
                                                                    </a>
                                                                </li>
                                                            </iaixsl:for-each>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </iaixsl:if>

                                        <div class="f-group col-12 col-sm-6">
                                            <div>
                                                <iaixsl:attribute name="class">f-feedback --required</iaixsl:attribute>
                                                <input type="text" class="f-control validate" id="delivery_firstname" name="delivery_firstname" data-create_client_delivery="firstname" required="required">
                                                    <iaixsl:if test="not(@firstname = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@firstname"/></iaixsl:attribute>
                                                </input>
                                                <label class="f-label" for="delivery_firstname">Naam</label>
                                                <span class="f-control-feedback"/>
                                            </div>
                                        </div>

                                        <div class="f-group col-12 col-sm-6">
                                            <div>
                                                <iaixsl:attribute name="class">f-feedback <iaixsl:if test="/shop/page/client-data/profile_data/@mandatory_lastname = 'true'"> --required</iaixsl:if> </iaixsl:attribute>
                                                <input type="text" class="f-control validate" id="delivery_lastname" name="delivery_lastname" data-create_client_delivery="lastname">
                                                    <iaixsl:if test="not(@lastname = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:if test="/shop/page/client-data/profile_data/@mandatory_lastname = 'true'"><iaixsl:attribute name="required">required</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@lastname"/></iaixsl:attribute>
                                                </input>
                                                <label class="f-label" for="delivery_lastname">Naam</label>
                                                <span class="f-control-feedback"/>
                                            </div>
                                        </div>

                                        <div class="f-group col-12 col-sm-6">
                                            <div>
                                                <iaixsl:attribute name="class">f-feedback</iaixsl:attribute>
                                                <input type="text" class="f-control validate" id="delivery_additional" name="delivery_additional" data-create_client_delivery="additional">
                                                    <iaixsl:if test="not(@additional = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@additional"/></iaixsl:attribute>
                                                </input>
                                                <label class="f-label" for="delivery_additional">Naam van het bedrijf</label>
                                                <span class="f-control-feedback"/>
                                            </div>
                                        </div>

                                        <div class="f-group col-12 col-sm-6">
                                            <div>
                                                <iaixsl:attribute name="class">f-feedback --required</iaixsl:attribute>
                                                <input type="text" class="f-control validate" id="delivery_street" name="delivery_street" data-serialize="#delivery_region" data-create_client_delivery="street" required="required">
                                                    <iaixsl:if test="not(@street = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@street"/></iaixsl:attribute>
                                                </input>
                                                <label class="f-label" for="delivery_street">Straat en nummer</label>
                                                <span class="f-control-feedback"/>
                                            </div>
                                        </div>

                                        <div class="f-group col-12 col-sm-6">
                                            <div>
                                                <iaixsl:attribute name="class">f-feedback --required</iaixsl:attribute>
                                                <input type="text" class="f-control validate" id="delivery_zipcode" name="delivery_zipcode" data-serialize="#delivery_region" data-create_client_delivery="zipcode" required="required">
                                                    <iaixsl:if test="not(@zipcode = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@zipcode"/></iaixsl:attribute>
                                                </input>
                                                <label class="f-label" for="delivery_zipcode">Postcode</label>
                                                <span class="f-control-feedback"/>
                                            </div>
                                        </div>

                                        <div class="f-group col-12 col-sm-6">
                                            <div>
                                                <iaixsl:attribute name="class">f-feedback --required</iaixsl:attribute>
                                                <input type="text" class="f-control validate" id="delivery_city" name="delivery_city" data-create_client_delivery="city" required="required">
                                                    <iaixsl:if test="not(@city = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@city"/></iaixsl:attribute>
                                                </input>
                                                <label class="f-label" for="delivery_city">Stad</label>
                                                <span class="f-control-feedback"/>
                                            </div>
                                        </div>

                                        
                                        <iaixsl:choose>
                                            <iaixsl:when test="count(/shop/page/options/countries/country) = 1 and (/shop/page/options/countries/country/@id = 1143020003)">
                                                <input id="delivery_region" type="hidden" name="delivery_region" data-create_client_delivery="region">
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/options/countries/country/@id"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-vat_company"><iaixsl:value-of select="/shop/page/options/countries/country/@vat_company"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-vat"><iaixsl:value-of select="/shop/page/options/countries/country/@vat"/></iaixsl:attribute>
                                                </input>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <div class="f-group col-12 col-sm-6 delivery_regions">
                                                    <div class="f-feedback">
                                                        <select class="f-control delivery_countries focused" id="delivery_region" name="delivery_region" data-revalidate="#delivery_street,#delivery_zipcode" data-create_client_delivery="region">
                                                            <iaixsl:for-each select="/shop/page/options/countries/country">
                                                                <option>
                                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                    <iaixsl:attribute name="data-vat_company"><iaixsl:value-of select="@vat_company"/></iaixsl:attribute>
                                                                    <iaixsl:attribute name="data-vat"><iaixsl:value-of select="@vat"/></iaixsl:attribute>
                                                                    <iaixsl:if test="@id = /shop/page/options/countries/@delivery_active ">
                                                                        <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                                    </iaixsl:if>
                                                                    <iaixsl:value-of select="@name"/>
                                                                </option>
                                                            </iaixsl:for-each>
                                                        </select>
                                                        <label for="delivery_region" class="f-label">Staat</label>
                                                    </div>
                                                </div>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>

                                        <iaixsl:variable name="default_province"><iaixsl:value-of select="@province"/></iaixsl:variable>
                                        <iaixsl:variable name="editable_province"><iaixsl:value-of select="@editable"/></iaixsl:variable>
                                        <iaixsl:for-each select="/shop/page/options/countries/country">
                                            <iaixsl:if test="provinces/province">
                                            
                                                <div class="f-group col-12 col-sm-6 delivery_provinces" style="display: none;">
                                                    <iaixsl:if test="@id = /shop/page/options/countries/@delivery_active"><iaixsl:attribute name="style">display: block;</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="id">delivery_region_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                    
                                                    <div class="f-feedback">
                                                        <select class="f-control focused" name="delivery_province" data-create_client_delivery="province">
                                                            <iaixsl:if test="not(@id = /shop/page/options/countries/@delivery_active)"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                            <iaixsl:if test="$editable_province = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>

                                                            <iaixsl:for-each select="provinces/province">
                                                                <option>
                                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                    <iaixsl:if test="@id = $default_province">
                                                                        <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                                    </iaixsl:if>
                                                                    <iaixsl:value-of select="@name"/>
                                                                </option>
                                                            </iaixsl:for-each>
                                                        </select>
                                                        <label for="delivery_province" class="f-label">

                                                        <iaixsl:for-each select="province_types/type">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="text() = 'state'">Status</iaixsl:when>
                                                                <iaixsl:when test="text() = 'province'">Provincie</iaixsl:when>
                                                                <iaixsl:when test="text() = 'territory'">Gebied</iaixsl:when>
                                                                <iaixsl:otherwise>Regio</iaixsl:otherwise>
                                                            </iaixsl:choose><iaixsl:if test="not(position() = last())">/</iaixsl:if></iaixsl:for-each>:
                                                        </label>
                                                    </div>
                                                </div>
                                            </iaixsl:if>
                                        </iaixsl:for-each>

                                        <div class="f-group col-12 col-sm-6">
                                            <div>
                                                <iaixsl:attribute name="class">f-feedback  <iaixsl:if test="/shop/page/client-data/contact_data/@mandatory_phone = 'true'">--required</iaixsl:if></iaixsl:attribute>
                                                <input type="tel" class="f-control validate" id="delivery_phone" name="delivery_phone" data-serialize="#delivery_region" data-create_client_delivery="phone">
                                                    <iaixsl:if test="not(@phone = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:if test="/shop/page/client-data/contact_data/@mandatory_phone = 'true'"><iaixsl:attribute name="required">required</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@phone"/></iaixsl:attribute>
                                                </input>
                                                <label class="f-label" for="delivery_phone">Telefoon</label>
                                                <span class="f-control-feedback"/>
                                            </div>
                                        </div>

                                    </iaixsl:for-each>

                                </iaixsl:if>
                                
                                <iaixsl:if test="not($client_new_mode = 'edit') and (/shop/page/client-data/delivery_data/@use != 'hide')">

                                    <iaixsl:for-each select="/shop/page/client-data/delivery_data">

                                        <div class="f-group col-12 col-sm-6">
                                            <div>
                                                <iaixsl:attribute name="class">f-feedback --required</iaixsl:attribute>
                                                <input type="text" class="f-control validate" id="delivery_firstname" name="delivery_firstname" data-create_client_delivery="firstname" required="required">
                                                    <iaixsl:if test="not(@firstname = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:if test="@use = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@firstname"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@name"/></iaixsl:attribute>
                                                </input>
                                                <label class="f-label" for="delivery_firstname">Naam</label>
                                                <span class="f-control-feedback"/>
                                            </div>
                                        </div>

                                        <div class="f-group col-12 col-sm-6">
                                            <div>
                                                <iaixsl:attribute name="class">f-feedback <iaixsl:if test="/shop/page/client-data/profile_data/@mandatory_lastname = 'true'"> --required</iaixsl:if> </iaixsl:attribute>
                                                <input type="text" class="f-control validate" id="delivery_lastname" name="delivery_lastname" data-create_client_delivery="lastname">
                                                    <iaixsl:if test="not(@lastname = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:if test="/shop/page/client-data/profile_data/@mandatory_lastname = 'true'"><iaixsl:attribute name="required">required</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:if test="@use = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@lastname"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@name"/></iaixsl:attribute>
                                                </input>
                                                <label class="f-label" for="delivery_lastname">Naam</label>
                                                <span class="f-control-feedback"/>
                                            </div>
                                        </div>

                                        <div class="f-group col-12 col-sm-6">
                                            <div>
                                                <iaixsl:attribute name="class">f-feedback</iaixsl:attribute>
                                                <input type="text" class="f-control validate" id="delivery_additional" name="delivery_additional" data-create_client_delivery="additional">
                                                    <iaixsl:if test="not(@additional = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:if test="@use = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@additional"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@additional"/></iaixsl:attribute>
                                                </input>
                                                <label class="f-label" for="delivery_additional">Naam van het bedrijf</label>
                                                <span class="f-control-feedback"/>
                                            </div>
                                        </div>

                                        <div class="f-group col-12 col-sm-6">
                                            <div>
                                                <iaixsl:attribute name="class">f-feedback --required</iaixsl:attribute>
                                                <input type="text" class="f-control validate" id="delivery_street" name="delivery_street" data-serialize="#delivery_region" data-create_client_delivery="street" required="required">
                                                    <iaixsl:if test="not(@street = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:if test="@use = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@street"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@addres"/></iaixsl:attribute>
                                                </input>
                                                <label class="f-label" for="delivery_street">Straat en nummer</label>
                                                <span class="f-control-feedback"/>
                                            </div>
                                        </div>

                                        <div class="f-group col-12 col-sm-6">
                                            <div>
                                                <iaixsl:attribute name="class">f-feedback --required</iaixsl:attribute>
                                                <input type="text" class="f-control validate" id="delivery_zipcode" name="delivery_zipcode" data-serialize="#delivery_region" data-create_client_delivery="zipcode" required="required">
                                                    <iaixsl:if test="not(@zipcode = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:if test="@use = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@zipcode"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@zipcode"/></iaixsl:attribute>
                                                </input>
                                                <label class="f-label" for="delivery_zipcode">Postcode</label>
                                                <span class="f-control-feedback"/>
                                            </div>
                                        </div>

                                        <div class="f-group col-12 col-sm-6">
                                            <div>
                                                <iaixsl:attribute name="class">f-feedback --required</iaixsl:attribute>
                                                <input type="text" class="f-control validate" id="delivery_city" name="delivery_city" data-create_client_delivery="city" required="required">
                                                    <iaixsl:if test="not(@city = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:if test="@use = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@city"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@city"/></iaixsl:attribute>
                                                </input>
                                                <label class="f-label" for="delivery_city">Stad</label>
                                                <span class="f-control-feedback"/>
                                            </div>
                                        </div>

                                        
                                        <iaixsl:choose>
                                            <iaixsl:when test="count(/shop/page/options/countries/country) = 1 and (/shop/page/options/countries/country/@id = 1143020003)">
                                                <input id="delivery_region" type="hidden" name="delivery_region" disabled="" data-create_client_delivery="region">
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/options/countries/country/@id"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-vat_company"><iaixsl:value-of select="/shop/page/options/countries/country/@vat_company"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-vat"><iaixsl:value-of select="/shop/page/options/countries/country/@vat"/></iaixsl:attribute>
                                                    <iaixsl:if test="(/shop/page/client-data/delivery_data/@use = 'no')">
                                                        <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                    </iaixsl:if>
                                                </input>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <div class="f-group col-12 col-sm-6 delivery_regions">
                                                    <div class="f-feedback">
                                                        <select class="f-control delivery_countries focused" id="delivery_region" name="delivery_region" data-revalidate="#delivery_street,#delivery_zipcode" data-create_client_delivery="region">
                                                            <iaixsl:if test="(/shop/page/client-data/delivery_data/@use = 'no')">
                                                                <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                            </iaixsl:if>
                                                            <iaixsl:for-each select="/shop/page/options/countries/country">
                                                                <option>
                                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                    <iaixsl:attribute name="data-vat_company"><iaixsl:value-of select="@vat_company"/></iaixsl:attribute>
                                                                    <iaixsl:attribute name="data-vat"><iaixsl:value-of select="@vat"/></iaixsl:attribute>
                                                                    <iaixsl:if test="(@id = /shop/page/client-data/delivery_data/@region) or (@selected = 'true')">
                                                                        <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                                    </iaixsl:if>
                                                                    <iaixsl:value-of select="@name"/>
                                                                </option>
                                                            </iaixsl:for-each>
                                                        </select>
                                                        <label for="delivery_region" class="f-label">Staat</label>
                                                    </div>
                                                </div>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>

                                        <iaixsl:for-each select="/shop/page/options/countries/country">
                                            <iaixsl:if test="provinces/province">
                                                <div class="f-group col-12 col-sm-6 delivery_provinces" style="display: none;">
                                                    <iaixsl:attribute name="id">delivery_region_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                    <div class="f-feedback">
                                                        <select class="f-control focused" name="delivery_province" data-create_client_delivery="province">
                                                            <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                            <iaixsl:for-each select="provinces/province">
                                                                <option>
                                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                    <iaixsl:if test="(@id = /shop/page/client-data/invoice_data/@province) or (@selected = 'true')">
                                                                        <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                                    </iaixsl:if>
                                                                    <iaixsl:value-of select="@name"/>
                                                                </option>
                                                            </iaixsl:for-each>
                                                        </select>
                                                        <label for="delivery_province" class="f-label">
                                                            <iaixsl:for-each select="province_types/type">
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="text() = 'state'">Status</iaixsl:when>
                                                                    <iaixsl:when test="text() = 'province'">Provincie</iaixsl:when>
                                                                    <iaixsl:when test="text() = 'territory'">Gebied</iaixsl:when>
                                                                    <iaixsl:otherwise>Regio</iaixsl:otherwise>
                                                                </iaixsl:choose><iaixsl:if test="not(position() = last())">/</iaixsl:if></iaixsl:for-each>:
                                                        </label>
                                                    </div>
                                                </div>
                                            </iaixsl:if>
                                        </iaixsl:for-each>

                                        <div class="f-group col-12 col-sm-6">
                                            <div>
                                                <iaixsl:attribute name="class">f-feedback  <iaixsl:if test="/shop/page/client-data/contact_data/@mandatory_phone = 'true'">--required</iaixsl:if></iaixsl:attribute>
                                                <input type="tel" class="f-control validate" id="delivery_phone" name="delivery_phone" data-serialize="#delivery_region" data-create_client_delivery="phone">
                                                    <iaixsl:if test="not(@phone = '')"><iaixsl:attribute name="class">f-control validate focused</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:if test="/shop/page/client-data/contact_data/@mandatory_phone = 'true'"><iaixsl:attribute name="required">required</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:if test="@use = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@phone"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@phone"/></iaixsl:attribute>
                                                </input>
                                                <label class="f-label" for="delivery_phone">Telefoon</label>
                                                <span class="f-control-feedback"/>
                                            </div>
                                        </div>

                                    </iaixsl:for-each>

                                </iaixsl:if>

                            </div>

                        </section>
                    </div>

                </section>

            

            <iaixsl:if test="not(basket/@login)">
                <form id="login-toplayer" action="/signin.php" method="post" class="form-horizontal hidden">
                    <input type="hidden" name="operation" value="login"/>

                    
                    <h2 class="big_label">Inloggen</h2>

                    <div class="row">

                        <div class="f-group col-12">
                            <div>
                                <iaixsl:attribute name="class">f-feedback</iaixsl:attribute>
                                <input type="text" class="f-control" id="user_login" name="login"/>
                                <label class="f-label" for="user_login">Login</label>
                                <span class="f-control-feedback"/>
                            </div>
                        </div>

                        <div class="f-group col-12">
                            <div>
                                <iaixsl:attribute name="class">f-feedback</iaixsl:attribute>
                                <input type="password" class="f-control" id="user_pass" name="password"/>
                                <label class="f-label" for="user_pass">Wachtwoord</label>
                                <span class="f-control-feedback"/>
                            </div>
                        </div>
                    </div>

                    <div class="d-flex justify-content-between align-items-center">
                        <button class="btn --solid signin_button" type="submit">
                            <iaixsl:attribute name="title">Inloggen</iaixsl:attribute>Inloggen</button>
                        <a class="password_reminder_signin" href="/password-recover.php">
                            <iaixsl:attribute name="title">Ik weet mijn login of wachtwoord niet meer</iaixsl:attribute>Ik weet mijn wachtwoord niet meer.</a>
                    </div>

                </form>
            </iaixsl:if>

        <!--OSCOP - Uwagi do zamówienia (place_order_remarks, 109730.1)-->
            <iaixsl:variable name="remarks_headline"/>
            <iaixsl:variable name="delivery_subheadline">Opmerkingen voor de koerier</iaixsl:variable>
            <iaixsl:variable name="remarks_subheadline">Opmerkingen voor de winkel</iaixsl:variable>
            <section class="remarks pb-5 mb-4" id="place-order__remarks">
                <iaixsl:if test="$remarks_headline">
                    <h2 class="big_label"><iaixsl:value-of select="$remarks_headline" disable-output-escaping="yes"/></h2>
                </iaixsl:if>
                <div class="row pt-2">
                    <div class="col-12 col-md-6">
                        <iaixsl:if test="$delivery_subheadline">
                            <a class="remarks__delivery d-block mb-1 big_label" href="#remarks__delivery"><iaixsl:value-of select="$delivery_subheadline" disable-output-escaping="yes"/></a>
                        </iaixsl:if>
                        <div class="f-group">
                            <div class="f-feedback">
                                <textarea id="delivery_remarks" name="delivery_remarks" class="f-control validate" data-create_order="delivery_remarks" maxlength="50"/>
                                <label class="f-label" for="delivery_remarks">
                                    
                                </label>
                                <span class="f-control-feedback"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <iaixsl:if test="$remarks_subheadline">
                            <a class="remarks__shop d-block mb-1 big_label" href="#remarks__shop"><iaixsl:value-of select="$remarks_subheadline" disable-output-escaping="yes"/></a>
                        </iaixsl:if>
                        <div class="f-group">
                            <div class="f-feedback">
                                <textarea id="remarks" name="remarks" class="f-control validate" data-create_order="remarks"/>
                                <label class="f-label" for="remarks">
                                    
                                </label>
                                <span class="f-control-feedback"/>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        <!--OSCOP - Płatności (place_order_payment, 118442.1)-->

        <div class="payment mb-3" id="place-order__payment">

            <h2 class="big_label">Kies uw betaalwijze</h2>
            
            <div class="payment__sub row mx-n1 pt-2" id="oscop__payment">

                <div id="payment_online" class="payment__item col-4 mb-3 px-1">
                    <input id="payform_00a" value="00" name="payform_id" type="radio"/>
                    <label class="payment__label d-flex flex-column justify-content-center align-items-center" for="payform_00a">
                        <span class="payment__icon d-flex justify-content-center align-items-center p-2 mb-2"><img src="/gfx/dut/payment_online.png?r=1612518076"/></span>
                        <span class="payment__name">Online betalingen</span>
                    </label>
                    <div class="payment__content"/>
                </div>

                

                <div id="payment_acount" class="payment__item col-4 mb-3 px-1">
                    <input id="payform_110" value="110" data-create_order="payform_id" name="payform_id" type="radio"/>
                    <label class="payment__label d-flex flex-column justify-content-center align-items-center" for="payform_110">
                        <span class="payment__icon d-flex justify-content-center align-items-center p-2 mb-2"><img src="/gfx/dut/payment_transfer_account.png?r=1612518076"/></span>
                        <span class="payment__name">Betaling op rekening</span>
                    </label>
                </div>

                <div id="payment_dvp" class="payment__item col-4 mb-3 px-1 d-none">
                    <input id="payform_01" value="01" name="payform_id" type="radio"/>
                    <label class="payment__label d-flex flex-column justify-content-center align-items-center" for="payform_01">
                        <span class="payment__icon d-flex justify-content-center align-items-center p-2 mb-2"><img src="/gfx/dut/payment_dvp.png?r=1612518076"/></span>
                        <span class="payment__name">Onder rembours</span>
                    </label>
                </div>

            </div>

        </div>

        <!--OSCOP - Dostawa (place_order_delivery, 115049.1)-->

            <div class="delivery mb-4" id="place-order__delivery">
            
                <h2 class="big_label">Kies uw leveringsmethode</h2>

                <div class="delivery__sub">
                
                  <div class="delivery__type --default --active" id="delivery_default">

                      <div id="delivery_online" class="delivery__item mb-3">
                          <input id="shipping_00" value="00" name="shipping" type="radio"/>
                          <label class="delivery__label d-flex align-items-center py-2 px-3" for="shipping_00">
                              <span class="delivery__name">Kies eerst uw betaalmethode</span>
                          </label>
                      </div>

                  </div>

                  <div class="delivery__type --prepaid" id="delivery_prepaid"/>
                  <div class="delivery__type --dvp" id="delivery_dvp"/>
                  
                </div>

                <div id="delivery_summary" class="delivery__summary"/>
            
            </div>

        <!--OSCOP - Podsumowanie zamówienia (place_order_summary, 109506.1)-->
            
                <iaixsl:variable name="var_summary_headline"/>
                <iaixsl:variable name="var_summary_invoice"/>
                <iaixsl:variable name="var_summary_invoice_checked"/>
                <iaixsl:variable name="var_summary_einvoice">Ik wil een btw-factuur ontvangen</iaixsl:variable>
                <iaixsl:variable name="var_summary_einvoice_checked">true</iaixsl:variable>

                <div class="summary bg_alter p-3" id="place-order__summary">

                    <iaixsl:if test="$var_summary_headline">
                        <h2 class="big_label"><iaixsl:value-of select="$var_summary_headline" disable-output-escaping="yes"/></h2>
                    </iaixsl:if>

                    <div class="summary__costs mb-3">
                    
                        <div class="summary__cost_item justify-content-between mb-2" id="summary__worth">
                            <label>Contractwaarde:</label>
                            <strong/>
                        </div>

                        <div class="summary__cost_item justify-content-between mb-2" id="summary__shipping_cost">
                            <label>Portokosten:</label>
                            <strong class="plus_sign"/>
                        </div>

                        <div class="summary__cost_item justify-content-between mb-2" id="summary__payment_cost">
                            <label>Kosten betalingsformulier:</label>
                            <strong class="plus_sign"/>
                        </div>

                        <div class="summary__cost_item justify-content-between mb-2" id="summary__insurance">
                            <label>Kosten van de verzekering:</label>
                            <strong class="plus_sign"/>
                        </div>

                        <div class="summary__cost_item justify-content-between mb-2" id="summary__rabate">
                            <label>Korting:</label>
                            <strong class="minus_sign"/>
                        </div>

                        <div class="summary__cost_item justify-content-between mb-2" id="summary__balance">
                            <label>Betaald uit het saldo:<br/>(te veel betaald op klantenrekening)</label>
                            <strong class="minus_sign"/>
                        </div>

                        <div class="summary__cost_item --total justify-content-between mb-2 mt-3 pt-2" id="summary__total_cost">
                            <label>Te betalen:</label>
                            <strong>
								<span/>
								<iaixsl:if test="(basket/@points_used) and (basket/@points_used != 0)">
									<b class="d-block">
										 + 
										<span><iaixsl:value-of select="basket/@points_used"/></span>punt</b>
								</iaixsl:if>
							</strong>
                        </div>

                        

                    </div>

                    <div class="summary__regulations d-flex flex-column">

                        <div class="f-group --checkbox --small" id="summary__terms">
                          <input id="terms_agree" type="checkbox" name="terms_agree" value="0" required="required" class="f-control"/>
                          <label class="f-label" for="terms_agree"><i class="icon-need mr-1"></i><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/personal_data_processing_texts/personal_data"/></label>
                        </div>

                        <div class="f-group --checkbox --small" id="summary__order_cancel">
                          <input id="order_cancel" type="checkbox" name="order_cancel" value="1" required="required" class="f-control"/>
                          <label class="f-label" for="order_cancel"><i class="icon-need mr-1"></i>Ik heb nota genomen van<a target="_blank">
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/order_cancel/@url"/></iaixsl:attribute>het herroepingsrecht</a>
                          </label>
                        </div>
                        
                        
                        <iaixsl:if test="$var_summary_invoice != ''">
                          <div class="f-group --checkbox --small" id="summary__invoice">
                            <input id="wants_invoice" type="checkbox" name="wants_invoice" value="1" data-create_order="wants_invoice" class="f-control">
                              <iaixsl:if test="$var_summary_invoice_checked != ''"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                            </input>
                            <label class="f-label" for="wants_invoice"><iaixsl:value-of select="$var_summary_invoice"/></label>
                          </div>
                        </iaixsl:if>

                        
                        <iaixsl:if test="$var_summary_einvoice != ''">
                          <div class="f-group --checkbox --small" id="summary__einvoice">
                            <input id="wants_einvoice" type="checkbox" name="wants_invoice" value="2" data-create_order="wants_invoice" class="f-control">
                              <iaixsl:if test="$var_summary_einvoice_checked != ''"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                            </input>
                            <label class="f-label" for="wants_einvoice"><iaixsl:value-of select="$var_summary_einvoice"/></label>
                          </div>
                        </iaixsl:if>

                        
                        <iaixsl:if test="$var_summary_invoice = '' and $var_summary_einvoice = ''">
                          <input type="hidden" name="wants_invoice" value="0" data-create_order="wants_invoice"/>
                        </iaixsl:if>

                        <iaixsl:if test="/shop/page/personal_data_processing_texts/email">
                          <div class="f-group --checkbox --small" id="summary__mail_consent">
                            <input id="email_processing_consent" type="checkbox" name="email_processing" value="true" data-create_client_consent="email_processing" class="f-control">
                                <iaixsl:if test="/shop/page/personal_data_processing_texts/email/@checked = 'true'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                            </input>
                            <label class="f-label" for="email_processing_consent"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/personal_data_processing_texts/email"/></label>
                          </div>
                        </iaixsl:if>

                        <div class="f-group --checkbox --small" id="summary__newsletter">
                          <input id="client_mailing" type="checkbox" name="client_mailing" value="1" data-create_client="save_to_mailing_after_order" class="f-control">
                              <iaixsl:if test="/shop/page/client-data/contact_data/@mailing != '0'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                          </input>
                          <label class="f-label" for="client_mailing">Ik wil de e-mailnieuwsbrief ontvangen (mogelijkheid om later uit te schrijven)</label>
                        </div>

                        <iaixsl:if test="/shop/page/client-data/contact_data/@send_sms">
                            <div class="f-group --checkbox --small" id="summary__sms">
                              <input id="client_send_sms" type="checkbox" name="client_send_sms" value="y" data-create_client="save_to_mailing_sms_after_order" class="f-control">
                                  <iaixsl:if test="(/shop/page/client-data/invoice_data/@vat_company = 'n') or (/shop/page/client-data/invoice_data/@vat_company = 'p')"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                              </input>
                              <label class="f-label" for="client_send_sms">Ik wil graag de SMS Nieuwsbrief ontvangen (later uitschrijven)</label>
                            </div>
                        </iaixsl:if>

                        <iaixsl:if test="not(/shop/contact/owner/@vat_registered = 'false')">
                            <div class="f-group --checkbox --small" id="summary__vat">
                              <input id="vat_company" type="checkbox" name="vat_company" value="1" data-create_client="vat_company" class="f-control">
                                  <iaixsl:if test="(/shop/page/client-data/invoice_data/@vat_company = 'n') or (/shop/page/client-data/invoice_data/@vat_company = 'p')"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                              </input>
                              <label class="f-label" for="vat_company">Ik ben een EU-btw-plichtige. Ik bestel zonder BTW en verbind me ertoe het in mijn land te regelen.</label>
                            </div>
                        </iaixsl:if>  

                    </div>

                    <div class="summary__buttons d-flex flex-column align-items-center mb-2">
                        
                        <button id="summary__submit" type="submit" class="summary__submit btn --large --solid mb-3">Bestellen en betalen</button>
                        
                        <a href="/" class="summary__continue mb-2 d-none">Verder winkelen in de winkel</a>
                        
                        <small class="summary__legend">
                            <i class="icon-need"></i>Velden met een sterretje zijn verplicht.</small>
                    </div>

                </div>
            

        <!--OSCOP - Punkty odbioru (place_order_pickup_sites, 109507.1)-->
            <script>
                <iaixsl:choose>
                    <iaixsl:when test="/shop/page/google_api_key/@value">
                        app_shop.vars.googleApiKey = '<iaixsl:value-of select="/shop/page/google_api_key/@value"/>';
                    </iaixsl:when>
                    <iaixsl:otherwise>app_shop.vars.googleApiKey = false;</iaixsl:otherwise>
                </iaixsl:choose>  
            </script>

            <div class="pickup-sites" id="place-order__pickup-sites">
                <h2 class="pickup-sites__header big_label col-12">Selecteer een verzamelpunt</h2>
                <div class="pickup-sites__site p-sm-3">
                  <iaixsl:choose>
                      <iaixsl:when test="/shop/page/google_api_key/@value">
                        <img class="markerCluster" style="display:none;" src="/gfx/dut/m1.png?r=1612518076"/>
                        <img class="markerCluster" style="display:none;" src="/gfx/dut/m2.png?r=1612518076"/>
                        <img class="markerCluster" style="display:none;" src="/gfx/dut/m3.png?r=1612518076"/>
                        <img class="markerCluster" style="display:none;" src="/gfx/dut/m4.png?r=1612518076"/>
                        <img class="markerCluster" style="display:none;" src="/gfx/dut/m5.png?r=1612518076"/>
                        <img class="marker_face" src="/gfx/dut/marker_face.png?r=1612518076"/>
                        <div class="pickup-sites__map" id="pickup-sites__map">
                          <p class="pickup-sites__search_description mb-3">Voer uw adres in en zoek de dichtstbijzijnde persoonlijke ophaalpunten. Klik naast de kaart op een van de punten om uw bestelling daar af te halen.</p>
                          <div id="pickup-sites__search" class="pickup-sites__search f-group mb-3">
                              <input id="pickup-sites__autocomplete" type="text" class="pickup-sites__autocomplete f-control mb-2 mb-sm-0">
                                  <iaixsl:if test="page/client-data/addresses-list/address[@default = 'yes']/@street or page/client-data/addresses-list/address[@default = 'yes']/@city or page/client-data/addresses-list/address[@default = 'yes']/@country_name">
                                      <iaixsl:attribute name="value"><iaixsl:if test="page/client-data/addresses-list/address[@default = 'yes']/@street"><iaixsl:value-of select="page/client-data/addresses-list/address[@default = 'yes']/@street"/></iaixsl:if><iaixsl:if test="page/client-data/addresses-list/address[@default = 'yes']/@city"><iaixsl:if test="page/client-data/addresses-list/address[@default = 'yes']/@street">, </iaixsl:if><iaixsl:value-of select="page/client-data/addresses-list/address[@default = 'yes']/@city"/></iaixsl:if><iaixsl:if test="page/client-data/addresses-list/address[@default = 'yes']/@country_name"><iaixsl:if test="page/client-data/addresses-list/address[@default = 'yes']/@street or page/client-data/addresses-list/address[@default = 'yes']/@city">, </iaixsl:if><iaixsl:value-of select="page/client-data/addresses-list/address[@default = 'yes']/@country_name"/></iaixsl:if></iaixsl:attribute>
                                  </iaixsl:if>
                              </input>

                              <a class="btn --small --solid">
                                <span class="d-none d-sm-inline">Punten zoeken</span>
                                <span class="d-inline d-sm-none">Punten zoeken<i class="icon-search"></i></span>
                              </a>
                          </div>

                          <div class="pickup-sites__row d-flex flex-wrap p-sm-3 mb-3 mx-n3 mx-sm-0">
                              <div class="pickup-sites__map_container col-12 col-sm-6 col-md-8 mb-3 mb-sm-0 px-sm-0">
                                  <div class="loadingMap">
                                      <div class="loadingContent">
                                          <div class="loadingBox">
                                              <span class="loadingMap">Kaart laden</span>
                                              <span class="loadingNav">Navigatie laden</span>
                                              <span class="loadingMarkers">Laden van punten<span class="loadingMarkersComplete"/>
                                                  z
                                                  <span class="loadingMarkersCount"/>
                                              </span>
                                              <img class="loadingMapImg" src="/gfx/dut/mapLoader.gif?r=1612518076"/>
                                          </div>
                                      </div>
                                  </div>
                                  <div id="pickup_map" class="pickup-sites__iframe_wrapper"/>
                              </div>
                              <div class="pickup-sites__aside_container col-12 col-sm-6 col-md-4"/>
                          </div>

                          
                          <div id="selectPickupDayWrapper">
                              <div class="big_label">Selecteer uw gewenste ophaaldag</div>
                              <div class="pickupl_calendar_wrapper clearfix" id="selectPickupDay"/>
                          </div>
                          <div class="pickupl_hour_wrapper">
                              <span>U kunt ook uw voorkeursbereik opgeven</span>
                              <input type="text" name="calendar_select_hour" class="pickup_text" MAXLENGTH="50"/>
                          </div>
                          <input type="hidden" name="calendar_select_active" id="calendar_select_active" value="1"/>
                          
                          <div id="pickup_copy" style="display:none;">
                              <input type="radio" name="pickup_point" value="" id=""/>
                              <label class="pickup_point" required="required" data-id="" data-requires_client_number="" data-longitude="" data-latitude="" for="">
                                  <div class="pickup_point_sub">
                                      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1792 1792" fill="rgb(203, 203, 203)" height="42" width="33"><path d="M1152 640q0-106-75-181t-181-75-181 75-75 181 75 181 181 75 181-75 75-181zm256 0q0 109-33 179l-364 774q-16 33-47.5 52t-67.5 19-67.5-19-46.5-52l-365-774q-33-70-33-179 0-212 150-362t362-150 362 150 150 362z"/></svg>
                                      <b class="headerText"/>
                                      <div>
                                          <span class="streetText"/>
                                          <span class="zipcodePickup"><iaixsl:text> </iaixsl:text><span class="cityText"/></span>
                                          <input type="text" name="client_courier_number" disabled="true" required="required">
                                              <iaixsl:attribute name="placeholder">Het klantnummer is niet ingevoerd in het koerierssysteem.</iaixsl:attribute>
                                          </input>
                                          <div class="morePickup"><i class="icon-chevron-down"></i></div>
                                      </div>
                                      <div class="pickup_point_info">
                                          <div class="moreText"/>
                                          <div class="timeText" style="display:none"/>
                                          <a class="moreLink" target="_blank" href="">
                                              <iaixsl:attribute name="title">Zie details</iaixsl:attribute>meer informatie</a>
                                      </div>
                                  </div>
                                  <a class="btn-small map_dir" target="_blank">
                                      <i class="icon-globe"></i>De route bepalen</a>
                              </label>
                          </div>
                        </div>
                      </iaixsl:when>
                      <iaixsl:otherwise>
                        <div class="pickup-sites__map" id="pickup-sites__map"/>
                      </iaixsl:otherwise>
                  </iaixsl:choose>
                    <div class="pickup-sites__button_wrapper">
                        <a href="#choose" class="pickup-sites__choose_button btn --medium --solid">Selecteer</a>
                    </div>
                </div>
            </div>
        <!--Polityka bezpieczeństwa (menu_security_policy, 115962.1)-->
          <iaixsl:if test="/shop/commercial_button3/link[2]/html">
            <iaixsl:choose>
              <iaixsl:when test="/shop/page/@type = 'basketedit'">
                <div class="row policy align-items-start px-3 px-sm-0 mb-5 mx-sm-0">
                  <div class="col-12 col-md-8"><iaixsl:value-of disable-output-escaping="yes" select="/shop/commercial_button3/link[2]/html/text()"/></div>
                  <div class="col-12 col-md-4">
                    <div class="policy__helper">Je hebt een probleem met<strong>een bestelling plaatsen?</strong>
                      <a class="policy__phone">
                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/contact_nodes/node[@type='phone'][1]/@link"/></iaixsl:attribute>
                        <iaixsl:value-of select="/shop/contact/contact_nodes/node[@type='phone'][1]/@value"/>
                      </a>
                    </div>
                  </div>
                </div>
              </iaixsl:when>
              <iaixsl:otherwise>
                <div class="row policy align-items-start px-3 px-sm-0 mb-5 mx-sm-0" id="place-order__policy">
                  <div class="policy__content"><iaixsl:value-of disable-output-escaping="yes" select="/shop/commercial_button3/link[2]/html/text()"/></div>
                  <div class="policy__helper">Je hebt een probleem met<strong>een bestelling plaatsen?</strong>
                    <a class="policy__phone">
                      <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/contact_nodes/node[@type='phone'][1]/@link"/></iaixsl:attribute>
                      <iaixsl:value-of select="/shop/contact/contact_nodes/node[@type='phone'][1]/@value"/>
                    </a>
                  </div>
                </div>
              </iaixsl:otherwise>
            </iaixsl:choose>
          </iaixsl:if>
        
                        </div>
                    </iaixsl:if>
                </div>
             </div>

            
            <iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'footer')">
                <footer>
                    <iaixsl:attribute name="class"/>
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
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1612518076</iaixsl:attribute></script>
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </iaixsl:if>
            <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/place_order_scripts.js.gzip?r=1612518076</iaixsl:attribute></script><script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/place_order_client.js.gzip?r=1612518076</iaixsl:attribute></script><script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/place_order_remarks.js.gzip?r=1612518076</iaixsl:attribute></script><script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/place_order_payment.js.gzip?r=1612518076</iaixsl:attribute></script><script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/place_order_delivery.js.gzip?r=1612518076</iaixsl:attribute></script><script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/place_order_summary.js.gzip?r=1612518076</iaixsl:attribute></script><script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/place_order_pickup_sites.js.gzip?r=1612518076</iaixsl:attribute></script>
            <script>
                app_shop.runApp();
            </script>

            
            <iaixsl:if test="/shop/page/seolink_with_language_directory"/>

        
            <iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
                <iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_scripts')"/>
                <iaixsl:text disable-output-escaping="yes">&lt;/body&gt;&lt;/html&gt;</iaixsl:text>
            </iaixsl:if>
        </iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>
