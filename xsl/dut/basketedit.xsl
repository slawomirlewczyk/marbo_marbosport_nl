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
                                <span class="progress__description">Waarde:<iaixsl:value-of disable-output-escaping="yes" select="$hard_space"/><iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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

        <!--Koszyk - cms (basketedit_cms, 107581.1)-->
            <iaixsl:if test="page/basket-details/text/body">
                <div class="basket_cms cm">
                    <iaixsl:value-of disable-output-escaping="yes" select="page/basket-details/text/body"/>
                </div>
            </iaixsl:if>
        <!--Rabaty na stronie koszyka (basketedit_rebates, 115166.1)-->
        <iaixsl:variable name="showGifts"/>

        <iaixsl:if test="/shop/page/@type = 'basketedit'">
            <iaixsl:if test="/shop/page/rebates/@rebates_codes = 'y'">
                <div class="basketedit_rebatecodes_outline">
                    
                    <iaixsl:if test="/shop/page/rebates/code_details/@active = 'y'">
                        <div class="basketedit_rebatecode_title">
                            <span class="basketedit_rebatecode_title">Actieve kortingscode:</span>
                            <span class="basketedit_rebatecode_value">
                                <iaixsl:value-of select="/shop/page/rebates/code_details/@number"/>
                            </span>
                            <div class="basketedit_rebatecode_action">
                                <a id="a_remove_code" href="#">[usuń kod]</a>
                                <a id="a_change_code" href="#">[użyj innego kodu]</a>
                            </div>
                            <form action="/settings.php?from=basket" method="post" id="change_code">
                                <input class="basketedit_rebatecode_input" name="rebates_codes" type="text" value="" required="required"/>
                                <input id="global_rebates_codes" name="global_rebates_codes" value="add" type="hidden"/>
                                <input class="btn --outline basketedit_change_code" type="submit" value="">
                                    <iaixsl:attribute name="value">Verandering</iaixsl:attribute>
                                </input>
                            </form>
                        </div>
                        <div class="basketedit_rebatecode_r">
                            <iaixsl:if test="/shop/page/rebates/code_details/@min_order &gt; 0">
                                <div class="basketedit_rebatecode_title_out --small">
                                    <span class="basketedit_rebatecode_title">Vereiste waarde van de producten in het mandje:</span>
                                    <span class="basketedit_rebatecode_value">
                                        <iaixsl:value-of select="/shop/page/rebates/code_details/@min_order"/><iaixsl:value-of select="$signbetweenpricecurrency"/><iaixsl:value-of select="/shop/currency/@name"/>
                                    </span>
                                </div>
                            </iaixsl:if>
                            <iaixsl:if test="/shop/page/rebates/code_details/@expires">
                                <div class="basketedit_rebatecode_title_out --small">
                                    <span class="basketedit_rebatecode_title">Kortingscode geldig tot:</span>
                                    <span class="basketedit_rebatecode_value">
                                        <iaixsl:value-of select="/shop/page/rebates/code_details/@expires"/>
                                    </span>
                                </div>
                            </iaixsl:if>
                        </div>
                    </iaixsl:if>
                    
                    <iaixsl:if test="/shop/page/rebates/code_details/@active = 'n'">
                        <iaixsl:if test="/shop/rebate_code_delete_client_advanced_rebate/@active = 'y'">
                            <div id="basketedit_rebatecode_activate_info" style="display:none;">Als u een kortingscode invoert, wordt de aan uw account toegekende korting gewist.</div>
                        </iaixsl:if>

                        <div class="f-group --checkbox">
                          <input type="checkbox" class="f-control" id="showRebate"/>
                          <label class="f-label" for="showRebate">Ik heb een kortingscode en die wil ik gebruiken</label>
                          <form action="/settings.php?from=basket" method="post">
                              
                              <input onclick="$('#basketedit_rebatecode_activate_info').fadeIn('slow');" class="basketedit_rebatecode_input" name="rebates_codes" type="text" value="" required="required"/>
                              <input id="global_rebates_codes" name="global_rebates_codes" value="add" type="hidden"/>
                              <input class="btn --outline basketedit_submit_code" type="submit" value="">
                                  <iaixsl:attribute name="value">Activeren</iaixsl:attribute>
                              </input>
                          </form>
                        </div>
                    </iaixsl:if>

                </div>
            </iaixsl:if>


            <iaixsl:if test="(/shop/rebatesLocal and (/shop/rebatesLocal/rebate/@value &gt; 0 )) or /shop/page/basket-details/rebate_local/active/products/product or /shop/page/basket-details/rebate_local/rebates/rebate/products/product or /shop/page/rebates_for_points/rebate">
                <div id="basketedit_gifts" class="col-12">

                    <iaixsl:if test="/shop/page/basket-details/rebate_local/active/products/product or /shop/page/basket-details/rebate_local/rebates/rebate/products/product">

                        <div class="big_label basketedit_gifts_label">
                            <strong>Wij geven de voorkeur aan grote bestellingen</strong>
                        </div>

                        <div class="basketedit_gifts_wrapper">
                            <iaixsl:if test="/shop/page/basket-details/rebate_local/active/products/product">
                                <p class="gift_info">Uw bestelling overschrijdt<b><iaixsl:if test="$signbeforeprice = 'true'"><iaixsl:value-of select="/shop/currency/@name"/><iaixsl:value-of select="$signbetweenpricecurrency"/></iaixsl:if><iaixsl:value-of select="/shop/page/basket-details/rebate_local/active/@threshold"/><iaixsl:if test="$signbeforeprice = 'false'"><iaixsl:value-of select="$signbetweenpricecurrency"/><iaixsl:value-of select="/shop/currency/@name"/></iaixsl:if></b>zodat u uw geschenk kunt kiezen</p>
                            </iaixsl:if>
                            <ul>
                                <iaixsl:for-each select="/shop/page/basket-details/rebate_local/active">
                                    <iaixsl:for-each select="products/product">
                                        <li class="gift_enable col-md-4 col-sm-6 col-12">
                                            <iaixsl:if test="@id=/shop/page/basket-details/rebate_local/active/selected/product/@id">
                                                <iaixsl:attribute name="class">gift_enable col-md-4 col-sm-6 col-12 gift_active</iaixsl:attribute>
                                            </iaixsl:if>
                                            <div class="gift_item_sub">
                                                <input type="radio" name="radio_gift">
                                                    <iaixsl:if test="@id=/shop/page/basket-details/rebate_local/active/selected/product/@id">
                                                        <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                                    </iaixsl:if>
                                                </input>
                                                <input type="hidden" name="product[0]">
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                </input>
                                                <input type="hidden" value="1" name="gift[0]"/>
                                                <input type="hidden" value="1" name="set_quantity[0]"/>

                                                <div class="gift_item_icon">
                                                    <img>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="name"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="icon_small"/></iaixsl:attribute>
                                                    </img>
                                                </div>
                                                <div class="gift_item_info">
                                                    <h3>
                                                        <iaixsl:if test="@id=/shop/page/basket-details/rebate_local/active/selected/product/@id">
                                                            <div id="your_gift_txt">UW PRESENT:</div>
                                                        </iaixsl:if>
                                                        <strong class="gift_item_name"><iaixsl:value-of select="name"/></strong>
                                                    </h3>

                                                    <iaixsl:choose>
                                                        <iaixsl:when test="sizes/size/@type = 'uniw' or not(sizes/size)">
                                                            <input type="hidden" name="size[0]"><iaixsl:attribute name="value"><iaixsl:value-of select="sizes/size/@type"/></iaixsl:attribute></input>
                                                        </iaixsl:when>
                                                        <iaixsl:when test="count(sizes/size) = 1">
                                                            <input type="hidden" name="size[0]"><iaixsl:attribute name="value"><iaixsl:value-of select="sizes/size/@type"/></iaixsl:attribute></input>
                                                            <div class="gift_choose_size">
                                                                <label/>

                                                                <iaixsl:for-each select="sizes/size">
                                                                    <iaixsl:value-of select="@description"/>
                                                                </iaixsl:for-each>
                                                            </div>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <div class="gift_choose_size">
                                                                <label/>
                                                                <select>
                                                                    <iaixsl:for-each select="sizes/size[@amount != 0]">
                                                                        <option>
                                                                            <iaixsl:if test="@amount = '0'">
                                                                                <iaixsl:attribute name="class">no_gift</iaixsl:attribute>
                                                                            </iaixsl:if>

                                                                            <iaixsl:if test="@type=/shop/page/basket-details/rebate_local/active/selected/product/@size and ../../@id=/shop/page/basket-details/rebate_local/active/selected/product/@id">
                                                                                <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@type"/></iaixsl:attribute><iaixsl:value-of select="@description"/>
                                                                        </option>
                                                                    </iaixsl:for-each>
                                                                </select>
                                                                <input type="hidden" name="size[0]"><iaixsl:attribute name="value"><iaixsl:value-of select="sizes/size/@type"/></iaixsl:attribute></input>
                                                            </div>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>

                                                    <iaixsl:if test="@link">
                                                        <div class="gift_tooltip" style="display:none;">
                                                            <a target="_blank" class="btn --outline --icon-left icon-plus gift_description">
                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>meer</a>
                                                            <div class="btn --outline --icon-left icon-plus gift_choose">selecteer</div>
                                                            <div class="btn --outline --icon-left icon-minus gift_resign">ontslag nemen</div>
                                                        </div>
                                                    </iaixsl:if>

                                                    <iaixsl:choose>
                                                        <iaixsl:when test="price/@beforerebate &gt; 0">
                                                            <div class="gift_price">
                                                                <b>Waarde</b>
                                                                <span>
                                                                    <iaixsl:value-of select="price/@beforerebate_formatted"/>
                                                                </span>- voor u gratis!</div>
                                                        </iaixsl:when>
                                                        <iaixsl:when test="price/@value &gt; 0">
                                                            <div class="gift_price">
                                                                <b>Waarde</b>
                                                                <span>
                                                                    <iaixsl:value-of select="price/@price_formatted"/>
                                                                </span>- voor u gratis!</div>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </div>
                                            </div>
                                        </li>
                                    </iaixsl:for-each>
                                </iaixsl:for-each>

                                <iaixsl:for-each select="/shop/page/basket-details/rebate_local/rebates/rebate[products/product][1]">
                                    <iaixsl:if test="products/product">
                                        <li class="gift_label_needs">
                                            <iaixsl:choose>
                                                <iaixsl:when test="(@left_price &gt; 0) and (@left_quantity &gt; 0)">
                                                    <span>Om een geschenk te ontvangen, verhoogt u uw bestelling met een minimum van<iaixsl:value-of select="@left_price_formatted"/>en selecteer nog<iaixsl:value-of select="@left_quantity"/> 
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="(@left_quantity = '1' )">
                                                                 inny towar.
                                                            </iaixsl:when>
                                                            <iaixsl:when test=" (substring(@left_quantity, string-length(@left_quantity), 1) = '2') or (substring(@left_quantity, string-length(@left_quantity), 1)='3') or (substring(@left_quantity, string-length(@left_quantity), 1)='4') ">  inne towary
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>andere goederen.</iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    </span>
                                                </iaixsl:when>
                                                <iaixsl:when test="not(@left_price &gt; 0) and (@left_quantity &gt; 0)">
                                                    <span>Om uw geschenk te ontvangen, kiest u nog steeds<iaixsl:value-of select="@left_quantity"/>  <iaixsl:choose> <iaixsl:when test="(@left_quantity = '1' )">  inny towar. </iaixsl:when> <iaixsl:when test=" (substring(@left_quantity, string-length(@left_quantity), 1) = '2') or (substring(@left_quantity, string-length(@left_quantity), 1)='3') or (substring(@left_quantity, string-length(@left_quantity), 1)='4') ">  inne towary </iaixsl:when> <iaixsl:otherwise>andere goederen.</iaixsl:otherwise> </iaixsl:choose>
                                                    </span>
                                                </iaixsl:when>
                                                <iaixsl:when test="(@left_price &gt; 0) and not(@left_quantity &gt; 0)">
                                                    <span>Om een geschenk te ontvangen, verhoogt u uw bestelling met een minimum van<iaixsl:value-of select="@left_price_formatted"/>
                                                    </span>
                                                </iaixsl:when>
                                            </iaixsl:choose>
                                        </li>
                                    </iaixsl:if>
                                    <iaixsl:for-each select="products/product">
                                        <li class="gift_disable showTip_gift col-md-4 col-sm-6 col-12">
                                            <div class="gift_item_sub">
                                                <input type="radio" disabled="disabled" name="radio_gift"><iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute></input>
                                                <div class="gift_item_icon">
                                                    <img>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="name"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="icon_small"/></iaixsl:attribute>
                                                    </img>
                                                </div>
                                                <div class="gift_item_info">
                                                    <h3>
                                                        <strong class="gift_item_name"><iaixsl:value-of select="name"/></strong>
                                                    </h3>

                                                    <iaixsl:choose>
                                                        <iaixsl:when test="sizes/size/@type = 'uniw' or not(sizes/size)">
                                                            <input type="hidden" name="size[0]"><iaixsl:attribute name="value"><iaixsl:value-of select="sizes/size/@type"/></iaixsl:attribute></input>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <div class="gift_choose_size">
                                                                <label/>

                                                                <iaixsl:for-each select="sizes/size">
                                                                    <iaixsl:value-of select="@description"/><iaixsl:if test="not(position()=last())">, </iaixsl:if>
                                                                </iaixsl:for-each>
                                                            </div>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>

                                                    <iaixsl:if test="@link">
                                                        <a target="_blank">
                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>meer</a>
                                                    </iaixsl:if>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="price/@beforerebate &gt; 0">
                                                            <div class="gift_price">
                                                                <b>Waarde</b>
                                                                <span>
                                                                    <iaixsl:value-of select="price/@beforerebate_formatted"/>
                                                                </span>
                                                            </div>
                                                        </iaixsl:when>
                                                        <iaixsl:when test="price/@value &gt; 0">
                                                            <div class="gift_price">
                                                                <b>Waarde</b>
                                                                <span>
                                                                    <iaixsl:value-of select="price/@price_formatted"/>
                                                                </span>
                                                            </div>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </div>
                                            </div>
                                        </li>
                                    </iaixsl:for-each>
                                </iaixsl:for-each>
                            </ul>
                        </div>
                    </iaixsl:if>

                    <iaixsl:if test="/shop/page/rebates_for_points/rebate">
                        <div class="rebates_for_points_wrapper">
                            <iaixsl:if test="(/shop/rebatesLocal and (/shop/rebatesLocal/rebate/@value &gt; 0 )) or /shop/page/basket-details/rebate_local/active/products/product or /shop/page/basket-details/rebate_local/rebates/rebate/products/product">
                                <iaixsl:attribute name="style">padding-top: 20px;</iaixsl:attribute>
                            </iaixsl:if>
                            <table class="menu_rebates">
                                <tr>
                                    <th>
                                        <span class="rebates_for_points col-12">Punten inwisselen voor korting</span>
                                    </th>
                                </tr>
                                <tr>
                                    <td class="rebates_for_points">
                                        <iaixsl:for-each select="/shop/page/rebates_for_points/rebate">
                                            <div class="col-lg-4 col-md-6 col-12">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="@order_link">
                                                        <a class="btn --solid --medium for_points">
                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="@order_link"/></iaixsl:attribute>

                                                            <iaixsl:if test="/shop/rebate_for_profit_points_delete_client_advanced_rebate/@active = 'y'">
                                                                <iaixsl:attribute name="title">Wanneer punten worden ingewisseld voor een korting, wordt de aan uw account toegekende korting verwijderd.</iaixsl:attribute>
                                                                <iaixsl:attribute name="data-title">Potwierdzenie wymiany punktów na rabat</iaixsl:attribute>

                                                                <iaixsl:attribute name="data-button_txt">wymień</iaixsl:attribute>

                                                                <iaixsl:attribute name="data-confirmation_link">true</iaixsl:attribute>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="/shop/rebate_for_profit_points_delete_rebate_code/@active = 'y'">
                                                                <iaixsl:attribute name="title">Wanneer de punten worden ingewisseld voor een korting, wordt de korting die aan de kortingscode is toegekend, verwijderd.</iaixsl:attribute>
                                                                <iaixsl:attribute name="data-title">Potwierdzenie wymiany punktów na rabat</iaixsl:attribute>
                                                                <iaixsl:attribute name="data-button_txt">wymień</iaixsl:attribute>

                                                                <iaixsl:attribute name="data-confirmation_link">true</iaixsl:attribute>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="@selected = 'selected'">
                                                                <iaixsl:attribute name="data-selected">true</iaixsl:attribute>
                                                                <iaixsl:if test="/shop/rebate_for_profit_points_delete_rebate_code/@active = 'y'">
                                                                    <iaixsl:attribute name="data-confirmation_link">true</iaixsl:attribute>
                                                                </iaixsl:if>
                                                                <iaixsl:if test="/shop/rebate_for_profit_points_delete_client_advanced_rebate/@active = 'y'">
                                                                    <iaixsl:attribute name="data-confirmation_link">true</iaixsl:attribute>
                                                                </iaixsl:if>
                                                            </iaixsl:if>

                                                            <span class="for_points_value">
                                                                <iaixsl:if test="@selected = 'selected'">
                                                                    <strong>Uw korting:</strong>
                                                                </iaixsl:if>
                                                                <span>Korting<iaixsl:choose>
                                                                        <iaixsl:when test="@rebate_type='quota'">
                                                                            <iaixsl:value-of select="format-number(@threshold, '#')"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="/shop/currency/@name"/>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>
                                                                            <iaixsl:value-of select="format-number(@threshold, '#')"/>%
                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </span>
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="@permanent='true'">
                                                                        na stałe
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>voor deze bestelling</iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                            </span>
                                                            <span class="for_points_points">
                                                                <iaixsl:value-of select="format-number(@points, '#')"/>punt</span>
                                                        </a>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <div class="btn --solid --medium for_points">
                                                            <iaixsl:if test="@selected = 'selected'">
                                                                <iaixsl:attribute name="data-selected">true</iaixsl:attribute>
                                                            </iaixsl:if>
                                                            <span class="for_points_value">
                                                                <iaixsl:if test="@selected = 'selected'">
                                                                    <strong>Uw korting:</strong>
                                                                </iaixsl:if>
                                                                <span>Korting<iaixsl:choose>
                                                                        <iaixsl:when test="@rebate_type='quota'">
                                                                            <iaixsl:value-of select="@threshold_formatted"/>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>
                                                                            <iaixsl:value-of select="@threshold"/>%
                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </span>
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="@permanent='true'">
                                                                        na stałe
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>voor deze bestelling</iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                            </span>
                                                            <span class="for_points_points">
                                                                <iaixsl:value-of select="@points"/>punt</span>
                                                        </div>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </div>
                                        </iaixsl:for-each>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </iaixsl:if>
                </div>
            </iaixsl:if>
        </iaixsl:if>
        <!--Lista produktów w koszyku (basketedit_productslist, 115214.1)-->

		
		<iaixsl:variable name="txt_50001_025a">Przed realizacją zamówienia z płatnością przy odbiorze wymagana jest zaliczka na ten towar: </iaixsl:variable>
		<iaixsl:variable name="txt_67332_am">Aktualnie mamy </iaixsl:variable>
		<iaixsl:variable name="txt_67332_wm"> w magazynie. Dodatkowa ilość znajduje się w magazynie naszego dostawcy.</iaixsl:variable>
		<iaixsl:variable name="setIconLarge"/>
		<iaixsl:variable name="wholesalerPrice">true</iaixsl:variable>

		<iaixsl:if test="page/@type = 'basketedit'">
			<section id="Basket" class="basket col-12 col-md-8">
                <h2 class="basket__label headline d-md-none"><span class="headline__name">Lijst van producten in het winkelmandje</span></h2>
				<form class="basket__form" action="/basketchange.php?type=multiproduct" method="post" enctype="multipart/form-data">
					<div class="basket__productslist">
						<div class="basket__block --labels">
							<div class="basket__item --photo">
								
							</div>

							<div class="basket__item --name">
								
							</div>

							<div class="basket__item --actions">
                                <div class="basket__item --prices">Prijs per eenheid</div>

								<div class="basket__action --quantity">Hoeveelheid</div>

                                <div class="basket__item --sum">Waarde</div>

								<div class="basket__action --remove">
									
								</div>
							</div>
						</div>

						<iaixsl:for-each select="page/basket-details/product">
							<div class="basket__block">
								<iaixsl:if test="price/@special_offer='true'">
									<iaixsl:attribute name="class">basket__block --special</iaixsl:attribute>
								</iaixsl:if>

								<iaixsl:attribute name="data-product-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>

								
								<div class="basket__item --photo">
									<a class="photo__link">
										<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
										<img class="photo__image">
											<iaixsl:choose>
												<iaixsl:when test="$setIconLarge">
													<iaixsl:attribute name="src"><iaixsl:value-of select="icon"/></iaixsl:attribute>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:attribute name="src"><iaixsl:value-of select="iconsmall"/></iaixsl:attribute>
												</iaixsl:otherwise>
											</iaixsl:choose>
											<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:attribute>
										</img>
									</a>
								</div>

								
								<div class="basket__item --name">
									<div class="basket__name">
										<div class="basket__product">
											<h3 class="product__name">
												<a class="product__link">
													<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
													<iaixsl:value-of disable-output-escaping="yes" select="name/text()"/>
												</a>
												<iaixsl:if test="@product_type = 'product_virtual'">
													<span class="product__virtual">Virtuele goederen</span>
												</iaixsl:if>

												<iaixsl:if test="@product_type = 'product_service'">
													<span class="product__service">Service</span>
												</iaixsl:if>

												<iaixsl:if test="price/@special_offer='true'">
													<span class="product__special">Speciale aanbieding</span>
												</iaixsl:if>
											</h3>
										</div>

										
										<a href="#showActions" class="basket__show_wrapper --click">
											<span class="basket__show --ordered">
												<iaixsl:choose>
													<iaixsl:when test="size/@ordered_points">
														<iaixsl:value-of select="size/@ordered_points"/>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:value-of select="size/@ordered"/>
													</iaixsl:otherwise>
												</iaixsl:choose>
											</span>
											<span class="basket__show --actions ml-1 icon-caret-down"/>
										</a>
									</div>

									
									<iaixsl:if test="price/@special_offer='true'">
										<div class="basket__param --special">
											<span class="param__label">Met deze speciale aanbieding profiteert u van<strong class="param__save"><iaixsl:value-of select="price/@yousave_formatted"/></strong>d.w.z.<strong class="param__save_percent"><iaixsl:value-of select="price/@yousave_percent"/>%</strong>de waarde van dit product.</span>
										</div>
									</iaixsl:if>

									
									<iaixsl:if test="not(@barcode ='')">
										<div class="basket__param --barcode">
											<span class="param__label">Productcode:</span>
											<span class="param__value">
												<iaixsl:value-of select="@barcode"/>
											</span>
										</div>
									</iaixsl:if>

									
									<iaixsl:if test="price/priceformula/parameters">
										<iaixsl:for-each select="price/priceformula/parameters/parameter">
											<div class="basket__param --priceformula">
												<span class="param__label">
													<iaixsl:value-of select="name"/>:
												</span>
												<span class="param__value">
													<iaixsl:value-of select="values/value"/>
												</span>
											</div>
										</iaixsl:for-each>
									</iaixsl:if>

									
									<iaixsl:if test="not(size/@type='uniw')">
										<div class="basket__param --size">
											<span class="param__label">Maat:</span>
											<span class="param__value">
												<iaixsl:value-of select="size/@description"/>
											</span>
										</div>
									</iaixsl:if>

									
									<iaixsl:if test="(version) and (not(version/@product_name=''))">
										<div class="basket__param --version">
											<span class="param__label">
												<iaixsl:value-of select="version/@name"/>:
											</span>
											<span class="param__value">
												<iaixsl:value-of select="version/@product_name"/>
											</span>
										</div>
									</iaixsl:if>

									
									<iaixsl:if test="@product_type = 'product_bundle'">
										<div class="basket__param --bundle">
											<iaixsl:if test="@collection = 'true'">
												<iaixsl:attribute name="class">basket__param --bundle --collection</iaixsl:attribute>
											</iaixsl:if>
											<span class="param__label">Set samenstelling:</span>
											<div class="param__wrapper">
												<iaixsl:for-each select="bundled/product">
													<span class="param__value">
                                                        <iaixsl:value-of select="size/@ordered"/> x 

														<iaixsl:value-of select="name/text()"/>

														<iaixsl:if test="not(size/@type='uniw') or ((version) and (not(version/@product_name='')))">
															(<iaixsl:if test="not(size/@type='uniw')">Maat:<iaixsl:value-of select="size/@description"/></iaixsl:if><iaixsl:if test="not(size/@type='uniw') and ((version) and (not(version/@product_name='')))">, </iaixsl:if><iaixsl:if test="(version) and (not(version/@product_name=''))"><iaixsl:value-of select="version/@name"/>: <iaixsl:value-of select="version/@product_name"/></iaixsl:if>)
														</iaixsl:if>

														<iaixsl:if test="@product_type = 'product_virtual'">
															<span class="param__virtual">Virtuele goederen</span>
														</iaixsl:if>

														<iaixsl:if test="@product_type = 'product_service'">
															<span class="param__service">Service</span>
														</iaixsl:if>
													</span>
												</iaixsl:for-each>
											</div>
										</div>
									</iaixsl:if>

									
									<iaixsl:if test="change_group">
										<div class="basket__param --info">U kunt dit product niet verwijderen.</div>
									</iaixsl:if>

									
									<iaixsl:choose>
										<iaixsl:when test="(size/@orderedsum) &gt; (size/@amount) and not(size/@amount = '0') and not(size/@amount = '-1')">
											<div class="basket__param --info">
												<span class="param__label">We hebben deze hoeveelheid momenteel niet beschikbaar. Gelieve de bestelde hoeveelheid te verminderen tot<iaixsl:value-of select="size/@amount"/>of kies een ander product.</span>
											</div>
										</iaixsl:when>

										<iaixsl:when test="(size/@own_stocks_amount &gt; 0) and (size/@ordered &gt; size/@own_stocks_amount) and $txt_67332_am">
											<div class="basket__param --info --basket-info">
												<span class="param__label">
													<iaixsl:value-of disable-output-escaping="yes" select="$txt_67332_am"/>
													<iaixsl:value-of select="size/@own_stocks_amount"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="size/@unit"/>
													<iaixsl:value-of disable-output-escaping="yes" select="$txt_67332_wm"/>
												</span>
											</div>
										</iaixsl:when>

										<iaixsl:when test="size/@amount = '0'">
											<div class="basket__param --info">
												<span class="param__label">Dit product is net op. Alsjeblieft. Kies een ander product.</span>
											</div>
										</iaixsl:when>

										<iaixsl:when test="(size/@ordered_points) and not(/shop/basket/@client_points &gt;= 0)">
											<div class="basket__param --info">
												<span class="param__label">Je hebt niet genoeg loyaliteitspunten om zoveel producten met punten te kopen.</span>
											</div>
										</iaixsl:when>

										<iaixsl:when test="(/shop/page/rebates/code_details/@active = 'y') and ((/shop/rebate_code/shipping_cost_rebate/@active='n') and (price/@rebate_code_active='n'))">
											<div class="basket__param --info">
												<span class="param__label">De getoonde kortingscode omvat dit artikel niet.</span>
											</div>
										</iaixsl:when>

										<iaixsl:when test="@product_type='product_virtual' and not(count(/shop/page/basket-details/product) = count(/shop/page/basket-details/product[@product_type='product_virtual']))">
											<div class="basket__param --info">
												<span class="param__label">Het product zal beschikbaar zijn in de<a class="param__link --link">
														<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/client_files/@link_to_download"/></iaixsl:attribute>"Moje pliki"</a>na voltooiing van de opdracht.</span>
											</div>
										</iaixsl:when>

										<iaixsl:when test="size/availability/@status = 'order' and size/availability/@days &gt; 0">
											<div class="basket__param --info">
												<span class="param__label">Dit product verlengt de verzendtijd met<iaixsl:value-of select="size/availability/@days"/>
                          <iaixsl:choose>
                            <iaixsl:when test="size/availability/@days = 1"> dzień</iaixsl:when>
                            <iaixsl:otherwise>dagen</iaixsl:otherwise>
                          </iaixsl:choose>
												</span>
											</div>
										</iaixsl:when>
									</iaixsl:choose>

									<iaixsl:if test="(size/@to_little_for_gross = 'true') and not((size/@orderedsum) &gt; (size/@amount) and not(size/@amount = '0') and not(size/@amount = '-1'))">
										<div class="basket__param --info">
											<span class="param__label">We hebben<iaixsl:value-of select="size/@amount_wholesale"/>stukken tegen een groothandelsprijs. In het winkelmandje heeft u<iaixsl:value-of select="size/@ordered - size/@amount_wholesale"/>stukken van het product tegen detailhandelsprijs.</span>
										</div>
									</iaixsl:if>

									
									<iaixsl:if test="$txt_50001_025a and (price/@advanceworth &gt; 0)">
										<div class="basket__param --advance">
											<span class="param__label">
												<iaixsl:choose>
													<iaixsl:when test="/shop/page/basket-details/summary/money/@advance_mode = 'default' or /shop/page/basket-details/summary/money/@advance_mode = 'none'">
														<iaixsl:choose>
															<iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'true' and /shop/page/basket-details/summary/money/@prepaid = 'false'">
																Przed realizacją zamówienia z płatnością przy odbiorze wymagana jest zaliczka na ten towar: <iaixsl:value-of select="price/@advanceworth_formatted"/>
															</iaixsl:when>
															<iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'false' and /shop/page/basket-details/summary/money/@prepaid = 'true'">
																Przed realizacją zamówienia z płatnością za przedpłatą wymagana jest zaliczka na ten towar: <iaixsl:value-of select="price/@advanceworth_formatted"/>
															</iaixsl:when>
															<iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'true' and /shop/page/basket-details/summary/money/@prepaid = 'true'">
																Przed realizacją zamówienia wymagana jest zaliczka na ten towar: <iaixsl:value-of select="price/@advanceworth_formatted"/>
															</iaixsl:when>
														</iaixsl:choose>
													</iaixsl:when>
													<iaixsl:when test="/shop/page/basket-details/summary/money/@advance_mode = 'total'">
														Przed realizacją zamówienia wymagana jest zaliczka na ten towar: <iaixsl:value-of select="price/@advanceworth_formatted"/>
													</iaixsl:when>
												</iaixsl:choose>
											</span>
										</div>
									</iaixsl:if>

									
									<iaixsl:if test="order_files/file">
										<div class="basket__param --files">
											<iaixsl:for-each select="order_files/file">
												<div class="preview__wrapper">
													<a class="preview__button btn --icon-left --secondary icon-link --click" href="#previewFile">
														<iaixsl:choose>
															<iaixsl:when test="@preview = 'true'">
																<iaixsl:attribute name="rel"><iaixsl:value-of select="@path"/></iaixsl:attribute>
															</iaixsl:when>
															<iaixsl:otherwise>
																<iaixsl:attribute name="href"><iaixsl:value-of select="@path"/></iaixsl:attribute>
																<iaixsl:attribute name="target">_blank</iaixsl:attribute>
															</iaixsl:otherwise>
														</iaixsl:choose>
														<span><iaixsl:value-of select="@file"/></span>
													</a>
													<a class="preview__button --delete btn icon-x --click">
														<iaixsl:attribute name="href"><iaixsl:value-of select="@delete_link"/></iaixsl:attribute>
														<iaixsl:attribute name="title">Bestand verwijderen</iaixsl:attribute>
														<span/>
													</a>
												</div>
											</iaixsl:for-each>
										</div>
									</iaixsl:if>

                                    <div class="product__price d-block d-md-none ml-2 mt-3 mb-1">
                                        <iaixsl:choose>
                                            <iaixsl:when test="size/@ordered_points">
                                                <span class="basket__sum --points">
                                                    <iaixsl:value-of select="price/@points_sum"/>punt</span>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <span class="basket__sum">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice)">
                                                            <iaixsl:value-of select="price/@worth_net_formatted"/>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:value-of select="price/@worth_formatted"/>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </span>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </div>

								</div>

								
								<div class="basket__item --actions">

                                    
                                    <div class="basket__item --prices">
                                        <iaixsl:choose>
                                            
                                            <iaixsl:when test="size/@ordered_points">
                                                <del class="basket__max_price --points">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice)">
                                                            <iaixsl:value-of select="price/@price_net_formatted"/>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:value-of select="price/@price_formatted"/>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </del>
                                                <span class="basket__price --points">
                                                    <iaixsl:value-of select="price/@points"/>punt</span>
                                            </iaixsl:when>
                                            
                                            <iaixsl:otherwise>
                                                <iaixsl:if test="price/@beforerebate">
                                                    <del class="basket__max_price">
                                                        <iaixsl:value-of select="price/@beforerebate_formatted"/>
                                                    </del>
                                                </iaixsl:if>
                                                <span class="basket__price">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice)">
                                                            <iaixsl:value-of select="price/@price_net_formatted"/>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:value-of select="price/@price_formatted"/>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </span>

                                                
                                                <iaixsl:if test="price/rebateNumber">
                                                    <small class="basket__tip">meer kopen, minder betalen</small>
                                                    <div class="basket__tip_content tooltipContent">
                                                        <iaixsl:for-each select="price/rebateNumber/rebate">
                                                            <div>Van<strong>
                                                                    <iaixsl:value-of select="@threshold"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="../../../size/@unit"/>
                                                                </strong>prijs<strong>
                                                                    <iaixsl:value-of select="@price_formatted"/>
                                                                    <iaixsl:if test="not(/shop/contact/owner/@vat_registered = 'false')"> </iaixsl:if>
                                                                </strong>- korting<strong>
                                                                    <iaixsl:value-of select="@value"/>%
                                                                </strong>
                                                            </div>
                                                        </iaixsl:for-each>
                                                    </div>
                                                </iaixsl:if>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </div>
                                    
									
									<div class="basket__action --quantity">
										<iaixsl:if test="change_group/@id">
											<iaixsl:attribute name="class">basket__action --quantity --change-group</iaixsl:attribute>
										</iaixsl:if>

										<iaixsl:if test="@product_type='product_virtual'">
											<iaixsl:attribute name="class">basket__action --quantity --virtual</iaixsl:attribute>
										</iaixsl:if>

										<input type="hidden">
											<iaixsl:attribute name="name">product[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
											<iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
										</input>
										<input type="hidden">
											<iaixsl:attribute name="name">size[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
											<iaixsl:attribute name="value"><iaixsl:value-of select="size/@type"/></iaixsl:attribute>
										</input>
										<iaixsl:if test="additional/@hash">
											<input type="hidden">
												<iaixsl:attribute name="name">additional[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
												<iaixsl:attribute name="value"><iaixsl:value-of select="additional/@hash"/></iaixsl:attribute>
											</input>
										</iaixsl:if>
										<iaixsl:if test="size/@ordered_points">
											<input type="hidden" value="1">
												<iaixsl:attribute name="name">forpoints[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
											</input>
										</iaixsl:if>

										<iaixsl:choose>
											<iaixsl:when test="change_group/@id">
												<input class="quantity__input" type="hidden">
													<iaixsl:attribute name="name">set_quantity[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
													<iaixsl:choose>
														<iaixsl:when test="size/@ordered_points">
															<iaixsl:attribute name="value"><iaixsl:value-of select="size/@ordered_points"/></iaixsl:attribute>
														</iaixsl:when>
														<iaixsl:otherwise>
															<iaixsl:attribute name="value"><iaixsl:value-of select="size/@ordered"/></iaixsl:attribute>
														</iaixsl:otherwise>
													</iaixsl:choose>
												</input>
												<strong>
													<iaixsl:choose>
														<iaixsl:when test="size/@ordered_points">
															<iaixsl:value-of select="size/@ordered_points"/>
														</iaixsl:when>
														<iaixsl:otherwise>
															<iaixsl:value-of select="size/@ordered"/>
														</iaixsl:otherwise>
													</iaixsl:choose>
													<span>
														<iaixsl:choose>
															<iaixsl:when test="not(size/@ordered &gt; 1)">
																<iaixsl:value-of select="size/@unit_singular"/>
															</iaixsl:when>
															<iaixsl:otherwise>
																<iaixsl:value-of select="size/@unit"/>
															</iaixsl:otherwise>
														</iaixsl:choose>
													</span>
												</strong>
												<iaixsl:if test="change_group/@changelink">
													<a class="basket__change --click">
														<iaixsl:attribute name="href"><iaixsl:value-of select="change_group/@changelink"/></iaixsl:attribute>
														<span class="change__button --mobile btn --solid --large d-md-none">Het product vervangen</span>
														<span class="change__button --desktop btn --solid d-none d-md-inline-block">Het product vervangen</span>
													</a>
												</iaixsl:if>
											</iaixsl:when>
											<iaixsl:when test="@product_type='product_virtual'">
												<input class="quantity__input" type="hidden">
													<iaixsl:attribute name="name">set_quantity[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
													<iaixsl:choose>
														<iaixsl:when test="size/@ordered_points">
															<iaixsl:attribute name="value"><iaixsl:value-of select="size/@ordered_points"/></iaixsl:attribute>
														</iaixsl:when>
														<iaixsl:otherwise>
															<iaixsl:attribute name="value"><iaixsl:value-of select="size/@ordered"/></iaixsl:attribute>
														</iaixsl:otherwise>
													</iaixsl:choose>
												</input>
												<div class="basket__virtual">1</div>
											</iaixsl:when>
											<iaixsl:otherwise>
												<div class="basket__quantity">
													
													<a href="#delQuantity" class="quantity__del  --click">-</a>

													
													<label for="InputQuantity" class="quantity__label">
														<iaixsl:attribute name="for">InputQuantity<iaixsl:value-of select="position()"/></iaixsl:attribute>
														<input class="quantity__input" type="number">
															<iaixsl:attribute name="id">InputQuantity<iaixsl:value-of select="position()"/></iaixsl:attribute>
															<iaixsl:if test="price/@special_offer='true'">
																<iaixsl:attribute name="readonly">readonly</iaixsl:attribute>
															</iaixsl:if>
															<iaixsl:attribute name="name">set_quantity[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>

															<iaixsl:choose>
																<iaixsl:when test="size/@ordered_points">
																	<iaixsl:attribute name="value"><iaixsl:value-of select="size/@ordered_points"/></iaixsl:attribute>
																</iaixsl:when>
																<iaixsl:otherwise>
																	<iaixsl:attribute name="value"><iaixsl:value-of select="size/@ordered"/></iaixsl:attribute>
																</iaixsl:otherwise>
															</iaixsl:choose>

															<iaixsl:attribute name="data-amount"><iaixsl:value-of select="size/@amount"/></iaixsl:attribute>
															<iaixsl:attribute name="data-unit_sellby"><iaixsl:value-of select="size/@unit_sellby"/></iaixsl:attribute>
															<iaixsl:attribute name="step"><iaixsl:value-of select="size/@unit_sellby"/></iaixsl:attribute>
															<iaixsl:attribute name="data-unit"><iaixsl:value-of select="size/@unit"/></iaixsl:attribute>
															<iaixsl:attribute name="data-unit_precision"><iaixsl:value-of select="size/@unit_precision"/></iaixsl:attribute>

															<iaixsl:if test="order_quantity_range/max_quantity_per_order">
																<iaixsl:attribute name="data-max_q"><iaixsl:value-of select="order_quantity_range/max_quantity_per_order"/></iaixsl:attribute>
															</iaixsl:if>
															<iaixsl:if test="order_quantity_range/max_size_quantity_per_order">
																<iaixsl:attribute name="data-max_s"><iaixsl:value-of select="order_quantity_range/max_size_quantity_per_order"/></iaixsl:attribute>
															</iaixsl:if>
															<iaixsl:if test="order_quantity_range/min_quantity_per_order">
																<iaixsl:attribute name="data-min_q"><iaixsl:value-of select="order_quantity_range/min_quantity_per_order"/></iaixsl:attribute>
															</iaixsl:if>
															<iaixsl:if test="order_quantity_range/min_size_quantity_per_order">
																<iaixsl:attribute name="data-min_s"><iaixsl:value-of select="order_quantity_range/min_size_quantity_per_order"/></iaixsl:attribute>
															</iaixsl:if>
														</input>

														
														<span class="quantity__unit d-md-none">
															<iaixsl:choose>
																<iaixsl:when test="not(size/@ordered &gt; 1)">
																	<iaixsl:value-of select="size/@unit_singular"/>
																</iaixsl:when>
																<iaixsl:otherwise>
																	<iaixsl:value-of select="size/@unit"/>
																</iaixsl:otherwise>
															</iaixsl:choose>
														</span>
													</label>

													
													<a href="#addQuantity" class="quantity__add --click">+</a>
												</div>

												
												<iaixsl:if test="not(size/@unit_sellby = '1')">
													<div class="basket__sellby">verkocht bij<iaixsl:value-of select="size/@unit_sellby"/><iaixsl:text> </iaixsl:text>
														<iaixsl:choose>
															<iaixsl:when test="not(size/@ordered &gt; 1)">
																<iaixsl:value-of select="size/@unit_singular"/>
															</iaixsl:when>
															<iaixsl:otherwise>
																<iaixsl:value-of select="size/@unit"/>
															</iaixsl:otherwise>
														</iaixsl:choose>
													</div>
												</iaixsl:if>
											</iaixsl:otherwise>
										</iaixsl:choose>

                                        
                                        <div class="basket__action --calculate">
                                            <iaixsl:choose>
                                                <iaixsl:when test="price/@special_offer='true'">
                                                    <span class="basket__calculate --special"><i class="icon-ok-sign"></i>Speciale aanbieding</span>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <button class="basket__calculate --button --submit" type="submit">
                                                        <iaixsl:attribute name="title">verander de hoeveelheid</iaixsl:attribute>
                                                        <span class="calculate__button ">omzetten</span>
                                                    </button>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </div>
									</div>

                                    
                                    <div class="basket__item --sum">
                                        <iaixsl:choose>
                                            <iaixsl:when test="size/@ordered_points">
                                                <span class="basket__sum --points">
                                                    <iaixsl:value-of select="price/@points_sum"/>punt</span>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <span class="basket__sum">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice)">
                                                            <iaixsl:value-of select="price/@worth_net_formatted"/>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:value-of select="price/@worth_formatted"/>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </span>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </div>

									
									<div class="basket__action --remove">
										<a href="#remove" class="basket__remove --click">
											<iaixsl:if test="/shop/page/basket-details/@reduction_amount_disabled = 'true' and order_quantity_range/min_quantity_per_order/text()">
												<iaixsl:attribute name="data-disabled">true</iaixsl:attribute>
											</iaixsl:if>
											<iaixsl:choose>
												<iaixsl:when test="removeall_points">
													<iaixsl:attribute name="data-href"><iaixsl:value-of select="removeall_points"/></iaixsl:attribute>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:attribute name="data-href"><iaixsl:value-of select="removeall"/></iaixsl:attribute>
												</iaixsl:otherwise>
											</iaixsl:choose>
											<span class="remove__button --mobile btn --icon-left icon-trash d-md-none">Uit de mand halen</span>
											<span class="remove__button --desktop btn d-none d-md-inline-block icon-x"/>
										</a>
									</div>
								</div>
							</div>
						</iaixsl:for-each>
					</div>

					
					<div class="basket__tools p-sm-4">
						<a href="#removeAll" class="tool__button --remove-all btn --outline --click d-none">Leeg de mand</a>
						<a href="#addToFavorite" class="tool__button --add-to-favorite btn --outline --click">Opslaan in uw boodschappenlijstje</a>
						<a href="#addWrapper" class="tool__button --add-wrapper btn --outline --click">Selecteer verpakking</a>
					</div>

					
					<iaixsl:choose>
						<iaixsl:when test="/shop/page/basket-details/rebate_local/active/selected/product/@id = /shop/page/basket-details/rebate_local/active/products/product/@id">
							<div class="basket__gift_inputs d-none">
								<input type="hidden" name="product[0]">
									<iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/basket-details/rebate_local/active/selected/product/@id"/></iaixsl:attribute>
								</input>
								<input type="hidden" name="size[0]">
									<iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/basket-details/rebate_local/active/selected/product/@size"/></iaixsl:attribute>
								</input>
								<input type="hidden" name="set_quantity[0]" value="1"/>
								<input type="hidden" name="gift[0]" value="1"/>
							</div>
						</iaixsl:when>
						<iaixsl:when test="/shop/page/basket-details/rebate_local/selected/@product">
							<div class="basket__gift_inputs d-none">
								<iaixsl:attribute name="data-nogiftforyou">true</iaixsl:attribute>
								<input type="hidden" name="product[0]">
									<iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/basket-details/rebate_local/selected/@product"/></iaixsl:attribute>
								</input>
								<input type="hidden" name="size[0]">
									<iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/basket-details/rebate_local/selected/@size"/></iaixsl:attribute>
								</input>
								<input type="hidden" name="set_quantity[0]" value="0"/>
								<input type="hidden" name="gift[0]" value="1"/>
							</div>
						</iaixsl:when>
					</iaixsl:choose>
				</form>

				
				<div class="basket__wrappers"/>

				
				<iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'">
					<div class="unknown_delivery_time">
						<i class="icon-truck"></i>
						<div>
							<b>Er zitten goederen in de mand die op bestelling worden gebracht.</b>Om de tijd in te schatten die nodig is om uw bestelling klaar te maken voor verzending,<a target="_blank">
								<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>neem contact op met het winkelpersoneel.</a>
						</div>
					</div>
				</iaixsl:if>
			</section>

			<iaixsl:if test="/shop/basket/shipping_time"> </iaixsl:if>
			<iaixsl:if test="/shop/page/basket-details/product/price/@detalprice_net_formatted"> </iaixsl:if>
			<iaixsl:if test="/shop/page/basket-details/product/price/@maxprice_formatted"> </iaixsl:if>
			<iaixsl:if test="/shop/page/basket-details/product/price/@maxprice_net_formatted"> </iaixsl:if>
			<iaixsl:if test="/shop/page/basket-details/product/@code"> </iaixsl:if>
			<iaixsl:if test="/shop/page/basket-details/product/price//price/@points"> </iaixsl:if>
			<iaixsl:if test="/shop/page/basket-details/product/size/@name"> </iaixsl:if>
			<iaixsl:if test="/shop/basket/@product_comment_active"> </iaixsl:if>
		</iaixsl:if>
	<!--Podsumowanie koszyka (basketedit_summary, 115981.1)-->
        <iaixsl:variable name="txt_60826_advance_a">Vooruitbetaling vereist voor bestellingen met betaling bij levering:</iaixsl:variable>
        <iaixsl:variable name="txt_60826_advance_header">Jak wygląda u nas zamówienie z zaliczką?</iaixsl:variable>
        <iaixsl:variable name="show_always_instalment_68242"/>
        <iaixsl:variable name="hours_68242"/>

        
        <script>
            var currency_format = '';
            <iaixsl:if test="/shop/currency/option[@selected='true']/@currency_format">
                var currency_format = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_format"/>';
            </iaixsl:if>
            var currency_before_value = '';
            <iaixsl:if test="/shop/currency/option[@selected='true']/@currency_before_value">
                var currency_before_value = <iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_before_value"/>;
            </iaixsl:if>
            var currency_space = '';
            <iaixsl:if test="/shop/currency/option[@selected='true']/@currency_space">
                var currency_space = <iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_space"/>;
            </iaixsl:if>
            var currency_decimal_separator = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_decimal_separator"/>';
            var currency_grouping_separator = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_grouping_separator"/>';
            var symbol = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/>';
        </script>

        <iaixsl:if test="page/@type = 'basketedit'">
            <iaixsl:variable name="wholesalerPrice2">true</iaixsl:variable>
            <iaixsl:variable name="wholesaler_shipping_gross"/>
            <iaixsl:variable name="immediately_txt">De bestelling wordt onmiddellijk na ontvangst van de bestelling verzonden.</iaixsl:variable>

            <div class="basketedit_summary_container">
                <div class="basketedit_summary">

                    <div class="basketedit_summary_sub">
                        <iaixsl:attribute name="class">basketedit_summary_sub</iaixsl:attribute>
                        
                        <iaixsl:if test="count(/shop/page/basket-details/product) = count(/shop/page/basket-details/product[@product_type='product_virtual'])">
                            <span class="only_virtual">Downloadbare bestanden verschijnen in de<a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/client_files/@link_to_download"/></iaixsl:attribute>"Moje pliki"</a>in het klantenpaneel na voltooiing van de gehele bestelling.</span>
                        </iaixsl:if>
                        <div class="basketedit_summary_left">
                            
                            <iaixsl:if test="$txt_60826_advance_a and (/shop/page/basket-details/summary/money/@advance_mode = 'total' and /shop/page/basket-details/summary/money/@prepaid = 'true' and /shop/page/basket-details/summary/money/@advance &gt; 0)">
                                <div class="summary_left_advance">
                                    <iaixsl:if test="$txt_60826_advance_header">
                                        <div class="summary_left_advance_header">
                                            <iaixsl:value-of select="$txt_60826_advance_header"/>
                                        </div>
                                    </iaixsl:if>Voor de verwerking van een bestelling met vooruitbetaling is een aanbetaling vereist, die bestaat uit een deel van de prijs van de te bestellen goederen, de totale prijs van de in onze magazijnen beschikbare goederen en de later in het bestelproces gekozen verzendkosten.</div>
                            </iaixsl:if>

                            
                            <iaixsl:if test="basket/@toshippingfree&gt; 0 and not(basket/@toshippingfree= '')">
                                <div class="toshippingfree">
                                    <div class="toshippingfree_sub">GRATIS LEVERING van<span class="price"><iaixsl:value-of select="basket/@shippinglimitfree_formatted"/></span><iaixsl:if test="$wholesaler_shipping_gross"> <iaixsl:value-of select="$wholesaler_shipping_gross"/></iaixsl:if></div>Je mist alleen<b><iaixsl:value-of select="/shop/basket/@toshippingfree_formatted"/></b><iaixsl:if test="$wholesaler_shipping_gross"> <iaixsl:value-of select="$wholesaler_shipping_gross"/></iaixsl:if>om het te ontvangen.</div>
                            </iaixsl:if>

                            
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

                            
                            <iaixsl:if test="page/basket-details/summary/payment/instalment">
                                <div id="n67367_instalment" class="n67367_instalment">
                                    <h3>Kopen op afbetaling</h3>
                                    

                                    <iaixsl:for-each select="/shop/page/basket-details/summary/payment/instalment[@selected='true']">
                                        <div class="instalment_value_1">
                                            <iaixsl:choose>
                                                <iaixsl:when test="@value_formatted">
                                                    <img class="instalment_value_1">
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx_small"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                    </img>
                                                    <span class="instalment_value_1">Koop op huurkoop bij<b><iaixsl:value-of select="@value_formatted"/></b>maandelijks!</span>

                                                    <span class="n67367_section_txt"><iaixsl:value-of select="@name"/>zonder je huis te verlaten. Net zo makkelijk en snel als online winkelen.</span>

                                                    <small class="instalment_value_2">Beschikbaar voor aankopen met een totale waarde van<iaixsl:value-of select="@minprice"/> <iaixsl:value-of select="/shop/currency/@name"/>Naar<iaixsl:value-of select="@maxprice"/> <iaixsl:value-of select="/shop/currency/@name"/>
                                                    </small>

                                                    <iaixsl:if test="note">
                                                        <span class="btn_note">wettelijke kennisgeving</span>
                                                        <div class="tooltipContent">
                                                            <iaixsl:value-of disable-output-escaping="yes" select="note/text()"/>
                                                        </div>
                                                    </iaixsl:if>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <span class="n67367_section_txt"><iaixsl:value-of select="@name"/>zonder je huis te verlaten. Net zo makkelijk en snel als online winkelen.</span>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </div>
                                    </iaixsl:for-each>

                                    <ul class="n67367_instalment">
                                        <iaixsl:for-each select="page/basket-details/summary/payment/instalment">
                                            <li>
                                                <a>
                                                    <iaixsl:attribute name="onclick">calculate_instalments('<iaixsl:value-of select="@minprice"/>','<iaixsl:value-of select="@maxprice"/>','<iaixsl:value-of select="@priceTotal"/>','<iaixsl:value-of select="@alert"/>',$(this).attr('data-window'),'<iaixsl:value-of select="@maxquantity"/>','<iaixsl:value-of select="@name"/>'); return false;</iaixsl:attribute>
                                                    <iaixsl:attribute name="href">javascript:<iaixsl:value-of select="@calculate"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-window"><iaixsl:value-of select="@calculate"/></iaixsl:attribute>
                                                    <span>De afbetaling berekenen<iaixsl:value-of select="@name"/></span>
                                                    <img>
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                    </img>
                                                </a>
                                            </li>
                                        </iaixsl:for-each>
                                    </ul>
                                </div>
                            </iaixsl:if>
                            
                        </div>

                        <div class="basketedit_summary_right">
                            <div class="basketedit_calculations">
                                <div class="basketedit_product_summary">
                                    <label>Contractwaarde:</label>

                                    <strong>
                                        <iaixsl:value-of select="/shop/page/basket-details/summary/money/@beforerebate_formatted"/>
                                    </strong>
                                </div>

                                <iaixsl:if test="not((basket/@shipping_undefined = 'true') or (basket/@hide_shipping_cost = 'true') or (basket/@hide_cost='true'))">
                                
                                    <div class="basketedit_product_summary">
                                        <label>
                                            <iaixsl:choose>
                                                <iaixsl:when test="basket/@shipping_after_rebate &gt; '0'">Verzendkosten van:</iaixsl:when>
                                                <iaixsl:otherwise>Portokosten:</iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </label>

                                        <strong>
                                            <iaixsl:if test="not(basket/@shipping &gt; basket/@shipping_after_rebate) and basket/@shipping_after_rebate &gt; '0'">
                                                <iaixsl:attribute name="class">plus_sign</iaixsl:attribute>
                                            </iaixsl:if>

                                            <iaixsl:if test="basket/@shipping &gt; basket/@shipping_after_rebate">
                                                <span>
                                                    <iaixsl:if test="basket/@shipping_after_rebate &gt; '0'"><iaixsl:attribute name="class">plus_sign</iaixsl:attribute></iaixsl:if>
                                                    <del>
                                                        <iaixsl:value-of select="basket/@shipping_formatted"/>
                                                    </del><iaixsl:text> </iaixsl:text>
                                                </span>
                                            </iaixsl:if>

                                            <iaixsl:choose>
                                                <iaixsl:when test="basket/@shipping_after_rebate &gt; '0'">
                                                    <iaixsl:value-of select="basket/@shipping_after_rebate_formatted"/>
                                                </iaixsl:when>
                                                <iaixsl:when test="basket/@shipping = ''">
                                                    b/d
                                                </iaixsl:when>
                                                <iaixsl:otherwise>gratis!</iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </strong>
                                    </div>
                                </iaixsl:if>

                                <iaixsl:if test="/shop/page/basket-details/summary/money/@total_rebate&gt;0">
                                    <div class="basketedit_rabats_summary">
                                        <label>Korting:</label>

                                        <strong class="minus_sign">
                                            <iaixsl:value-of select="/shop/page/basket-details/summary/money/@total_rebate_formatted"/>
                                        </strong>
                                    </div>
                                </iaixsl:if>

                                <iaixsl:variable name="balance_to_pay"><iaixsl:value-of select="/shop/page/basket-details/summary/money/@balance_to_pay"/></iaixsl:variable>

                                <iaixsl:if test="$balance_to_pay">
                                    <div class="basketedit_product_summary">
                                        <iaixsl:if test="/shop/page/basket-details/summary/money/@balance_to_pay">
                                            <iaixsl:choose>
                                                <iaixsl:when test="$balance_to_pay &gt; 0">
                                                    <label>Betaald uit het saldo:<br/>(te veel betaald op klantenrekening)</label>

                                                    <strong class="saldo_value minus_sign">
                                                        <iaixsl:value-of select="/shop/page/basket-details/summary/money/@balance_to_pay_formatted"/>
                                                    </strong>
                                                </iaixsl:when>
                                                <iaixsl:when test="not($balance_to_pay &gt; 0) and not($balance_to_pay = '0.00')">
                                                    <label>Betaald uit het saldo:<br/>(onderbetaling op klantenrekening)</label>

                                                    <strong class="saldo_value plus_sign">
                                                        <iaixsl:value-of select="substring-after(/shop/page/basket-details/summary/money/@balance_to_pay_formatted, '-')"/>
                                                    </strong>
                                                </iaixsl:when>
                                            </iaixsl:choose>
                                        </iaixsl:if>
                                    </div>
                                </iaixsl:if>
                            </div>

                            <div class="basketedit_total_summary">
                                <label>Te betalen:</label>

                                <strong><iaixsl:value-of select="/shop/page/basket-details/summary/money/@to_pay_formatted"/><iaixsl:if test="not(/shop/client_data/@uses_vat='false')"/></strong>
                                <iaixsl:if test="(basket/@points_used) and (basket/@points_used != 0)">
                                    <b>
                                         + 
                                        <span><iaixsl:value-of select="basket/@points_used"/>punt</span>
                                    </b>
                                </iaixsl:if>
                            </div>

                            
                            <iaixsl:if test="$txt_60826_advance_a and (/shop/page/basket-details/summary/money/@advance &gt; 0)">
                                <div class="basketedit_product_summary advance">
                                    <iaixsl:choose>
                                        <iaixsl:when test="/shop/page/basket-details/summary/money/@advance_mode = 'default' or /shop/page/basket-details/summary/money/@advance_mode = 'none'">
                                            <iaixsl:choose>
                                                <iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'true' and /shop/page/basket-details/summary/money/@prepaid = 'false'">
                                                    <label class="txt_wrap">Vooruitbetaling vereist voor bestellingen met betaling bij levering:</label>
                                                    <strong><iaixsl:value-of select="/shop/page/basket-details/summary/money/@advance_formatted"/></strong>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'false' and /shop/page/basket-details/summary/money/@prepaid = 'true'">
                                                    <label class="txt_wrap">Vooruitbetaling vereist voor vooruitbetaalde bestellingen:</label>
                                                    <strong><iaixsl:value-of select="/shop/page/basket-details/summary/money/@advance_formatted"/></strong>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'true' and /shop/page/basket-details/summary/money/@prepaid = 'true'">
                                                    <label class="txt_wrap">Aanbetaling vereist:</label>
                                                    <strong><iaixsl:value-of select="/shop/page/basket-details/summary/money/@advance_formatted"/></strong>
                                                </iaixsl:when>
                                            </iaixsl:choose>
                                        </iaixsl:when>
                                        <iaixsl:when test="/shop/page/basket-details/summary/money/@advance_mode = 'total'">
                                            <label class="txt_wrap">Aanbetaling vereist:</label>
                                            <strong><iaixsl:value-of select="/shop/page/basket-details/summary/money/@advance_formatted"/></strong>
                                        </iaixsl:when>
                                    </iaixsl:choose>
                                </div>
                            </iaixsl:if>

                        </div>
                    </div>
                </div>

                <div class="basketedit_summary_buttons table_display summary_buttons">
                    <iaixsl:if test="/shop/basket/shipping_time/@days and not(basket/@shipping_undefined = 'true')">

                        
                        <div class="basketedit_summary_shipment_time d-sm-none">
                            <iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'">
                                <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                            </iaixsl:if>

                            <iaixsl:variable name="wys_1_68242"> <b>vandaag</b></iaixsl:variable>

                            <iaixsl:choose>
                                <iaixsl:when test="$wys_1_68242 and (/shop/basket/shipping_time/@week_amount = 0) and (/shop/basket/shipping_time/@week_day)">De bestelling is klaar voor verzending...<iaixsl:choose>
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
                                </iaixsl:when>
                                <iaixsl:when test="$immediately_txt and (/shop/basket/shipping_time/@days = 0) and (/shop/basket/shipping_time/@hours = 0) and (/shop/basket/shipping_time/@minutes = 0)">
                                    <iaixsl:value-of select="$immediately_txt"/>
                                </iaixsl:when>

                                <iaixsl:otherwise>De tijd die nodig is om uw bestelling klaar te maken voor verzending is tot<b>
                                        <iaixsl:if test="(/shop/basket/shipping_time/@days = 0) and (/shop/basket/shipping_time/@hours = 0) and (/shop/basket/shipping_time/@minutes = 0)">
                                             24h. 
                                        </iaixsl:if>

                                        <iaixsl:if test="/shop/basket/shipping_time/@days &gt; 0">
                                            <iaixsl:value-of select="/shop/basket/shipping_time/@days"/>
                                            <iaixsl:choose>
                                                <iaixsl:when test="/shop/basket/shipping_time/@days ='1'">
                                                     dzień 
                                                </iaixsl:when>
                                                <iaixsl:otherwise>dagen</iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </iaixsl:if>

                                        <iaixsl:choose>
                                            <iaixsl:when test="$hours_68242">
                                                <iaixsl:if test="/shop/basket/shipping_time/@hours &gt; 0">
                                                    <iaixsl:value-of select="/shop/basket/shipping_time/@hours"/>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="/shop/basket/shipping_time/@hours &gt; 1">
                                                            <iaixsl:value-of select="$hours_68242"/>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>uur</iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </iaixsl:if>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <iaixsl:if test="/shop/basket/shipping_time/@hours &gt; 0">
                                                    <iaixsl:value-of select="/shop/basket/shipping_time/@hours"/>
                                                     godz. 
                                                </iaixsl:if>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>

                                        <iaixsl:if test="/shop/basket/shipping_time/@minutes &gt; 0">
                                            <iaixsl:value-of select="/shop/basket/shipping_time/@minutes"/>
                                             min 
                                        </iaixsl:if>
                                    </b>
                                </iaixsl:otherwise>
                            </iaixsl:choose>

                        </div>
                    </iaixsl:if>

                    <div class="btn_wrapper d-sm-none">
                        <a class="btn --solid --large n53706_button1" href="/place-order.php" id="basket_go_next_phone">
                            <iaixsl:if test="/shop/page/communicates/warning/@type='order_minimal_wholesale_blocked'">
                                <iaixsl:attribute name="data-disabled">true</iaixsl:attribute>
                                <iaixsl:attribute name="onclick">Alertek.show_alert('Minimalna wartość zakupów hurtowych wynosi:  <iaixsl:if test="$signbeforeprice = 'true'"><iaixsl:value-of select="/shop/currency/@name"/><iaixsl:value-of select="$signbetweenpricecurrency"/></iaixsl:if><iaixsl:value-of select="/shop/page/communicates/warning/@value"/><iaixsl:if test="$signbeforeprice = 'false'"><iaixsl:value-of select="$signbetweenpricecurrency"/><iaixsl:value-of select="/shop/currency/@name"/>
                                </iaixsl:if>');</iaixsl:attribute>
                            </iaixsl:if>Ga naar de kassa</a>
                    </div>

                    <span id="basketedit_summary_buttons_sepratator" class="d-sm-none">
                        <span>of</span>
                    </span>

                    <div class="btn_wrapper">
                        <a class="btn --large --outline button_go_shopping">

                            <iaixsl:attribute name="href">
                                <iaixsl:choose>
                                    <iaixsl:when test="/shop/lastsearch/text()">
                                        <iaixsl:value-of select="/shop/lastsearch/text()"/>
                                    </iaixsl:when>
                                    <iaixsl:when test="/shop/page/basket-details/direct-navigation/@url">
                                        <iaixsl:value-of select="/shop/page/basket-details/direct-navigation/@url"/>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>/</iaixsl:otherwise>
                                </iaixsl:choose>
                            </iaixsl:attribute>Terug naar de winkel</a>
                    </div>

					<iaixsl:if test="not(/shop/page/communicates/warning[@type = 'order_tomuch'])">
						<iaixsl:if test="/shop/basket/shipping_time/@days and not(basket/@shipping_undefined = 'true')">
							
							<div class="basketedit_summary_shipment_time d-none d-sm-table-cell">
								<iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'">
									<iaixsl:attribute name="style">display:none;</iaixsl:attribute>
								</iaixsl:if>

								<iaixsl:variable name="wys_1_68242"> <b>vandaag</b></iaixsl:variable>

								<iaixsl:choose>
									<iaixsl:when test="$wys_1_68242 and (/shop/basket/shipping_time/@week_amount = 0) and (/shop/basket/shipping_time/@week_day)">De bestelling is klaar voor verzending...<iaixsl:choose>
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
									</iaixsl:when>
									<iaixsl:when test="$immediately_txt and (/shop/basket/shipping_time/@days = 0) and (/shop/basket/shipping_time/@hours = 0) and (/shop/basket/shipping_time/@minutes = 0)">
										<iaixsl:value-of select="$immediately_txt"/>
									</iaixsl:when>

									<iaixsl:otherwise>De tijd die nodig is om uw bestelling klaar te maken voor verzending is tot<b>
											<iaixsl:if test="(/shop/basket/shipping_time/@days = 0) and (/shop/basket/shipping_time/@hours = 0) and (/shop/basket/shipping_time/@minutes = 0)">
												 24h. 
											</iaixsl:if>

											<iaixsl:if test="/shop/basket/shipping_time/@days &gt; 0">
												<iaixsl:value-of select="/shop/basket/shipping_time/@days"/>
												<iaixsl:choose>
													<iaixsl:when test="/shop/basket/shipping_time/@days ='1'">
														 dzień 
													</iaixsl:when>
													<iaixsl:otherwise>dagen</iaixsl:otherwise>
												</iaixsl:choose>
											</iaixsl:if>

											<iaixsl:choose>
												<iaixsl:when test="$hours_68242">
													<iaixsl:if test="/shop/basket/shipping_time/@hours &gt; 0">
														<iaixsl:value-of select="/shop/basket/shipping_time/@hours"/>
														<iaixsl:choose>
															<iaixsl:when test="/shop/basket/shipping_time/@hours &gt; 1">
																<iaixsl:value-of select="$hours_68242"/>
															</iaixsl:when>
															<iaixsl:otherwise>uur</iaixsl:otherwise>
														</iaixsl:choose>
													</iaixsl:if>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:if test="/shop/basket/shipping_time/@hours &gt; 0">
														<iaixsl:value-of select="/shop/basket/shipping_time/@hours"/>
														 godz. 
													</iaixsl:if>
												</iaixsl:otherwise>
											</iaixsl:choose>

											<iaixsl:if test="/shop/basket/shipping_time/@minutes &gt; 0">
												<iaixsl:value-of select="/shop/basket/shipping_time/@minutes"/>
												 min 
											</iaixsl:if>
										</b>
									</iaixsl:otherwise>
								</iaixsl:choose>

							</div>
						</iaixsl:if>

						<div class="btn_wrapper d-none d-sm-table-cell">
							<a class="btn --solid --large n53706_button1" href="/place-order.php" id="basket_go_next">
								<iaixsl:if test="/shop/page/communicates/warning/@type='order_minimal_wholesale_blocked'">
									<iaixsl:attribute name="data-disabled">true</iaixsl:attribute>
									<iaixsl:attribute name="onclick">Alertek.show_alert('Minimalna wartość zakupów hurtowych wynosi:  <iaixsl:if test="$signbeforeprice = 'true'"><iaixsl:value-of select="/shop/currency/@name"/><iaixsl:value-of select="$signbetweenpricecurrency"/></iaixsl:if><iaixsl:value-of select="/shop/page/communicates/warning/@value"/><iaixsl:if test="$signbeforeprice = 'false'"><iaixsl:value-of select="$signbetweenpricecurrency"/><iaixsl:value-of select="/shop/currency/@name"/>
									</iaixsl:if>');</iaixsl:attribute>
								</iaixsl:if>Ga naar de kassa</a>
						</div>
					</iaixsl:if>
                </div>
            </div>

        </iaixsl:if>
        <script>
            
            var client_data_uses_vat = '<iaixsl:value-of select="/shop/client_data/@uses_vat"/>';
        </script>
        <!--Lista produktów obserwowanych (basketedit_wishlist, 107591.1)-->
        <iaixsl:if test="page/@type = 'wishesedit'">

            
            <iaixsl:variable name="changePrice"/>
            <iaixsl:if test="not(/shop/basket/@login) or (/shop/basket/@login = '')">
                <div class="menu_messages_message">De boodschappenlijst wordt alleen opgeslagen voor wie is ingelogd.<a class="loginPopUpShow" href="/login.php">Inloggen</a>en als je nog geen account hebt,<a href="/client-new.php?register">register</a>.</div>
            </iaixsl:if>
            <div class="products_bought row" id="favourites_list">
                <div class="col-12">
                <div id="pb_list" class="pb_list">
                    <div class="pb_list_header row d-none d-md-flex">
                        <div class="pb_header_name col-6"/>
                        <div class="pb_header_date col-2">Op het boodschappenlijstje van:</div>
                        <div class="pb_header_price col-2">Prijs per eenheid</div>
                    </div>
                    <div class="row products_wrapper">
                    <iaixsl:for-each select="page/basket-details/product">
                    <div class="col-md-12 col-sm-4 col-6">
                        <div class="pb_product">
                            <div class="row align-items-center product_inner_wrapper">
                            <div class="col-md-1 col-12 mb-3 mb-md-0">
                                <div class="pb_icon">
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                        <img class="basket_prod rwd-src" alt="Szczegoly" src="/gfx/dut/loader.gif?r=1612518076">
                                            <iaixsl:attribute name="data-src_desktop"><iaixsl:value-of select="iconsmall"/></iaixsl:attribute>
                                            <iaixsl:attribute name="data-src_tablet"><iaixsl:value-of select="iconsmall"/></iaixsl:attribute>
                                            <iaixsl:attribute name="data-src_mobile"><iaixsl:value-of select="icon"/></iaixsl:attribute>
                                        </img>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-5 col-12 mb-3 mb-md-0">
                                <div class="pb_info">
                                    <h2 class="basket_name">
                                        <a>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                            <iaixsl:value-of disable-output-escaping="yes" select="name/text()"/>
                                        </a>
                                    </h2>

                                    
                                    <iaixsl:if test="not(@barcode ='')">
                                        <div class="pb_single_info" id="kod_54008x">
                                            <span>Productcode:</span>
                                            <iaixsl:value-of select="@barcode"/>
                                        </div>
                                    </iaixsl:if>


                                    
                                    <iaixsl:if test="not(sizes/size[@buy_date]/@type='uniw')">
                                        <div class="pb_single_info">
                                            <span>Maat:</span>
                                            <iaixsl:value-of select="size/@description"/>
                                        </div>
                                    </iaixsl:if>

                                    
                                    <iaixsl:if test="(version) and (not(version/@product_name=''))">
                                        <div class="pb_single_info">
                                            <span>
                                                <iaixsl:value-of select="version/@name"/>:
                                            </span>
                                            <iaixsl:value-of select="version/@product_name"/>
                                        </div>
                                    </iaixsl:if>
                                </div>
                            </div>

                            
                            <div class="col-md-2 col-12 mb-3 mb-md-0">
                                <div class="pb_date">
                                    <span class="d-block d-md-none">Op het boodschappenlijstje van:</span>
                                    <iaixsl:value-of select="size/@observed_since"/>
                                </div>
                            </div>

                            
                            <div class="col-md-2 col-12 mb-3 mb-md-0">
                                <div class="pb_price">
                                    <span class="d-block d-md-none">Prijs per eenheid</span>
                                    <iaixsl:choose>
                                        <iaixsl:when test="price/@value = 0">
                                            <iaixsl:choose>
                                                <iaixsl:when test="price/@points_sum">
                                                    <iaixsl:value-of select="price/@points_sum"/> pkt.
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <a class="col2_54008x_phone" href="/contact.php">aan de telefoon</a>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:if test="price/@maxprice != ''">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="$changePrice">
																												<del><iaixsl:value-of select="price/@maxprice_net_formatted"/></del>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <del><iaixsl:value-of select="price/@maxprice_formatted"/></del>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </iaixsl:if>
                                            <iaixsl:choose>
                                                <iaixsl:when test="$changePrice">
																										<strong><iaixsl:value-of select="price/@price_net_formatted"/></strong>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <strong><iaixsl:value-of select="price/@price_formatted"/></strong>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </div>
                            </div>

                            <div class="col-md-2 col-12 mb-3 mb-md-0">
                                <div class="pb_button">
                                    <iaixsl:choose>
                                        <iaixsl:when test="size/@amount = 0">
                                            <span class="product_unavailable">Product niet beschikbaar</span>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <a class="btn --solid">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                <iaixsl:attribute name="title">Nu kopen</iaixsl:attribute>Nu kopen</a>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                    <a class="btn --solid mt-2">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="removeall"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">Verwijderen uit de lijst</iaixsl:attribute>Verwijderen uit de lijst</a>
                                </div>
                            </div>
                            </div>
                        </div>
                        </div>
                    </iaixsl:for-each>
                    </div>
                </div>
                </div>
            </div>
            </iaixsl:if>
        <!--Hotspot w koszyku strefa 1 (basketedit_hotspot_zone1, 115212.1)-->
            
                <iaixsl:if test="page/hotspot/products_zone1">

                    <section id="basketedit_hotspot_zone1" class="hotspot mb-5 col-12 --slider">
                        
                        <iaixsl:variable name="headline_after_basketedit_hotspot_zone1"/>
                        
                        <iaixsl:if test="not(page/hotspot/products_zone1/product) and not(page/hotspot/products_zone1/opinion)">
                            <iaixsl:attribute name="data-ajaxLoad">true</iaixsl:attribute>
                            <iaixsl:attribute name="data-pageType">basket</iaixsl:attribute>
                        </iaixsl:if>
                        <iaixsl:choose>
                            <iaixsl:when test="page/hotspot/products_zone1/product or page/hotspot/products_zone1/opinion">

                                
                                <h2>
                                    <iaixsl:choose>
                                        <iaixsl:when test="page/hotspot/products_zone1/@link">
                                            <a class="headline">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="page/hotspot/products_zone1/@link"/></iaixsl:attribute>
                                                <iaixsl:attribute name="title"/>

                                                <span class="headline__name">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="page/hotspot/products_zone1/@name"><iaixsl:value-of select="page/hotspot/products_zone1/@name"/></iaixsl:when>
                                                        <iaixsl:otherwise>Toevoegen aan boodschappenlijstje</iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </span>
                                                <iaixsl:if test="$headline_after_basketedit_hotspot_zone1">
                                                    <span class="headline__after"><iaixsl:value-of select="$headline_after_basketedit_hotspot_zone1"/></span>
                                                </iaixsl:if>
                                            </a>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <span class="headline">
                                                <span class="headline__name">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="page/hotspot/products_zone1/@name"><iaixsl:value-of select="page/hotspot/products_zone1/@name"/></iaixsl:when>
                                                        <iaixsl:otherwise>Toevoegen aan boodschappenlijstje</iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </span>
                                            </span>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </h2>

                                <div class="products d-flex flex-wrap">
                                    <iaixsl:for-each select="page/hotspot/products_zone1/*">
                                        
                                        <iaixsl:variable name="var_name"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of disable-output-escaping="yes" select="product/name/text()"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                        <iaixsl:variable name="var_icon"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                        <iaixsl:variable name="var_icon_small"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon_small"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon_small"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                        <iaixsl:variable name="var_link"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/@link"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@link"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                        <iaixsl:variable name="var_yousave"/>
                                        <iaixsl:variable name="var_net_prices"/>
                                        <iaixsl:variable name="var_b2b"/>

                                        <div class="product col-6 col-sm-4 col-md-2 py-3">

                                            
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

                                                <img src="/gfx/dut/loader.gif?r=1612518076" class="b-lazy">
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
                                                                <a class="price --phone">
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="$var_b2b and not($var_b2b = '')">
                                                                            <iaixsl:attribute name="title"><iaixsl:value-of select="$var_b2b"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/signin/@url"/></iaixsl:attribute>
                                                                            <iaixsl:value-of select="$var_b2b"/>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>
                                                                            <iaixsl:attribute name="title">Klik om naar het contactformulier te gaan</iaixsl:attribute>
                                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>Prijs op de telefoon</iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </a>
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
                                                                <a class="price --phone">
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="$var_b2b and not($var_b2b = '')">
                                                                            <iaixsl:attribute name="title"><iaixsl:value-of select="$var_b2b"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/signin/@url"/></iaixsl:attribute>
                                                                            <iaixsl:value-of select="$var_b2b"/>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>
                                                                            <iaixsl:attribute name="title">Klik om naar het contactformulier te gaan</iaixsl:attribute>
                                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>Prijs op de telefoon</iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </a>
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
                                <div class="hotspot mb-5 skeleton col-12">
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

                <iaixsl:if test="/shop/page/hotspot/products_zone1/@iairs_ajax"> </iaixsl:if>
                <iaixsl:if test="/shop/page/hotspot/products_zone1/@hotspot_ajax"> </iaixsl:if>

            
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
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1612518076</iaixsl:attribute></script>
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </iaixsl:if>
            <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/basketedit_rebates.js.gzip?r=1612518076</iaixsl:attribute></script><script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/basketedit_productslist.js.gzip?r=1612518076</iaixsl:attribute></script>
            <script>
                app_shop.runApp();
            </script>

            
            <iaixsl:if test="/shop/page/seolink_with_language_directory"/>

        
            <iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
                <iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_scripts')"/>
                <iaixsl:text disable-output-escaping="yes">&lt;/body&gt;&lt;/html&gt;</iaixsl:text>
            </iaixsl:if>
        </iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>
