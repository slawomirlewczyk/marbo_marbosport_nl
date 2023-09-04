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
                <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/order1.js.gzip?r=1612518076</iaixsl:attribute></script></head>
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

        <!--CMS na stronie Order1 (order1_cms, 55417.1)-->
    <iaixsl:if test="page/order1/text/body">
        <div class="n55417">
            <div class="n55417_sub">
              <iaixsl:attribute name="class">n55417_sub cm</iaixsl:attribute>
                    <iaixsl:value-of disable-output-escaping="yes" select="page/order1/text/body"/>
                </div>
       
        </div>
   </iaixsl:if>
   <!--Wybór sposobu dostawy i płatności (order1, 114753.1)-->
        <iaixsl:variable name="giftcard_enable">Cadeaubon</iaixsl:variable>
        <iaixsl:variable name="txt_60826_advance_a">Aanbetaling vereist:</iaixsl:variable>
        <iaixsl:variable name="wholesalerPrice2">true</iaixsl:variable>
        <iaixsl:variable name="txt_68313_nz">maatwerk</iaixsl:variable>
        <iaixsl:variable name="txt_68313_zp">Ik zal later kiezen</iaixsl:variable>
        <iaixsl:variable name="payments_in_row">7</iaixsl:variable>
        <iaixsl:variable name="txt_68638_rpoz">Als u uw bestellingen betaalt via</iaixsl:variable>
        <iaixsl:variable name="txt_68638_mxprice">true</iaixsl:variable>
        <iaixsl:variable name="hours_68638">uur</iaixsl:variable>
        <iaixsl:variable name="immediately_txt">De bestelling is direct na ontvangst klaar voor afhaling.</iaixsl:variable>

        
        <script class="ajaxLoad">

            <iaixsl:choose>
                <iaixsl:when test="/shop/page/order1/additional/advance/@cash_on_delivery='true' and /shop/page/order1/additional/advance/@prepaid='false'">
                    var advance_type = 'dvp';
                </iaixsl:when>
                <iaixsl:when test="/shop/page/order1/additional/advance/@cash_on_delivery='false' and /shop/page/order1/additional/advance/@prepaid='true'">
                    var advance_type = 'prepaid';
                </iaixsl:when>
                <iaixsl:otherwise>var advance_type = 'default';</iaixsl:otherwise>
            </iaixsl:choose>

            var advVal_prepaid = '<iaixsl:value-of select="/shop/page/order1/additional/advance/@value"/>';
            var advVal_dvp = '<iaixsl:value-of select="/shop/page/order1/additional/advance/@value_cod"/>';
            var advVal_mode = '<iaixsl:value-of select="/shop/page/order1/additional/first_payment/@mode"/>';

            var currency_format = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_format"/>';
            var currency_before_value = <iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_before_value"/>;
            var currency_space = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_space"/>';
            var currency_decimal_separator = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_decimal_separator"/>';
            var currency_grouping_separator = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_grouping_separator"/>';
            var symbol = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/>';

            var order1_txt_dzien = ' dzień ';
            var order1_txt_dni = ' dni ';
            var order1_txt_godz = ' godz. ';
            var order1_txt_godz2 = '<iaixsl:value-of select="$hours_68638"/>';
            var order1_txt_min = ' min ';
            var order1_txt_do24 = ' 24h. ';
            var saldo_balance_value = '<iaixsl:value-of select="page/order1/balance/@currency_value"/>';
            var limit_balance_value = '<iaixsl:value-of select="page/order1/balance/@currency_limit"/>';

            var limit_mode = 'n'
            <iaixsl:if test="not(page/order1/balance/@allowChoosePaymentType = 'y')">
                limit_mode = '<iaixsl:value-of select="page/order1/balance/@tradeCredit"/>';
            </iaixsl:if>

            var payments_in_row = '<iaixsl:value-of select="$payments_in_row"/>';


            var saldo_payform_hide = false;
            var saldo_limit_flag = false;






            
            <iaixsl:if test="page/order1/balance/@active='y' and (page/order1/balance/@currency_value &gt; /shop/basket/@total)">
                saldo_payform_hide = true;
            </iaixsl:if>
            <iaixsl:if test="page/order1/balance/@limit &gt; 0">
                saldo_limit_flag = true;
            </iaixsl:if>


            var shipping_time = '<iaixsl:value-of select="/shop/basket/shipping_time/@days"/>';
            app_shop.vars.Order1 = {}

        </script>



        

        <iaixsl:if test="page/order1/order_calendar">

            <script class="ajaxLoad">
                
                app_shop.vars.Order1.calendar = {};
                app_shop.vars.Order1.calendar.D1 = <iaixsl:value-of select="page/order1/order_calendar/@date_d"/>;
                app_shop.vars.Order1.calendar.M1 = <iaixsl:value-of select="page/order1/order_calendar/@date_m"/>;
                app_shop.vars.Order1.calendar.Y1 = <iaixsl:value-of select="page/order1/order_calendar/@date_y"/>;
                app_shop.vars.Order1.calendar.Mindate = new Date(<iaixsl:value-of select="page/order1/order_calendar/@date_y"/>,<iaixsl:value-of select="page/order1/order_calendar/@date_m"/>-1,<iaixsl:value-of select="page/order1/order_calendar/@date_d"/>);
                app_shop.vars.Order1.calendar.Seldate = new Date(<iaixsl:value-of select="page/order1/order_calendar/@select_y"/>,<iaixsl:value-of select="page/order1/order_calendar/@select_m"/>-1,<iaixsl:value-of select="page/order1/order_calendar/@select_d"/>);
        var Holidays = {};
                <iaixsl:for-each select="page/order1/order_calendar/holiday">
                    Holidays["<iaixsl:value-of select="@date_d"/>_<iaixsl:value-of select="@date_m"/>_<iaixsl:value-of select="@date_y"/>"] = 1;
                </iaixsl:for-each>
        app_shop.vars.Order1.calendar.holi = 0;
                <iaixsl:if test="page/order1/order_calendar/holiday">
                app_shop.vars.Order1.calendar.holi = 1;
                </iaixsl:if>
        


            </script>
        </iaixsl:if>
        

        <script class="ajaxLoad">
            var only_virtual = '<iaixsl:value-of select="page/order1/@only-virtual"/>';
        </script>

        <form method="post" class="order1_form" onsubmit="return Order1.checkForm();">
            <iaixsl:attribute name="action"><iaixsl:value-of select="page/order1/formaction"/>
                <iaixsl:if test="(page/order1/formaction = 'order2.php')">?preview=true</iaixsl:if>
            </iaixsl:attribute>

            <div class="order1_label">

                <iaixsl:attribute name="class">big_label order1_label</iaixsl:attribute>

                <iaixsl:choose>

                    <iaixsl:when test="page/order1/balance/@active='y'">
                        <iaixsl:attribute name="class">big_label order1_label order1_balance</iaixsl:attribute>
                        <span class="order1_label">Balans</span>

                    </iaixsl:when>

                    <iaixsl:otherwise>
                        <span class="order1_label">Kies uw leveringsmethode</span>
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </div>

            

            
            <iaixsl:if test="page/order1/balance/@active='y'">
                <table id="order1_balance">
                    <tr>
                        <th>




                            <iaixsl:choose>
                                <iaixsl:when test="page/order1/balance/@limit = 0">Beschikbare middelen</iaixsl:when>
                                <iaixsl:otherwise>Beschikbare limiet</iaixsl:otherwise>
                            </iaixsl:choose>

                        </th>
                        <th>Waarde van de producten</th>
                        <th>Extra kosten</th>
                        <th>Ontbrekend bedrag</th>
                    </tr>
                    <tr>
                        <td>
                            <iaixsl:value-of select="page/order1/balance/@currency_value"/><span class="order1_delitem_price_currency"><iaixsl:value-of select="/shop/currency/@name"/></span>
                        </td>
                        <td id="balance_products_worth">
                            -
                        </td>
                        <td id="balance_prepaid_cost">
                            -
                        </td>
                        <td id="balance_total_to_pay">
                            -
                        </td>
                    </tr>
                </table>

            </iaixsl:if>

            <iaixsl:if test="page/order1/balance/@onlyPrepaid='n' and page/order1/balance/@limit != 0">
                <div class="order1_balance_info">Helaas overschrijdt uw bestelling de beschikbare limiet, neem dan contact op met het personeel om uw eerdere verplichtingen na te komen of kies een van de volgende manieren om uw bestelling te betalen.</div>
            </iaixsl:if>


            
            <div id="order1_delivery">
                <iaixsl:if test="count(page/order1/shipping/delivery) = 0">
                    <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                </iaixsl:if>

                <div id="order1_mobile_switcher" class="d-sm-none">
                    <iaixsl:if test="count(page/order1/shipping/delivery[@type = 'prepaid']) &gt; 0">
                        <a href="#order1_prepaid">
                            <iaixsl:if test="(page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']) or (not(page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']) and not(page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true']))">
                                <iaixsl:attribute name="class">active</iaixsl:attribute>
                            </iaixsl:if>
                            <span class="d-block d-sm-inline">Betaling</span>voor verzending</a>
                    </iaixsl:if>
                    <iaixsl:if test="count(page/order1/shipping/delivery[@type = 'dvp']) &gt; 0">
                        <a href="#order1_dvp">
                            <iaixsl:if test="(page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'])">
                                <iaixsl:attribute name="class">active</iaixsl:attribute>
                            </iaixsl:if>
                            <span class="d-block d-sm-inline">Betaling</span>bij ontvangst</a>
                    </iaixsl:if>

                </div>



                <iaixsl:if test="count(page/order1/shipping/delivery[@type = 'prepaid']) &gt; 0">

                    <div id="order1_prepaid" class="order1_shippings inactive_shippings">

                        <iaixsl:if test="(page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true'] or (/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y'))">
                            <iaixsl:attribute name="class">order1_shippings

                                <iaixsl:if test="(page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']) or (not(page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']) and not(page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true']))">
                                     active
                                </iaixsl:if>

                            </iaixsl:attribute>
                        </iaixsl:if>

                        <iaixsl:if test="page/order1/balance/@allowChoosePaymentType = 'y'">
                            <input type="radio" name="chosenPayment" value="tradeCredit" checked="checked" style="display:none;"/>
                            <input type="radio" name="chosenPayment" value="prepaid" style="display:none;"/>
                        </iaixsl:if>

                        <div id="order1_prepaid_label" class="order1_delivery_label">
                            <div class="order1_big_checkbox" onclick="Order1.chooseDeliveryMethod($(this))">
                                <iaixsl:if test="(page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true'] or (/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y'))">
                                    <iaixsl:attribute name="class">order1_big_checkbox checked</iaixsl:attribute>
                                </iaixsl:if>

                            </div>

                            <iaixsl:choose>
                                <iaixsl:when test="page/order1/balance/@active='y'">
                                    <span class="order1_delivery_title">
                                        <iaixsl:if test="(page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true'] or (/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y'))">
                                            <iaixsl:attribute name="class">order1_delivery_title active_title</iaixsl:attribute>
                                        </iaixsl:if>
                                        <iaixsl:choose>
                                            <iaixsl:when test="page/order1/balance/@limit = 0 and page/order1/balance/@onlyPrepaid='n'">Gebruik beschikbare fondsen en betaal het saldo vóór verzending</iaixsl:when>
                                            <iaixsl:when test="(page/order1/balance/@limit = 0 and page/order1/balance/@onlyPrepaid='y') or (page/order1/balance/@limit != 0 and page/order1/balance/@onlyPrepaid='y' and page/order1/balance/@tradeCredit='n')">Gebruik de beschikbare middelen en kies de leveringsmethode</iaixsl:when>
                                            <iaixsl:when test="page/order1/balance/@limit != 0 and page/order1/balance/@onlyPrepaid='n'">
                                                <span class="d-block d-sm-inline">Betaling</span>voor verzending</iaixsl:when>
                                            <iaixsl:when test="page/order1/balance/@limit != 0 and page/order1/balance/@onlyPrepaid='y' and page/order1/balance/@tradeCredit='y'">Betaling via handelskrediet</iaixsl:when>

                                        </iaixsl:choose>
                                    </span>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <span class="order1_delivery_title"><iaixsl:if test="(page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true'] or (/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y'))">
                                        <iaixsl:attribute name="class">order1_delivery_title active_title</iaixsl:attribute>
                                    </iaixsl:if>
                                        <iaixsl:choose>
                                            <iaixsl:when test="page/order1/balance/@limit != 0 and page/order1/balance/@tradeCredit='y' and page/order1/balance/@active='n' and not(page/order1/balance/@allowChoosePaymentType='y')">
                                                Płatność kredytem kupieckim
                                            </iaixsl:when>
                                            <iaixsl:otherwise>Betaling voor verzending</iaixsl:otherwise>
                                        </iaixsl:choose></span>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </div>


                        <div id="order1_prepaid_legend" class="order1_delivery_legend">
                            <span class="order1_legend_courier_name">Naam van de koerier</span>
                            <span class="order1_legend_courier_time">Het transport zelf zal</span>
                            <iaixsl:if test="not(/shop/page/order1/shipping/@hide_cost='true')">
                                <span class="order1_legend_courier_price">Kosten</span>
                            </iaixsl:if>
                        </div>
                        <iaixsl:for-each select="page/order1/shipping/delivery[@type = 'prepaid']">
                            
                            <div class="order1_delitem">
                                <iaixsl:if test="@sameday='true'">
                                    <iaixsl:attribute name="data-sameday">true</iaixsl:attribute>
                                </iaixsl:if>
                                <iaixsl:attribute name="onclick">Order1.working_days([<iaixsl:for-each select="working_days/item"><iaixsl:if test="position() != 1">,</iaixsl:if><iaixsl:value-of select="translate(.,'7','0')"/></iaixsl:for-each>]);Order1.chooseDelivery($(this));Order1.showFields('<iaixsl:value-of select="@id"/>','<iaixsl:choose><iaixsl:when test="@sameday = 'true'">n</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@calendar"/></iaixsl:otherwise></iaixsl:choose>','<iaixsl:value-of select="@deliverytime"/>','1','<iaixsl:value-of select="@time"/>','<iaixsl:choose><iaixsl:when test="@id = '0-1'"><iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_days"/>#<iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_hours"/>#<iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_minutes"/>#<iaixsl:choose><iaixsl:when test="@today='true'">0</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@week_day"/></iaixsl:otherwise></iaixsl:choose>#<iaixsl:value-of select="@week_amount"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@time_days"/>#<iaixsl:value-of select="@time_hours"/>#<iaixsl:value-of select="@time_minutes"/>#<iaixsl:choose><iaixsl:when test="@today='true'">0</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@week_day"/></iaixsl:otherwise></iaixsl:choose>#<iaixsl:value-of select="@week_amount"/></iaixsl:otherwise></iaixsl:choose>','<iaixsl:value-of select="@loadCourierServicesUrl"/>');</iaixsl:attribute>
                                <iaixsl:attribute name="id">delivery_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                <iaixsl:attribute name="title">
                                    <iaixsl:choose>
                                        <iaixsl:when test="@minworthreached = 'false'">U kunt deze leveringsmethode niet selecteren</iaixsl:when>
                                        
                                    </iaixsl:choose>
                                </iaixsl:attribute>
                                <iaixsl:if test="@checked = 'true'">
                                    <iaixsl:attribute name="class">order1_delitem o1selected</iaixsl:attribute>
                                </iaixsl:if>
                                <iaixsl:if test="@minworthreached = 'false'">
                                    <iaixsl:attribute name="class">order1_delitem o1disabled</iaixsl:attribute>
                                    <iaixsl:attribute name="onclick"/>
                                </iaixsl:if>
                                <div class="order1_delitem_sub">
                                    <span class="order1_delitem_radio" style="display:none;">
                                        <input type="radio" name="shipping" class="order1_delitem_radio">
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                            <iaixsl:if test="@checked = 'true'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:if test="@minworthreached = 'false'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="title"><iaixsl:value-of select="@comment"/></iaixsl:attribute>
                                        </input>
                                    </span>
                                    <div class="order1_delitem_header">
                                        <iaixsl:choose>
                                            <iaixsl:when test="@id = '93-1'">
                                                <img class="order1_delitem_icon" src="/gfx/dut/online_delivery.png?r=1612518076">
                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                </img>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <iaixsl:if test="@icon">
                                                    <img class="order1_delitem_icon"><iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute><iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute><iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute></img>
                                                </iaixsl:if>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                        <span class="order1_delitem_name">
                                            <iaixsl:value-of select="@name"/>

                                            <iaixsl:if test="not(@sameday='true')">
                                                <div class="order1_delitem_time">
                                                    <iaixsl:if test="@minworthreached = 'false'">
                                                        <span class="order1_delitem_time inactive_time">Vorm van levering beschikbaar bij<iaixsl:value-of select="@minworth_formatted"/>

                                                        </span>
                                                    </iaixsl:if>
                                                    <iaixsl:if test="@minworthreached = 'true'">
                                                        <span class="order1_delitem_time">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="@id = '0-1'">
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="count(/shop/page/order1/stocks/stock) &gt; 0">
                                                                            <iaixsl:for-each select="/shop/page/order1/stocks/stock[@selected = 'selected']">



                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="@undefinded_time = 'true'">Onbekend</iaixsl:when>
                                                                                    <iaixsl:otherwise>

                                                                                        <iaixsl:choose>
                                                                                            <iaixsl:when test="$immediately_txt and (@pickup_days = 0) and (@pickup_hours = 0) and (@pickup_minutes = 0)">
                                                                                                <iaixsl:value-of select="$immediately_txt"/>
                                                                                            </iaixsl:when>
                                                                                            <iaixsl:otherwise>De voorbereiding voor het persoonlijk ophalen zal<iaixsl:if test="@pickup_days &gt; 0">
                                                                                                    <iaixsl:value-of select="@pickup_days"/>
                                                                                                    <iaixsl:choose>
                                                                                                        <iaixsl:when test="@pickup_days ='1'">dag</iaixsl:when>
                                                                                                        <iaixsl:otherwise>dagen</iaixsl:otherwise>
                                                                                                    </iaixsl:choose>
                                                                                                </iaixsl:if>


                                                                                                <iaixsl:choose>
                                                                                                    <iaixsl:when test="$hours_68638">
                                                                                                        <iaixsl:if test="@pickup_hours &gt; 0">
                                                                                                            <iaixsl:value-of select="@pickup_hours"/>
                                                                                                            <iaixsl:choose>
                                                                                                                <iaixsl:when test="@pickup_hours &gt; 1">
                                                                                                                    <iaixsl:value-of select="$hours_68638"/>
                                                                                                                </iaixsl:when>
                                                                                                                <iaixsl:otherwise>uur</iaixsl:otherwise>
                                                                                                            </iaixsl:choose>
                                                                                                        </iaixsl:if>
                                                                                                    </iaixsl:when>
                                                                                                    <iaixsl:otherwise>
                                                                                                        <iaixsl:if test="@pickup_hours &gt; 0">
                                                                                                            <iaixsl:value-of select="@pickup_hours"/>uur</iaixsl:if>
                                                                                                    </iaixsl:otherwise>
                                                                                                </iaixsl:choose>


                                                                                                <iaixsl:if test="@pickup_minutes &gt; 0">
                                                                                                    <iaixsl:value-of select="@pickup_minutes"/>minimaal</iaixsl:if>

                                                                                            </iaixsl:otherwise>
                                                                                        </iaixsl:choose>

                                                                                    </iaixsl:otherwise>
                                                                                </iaixsl:choose>




                                                                            </iaixsl:for-each>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>Het transport zelf zal</iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>Het transport zelf zal<iaixsl:choose>
                                                                        <iaixsl:when test="(@deliverytime_days = 0) and (@deliverytime_hours = 0) and (@deliverytime_minutes = 0)">tot 24 uur</iaixsl:when>

                                                                        <iaixsl:otherwise>
                                                                            <iaixsl:if test="@deliverytime_days &gt; 0">
                                                                                <iaixsl:value-of select="@deliverytime_days"/>
                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="@deliverytime_days ='1'">dag</iaixsl:when>
                                                                                    <iaixsl:otherwise>dagen</iaixsl:otherwise>
                                                                                </iaixsl:choose>
                                                                            </iaixsl:if>

                                                                            <iaixsl:choose>
                                                                                <iaixsl:when test="$hours_68638">
                                                                                    <iaixsl:if test="@deliverytime_hours &gt; 0">
                                                                                        <iaixsl:value-of select="@deliverytime_hours"/>
                                                                                        <iaixsl:choose>
                                                                                            <iaixsl:when test="@deliverytime_hours &gt; 1">
                                                                                                <iaixsl:value-of select="$hours_68638"/>
                                                                                            </iaixsl:when>
                                                                                            <iaixsl:otherwise>uur</iaixsl:otherwise>
                                                                                        </iaixsl:choose>
                                                                                    </iaixsl:if>
                                                                                </iaixsl:when>
                                                                                <iaixsl:otherwise>
                                                                                    <iaixsl:if test="@deliverytime_hours &gt; 0">
                                                                                        <iaixsl:value-of select="@deliverytime_hours"/>uur</iaixsl:if>
                                                                                </iaixsl:otherwise>
                                                                            </iaixsl:choose>

                                                                            <iaixsl:if test="@deliverytime_minutes &gt; 0">
                                                                                <iaixsl:value-of select="@deliverytime_minutes"/>minimaal</iaixsl:if>

                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>



                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </span>
                                                    </iaixsl:if>
                                                </div>
                                            </iaixsl:if>
                                            <div class="order1_delitem_comment" style="display:none;"><iaixsl:attribute name="id">delivery_<iaixsl:value-of select="@id"/></iaixsl:attribute></div>
                                        </span>

                                    </div>

                                    <iaixsl:if test="not(/shop/page/order1/shipping/@hide_cost='true')">
                                        <div class="order1_delitem_pricebox">

                                            <iaixsl:choose>
                                                <iaixsl:when test="@points_enabled = 'false'">
                                                    <label class="order1_delitem_price">
                                                        <input type="checkbox" name="" value="" checked="checked">
                                                            <iaixsl:if test="@minworthreached = 'false'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                        </input>
                                                        <iaixsl:value-of select="@cost_formatted"/>
                                                    </label>
                                                    <label class="order1_delitem_price_point_disabled showTip_order1">
                                                        <iaixsl:attribute name="title">Je hebt niet genoeg punten.</iaixsl:attribute>
                                                        <input class="showTip_order1" type="checkbox" disabled="disabled">
                                                            <iaixsl:attribute name="title">Je hebt niet genoeg punten.</iaixsl:attribute>
                                                        </input>

                                                        <iaixsl:value-of select="@points_cost"/>punt</label>
                                                </iaixsl:when>
                                                <iaixsl:when test="@points_enabled = 'true'">

                                                    <label class="order1_delitem_price">
                                                        <input type="checkbox" name="" value="" checked="checked">
                                                            <iaixsl:if test="@minworthreached = 'false'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                        </input>
                                                        <iaixsl:value-of select="@cost_formatted"/>
                                                    </label>
                                                    <label class="order1_delitem_price_point">
                                                        <input type="checkbox" name="" value="">
                                                            <iaixsl:if test="@minworthreached = 'false'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                        </input>
                                                        <iaixsl:value-of select="@points_cost"/>punt</label>
                                                </iaixsl:when>

                                                <iaixsl:otherwise>
                                                    <span class="order1_delitem_pricetitle"/>

                                                    

                                                    <iaixsl:if test="@beforerebate_formatted and $txt_68638_mxprice">
                                                        <del class="order1_delitem_price_oldprice">
                                                            <iaixsl:value-of select="@beforerebate_formatted"/>
                                                        </del>
                                                    </iaixsl:if>

                                                    <span class="order1_delitem_price">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="@minworthreached = 'false'">
                                                                x
                                                            </iaixsl:when>
                                                            <iaixsl:when test="@cost &gt; 0">
                                                                <iaixsl:if test="@limitfree &gt; 0"><iaixsl:attribute name="title">Van<iaixsl:value-of select="@limitfree_formatted"/>gratis</iaixsl:attribute></iaixsl:if>
                                                                <iaixsl:value-of select="@cost_formatted"/>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>Gratis!</iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    </span>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </div>
                                    </iaixsl:if>




                                </div>
                            </div>
                        </iaixsl:for-each>
                        
                        <span class="order1_delivery_description"/>

                        

                        <div id="order1_calendar_info" class="order1_dvp_time_pick">
                            <iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'">
                                <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                            </iaixsl:if>
                            
                            
                            <div class="order1_delivery_time_pick_txt_1">
                                <span class="order1_delivery_time_pick">De zending zal bij u zijn binnen<span class="order1_delivery_time_pick_value"/><div class="order1_delivery_time_pick_hour"/></span>
                            </div>
                            <div class="order1_delivery_time_pick_txt_2" style="display:none;">
                                <span class="order1_delivery_time_pick">De zending wordt geleverd op<span class="order1_delivery_time_pick_value"/><div class="order1_delivery_time_pick_hour"/></span>
                            </div>
                            <div class="order1_delivery_time_pick_txt_3" style="display:none;">
                                <span class="order1_delivery_time_pick">Haal uw bestelling op voor<span class="order1_delivery_time_pick_value"/><div class="order1_delivery_time_pick_hour"/></span>
                            </div>
                            <div class="order1_delivery_time_pick_auto" style="display:none;">
                                <span class="order1_delivery_time_pick"><span/><span class="order1_delivery_time_pick_value"/><span class="order1_delivery_time_pick_de"/><div class="order1_delivery_time_pick_hour"/></span>
                            </div>


                            <div class="order1_time_pick_button"><a class="btn runTopLayerOrder" href="#runToplayerOrder">Kies een andere leveringsdag</a></div>
                        </div>


                        
                        <div class="order1_comment_background">
                            <div class="order1_comment_text" id="order1_prepaid_comment_text">

                            </div>
                        </div>
                    </div>

                    


                </iaixsl:if>

                <iaixsl:if test="count(page/order1/shipping/delivery[@type = 'dvp']) &gt; 0">

                    <div id="order1_dvp" class="order1_shippings inactive_shippings">
                        <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                            <iaixsl:if test="page/order1/shipping/delivery[(@type = 'dvp') and (@checked = 'true')]">
                                <iaixsl:attribute name="class">
                                    order1_shippings
                                    <iaixsl:if test="(page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'])">
                                         active
                                    </iaixsl:if>
                                </iaixsl:attribute>
                            </iaixsl:if>
                        </iaixsl:if>
                        <iaixsl:if test="/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y'">
                            <iaixsl:attribute name="class">order1_shippings balance_disabled</iaixsl:attribute>
                        </iaixsl:if>
                        <div id="order1_dvp_label" class="order1_delivery_label">
                            <div class="order1_big_checkbox">
                                <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                    <iaixsl:attribute name="onclick">Order1.chooseDeliveryMethod($(this))</iaixsl:attribute>
                                </iaixsl:if>

                                <iaixsl:if test="page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'] and not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                    <iaixsl:attribute name="class">order1_big_checkbox checked</iaixsl:attribute>
                                </iaixsl:if>

                            </div>



                            <iaixsl:choose>
                                <iaixsl:when test="page/order1/balance/@active='y'">
                                    <span class="order1_delivery_title">
                                        <iaixsl:if test="page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'] and not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                            <iaixsl:attribute name="class">order1_delivery_title active_title</iaixsl:attribute>
                                        </iaixsl:if>
                                        <iaixsl:choose>
                                            <iaixsl:when test="page/order1/balance/@limit = 0 and page/order1/balance/@onlyPrepaid='n'">Gebruik de beschikbare middelen en betaal het saldo bij levering</iaixsl:when>
                                            <iaixsl:when test="(page/order1/balance/@limit = 0 and page/order1/balance/@onlyPrepaid='y') or (page/order1/balance/@limit != 0 and page/order1/balance/@onlyPrepaid='y' and page/order1/balance/@tradeCredit='n')">Gebruik de beschikbare middelen en betaal het saldo bij levering</iaixsl:when>
                                            <iaixsl:when test="page/order1/balance/@limit != 0 and page/order1/balance/@onlyPrepaid='n'">
                                                <span class="d-block d-sm-inline">Betaling</span>bij ontvangst</iaixsl:when>
                                            <iaixsl:when test="page/order1/balance/@limit != 0 and page/order1/balance/@onlyPrepaid='y' and page/order1/balance/@tradeCredit='y'">Gebruik uw beschikbare kredietlimiet en betaal het saldo bij levering</iaixsl:when>
                                        </iaixsl:choose>
                                    </span>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <span class="order1_delivery_title" id="order1_title_left">
                                        <iaixsl:if test="page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'] and not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                            <iaixsl:attribute name="class">order1_delivery_title active_title</iaixsl:attribute>
                                        </iaixsl:if>Betaling bij levering</span>
                                </iaixsl:otherwise>
                            </iaixsl:choose>





                        </div>
                        <div id="order1_dvp_legend" class="order1_delivery_legend">

                            <span class="order1_legend_courier_name">Naam van de koerier</span>
                            <span class="order1_legend_courier_time">Het transport zelf zal</span>
                            <iaixsl:if test="not(/shop/page/order1/shipping/@hide_cost='true')">
                                <span class="order1_legend_courier_price">Kosten</span>
                            </iaixsl:if>
                        </div>
                        <iaixsl:for-each select="page/order1/shipping/delivery[@type = 'dvp']">
                            
                            <div class="order1_delitem">
                                <iaixsl:if test="@sameday='true'">
                                    <iaixsl:attribute name="data-sameday">true</iaixsl:attribute>
                                </iaixsl:if>
                                <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">       
                                    <iaixsl:attribute name="onclick">Order1.working_days([<iaixsl:for-each select="working_days/item"><iaixsl:if test="position() != 1">,</iaixsl:if><iaixsl:value-of select="translate(.,'7','0')"/></iaixsl:for-each>]);Order1.chooseDelivery($(this));Order1.showFields('<iaixsl:value-of select="@id"/>','<iaixsl:choose><iaixsl:when test="@sameday = 'true'">n</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@calendar"/></iaixsl:otherwise></iaixsl:choose>','<iaixsl:value-of select="@deliverytime"/>', <iaixsl:choose><iaixsl:when test="((@type = 'dvp') and (/shop/page/order1/additional/advance/@cash_on_delivery='true')) or ((@type = 'prepaid') and (/shop/page/order1/additional/advance/@prepaid='true'))">'1','</iaixsl:when><iaixsl:otherwise>'0','</iaixsl:otherwise></iaixsl:choose><iaixsl:value-of select="@time"/>','<iaixsl:choose><iaixsl:when test="@id = '0-0' or @id = '0-1'"><iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_days"/>#<iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_hours"/>#<iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_minutes"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@time_days"/>#<iaixsl:value-of select="@time_hours"/>#<iaixsl:value-of select="@time_minutes"/>#<iaixsl:choose><iaixsl:when test="@today='true'">0</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@week_day"/></iaixsl:otherwise></iaixsl:choose>#<iaixsl:value-of select="@week_amount"/></iaixsl:otherwise></iaixsl:choose>','<iaixsl:value-of select="@loadCourierServicesUrl"/>');</iaixsl:attribute>
                                </iaixsl:if>
                                <iaixsl:attribute name="id">delivery_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                <iaixsl:attribute name="title">
                                    <iaixsl:choose>
                                        <iaixsl:when test="(@minworthreached = 'false') or (/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">Nie możesz wybrać tej metody dostawy</iaixsl:when>
                                        
                                    </iaixsl:choose>
                                </iaixsl:attribute>
                                <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">       
                                    <iaixsl:if test="@checked = 'true'">
                                        <iaixsl:attribute name="class">order1_delitem o1selected</iaixsl:attribute>
                                    </iaixsl:if>
                                </iaixsl:if>
                                <iaixsl:if test="(@minworthreached = 'false') or (/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                    <iaixsl:attribute name="class">order1_delitem o1disabled</iaixsl:attribute>
                                    <iaixsl:attribute name="onclick"/>
                                </iaixsl:if>

                                <div class="order1_delitem_sub">
                                    <span class="order1_delitem_radio" style="display:none;">
                                        <input type="radio" name="shipping" class="order1_delitem_radio">
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                            <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                                <iaixsl:if test="@checked = 'true'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                            </iaixsl:if>

                                            <iaixsl:if test="(@minworthreached = 'false') or (/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="title"><iaixsl:value-of select="@comment"/></iaixsl:attribute>
                                        </input>
                                    </span>
                                    <div class="order1_delitem_header">
                                        <iaixsl:if test="@icon">
                                            <img class="order1_delitem_icon"><iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute><iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute><iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute></img>
                                        </iaixsl:if>
                                        <span class="order1_delitem_name">
                                            <iaixsl:value-of select="@name"/>

                                            <iaixsl:if test="not(@sameday='true')">
                                                <div class="order1_delitem_time">
                                                    <iaixsl:if test="@minworthreached = 'false'">
                                                        <span class="order1_delitem_time inactive_time">Vorm van levering beschikbaar bij<iaixsl:value-of select="@minworth_formatted"/>

                                                        </span>
                                                    </iaixsl:if>
                                                    <iaixsl:if test="@minworthreached = 'true'">
                                                        <span class="order1_delitem_time">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="@id = '0-0' or @id = '0-1'">
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="count(/shop/page/order1/stocks/stock) &gt; 0">
                                                                            <iaixsl:for-each select="/shop/page/order1/stocks/stock[@selected = 'selected']">



                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="@undefinded_time = 'true'">Onbekend</iaixsl:when>
                                                                                    <iaixsl:otherwise>


                                                                                        <iaixsl:choose>
                                                                                            <iaixsl:when test="$immediately_txt and (@pickup_days = 0) and (@pickup_hours = 0) and (@pickup_minutes = 0)">
                                                                                                <iaixsl:value-of select="$immediately_txt"/>
                                                                                            </iaixsl:when>
                                                                                            <iaixsl:otherwise>De voorbereiding voor het persoonlijk ophalen zal<iaixsl:if test="@pickup_days &gt; 0">
                                                                                                    <iaixsl:value-of select="@pickup_days"/>
                                                                                                    <iaixsl:choose>
                                                                                                        <iaixsl:when test="@pickup_days ='1'">dag</iaixsl:when>
                                                                                                        <iaixsl:otherwise>dagen</iaixsl:otherwise>
                                                                                                    </iaixsl:choose>
                                                                                                </iaixsl:if>


                                                                                                <iaixsl:choose>
                                                                                                    <iaixsl:when test="$hours_68638">
                                                                                                        <iaixsl:if test="@pickup_hours &gt; 0">
                                                                                                            <iaixsl:value-of select="@pickup_hours"/>
                                                                                                            <iaixsl:choose>
                                                                                                                <iaixsl:when test="@pickup_hours &gt; 1">
                                                                                                                    <iaixsl:value-of select="$hours_68638"/>
                                                                                                                </iaixsl:when>
                                                                                                                <iaixsl:otherwise>uur</iaixsl:otherwise>
                                                                                                            </iaixsl:choose>
                                                                                                        </iaixsl:if>
                                                                                                    </iaixsl:when>
                                                                                                    <iaixsl:otherwise>
                                                                                                        <iaixsl:if test="@pickup_hours &gt; 0">
                                                                                                            <iaixsl:value-of select="@pickup_hours"/>uur</iaixsl:if>
                                                                                                    </iaixsl:otherwise>
                                                                                                </iaixsl:choose>


                                                                                                <iaixsl:if test="@pickup_minutes &gt; 0">
                                                                                                    <iaixsl:value-of select="@pickup_minutes"/>minimaal</iaixsl:if>

                                                                                            </iaixsl:otherwise>
                                                                                        </iaixsl:choose>

                                                                                    </iaixsl:otherwise>
                                                                                </iaixsl:choose>




                                                                            </iaixsl:for-each>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>Het transport zelf zal</iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>Het transport zelf zal<iaixsl:choose>
                                                                        <iaixsl:when test="(@deliverytime_days = 0) and (@deliverytime_hours = 0) and (@deliverytime_minutes = 0)">tot 24 uur</iaixsl:when>

                                                                        <iaixsl:otherwise>
                                                                            <iaixsl:if test="@deliverytime_days &gt; 0">
                                                                                <iaixsl:value-of select="@deliverytime_days"/>
                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="@deliverytime_days ='1'">dag</iaixsl:when>
                                                                                    <iaixsl:otherwise>dagen</iaixsl:otherwise>
                                                                                </iaixsl:choose>
                                                                            </iaixsl:if>

                                                                            <iaixsl:choose>
                                                                                <iaixsl:when test="$hours_68638">
                                                                                    <iaixsl:if test="@deliverytime_hours &gt; 0">
                                                                                        <iaixsl:value-of select="@deliverytime_hours"/>
                                                                                        <iaixsl:choose>
                                                                                            <iaixsl:when test="@deliverytime_hours &gt; 1">
                                                                                                <iaixsl:value-of select="$hours_68638"/>
                                                                                            </iaixsl:when>
                                                                                            <iaixsl:otherwise>uur</iaixsl:otherwise>
                                                                                        </iaixsl:choose>
                                                                                    </iaixsl:if>
                                                                                </iaixsl:when>
                                                                                <iaixsl:otherwise>
                                                                                    <iaixsl:if test="@deliverytime_hours &gt; 0">
                                                                                        <iaixsl:value-of select="@deliverytime_hours"/>uur</iaixsl:if>
                                                                                </iaixsl:otherwise>
                                                                            </iaixsl:choose>




                                                                            <iaixsl:if test="@deliverytime_minutes &gt; 0">
                                                                                <iaixsl:value-of select="@deliverytime_minutes"/>minimaal</iaixsl:if>

                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>



                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </span>
                                                    </iaixsl:if>
                                                </div>
                                            </iaixsl:if>
                                            <div class="order1_delitem_comment" style="display:none;"><iaixsl:attribute name="id">delivery_<iaixsl:value-of select="@id"/></iaixsl:attribute></div>

                                        </span>



                                    </div>
                                    <iaixsl:if test="not(/shop/page/order1/shipping/@hide_cost='true')">
                                        <div class="order1_delitem_pricebox">

                                            <iaixsl:choose>
                                                <iaixsl:when test="@points_enabled = 'false'">
                                                    <label class="order1_delitem_price">
                                                        <input type="checkbox" name="" value="" checked="checked"/>
                                                        <iaixsl:value-of select="@cost_formatted"/>
                                                    </label>
                                                    <label class="order1_delitem_price_point_disabled showTip_order1">
                                                        <iaixsl:attribute name="title">Je hebt niet genoeg punten.</iaixsl:attribute>
                                                        <input class="showTip_order1" type="checkbox" disabled="disabled">
                                                            <iaixsl:attribute name="title">Je hebt niet genoeg punten.</iaixsl:attribute>
                                                        </input>
                                                        <iaixsl:value-of select="@points_cost"/>punt</label>
                                                </iaixsl:when>
                                                <iaixsl:when test="@points_enabled = 'true'">

                                                    <label class="order1_delitem_price">
                                                        <input type="checkbox" name="" value="" checked="checked"/>
                                                        <iaixsl:value-of select="@cost_formatted"/>
                                                    </label>
                                                    <label class="order1_delitem_price_point">
                                                        <input type="checkbox" name="" value=""/>
                                                        <iaixsl:value-of select="@points_cost"/>punt</label>
                                                </iaixsl:when>

                                                <iaixsl:otherwise>
                                                    <span class="order1_delitem_pricetitle"/>

                                                    

                                                    <iaixsl:if test="@beforerebate_formatted and $txt_68638_mxprice">
                                                        <del class="order1_delitem_price_oldprice">
                                                            <iaixsl:value-of select="@beforerebate_formatted"/>
                                                        </del>
                                                    </iaixsl:if>

                                                    <span class="order1_delitem_price">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="@minworthreached = 'false'">
                                                                x
                                                            </iaixsl:when>
                                                            <iaixsl:when test="@cost &gt; 0">
                                                                <iaixsl:if test="@limitfree &gt; 0"><iaixsl:attribute name="title">Van<iaixsl:value-of select="@limitfree_formatted"/>gratis</iaixsl:attribute></iaixsl:if>
                                                                <iaixsl:value-of select="@cost_formatted"/>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>Gratis!</iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    </span>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>

                                        </div>
                                    </iaixsl:if>




                                </div>
                            </div>
                        </iaixsl:for-each>
                        
                        <span class="order1_delivery_description"/>


                        

                        <div id="order1_dvp_calendar_info" class="order1_dvp_time_pick">
                            <iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'">
                                <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                            </iaixsl:if>
                            <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                            </iaixsl:if>

                            <div class="order1_delivery_time_pick_txt_1">
                                <span class="order1_delivery_time_pick">De zending zal bij u zijn binnen<span class="order1_delivery_time_pick_value"/><div class="order1_delivery_time_pick_hour"/></span>
                            </div>
                            <div class="order1_delivery_time_pick_txt_2" style="display:none;">
                                <span class="order1_delivery_time_pick">De zending wordt geleverd op<span class="order1_delivery_time_pick_value"/><div class="order1_delivery_time_pick_hour"/></span>
                            </div>
                            <div class="order1_delivery_time_pick_txt_3" style="display:none;">
                                <span class="order1_delivery_time_pick">Haal uw bestelling op voor<span class="order1_delivery_time_pick_value"/><div class="order1_delivery_time_pick_hour"/></span>
                            </div>

                            <div class="order1_delivery_time_pick_auto" style="display:none;">
                                <span class="order1_delivery_time_pick"><span/><span class="order1_delivery_time_pick_value"/><div class="order1_delivery_time_pick_hour"/></span>
                            </div>


                            <div class="order1_time_pick_button"><a class="btn runTopLayerOrder" href="#runToplayerOrder">Kies een andere leveringsdag</a></div>
                        </div>


                        
                        <div class="order1_comment_background">
                            <div class="order1_comment_text" id="order1_dvp_comment_text">

                            </div>
                        </div>
                    </div>
                </iaixsl:if>
            </div>
            


            
            <iaixsl:if test="/shop/page/order1/shipping/delivery/@sameday = 'true'">
                <div id="order1_calendar_wrapper" class="sameday_date_wrapper">
                    <iaixsl:attribute name="style">display:none;</iaixsl:attribute>

                    <a id="show_sameday_dates" href="#showSameday" class="btn --solid --medium">Selecteer uw gewenste leveringsdatum</a>
                    <span>* selectie is vereist om verder te gaan</span>

                    <div id="sameday_date_sub"/>
                </div>
            </iaixsl:if>


            
            <div id="order1_calendar_wrapper">

                <iaixsl:attribute name="style">display:none;</iaixsl:attribute>

                <div id="order1_calendar_standard">
                    <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                    <div class="order1_label">
                        <iaixsl:attribute name="class">big_label order1_label</iaixsl:attribute>
                        <span class="order1_label">Selecteer uw gewenste dag van levering</span>
                    </div>

                    <div class="calendar_date_selects_wrapper_service clearfix">
                    
                    </div>

                    <div class="calendar_date_selects_wrapper">

                        <div class="order1_date" id="calendar_date_select_1" onclick="Order1.chooseDate($(this));">
                            <iaixsl:attribute name="title">Klik om de levering van die dag te selecteren</iaixsl:attribute>
                            <div class="order1_date_sub">
                                <input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;">
                                </input>
                                <span class="order1_date_day"/>
                                <span class="order1_date_month"/>
                            </div>
                        </div>

                        <div class="order1_date" id="calendar_date_select_2" onclick="Order1.chooseDate($(this));">
                            <iaixsl:attribute name="title">Klik om de levering van die dag te selecteren</iaixsl:attribute>
                            <div class="order1_date_sub">
                                <input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;">
                                </input>
                                <span class="order1_date_day"/>
                                <span class="order1_date_month"/>
                            </div>
                        </div>


                        <div class="order1_date" id="calendar_date_select_3" onclick="Order1.chooseDate($(this));">
                            <iaixsl:attribute name="title">Klik om de levering van die dag te selecteren</iaixsl:attribute>
                            <div class="order1_date_sub">
                                <input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;">
                                </input>
                                <span class="order1_date_day"/>
                                <span class="order1_date_month"/>

                            </div>
                        </div>

                        <div class="order1_date" id="calendar_date_select_4" onclick="Order1.chooseDate($(this));">
                            <iaixsl:attribute name="title">Klik om de levering van die dag te selecteren</iaixsl:attribute>
                            <div class="order1_date_sub">
                                <input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;">
                                </input>
                                <span class="order1_date_day"/>
                                <span class="order1_date_month"/>
                            </div>
                        </div>

                        <div class="order1_date" id="calendar_date_select_5" onclick="Order1.chooseDate($(this));">
                            <iaixsl:attribute name="title">Klik om de levering van die dag te selecteren</iaixsl:attribute>
                            <div class="order1_date_sub">
                                <input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;">
                                </input>
                                <span class="order1_date_day"/>
                                <span class="order1_date_month"/>
                            </div>
                        </div>

                        <div class="order1_date" id="calendar_date_select_6" onclick="Order1.chooseDate($(this));">
                            <iaixsl:attribute name="title">Klik om de levering van die dag te selecteren</iaixsl:attribute>
                            <div class="order1_date_sub">
                                <input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;">
                                </input>
                                <span class="order1_date_day"/>
                                <span class="order1_date_month"/>
                            </div>
                        </div>

                        <div class="order1_date" id="calendar_date_select_7" onclick="Order1.chooseDate($(this));">
                            <iaixsl:attribute name="title">Klik om de levering van die dag te selecteren</iaixsl:attribute>
                            <div class="order1_date_sub">
                                <input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;">
                                </input>
                                <span class="order1_date_day"/>
                                <span class="order1_date_month"/>


                            </div>
                        </div>


                        <div class="order1_date" id="calendar_date_select_8">
                            <iaixsl:attribute name="title">Klik om een andere dag van levering te kiezen</iaixsl:attribute>
                            <div class="order1_date_sub">
                                <span class="order1_date_calendartxt">Een andere dag</span>
                            </div>
                            <div id="order1_calbind"/>

                        </div>
                        <div class="clearBoth"/>
                    </div>

                </div>
                <iaixsl:if test="page/order1/deliverytime_own/@use = 'true'">
                    <div id="order1_calendar_deliveryown">
                        <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                        <div class="order1_label">
                            <iaixsl:attribute name="class">big_label order1_label</iaixsl:attribute>
                            <span class="order1_label">Selecteer uw gewenste dag van levering</span>
                        </div>
                        <iaixsl:for-each select="page/order1/deliverytime_own/date">
                            <div class="order1_date" onclick="Order1.chooseDate($(this));">
                                <iaixsl:if test="@selected = 'true'">
                                    <iaixsl:attribute name="class">order1_date o1selecteddate</iaixsl:attribute>
                                </iaixsl:if>
                                <iaixsl:if test="position() = 1">

                                    <iaixsl:attribute name="id">calendar_dateown_select</iaixsl:attribute>
                                </iaixsl:if>
                                <iaixsl:attribute name="title">Klik om de levering van die dag te selecteren</iaixsl:attribute>
                                <div class="order1_date_sub">

                                    <input name="calendar_select_date" type="radio" class="order1_radio">
                                        <iaixsl:attribute name="value"><iaixsl:value-of select="@date"/></iaixsl:attribute>
                                        <iaixsl:if test="@selected = 'true'">
                                            <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                        </iaixsl:if>
                                    </input>

                                    <span class="order1_date_day"><iaixsl:value-of select="@day"/></span>
                                    <span class="order1_date_month">
                                        <iaixsl:choose>
                                            <iaixsl:when test="@month = 1">Januari</iaixsl:when>
                                            <iaixsl:when test="@month = 2">Februari</iaixsl:when>
                                            <iaixsl:when test="@month = 3">Maart</iaixsl:when>
                                            <iaixsl:when test="@month = 4">April</iaixsl:when>
                                            <iaixsl:when test="@month = 5">Mei</iaixsl:when>
                                            <iaixsl:when test="@month = 6">Juni</iaixsl:when>
                                            <iaixsl:when test="@month = 7">Juli</iaixsl:when>
                                            <iaixsl:when test="@month = 8">Augustus</iaixsl:when>
                                            <iaixsl:when test="@month = 9">September</iaixsl:when>
                                            <iaixsl:when test="@month = 10">Oktober</iaixsl:when>
                                            <iaixsl:when test="@month = 11">November</iaixsl:when>
                                            <iaixsl:when test="@month = 12">December</iaixsl:when>
                                        </iaixsl:choose>
                                    </span>
                                </div>
                            </div>
                        </iaixsl:for-each>
                    </div>
                </iaixsl:if>

                <div id="calendar_select_hour_div"><span>U kunt ook uw voorkeurstijdstip aangeven (bijv. 13.00 - 16.00 uur).</span><input type="text" name="calendar_select_hour" class="order1_text" MAXLENGTH="50"/></div>


                
                <div class="order__calendar_services">
                    <span class="order__services_txt">Extra service</span>
                    <input type="hidden" class="order__calendar_services_points" name="calendar_services_points" value="0"/>
                    <select name="calendar_services" class="order__services_select f-select --placeholder">
                        <option value="" selected="selected">Selecteer</option>
                        <option value="">Geen</option>
                    </select>
                </div>
                <input type="hidden" name="calendar_select_active" class="order__select_day" value="0"/>

            </div>

            <input type="hidden" name="calendar_select_active" id="calendar_select_active" value="0"/>

            

            
            <div id="order1_payform" class="clearfix">
                <iaixsl:if test="(page/order1/shipping/delivery[@checked='true']/@type = 'dvp') and not(/shop/page/order1/additional/advance/@cash_on_delivery='true')">
                    <iaixsl:attribute name="style">display:none</iaixsl:attribute>
                </iaixsl:if>

                
                <iaixsl:if test="/shop/page/order1/additional/advance/@value">
                    <div id="advance_value">Zamówienie, przed realizacją, wymaga opłacenia zaliczki. 
                        
                        Wybierz z listy poniżej sposób, w jaki opłacisz zaliczkę.</div>
                </iaixsl:if>
                

                <div id="order1_payform_label_advance" class="order1_label">
                    <iaixsl:attribute name="class">big_label order1_label</iaixsl:attribute>
                    <iaixsl:attribute name="style">display:none</iaixsl:attribute>
                    <iaixsl:if test="(page/order1/shipping/delivery[@checked='true']/@type = 'dvp') and (/shop/page/order1/additional/advance/@cash_on_delivery='true')">
                        <iaixsl:attribute name="style">display:block</iaixsl:attribute>
                    </iaixsl:if>
                    <iaixsl:if test="(page/order1/shipping/delivery[@checked='true']/@type = 'prepaid') and (/shop/page/order1/additional/advance/@prepaid='true')">
                        <iaixsl:attribute name="style">display:block</iaixsl:attribute>
                    </iaixsl:if>
                    <span class="order1_label">Selecteer de methode van vooruitbetaling</span>
                </div>

                <div id="order1_payform_label_order" class="order1_label">
                    <iaixsl:attribute name="class">big_label order1_label</iaixsl:attribute>
                    
                    <iaixsl:if test="/shop/page/order1/additional/advance">
                        <iaixsl:if test="not((page/order1/shipping/delivery[@checked='true']/@type = 'dvp') and (/shop/page/order1/additional/advance/@cash_on_delivery='false') and /shop/page/order1/prepaid_methods)">
                            <iaixsl:attribute name="style">display:none</iaixsl:attribute>
                        </iaixsl:if>
                        <iaixsl:if test="not((page/order1/shipping/delivery[@checked='true']/@type = 'prepaid') and (/shop/page/order1/additional/advance/@prepaid='false') and /shop/page/order1/prepaid_methods)">
                            <iaixsl:attribute name="style">display:none</iaixsl:attribute>
                        </iaixsl:if>
                    </iaixsl:if>
                    <span class="order1_label">Selecteer de betalingswijze</span>
                </div>


                <div class="order1_payitems_wrapper mb-4">
                    <iaixsl:if test="not(/shop/page/order1/prepaid_methods)">
                        <iaixsl:attribute name="style">display: none;</iaixsl:attribute>
                    </iaixsl:if>

                    
                    <iaixsl:if test="/shop/page/order1/groupList/item">
                        <iaixsl:for-each select="/shop/page/order1/groupList/item">
                                    <iaixsl:variable name="groupID"><iaixsl:value-of select="@id"/></iaixsl:variable>

                                    <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@group = $groupID]">

                                        <div class="payments_group">
                                            <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@group = $groupID]/@checked = 'true'">
                                                <iaixsl:attribute name="class">payments_group group_open</iaixsl:attribute>
                                            </iaixsl:if>
                                            <iaixsl:attribute name="id"><iaixsl:value-of select="@id"/>_payment</iaixsl:attribute>

                                                <iaixsl:if test="@id = 'simple_transfer'">
                                                    <input value="110" type="radio" name="payform_id" class="hidden_input">
                                                        <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                                            <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@group = $groupID]/@checked = 'true'">
                                                                <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                                            </iaixsl:if>
                                                        </iaixsl:if>
                                                    </input>
                                                </iaixsl:if>

                                                <iaixsl:if test="@id = 'blik'">
                                                    <input value="177" type="radio" name="payform_id" class="hidden_input">
                                                        <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                                            <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@group = $groupID]/@checked = 'true'">
                                                                <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                                            </iaixsl:if>
                                                        </iaixsl:if>
                                                    </input>
                                                </iaixsl:if>

                                                <input type="radio" name="selected_group" class="selected_group">
                                                    <iaixsl:attribute name="id"><iaixsl:value-of select="@id"/>_input</iaixsl:attribute>
                                                    <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                                        <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@group = $groupID]/@checked = 'true'">
                                                            <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                                        </iaixsl:if>
                                                    </iaixsl:if>
                                                </input>

                                            <label class="payments_group_sub_content">
                                                
                                                <span class="prepaid_payment_group_name"><iaixsl:value-of select="@name"/></span>

                                                <span class="payments_sub_container">
                                                    <span class="payments_icon_container">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="@id = 'transfer'">
                                                                <img class="payment_icon" src="//:0">
                                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                </img>
                                                                <span class="payment_icon_primary"><svg xmlns="http://www.w3.org/2000/svg" id="Component_1_1" data-name="Component 1 – 1" width="25.768" height="33.552" viewBox="0 0 25.768 33.552"><path id="Path_12" data-name="Path 12" d="M25.768,20.77V0H0V20.771H9.446v.85a2.35,2.35,0,0,1-2.36,2.334H5.764v1.5H19.969v-1.5H18.647a2.35,2.35,0,0,1-2.36-2.334v-.85h9.481ZM24.256,1.5V14.383H1.512V1.5ZM1.512,15.878H24.256v3.4H1.512ZM15.58,23.955H10.153a3.782,3.782,0,0,0,.806-2.334v-.85h3.816v.85a3.782,3.782,0,0,0,.806,2.334Zm0,0" transform="translate(0 8.102)" fill="#333"/><g id="Rectangle_15" data-name="Rectangle 15" transform="translate(6.676)" fill="#fff" stroke="#333" stroke-width="1.5"><rect width="12.991" height="16.664" rx="2" stroke="none"/><rect x="0.75" y="0.75" width="11.491" height="15.164" rx="1.25" fill="none"/></g><line id="Line_3" data-name="Line 3" y2="15.787" transform="translate(10.852 0.439)" fill="none" stroke="#333" stroke-width="1.5"/><line id="Line_4" data-name="Line 4" y2="14.91" transform="translate(14.288 1.316)" fill="none" stroke="#333" stroke-width="1.5"/><line id="Line_10" data-name="Line 10" x2="17" transform="translate(4.499 15.987)" fill="none" stroke="#333" stroke-width="1.4"/></svg></span>
                                                            </iaixsl:when>
                                                            <iaixsl:when test="@id = 'blik'">
                                                                <img class="payment_icon" src="//:0">
                                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                </img>
                                                                <span class="payment_icon_primary"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="44.087" height="20.053" viewBox="0 0 44.087 20.053"><defs><pattern id="pattern" preserveAspectRatio="xMidYMid slice" width="100%" height="100%" viewBox="0 0 327 154"><image width="327" height="154" xlink:href="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAPEhIPDxISDxAPFRAPDw8QEhIQEBAOFRIYFxURFRUYISkjGhsnGxUTLTQhJSkrLi4xGB85ODMsNyguLi0BCgoKDg0NGxAQGjUlHyU1Mzc3NzE3Kzc3Nzc0Nzc3NzcvNzU1NTU3KzcrOCs1Mjc3NzM1Nzc1Nzc3Ky04Ny0uLf/AABEIAJoBRwMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAABgcIAgMEBQH/xABMEAABAwIBBgkHCAkDAwUAAAABAAIDBBESBQchMVGRBhMlQXFyk7PSFzVUYXOBsggUIiMzQlKxFSQyYnSSobTBQ1WDgtHTFmOiwuH/xAAaAQEAAwEBAQAAAAAAAAAAAAAAAwQFBgEC/8QAIBEBAAIBBAIDAAAAAAAAAAAAAAIDAQQFEUESIRNxkf/aAAwDAQACEQMRAD8AmmvrYqeN8872xRRAukkcbNa0c5UF8LM+sznGPJkTY4xccfO3FI71tZezR039y+/KI4SvdNFkyM2jja2onAP7Urr4Gn1Bun/qGxQzZA9uzv5bOn5y0dEMI/8AqsfK9lv0kdjF4UjWRZA8+V7LfpI7GLwo8r2W/SR2MXhSNZFkDz5Xst+kjsYvCjyvZb9JHYxeFI1kWQPPley36SOxi8KPK9lv0kdjF4UjWRZA8+V7LfpI7GLwo8r2W/SR2MXhSNZFkDz5Xst+kjsYvCjyvZb9JHYxeFI1kWQPPley36SOxi8KPK9lv0kdjF4UjWRZA8+V7LfpI7GLwo8r2W/SR2MXhSNZFkDz5Xst+kjsYvCjyvZb9JHYxeFI1kWQPPley36SOxi8KPK9lv0kdjF4UjWRZA8+V7LfpI7GLwo8r2W/SR2MXhSNZFkDz5Xst+kjsYvCjyvZb9JHYxeFI1kWQPPley36SOxi8KPK9lv0kdjF4UjWRZA8+V7LfpI7GLwo8r2W/SR2MXhSNZFkDz5Xst+kjsYvCjyvZb9JHYxeFI1kWQPPley36SOxi8KPK9lv0kdjF4UjWRZA8+V7LfpI7GLwo8r2W/SR2MXhSNZFkDz5Xst+kjsYvCjyvZb9JHYxeFI1kWQPbM8GWxp+ctPTDER8KdeBmfMuc2HKsbQ1xDRVQNIw355GE6vW3coPsiyC70EzZGtexwex4DmOabtc0i4IPOLL4oc+TtwkfJHNk2QkiACenJ+7G51pGdAcQR1ihAhZ7TfLFTfmbAPdxTUiWT3nqHLFV0Qd01I9kGFkWWdkWQYWRZZ2RZBgV8uFNfybB9ZX9WD83qdUFH7hfbK62U/sZfZyfCVSpiD5ZfQ2+gaSdAA1krKyZuBtACXTuF8JwR+p1ruduIt71HbZiuGZZWNLp5ai7Fce3zJnBMuAdUOLb6eLZbEB+846ivVHBSltaz+tjOL/ALf0XtNatzWrMxfbPPPLr69r0tcePDn7JeVeB7mgvp3GQDSY3Wx2/dI0H+iVy3+mvpUwtakjh3ksRvbUMFhMS2TZxgFwfeL7itCmcs+pMXdNthVH5avWO8FSyNCzsrQZjvM1L1qn+4kU7CVbuF9V31H+fXzPP16bvmoKwWRZZhFkGFkWWdkWQYWRZZ2RZBgjQrN5i4mnJEN2gnjKjWAf9UqQOIZ+Fv8AKEFJEWVns+MTRkeoIaAcdNpAA/12KsgQYWRZZ2RZBhZFlnZFkGFkWWdkWQYWRZZ2RZBhZFlnZFkEl/J785v/AIeX42IX35Po5Td/Dy/E1CDzc9A5YquiDumpJsnnPMOV6rog7pqSbIMLIss7IsgwsiyzsiyCYvk3j6yu6sH5vU5qDvk4j6yu6sH5vU4oObKf2Mvs5PhKpXEFdTKf2Mvs5PhKpdCEGVk9cEh+rM60l/5ykiyY+BteGOdA/QJSHRn/ANy1i33gDd61BqYedfGGntN0atVjMu/Rwa1bWtQ1q2taqtVTr5SDWpdzggCmbfXxrMPThd/i6aGNUecPcrCaVsEZuyC+Mg6HSm19w0dJKvwhxhlbpdiOnljPfotNVnsyHmem61T/AHMirKxqs3mR8z03Wqv7mRfTkj2o/wA+vmefr03fNUgKP8+vmefr03fNQVlYFlZEYWdkGFkWWdkWQYWRZZ2RZBZTMV5oh9pU96VIKj/MX5oi9rU965SAgQM+fmeo69N37FWNgVnc+fmeo69N37FWWIICyLLOyLIMLIss7IsgwsiyzsiyDCyLLOyLIMLIss7Isgkf5P45Td/Dy/ExfVlmBHKbv4eX4mL4g8/PIOV6nog7pqSrJ4zxDlap6Ie6akvCg12RZbMKMKDXZFlswowoJe+ToPrK7qwfm9TeoS+TuPrK3qwfm9Tag5sp/Yy+zk+EqmFONCuflP7GX2cnwlVS4LcCco17Q6mpnujOqZ9ooj0Odr910HiWQWqUqPMflB32tRSw6tDTLM6+wjC0D3ErZVZja4D6qqpZDseJYRvAcgSMl8LZYRgmbxzRoa4HDIOk6nc3/wCr1/8A1zSgfZ1F9mCO1+nH/hcuXc3WVKIF8tMZIxcmSnPHtAHOQPpAe5KfFArzEcYX69y1MI+OJfr3Ms8NJpgY4G8Qw6C695CCNV/u8+rSluGJdIiCzwr1VtunbLynnlrwqy+ZLzPTdaq/uZFWzCrKZlByRTdaq/uZERHlR/n18zz9em75qkBR/n08zz+0pu+agrVENC2WRCNC9TIGRZa6eOlgwCWW4aZCWs0Ak3IBOobEHl2RZST5Fcrfio+2l/8AGjyK5W/FR9tL/wCNBG1kWXpZdyPLQzyUs+AywkNfxZLmXIBFiQDqI5lw4UFjsxnmmL2tT3zk/pAzG+aYva1PfOT+gQc+fmeo69N37FWiEaFZfPn5nqOvTd+xVrgGhB9siy2YV05MydLVSx08DS+WZ2CNg5zrJOwAAknmAKDisiykTyNZX2Uvbu8CPI1lfZS9u7wII7siycOEmbuuydCairdTMZcNAbMXSPcdTWNwi5/wClPCg12RZbMKMKDXZFlswowoJEzBjlJ38PL8TELPMMOUnfw8vxMQg8/PAOVqnoh7pqTMKds7w5VqeiHumpOwoNWFGFbcKMKDVhRhW3CjCgln5PQ+srerB+b1Nahf5Po+srerB+b1NCD44A6DpB0EHUQhoA0DQBoAGoBfUIBC+OcALkgAc50BfI5Gu0tIcNoIKDJJPDfNtR5TDpGgU1XY2nYND3cwlb94evX607IQVFy7kWegmfTVTMErNlyx7Tqex33mnauDCrO5xuB8eVaYsADaqEOfSynRaS32bj+B1gD7jrCrO6NzXOY8Fr2FzHtOtr2mxB94KDVhVkcy/mim61T/AHEirnhVjszQ5JputU/3EiB2SBn08zz+0pu+an9IGfTzPP7Sm75qCuFONCdM0o5VpemTu3JPphoTpmnHKtL0yd25BZZCEIKs51H8sVo/fZ3TUuWTFnTHLNb12d01eCGoLD5j/NMXtarvnJ+SFmQHJUXtarvnJ9QIOfPzPUdem79irdTjQrI58vM9R16bv2KuVKNCDMNvoAJJ0AAXJPMAOcqw2abgKMnRfOaho+eTgXB0/N4jpEQ/e/EfdzJazN8BMRblSrboGmjiPObfbuGzT9Ee/YpnQC5cp5QipYpKid4jiiaXve7QAB/n1etdLnAAkkADSSdAA2lVrzv8PzlSb5pSuPzGBx0jVUyg24z1sHNv2WDw+HnDObLFUZTdkEeJlLD+CO/7Tv33WF/cOZeKwLCmgsurCg1YUYVtwowoNWFGFbcKMKCQcxA5Sd7CX4mL4tmYscou9hL8TEIODO4OVanoh7pqTsKdM7I5UqeiHumpQwoNWFGFbcKMKDVhRhW3CjCglXMAPrKzqwfm9TMoczBj6ys6sP5uUxoBRtnXzljJQFLSBslbIMRLheOnjOpzhzuOmw955gZFqJQxjnnUxrnHoAuqd11Y+tqZqqQkunkfKb6bBziQ31ACwA5gAgMqZSq69/GVc8k7r3HGOJa2/wCFupuoagF8yfx1O8S08j4ZBqfG4sdrva41jQNC644gFnhQS3mvzoyTSMocpuBkeQymqrBuN/NHLbRiPM4a9R06TMCqGWc40EWII0EEaiPWrRcC8qOrKGlqX/tyRM4zYZW/ReR6sTXIPaVec92RBS5QFQwWZXM4w21cfHZrz7wWHftVhlFHyh6YGjpZrfSiqcGLYySJ1x7yxiCFgFYvM55pp+tU/wBw9V2h0hWLzPjkqn61R/cPQOaQM+fmif2lN3zU/pAz5+aJ/aU3fNQV3pRoTpmpHKlL0yd25J9GNCdM1g5UpemTu3ILHoQhBVrOgOWa3rs7pi8QNXuZzxyzW9dndMXkBqCwGZQclRe1qe+cntIuZcclx+1qe9cnpAg58vM9R16bv2KLM0vAk5Tl46Zv6lA60t7jjpAARCPVpBd6tHPomzOFkE5SozRh4i46WnDnuNrMbK1zrbXWBsNtl7GRclQ0UEdLTtwRQtDGN1n1knnJOsoOtjA0BrQAAAABoAA1ABZISBnj4YTZLpGina4T1RdFHPhuyGwBcb/jIJwjpPMgTs9+cG+PJNG7X9Gtlad9O0j/AOW7aogpKbnXykgLjidckm5J0kk6ySvTZHZBgGIwrbhRhQasKMK24UYUGrCjCtuFGFA/Zjhyi72EvxNQs8yI5Qd7CT4mr4g4s645UqOiHumpRwpyzqDlOo/4e6alLCg1YUYVtwowoNWFGFbcKMKCTcw8gE1WznMcTvcHOH+VMirzmvyoKXKMJcbRzh1M8nUMYuw/ztYOglWGQaayHjI3sGgvY9gPrLSFUGlpXRPfE8WfE58TwRYh7HFpFukFXEUO51c3shlflKhYXiT6VXAwEvxj/WjaNdxrA06Li9ygivCjCtgH9NBGwr7hQaiFZXN9Qup8nUkTwQ7ig9zToLTITJhPrGK3uUV5uuAclZIypqWFlIwh4DrtNQQdDWj8FxpPPzKdQEAos+UPNbJ8DNF5KqPps2KQk77b1KagD5QWWGzVlPRMN/mjHSSgWsJZsJDTp14WtOn8XrQINKNAVi80Xmqn61R371XumZYBWGzSjkun61R370DgkDPn5on9pTd81P6QM+Xmif2lN3zUFf6IfRTnmuHKdL0yd25KFA36Kc82DeU6bpk7tyCxCEIQVdzmjlmt67O6YvKDV6+cocs1vXZ3TF5oagnrM0OTI/aVHelPCSczo5Mj9pUd6U7IEbPRUPiyVNLE4skjlpXse3W14qGEEe9d2bfhgzK1I2U2bURWjqo9VpLfttH4Xax7xzLzc+Pmeo69N37FCvAXL8mTJ2VUd3N/YniB+1hOtunnGsesbCUFp153CHIsFfTyUlQ3FHKLH8TXDS17TzEGy6cn1sdREyeFwfHK0PY4c7SF0IKq5d4Py5NqH0k4+k3TG8fsyxE/Rkb020jmIIXHhVjM4XBBmVKfC2zamG7qaU6LO543H8Lre7QeZV4khfG50UjSySNzmSMcLOa9psQUGrCjCtuFGFBqwowrbhRhQasKMK24UYUD1mUHKDvYSfE1CzzLDlB3sJPiahBx50m8p1H/ABd01KeFOGc9vKVR/wAXdNSrhQacKMK3YUYUGnCjCt2FGFBpw7LgjSCDYg8xBVg83vChuUaZpcf1mENjqG6iXAaJANjtfTccygLCuzIuVp6CZtTTOs9uhzD+xLHzseNn5awgs0hLfA/hnS5TZ9W7i52j62meRxjDzkfib+8PfbUmRB4uV+CdBVkuqKaN7jreAY5Df99hB/qtGTeBGTKYh0VLHiBuHSF8zgfUZCbJhQgEIXj8J+E1JkyIz1cgYNOBgsZZXD7sbec6vUOeyA4V8IYcm0stXOdEYOBl/pSyn9mNvrJ/yqrS1ctbUS1UxxSTvdI87CToaPUBYDoXrcOOF9TluoD3gx00ZIp6e9wwH77jzvO3m1BaaGkwBBsYywU/Zp/NkHWn796gjCp4zVDkyDrT9+9A3JBz5eaJ/aU3fNT8kHPl5om9pTd81BA2T2/RCc82Y5SpumTu3JRya36ITlm1bylTdL+7cgsAhCEFYc5A5ZreuzumLha1ehnGHLNb12d0xcjWoJzzQDk2P2lR3hTokzNGOTY/aT94U5oELPj5nqOvTd+xQJk5t2qe8+Hmio69N37FBGTG/RCCRs0vCz5pL8wnP6vUOvC4nRDOfu6dTXW/mttJU3Kq0kVxZThmu4W/Pofm87v1qmABJteaHU2Xp5j7jzoHlRlnb4F8e05RpWkzxD9YjaLmaEffA/G0bx0BSahBVGMgi4WWFPWdDgb8xlNZTt/VZ3EyNF7QTuN/cxxOjYdGqySgEGrCjCt2FGFBpwowrdhRhQO2Zofr7vYyfE1CzzOj9fd7GT4moQcmc0co1H/F3TUrYU+Z2cnOjrBNb6FQxhB5sbBhc3cGn3pJwoNOFGFbsKMKDThRhW7CjCg04UYVuwowoOJ8DmubJG50cjDiY9hLXtdtBGpNeRc62U6QBlS1ldGLDE/6qcN67RZ2jaL7SV4OFYuiBQSRT586K311JWMdziMQyN3l7fyRNn1yeAcFNWudzBzIGgn1kSH8lGD6Bp5lq/RjNiBry7nurpgWUVOylvo42Q8fINGtosGg9IPQo9q/nNbKZ6qR88rtb5Dc22DYPUF7bKBg5l0NhA1BB51HQBi7cK3YUYUGnCnfg7nKbk2ljpjSumMZkONsoZfE9ztRb60nYVhJCHa0D2c/Ef8At8vbs8KX+HWdRuVaN9E2jkhMjoncY6VrwMEgdqA9SXTQM2L6KBmxBzZNZZoXv8G8qiiqY6osMgixHADhJu0jXY7VwMiA1LItQPtRnxYw2+YSH1idnhWry8x/7fL27PCkCSjadYWH6PZsQc+WsrfpCunrRGYhO5rhG4hxbZgbrHQutrUR0jW6gt+FA3cGs5Dcl0rac0zpi10jsTZAy+JxNrEHauk5+Y/9vl7dnhSLLCHa1zHJzNiBj4dZ1mZVo5KJtHJCZHRO4x0rXAYJGv1AepKuS2fRC6Bk5mxdEcIbqQYYVvybWy0k0dVAcMkRuNjmnQ5jtoIuF8wowoHyfPkxhsaCQ+sTst8K1eXqP/b5e3Z4Ugy0bXawtX6OZsQPldntp6iN8E2TZHxytLHsMzLFp/6VH9NM15dgDmsucDXkOc1l/ohxGs2tpWz9HM2LdFTBupAYUYVuwowoNOFGFbsKMKByzQD9ePsZPiahelmcyc4zT1JH0GMETTte4gkDoDR/MEIJD4R5Dir4TBLo+9G8ftRvGpw/7c6hnLvBOroyeMjL2c00YL4yPWfu9BU9IQVs4k7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4k7DuK9/g9wMq6xwOAww6MU0rS0YefADpcf6etTkGDYNyyQcORclRUcLKeEWYznOlznHW4naSvq7UIP//Z"/></pattern></defs><path id="NoPath_kopia_28_" data-name="NoPath — kopia (28)" d="M0,0H44.087V20.053H0Z" fill="url(#pattern)"/></svg></span>
                                                            </iaixsl:when>
                                                            <iaixsl:when test="@id = 'installment'">
                                                                <img class="payment_icon" src="//:0">
                                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                </img>
                                                                <span class="payment_icon_primary"><svg xmlns="http://www.w3.org/2000/svg" width="25.418" height="25.418" viewBox="0 0 25.418 25.418"><g id="calendar_1_" transform="translate(0.25 0.25)"><path id="Path_23" data-name="Path 23" d="M22.842,2.336H19.467V.779a.779.779,0,0,0-1.557,0V2.336H13.238V.779a.779.779,0,0,0-1.557,0V2.336H7.008V.779a.779.779,0,0,0-1.557,0V2.336H2.077A2.076,2.076,0,0,0,0,4.412V22.841a2.077,2.077,0,0,0,2.077,2.077H22.842a2.076,2.076,0,0,0,2.076-2.077V4.412A2.075,2.075,0,0,0,22.842,2.336Zm.519,20.505a.52.52,0,0,1-.519.519H2.077a.52.52,0,0,1-.519-.519V4.412a.52.52,0,0,1,.519-.519H5.451V5.451a.779.779,0,0,0,1.557,0V3.893H11.68V5.451a.779.779,0,0,0,1.557,0V3.893H17.91V5.451a.779.779,0,0,0,1.557,0V3.893h3.375a.519.519,0,0,1,.519.519Z" fill="#333" stroke="#333" stroke-width="0.5"/><rect id="Rectangle_18" data-name="Rectangle 18" width="3.115" height="2.336" transform="translate(5.451 9.344)" fill="#333" stroke="#333" stroke-width="0.5"/><rect id="Rectangle_19" data-name="Rectangle 19" width="3.115" height="2.336" transform="translate(5.451 13.238)" fill="#333" stroke="#333" stroke-width="0.5"/><rect id="Rectangle_20" data-name="Rectangle 20" width="3.115" height="2.336" transform="translate(5.451 17.131)" fill="#333" stroke="#333" stroke-width="0.5"/><rect id="Rectangle_21" data-name="Rectangle 21" width="3.115" height="2.336" transform="translate(10.902 17.131)" fill="#333" stroke="#333" stroke-width="0.5"/><rect id="Rectangle_22" data-name="Rectangle 22" width="3.115" height="2.336" transform="translate(10.902 13.238)" fill="#333" stroke="#333" stroke-width="0.5"/><rect id="Rectangle_23" data-name="Rectangle 23" width="3.115" height="2.336" transform="translate(10.902 9.344)" fill="#333" stroke="#333" stroke-width="0.5"/><rect id="Rectangle_24" data-name="Rectangle 24" width="3.115" height="2.336" transform="translate(16.352 17.131)" fill="#333" stroke="#333" stroke-width="0.5"/><rect id="Rectangle_25" data-name="Rectangle 25" width="3.115" height="2.336" transform="translate(16.352 13.238)" fill="#333" stroke="#333" stroke-width="0.5"/><rect id="Rectangle_26" data-name="Rectangle 26" width="3.115" height="2.336" transform="translate(16.352 9.344)" fill="#333" stroke="#333" stroke-width="0.5"/></g></svg></span>
                                                            </iaixsl:when>
                                                            <iaixsl:when test="@id = 'card'">
                                                                <img class="payment_icon" src="//:0">
                                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                </img>
                                                                <span class="payment_icon_primary"><svg xmlns="http://www.w3.org/2000/svg" width="32" height="20.571" viewBox="0 0 32 20.571"><g id="Component_3_2" data-name="Component 3 – 2" transform="translate(0)"><g id="Rectangle_17" data-name="Rectangle 17" transform="translate(32) rotate(90)" fill="#fff" stroke="#333" stroke-width="1.7"><rect width="16" height="21.714" rx="2" stroke="none"/><rect x="0.85" y="0.85" width="14.3" height="20.014" rx="1.15" fill="none"/></g><g id="Rectangle_16" data-name="Rectangle 16" transform="translate(21.714 4.571) rotate(90)" fill="#fff" stroke="#333" stroke-width="1.7"><rect width="16" height="21.714" rx="2" stroke="none"/><rect x="0.85" y="0.85" width="14.3" height="20.014" rx="1.15" fill="none"/></g><line id="Line_5" data-name="Line 5" y2="20.571" transform="translate(21.143 12) rotate(90)" fill="none" stroke="#333" stroke-width="1.7"/><line id="Line_6" data-name="Line 6" y2="19.429" transform="translate(20 15.429) rotate(90)" fill="none" stroke="#333" stroke-width="1.7"/></g></svg></span>
                                                            </iaixsl:when>
                                                            <iaixsl:when test="@id = 'simple_transfer'">
                                                                <img class="payment_icon" src="//:0">
                                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                </img>
                                                                <span class="payment_icon_primary"><svg xmlns="http://www.w3.org/2000/svg" width="29.654" height="29.567" viewBox="0 0 29.654 29.567"><g id="Component_2_1" data-name="Component 2 – 1" transform="translate(0 0)"><path id="Path_32" data-name="Path 32" d="M311.105,359.2h7.7v1.736h-7.7Zm0,0" transform="translate(-293.086 -338.391)" fill="#333"/><path id="Path_31" data-name="Path 31" d="M234.352,419.145H246.5v1.736H234.352Zm0,0" transform="translate(-220.78 -394.869)" fill="#333"/><path id="Path_30" data-name="Path 30" d="M22.292,13.431,29.08,4.156a2.606,2.606,0,1,0-4.188-3.1L22.576,4.211,20.121,2.358,15.247,8.824,16.633,9.87l3.829-5.08,1.087.821-5.738,7.82H0V29.566H29.655V13.431Zm4-11.345a.87.87,0,0,1,1.219-.177.873.873,0,0,1,.174,1.217L25.354,6.308,23.962,5.257Zm-1.96,5.623L15.449,19.842l-1.433-1.031L22.935,6.657ZM12.8,20.466l.187-.255,1.435,1.032-.174.237-1.792.9ZM27.918,27.83H1.737V15.167h12.8l-3.373,4.6L10.137,25.5,15.4,22.842l4.525-6.184,1.092-1.492h6.9Zm0,0" transform="translate(0 0.001)" fill="#333"/></g></svg></span>
                                                            </iaixsl:when>
                                                        </iaixsl:choose>
                                                    </span>
                                                    <iaixsl:if test="not(@id = 'blik' or @id = 'simple_transfer')">
                                                        <span class="expand_button"><i class="icon-angle-down"></i></span>
                                                    </iaixsl:if>
                                                </span>

                                            </label>
                                            

                                            <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@group = $groupID] and not(@id = 'blik')  and not(@id = 'simple_transfer')">
                                                <div class="payment_content">
                                                    <a class="close_popup_payment" href="#close">x</a>
                                                    <iaixsl:for-each select="/shop/page/order1/prepaid_methods/item[@group = $groupID]">
                                                        <div class="prepaid_payment">

                                                            <iaixsl:attribute name="id">payment_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="title">Klik om deze betaalmethode te selecteren</iaixsl:attribute>
                                                            


                                                            <input name="payform_id" type="radio" class="orderdetails_radio">
                                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="id">payform_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                                                    <iaixsl:if test="@checked='true'">
                                                                        <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                                                    </iaixsl:if>
                                                                </iaixsl:if>
                                                            </input>


                                                            <label class="prepaid_payment_sub">
                                                                <iaixsl:attribute name="for">payform_<iaixsl:value-of select="@id"/></iaixsl:attribute>


                                                                <iaixsl:if test="@id = '190'">
                                                                    <input value="" type="hidden" name="voucher_id" disabled="disabled" style="display:none;"/>
                                                                    <input value="" type="hidden" name="pin_value" disabled="disabled" style="display:none;"/>
                                                                </iaixsl:if>

                                                                <iaixsl:if test="@id = '2'">
                                                                    <input value="" type="text" name="voucher_id" disabled="disabled" style="display:none;"/>
                                                                </iaixsl:if>

                                                                <span class="prepaid_payment_header">
                                                                    <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                                                                </span>

                                                                <iaixsl:if test="@icon != ''">
                                                                    <img class="prepaid_payment_icon"><iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute><iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute></img>
                                                                </iaixsl:if>
                                                            </label>

                                                            <iaixsl:if test="@description and not(@description = ' ')">
                                                                <div class="prepaid_payment_description">
                                                                    <iaixsl:attribute name="id">description_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                    <iaixsl:if test="@description and not(@description = ' ')">
                                                                        <iaixsl:value-of disable-output-escaping="yes" select="@description"/>
                                                                        <iaixsl:if test="(@id = '28') and (@allProducts = '0')"><span class="order1_payment_lukaswarning">Niet alle producten die in de winkelwagen zijn geplaatst, kunnen op afbetaling door Lukas Bank worden gekocht. Ga naar de details van elk product om na te gaan welke een dergelijke aankoop mogelijk maken. Indien u kiest voor aankoop in termijnen, zal de betaling voor deze producten afzonderlijk moeten worden verricht met behulp van andere betalingsmethoden.</span></iaixsl:if>
                                                                    </iaixsl:if>
                                                                </div>
                                                            </iaixsl:if>
                                                        </div>
                                                    </iaixsl:for-each>
                                                </div>
                                            </iaixsl:if>
                                        </div>
                                    </iaixsl:if>
                                </iaixsl:for-each>
                    </iaixsl:if>
                </div>
            </div>
            

            <script class="ajaxLoad">
                app_shop.vars.Order1.working_days_arr = [<iaixsl:for-each select="page/order1/shipping/delivery[@checked='true']/working_days/item"><iaixsl:if test="position() != 1">,</iaixsl:if><iaixsl:value-of select="translate(.,'7','0')"/></iaixsl:for-each>];app_shop.vars.Order1.showFields_arr = ['<iaixsl:value-of select="page/order1/shipping/delivery[@checked='true']/@id"/>','<iaixsl:choose><iaixsl:when test="@sameday = 'true'">n</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="page/order1/shipping/delivery[@checked='true']/@calendar"/></iaixsl:otherwise></iaixsl:choose>','<iaixsl:value-of select="page/order1/shipping/delivery[@checked='true']/@deliverytime"/>', <iaixsl:choose><iaixsl:when test="((page/order1/shipping/delivery[@checked='true']/@type = 'dvp') and (/shop/page/order1/additional/advance/@cash_on_delivery='true')) or (page/order1/shipping/delivery[@checked='true']/@type = 'prepaid')">'1','</iaixsl:when><iaixsl:otherwise>'0','</iaixsl:otherwise></iaixsl:choose><iaixsl:value-of select="page/order1/shipping/delivery[@checked='true']/@time"/>','<iaixsl:value-of select="page/order1/shipping/delivery[@checked='true']/@deliverytime_days"/>#<iaixsl:value-of select="page/order1/shipping/delivery[@checked='true']/@deliverytime_hours"/>#<iaixsl:value-of select="page/order1/shipping/delivery[@checked='true']/@deliverytime_minutes"/>#<iaixsl:choose><iaixsl:when test="page/order1/shipping/delivery[@checked='true']/@today='true'">0</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="page/order1/shipping/delivery[@checked='true']/@week_day"/></iaixsl:otherwise></iaixsl:choose>#<iaixsl:value-of select="page/order1/shipping/delivery[@checked='true']/@week_amount"/>'];
            </script>



            
            <input type="hidden" value="0" name="shipping_for_points"/>



            <iaixsl:if test="/shop/page/order1/insurance_products/item[@service='TrustedShops']">

                <div id="insurance_products_order1" style="padding: 10px 0;">
                    <div id="tsInnerBox" style="text-align: left; border: 1px solid rgb(102, 102, 102); overflow: hidden; padding: 0 10px 15px; color: rgb(102, 102, 102); margin: 0pt auto;">

                        <div id="tsName" style="font-weight: bold; padding: 10px; border-left: 6px solid rgb(102, 102, 102); margin: -5px 0 15px -10px">
                            <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@name"/>
                        </div>
                        <div style="clear:both;"/>
                        <div id="tsSeal" style="float: left; padding-right: 20px; padding-left: 15px;padding-bottom:20px;">
                            <a target="_blank">
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@icon_target"/></iaixsl:attribute>
                                <img>
                                    <iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@icon_src"/></iaixsl:attribute>
                                    <iaixsl:attribute name="title"><iaixsl:value-of select="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@icon_title"/></iaixsl:attribute>
                                </img>
                            </a>
                        </div>
                        <div id="tsCheck" style="padding-bottom: 10px;">
                            <label>
                                <input type="checkbox" name="add_insurance" value="true" style="margin-right: 6px;">
                                    <iaixsl:if test="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@checked = 'true'">
                                        <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                    </iaixsl:if>
                                </input>
                                <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@product_desc"/>
                            </label>
                        </div>
                        <div id="tsText">
                            <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@description"/>
                        </div>
                    </div>



                </div>

            </iaixsl:if>

            

            <iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'">
                <div class="unknown_delivery_time">
                    <i class="icon-truck"></i>
                    <div>
                        <b>Er zit een product in het winkelwagentje dat wordt binnengebracht om te bestellen.</b>Om de tijd in te schatten die nodig is om uw bestelling klaar te maken voor verzending,<a target="_blank">
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>neem contact op met het winkelpersoneel.</a>
                    </div>
                </div>
            </iaixsl:if>


            <div class="basketedit_summary_container">
                <div class="basketedit_summary">
                    <div class="basketedit_summary_sub">

                        <input type="hidden" name="preview" value="true"/>

                        <div class="basketedit_summary_left">

                            <iaixsl:if test="/shop/client_data/client_balance/limit/@value &gt; '0'">
                                <div class="basketedit_limit_section">
                                    <div class="basketedit_product_summary">
                                        <label>Schuldlimiet:</label>
                                        <strong class="limit_total">

                                            <iaixsl:value-of select="/shop/client_data/client_balance/limit/@value_formatted"/>

                                        </strong>
                                    </div>

                                    <div class="basketedit_product_summary">
                                        <label>Resterende kredietlimiet:</label>
                                        <strong class="limit_touse">

                                            <iaixsl:value-of select="/shop/client_data/client_balance/limit/@to_use_formatted"/>

                                        </strong>
                                    </div>
                                </div>
                            </iaixsl:if>

                            <iaixsl:if test="(page/basket-details/summary/points/@debit) and (page/basket-details/summary/points/@debit &gt; 0)">
                                <div class="basketedit_summary_debit">Na betaling van deze bestelling krijgt u<b><iaixsl:value-of select="page/basket-details/summary/points/@debit"/><span>punt</span></b>in het loyaliteitsprogramma.<iaixsl:if test="/shop/basket/@client_points != '0'">Je hebt momenteel<b><iaixsl:value-of select="/shop/basket/@client_points"/><span>punt</span></b>
                                    </iaixsl:if>
                                </div>
                            </iaixsl:if>

                        </div>



                        <div class="basketedit_summary_right">

                            <div class="basketedit_calculations">
                                <div class="basketedit_product_summary">
                                    <label>Contractwaarde:</label>

                                    <strong class="worth_value">

                                        <iaixsl:value-of select="/shop/page/basket-details/summary/money/@beforerebate_formatted"/>

                                    </strong>
                                </div>
                                <div class="basketedit_product_summary">
                                    <label>Portokosten:</label>

                                    <strong class="shipping_value">
                                        <iaixsl:attribute name="class">shipping_value plus_sign</iaixsl:attribute>--</strong>
                                </div>
                                <div class="basketedit_product_summary">
                                    <label>Kosten betalingsformulier:</label>

                                    <strong class="paymentcost_value">
                                        <iaixsl:attribute name="class">paymentcost_value plus_sign</iaixsl:attribute>--</strong>
                                </div>
                                <div class="basketedit_product_summary">
                                    <label>Kosten van de verzekering:</label>

                                    <strong class="insurance_value">
                                        <iaixsl:attribute name="class">insurance_value plus_sign</iaixsl:attribute>--</strong>
                                </div>







                                <div class="basketedit_rabats_summary">
                                    <label>Korting:</label>

                                    <strong>
                                        <iaixsl:attribute name="class">total_rebate minus_sign</iaixsl:attribute>--</strong>
                                </div>


                                



                                <iaixsl:if test="/shop/client_data/client_balance/balance/@is_selected_and_allowed_order='true' and /shop/client_data/client_balance/balance[@is_selected_and_allowed_order='true']/@value != 0">
                                    <div class="basketedit_product_summary">
                                        <label>Betaald uit het saldo:<br/>(te veel betaald op klantenrekening)</label>

                                        <strong class="saldo_value">
                                            <iaixsl:attribute name="class">saldo_value minus_sign</iaixsl:attribute>

                                            <iaixsl:value-of select="/shop/client_data/client_balance/balance[@is_selected_and_allowed_order='true']/@currency_value_formatted"/>

                                        </strong>
                                    </div>
                                </iaixsl:if>

                                <div style="clear:both"/>

                            </div>

                            <div class="basketedit_total_summary">
                                <label>Te betalen:</label>
                                <iaixsl:choose>
                                    <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice2)">
                                        <strong class="topay_value">


                                            <iaixsl:value-of select="/shop/page/basket-details/summary/money/@total_formatted"/>

                                            <span style="font-size:16px;">(netto)</span>
                                        </strong>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <strong class="topay_value">

                                            <iaixsl:value-of select="/shop/page/basket-details/summary/money/@total_formatted"/>

                                        </strong>
                                    </iaixsl:otherwise>
                                </iaixsl:choose>
                                <iaixsl:if test="(basket/@points_used) and (basket/@points_used != 0)">
                                    <b>
                                         + 
                                        <span><iaixsl:value-of select="basket/@points_used"/>punt</span>
                                    </b>
                                </iaixsl:if>
                            </div>

                            <iaixsl:if test="$txt_68638_rpoz">
                                <div style="clear:both"/>
                                <div class="basketedit_product_summary prepaid_discount_wrapper">
                                    <label>
                                        <iaixsl:value-of select="$txt_68638_rpoz"/>
                                        <span id="discount_paiment_name"/>ontvangt u een extra korting:</label>

                                    <strong class="prepaid_discount_value">
                                        <iaixsl:attribute name="class">prepaid_discount_value minus_sign</iaixsl:attribute>--</strong>
                                </div>
                            </iaixsl:if>

                            
                            <iaixsl:if test="$txt_60826_advance_a and (/shop/page/order1/additional/advance/@value &gt; 0)">
                                <div class="basketedit_product_summary advance">
                                    <iaixsl:attribute name="style">display: none;</iaixsl:attribute>
                                    <iaixsl:if test="((page/order1/shipping/delivery[@checked='true']/@type = 'dvp') and (/shop/page/order1/additional/advance/@cash_on_delivery='true')) or ((page/order1/shipping/delivery[@checked='true']/@type = 'prepaid') and (/shop/page/order1/additional/advance/@prepaid='true'))">
                                        <iaixsl:attribute name="style">display: block;</iaixsl:attribute>
                                    </iaixsl:if>
                                    <label>Aanbetaling vereist:</label>
                                    
                                    <strong class="advance_value">--</strong>
                                </div>
                            </iaixsl:if>

                            

                        </div>


                        <div class="basketedit_summary_buttons table_display">

                            <div class="btn_wrapper">

                                <iaixsl:if test="count(page/order1/wrappers/wrapper)">
                                    <iaixsl:if test="not(page/order1/formaction = 'order2.php') and not(page/order1/formaction = 'order2.php?preview=true')">
                                        <label class="wrappers_order" for="display_wrappers"><input type="checkbox" class="bg_53687" name="display_wrappers" value="true" id="display_wrappers"/>Vink dit vakje aan als u de bestelde producten in een extra verpakking wilt verpakken (bijvoorbeeld voor een cadeau).<br/></label>
                                    </iaixsl:if>
                                </iaixsl:if>

                            </div>

                            <iaixsl:if test="/shop/basket/delivery_time/@days and not(basket/@shipping_undefined = 'true')">

                                
                                <div class="basketedit_summary_shipment_time">
                                    <iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'"><iaixsl:attribute name="class">basketedit_summary_shipment_time hide</iaixsl:attribute></iaixsl:if>
                                    <iaixsl:variable name="wys_1_68242"><b>vandaag</b></iaixsl:variable>

                                    <iaixsl:if test="$wys_1_68242 and (/shop/basket/shipping_time/@week_amount = 0) and (/shop/basket/shipping_time/@hours = 0) and (/shop/basket/shipping_time/@minutes = 0)">
                                        <div class="shipping_time_order1">De bestelling is klaar voor verzending...<iaixsl:choose>
                                                <iaixsl:when test="/shop/basket/shipping_time/@today = 'true'">
                                                    <b>vandaag</b>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/basket/shipping_time/@week_day = 1">
                                                    <b>op maandag</b>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/basket/shipping_time/@week_day = 2">
                                                    <b>op dinsdag</b>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/basket/shipping_time/@week_day = 3">
                                                    <b>op woensdag</b>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/basket/shipping_time/@week_day = 4">
                                                    <b>op donderdag</b>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/basket/shipping_time/@week_day = 5">
                                                    <b>op vrijdag</b>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/basket/shipping_time/@week_day = 6">
                                                    <b>op zaterdag</b>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/basket/shipping_time/@week_day = 7">
                                                    <b>op zondag</b>
                                                </iaixsl:when>
                                            </iaixsl:choose>
                                        </div>

                                    </iaixsl:if>

                                    <span class="order1_delivery_time_pick_txt_1" style="display:none;">De zending zal bij u zijn binnen</span>
                                    <span class="order1_delivery_time_pick_txt_2" style="display:none;">De zending wordt geleverd op</span>
                                    <span class="order1_delivery_time_pick_txt_3" style="display:none;">Haal uw bestelling op voor</span>
                                    <span class="order1_delivery_time_pick_txt_4" style="display:none;">De bestelling is direct na ontvangst klaar voor afhaling.</span>

                                    <span class="order1_delivery_time_pick_txt_auto" style="display:none;">

                                    </span>


                                    <b>
                                        



                                        <iaixsl:choose>
                                            <iaixsl:when test="(/shop/basket/delivery_time/@days = 0) and (/shop/basket/delivery_time/@hours = 0) and (/shop/basket/delivery_time/@minutes = 0)">
                                                 24h. 
                                            </iaixsl:when>

                                            <iaixsl:otherwise>
                                                <iaixsl:if test="/shop/basket/delivery_time/@days &gt; 0">
                                                    <iaixsl:value-of select="/shop/basket/delivery_time/@days"/>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="/shop/basket/delivery_time/@days ='1'">dag</iaixsl:when>
                                                        <iaixsl:otherwise>dagen</iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </iaixsl:if>

                                                <iaixsl:choose>
                                                    <iaixsl:when test="$hours_68638">
                                                        <iaixsl:if test="/shop/basket/delivery_time/@hours &gt; 0">
                                                            <iaixsl:value-of select="/shop/basket/delivery_time/@hours"/>
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="/shop/basket/delivery_time/@hours &gt; 1">
                                                                    <iaixsl:value-of select="$hours_68638"/>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>uur</iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:if>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:if test="/shop/basket/delivery_time/@hours &gt; 0">
                                                            <iaixsl:value-of select="/shop/basket/delivery_time/@hours"/>uur</iaixsl:if>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>

                                                <iaixsl:if test="/shop/basket/delivery_time/@minutes &gt; 0">
                                                    <iaixsl:value-of select="/shop/basket/delivery_time/@minutes"/>minimaal</iaixsl:if>

                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </b>
                                </div>
                            </iaixsl:if>

                            <div class="btn_wrapper">


                                <button class="btn --solid --large --icon-right icon-angle-right order1_button" type="submit">Ga verder.</button>


                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </form>

        <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@id = '190']">
            <div id="giftcard_data" class="order1_giftcard_form_wrapp" style="display: none;">
                <div class="order1_giftcard_form" id="giftcard_form">
                    <span class="big_label">Cadeaubon</span>
                    <p>Betaal uw aankopen met uw Gift Card</p>
                    <div class="giftcard_status">
                        <div>
                            <strong/>
                            <small/>
                        </div>
                    </div>
                    <div class="giftcard_inputs">
                        <div class="form-group">
                            <label class="control-label col-12 col-sm-2">Nummer:</label>
                            <div class="has-feedback col-12 col-sm-12 has-required">
                                <input class="form-control" value="" name="voucher_id" type="text">
                                    <iaixsl:attribute name="placeholder">Voer uw kaartnummer in</iaixsl:attribute>
                                </input>
                                <span class="form-control-feedback"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-12 col-sm-2">PIN:</label>
                            <div class="has-feedback col-12 col-sm-12 has-required">
                                <input class="form-control" value="" name="pin_value" type="password">
                                    <iaixsl:attribute name="placeholder">Voer PIN-code in</iaixsl:attribute>
                                </input>
                                <span class="form-control-feedback"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-12 col-sm-2"/>
                        <div class="col-12 col-sm-8">
                            <button class="btn --solid --medium">Kaart goedkeuren</button>
                        </div>
                    </div>
                </div>
            </div>
        </iaixsl:if>

        <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@id = '2']">
            <div id="voucher_data" class="order1_voucher_form_wrapp" style="display: none;">
                <div class="order1_giftcard_form" id="voucher_form">
                    <span class="big_label">Product voucher</span>
                    <p>Betaal uw aankopen met een productvoucher</p>
                    <div class="giftcard_status">
                        <div>
                            <strong/>
                            <small/>
                        </div>
                    </div>
                    <div class="giftcard_inputs">
                        <div class="form-group">
                            <label for="order1_voucher" class="control-label col-12 col-sm-2">Nummer:</label>
                            <div class="has-feedback col-12 col-sm-12 has-required">
                                <input class="form-control" name="voucher_id" type="text" minlength="10"/>
                                <span class="form-control-feedback"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-12 col-sm-2"/>
                        <div class="col-12 col-sm-8">
                            <button class="btn --solid --medium">Goedkeuring voucher</button>
                        </div>
                    </div>
                    <small>Als u meer vouchers hebt, kunt u hun nummers invoeren bij het besteloverzicht.</small>
                </div>
            </div>
        </iaixsl:if>

<iaixsl:if test="/shop/page/order1/balance/@tradeCredit"> </iaixsl:if>
			<iaixsl:if test="/shop/page/order1/shipping/delivery/@loadCourierServicesUrl"> </iaixsl:if>

        <script class="ajaxLoad">
            var client_data_uses_vat = '<iaixsl:value-of select="/shop/client_data/@uses_vat"/>';
        </script>


        
        <div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();">ECHT NIET</div>
        
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
        <!--Menu kalendarz (menu_calendar, 107960.1)-->

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
            <script>
                  app_shop.runApp();
            </script>

            
            <iaixsl:if test="/shop/page/seolink_with_language_directory"/>

        
            <iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
                <iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_scripts')"/>
                <iaixsl:text disable-output-escaping="yes">&lt;/body&gt;&lt;/html&gt;</iaixsl:text>
            </iaixsl:if>
        </iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>
