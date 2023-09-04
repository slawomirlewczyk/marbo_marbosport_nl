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
                <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/affiliate_generator_php.js.gzip?r=1685223127</iaixsl:attribute></script><script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/affiliate_generator_code.js.gzip?r=1685223127</iaixsl:attribute></script></head>
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

                            <!--Menu programu partnerskiego (menu_affiliate, 108064.1)-->
            <div id="menu_affiliate">
                <a class="btn --outline --icon-left --medium icon-angle-left" href="/affiliate-main.php">
                    <iaixsl:attribute name="title"/>Homepage van het affiliate programma</a>
            </div>
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

        <!--Affiliate - wybór generatora (affiliate_generator_mode, 108071.1)-->
            <iaixsl:if test="page/generator">
                <div class="affiliate_generator_label">
                    <span class="affiliate_generator_label_span">CODE GENERATOR</span>
                </div>
                <div class="affiliate_generator_type">
                            <a href="/affiliate-generator.php?generate=promoCodes">
                        <iaixsl:choose>
                            <iaixsl:when test="page/generator/@type='promoCodes'">
                                <iaixsl:attribute name="class">promoCodes_selected</iaixsl:attribute>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <iaixsl:attribute name="class">promoCodes_unselected</iaixsl:attribute>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                        <span>Promotiecodes</span>
                    </a>
                    <a href="/affiliate-generator.php?generate=html">
                        <iaixsl:choose>
                            <iaixsl:when test="page/generator/@type='html'">
                                <iaixsl:attribute name="class">html_selected</iaixsl:attribute>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <iaixsl:attribute name="class">html_unselected</iaixsl:attribute>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                        <span>HTML</span>
                    </a>
                    <a href="/affiliate-generator.php?generate=php">
                        <iaixsl:choose>
                            <iaixsl:when test="page/generator/@type='php'">
                                <iaixsl:attribute name="class">php_selected</iaixsl:attribute>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <iaixsl:attribute name="class">php_unselected</iaixsl:attribute>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                        <span>PHP</span>
                    </a>
                    <a href="/affiliate-generator.php?generate=js">
                        <iaixsl:choose>
                            <iaixsl:when test="page/generator/@type='js'">
                                <iaixsl:attribute name="class">js_selected</iaixsl:attribute>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <iaixsl:attribute name="class">js_unselected</iaixsl:attribute>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                        <span>JAVASCRIPT</span>
                    </a>
                    <div class="clear"/>
                </div>
                <div class="affiliate_generator_type_desc">
                    <iaixsl:if test="page/generator/@type='html'">
                        Poniższy generator służy do stworzenia kodu HTML, który możesz skopiować i wkleić na swojej stronie. Powstały w ten sposób banner będzie prowadzić na stronę naszego sklepu, a jeżeli ktoś wejdzie na naszą stronę po kliknięciu go i w czasie trwania sesji założy sobie konto i złoży zamówienie, lub przynajmniej założy konto, jego zamówienia będą zarabiały na Ciebie.
                    </iaixsl:if>
                    <iaixsl:if test="page/generator/@type='js'">
                        Poniższy generator służy do stworzenia kodu JavaScript, który możesz skopiować i wkleić na swojej stronie. Powstały w ten sposób banner będzie prowadzić do poszczególnych produktów na stronie naszego sklepu, a jeżeli ktoś wejdzie na naszą stronę po kliknięciu go i w czasie trwania sesji założy sobie konto i złoży zamówienie, lub przynajmniej założy konto, jego zamówienia będą zarabiały na Ciebie.
                    </iaixsl:if>
                    <iaixsl:if test="page/generator/@type='php'">
                        Poniższy generator służy do stworzenia kodu PHP, który możesz skopiować i wkleić na swojej stronie. Powstały w ten sposób banner będzie prowadzić do poszczególnych produktów na stronie naszego sklepu, a jeżeli ktoś wejdzie na naszą stronę po kliknięciu go i w czasie trwania sesji założy sobie konto i złoży zamówienie, lub przynajmniej założy konto, jego zamówienia będą zarabiały na Ciebie.
                    </iaixsl:if>
                </div>
            </iaixsl:if>
        <!--Affiliate - generator kodu JavaScript (affiliate_generator_javascript, 108072.1)-->
<iaixsl:if test="page/generator">
    <iaixsl:if test="page/generator/@type='js'">
        <div class="affiliate_html_generator">
            <form name="affiliate_form_js" id="affiliate_form_js" method="POST">
                <input id="shop_url" type="hidden">
                    <iaixsl:attribute name="value">
                        <iaixsl:value-of select="@baseurl"/>
                    </iaixsl:attribute>
                </input>
                <div class="affiliate_generator_js_step1_label">
<iaixsl:attribute name="class">big_label affiliate_generator_js_step1_label</iaixsl:attribute>
                    <span class="affiliate_generator_js_step1_label_span">STAP 1 - PRODUCTEN SELECTEREN</span>
                </div>
                <div class="step1_js_desc">
                    <span>Voer de URL in naar de producten die in de advertentie terugkomen.</span>
                </div>
				<div class="affiliate_products_link">
				<input type="text" name="link" class="affiliate_products_link">
					<iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/generator/default_link"/></iaixsl:attribute>
				</input>
				</div>
                <div class="affiliate_js_sprawdzenie"><a href="#" id="sprawdzenie_pr" class="btn --solid affiliate_js_sprawdzenie_a">Bekijk de producten</a><img style="display:none;" class="affiliate_loader_gif" id="affiliate_loader_gif" src="/gfx/pol/affiliate_loader.gif?r=1685223127"/>
                    <div style="color:green; display:none;" class="affiliate_resources_ok" id="affiliate_resources_ok">Er zijn producten die aan bovenstaande criteria voldoen</div>
                    <div style="color:red; display:none;" class="affiliate_resources_none" id="affiliate_resources_none">Geen producten die aan bovenstaande criteria voldoen</div>
                </div>
                <div class="affiliate_generator_js_step2_label">

<iaixsl:attribute name="class">big_label affiliate_generator_js_step2_label</iaixsl:attribute>
                    <span class="affiliate_generator_js_step2_label_span">STAP 2 - ONTWERP VAN DE ADVERTENTIE</span>
                </div>
                <div class="affiliate_generator_js_step2_desc">Pas het uiterlijk van uw advertentie aan door de weergaveparameters, de grootte en het kleurenschema te specificeren. Om de werkbalk voor kleurselectie te openen, klikt u op het gekleurde pictogram</div>
                <div class="affiliate_wyswietlanie">
                    <div style="font-weight:bold; font-size:13px;">Display-instellingen</div>
                    <table cellspacing="0" cellpadding="0" class="affiliate_wyswietlanie">
                        <tr>
                            <td class="affiliate_wyswietlanie_left">Language</td>
                            <td class="affiliate_wyswietlanie_right">
                                <iaixsl:choose>
                                    <iaixsl:when test="count(/shop/language/option) = 1">
                                        <iaixsl:for-each select="/shop/language/option">
                                            <iaixsl:value-of select="@name"/><input type="hidden" id="lang" name="language"><iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute></input>
                                        </iaixsl:for-each>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <select class="affiliate_wyglad" id="lang" name="language">
                                            <iaixsl:for-each select="/shop/language/option">
                                                <option><iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute><iaixsl:value-of select="@name"/></option>
                                            </iaixsl:for-each>
                                        </select>
                                   </iaixsl:otherwise>
                                </iaixsl:choose>
                            </td>
                        </tr>
                        <tr>
                            <td class="affiliate_wyswietlanie_left">Valuta</td>
                            <td class="affiliate_wyswietlanie_right">
                            <iaixsl:choose>
                                <iaixsl:when test="count(/shop/currency/option) = 1">
                                    <iaixsl:for-each select="/shop/currency/option">
                                        <iaixsl:value-of select="@id"/> (<iaixsl:value-of select="@symbol"/>)<input type="hidden" id="curr" name="currency"><iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute></input>
                                    </iaixsl:for-each>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <select class="affiliate_wyglad" id="curr" name="currency">
                                    <iaixsl:for-each select="/shop/currency/option">
                                        <option><iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute><iaixsl:value-of select="@id"/> (<iaixsl:value-of select="@symbol"/>)</option>
                                    </iaixsl:for-each>
                                    </select>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                            </td>
                        </tr>
                        <tr id="affiliate_ilosc_produktow">
                            <td class="affiliate_wyswietlanie_left">Aantal producten</td>
                            <td class="affiliate_wyswietlanie_right">
                                <select class="affiliate_wyglad" id="products_count" name="products_count">
                                    <option value="1">1</option>
                                    <option selected="selected" value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                </select>
                            </td>
                        </tr>
                        <tr id="affiliate_uklad_produktow">
                            <td class="affiliate_wyswietlanie_left">Productindeling</td>
                            <td class="affiliate_wyswietlanie_right">
                                <select class="affiliate_wyglad" id="products_uklad" name="products_uklad">
                                    <option value="poziomy">niveaus</option>
                                    <option value="pionowy">verticaal</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="affiliate_wyswietlanie_left">Breedte per product:</td>
                            <td class="affiliate_wyswietlanie_right"> 
                                <input value="225" style="width:40px;" type="text" name="banner_width" id="banner_width"/>px</td>
                        </tr>
                        <tr>
                            <td class="affiliate_wyswietlanie_left">Hoogte van een product:</td>
                            <td class="affiliate_wyswietlanie_right">
                                <input value="300" style="width:40px;" type="text" name="banner_height" id="banner_height"/>px</td>
                        </tr>
                        <tr>
                            <td class="affiliate_wyswietlanie_left">Breedte van productafbeeldingen:</td>
                            <td class="affiliate_wyswietlanie_right"> 
                                <input value="225" style="width:40px;" type="text" name="image_width" id="image_width"/>px</td>
                        </tr>
                        <tr>
                            <td class="affiliate_wyswietlanie_left">Hoogte van productgrafiek:</td>
                            <td class="affiliate_wyswietlanie_right">
                                <input value="220" style="width:40px;" type="text" name="image_height" id="image_height"/>px</td>
                        </tr>
                    </table>
                    <input type="hidden" name="affiliate"><iaixsl:attribute name="value"><iaixsl:value-of select="basket/@login"/></iaixsl:attribute></input>
                </div>
                <div class="affiliate_kolorystyka">
                    <div style="font-weight:bold; font-size:13px;">Kleuren</div>
                    <table class="affiliate_kolorystyka">
                        <tr>
                            <td class="affiliate_kolorystyka_left"><span>Productnaam kleur:</span></td>
                            <td class="affiliate_kolorystyka_right">
                                <input name="color3" type="text" style="width: 60px;" maxlength="7" value="#000000" id="color3" class="iColorPicker"/>
                                <span style="float:left;">
                                <input class="affiliate_js_bold" type="checkbox" name="nazwa_bold"/>Gedurfd</span>
                                <div class="clear"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="affiliate_kolorystyka_left"><span>Prijs kleur:</span></td>
                            <td class="affiliate_kolorystyka_right"><input name="color4" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#d9592b" id="color4"/><span style="float:left;"><input class="affiliate_js_bold" type="checkbox" name="cena_bold"/>Gedurfd</span><div class="clear"/></td>
                        </tr>
                        <tr>
                            <td class="affiliate_kolorystyka_left"><span>Kleur van de prijs doorgestreept:</span></td>
                            <td class="affiliate_kolorystyka_right"><input name="color5" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#8d8d8d" id="color5"/><span style="float:left;"><input class="affiliate_js_bold" type="checkbox" name="cena_promo_bold"/>Gedurfd</span><div class="clear"/></td>
                        </tr>
                        <tr>
                            <td class="affiliate_kolorystyka_left"><span>Frame:</span></td>
                            <td class="affiliate_kolorystyka_right">
                                <span><input name="border_radio" class="border_color" type="radio" id="border_radio1" value="nie" checked="checked">nie</input></span>
                                <span style="margin-left:10px;"><input name="border_radio" class="border_color" type="radio" id="border_radio2" value="tak">tak</input></span>
                            </td>
                        </tr>
                        <tr id="border_tr" style="display:none;">
                            <td class="affiliate_kolorystyka_left"><span>Kleur van het frame:</span></td>
                            <td class="affiliate_kolorystyka_right"><div><input name="color1" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#fff" id="color1"/><span style="float:left;">Dikte<input style="width:20px;" name="border_width" type="text" value="1"/>px</span><div class="clear"/></div></td>
                        </tr>
                        <tr>
                            <td class="affiliate_kolorystyka_left"><span>Achtergrond:</span></td>
                            <td class="affiliate_kolorystyka_right">
                                <span><input name="background_radio" class="background_color" type="radio" id="background_radio1" value="nie" checked="checked">nie</input></span>
                                <span style="margin-left:10px;"><input name="background_radio" class="background_color" type="radio" id="background_radio2" value="tak">tak</input></span>
                            </td>
                        </tr>
                        <tr id="background_tr" style="display:none;">
                            <td class="affiliate_kolorystyka_left"><span>Achtergrondkleur:</span></td>
                            <td class="affiliate_kolorystyka_right"><div><input name="color2" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#fff" id="color2"/><div class="clear"/></div></td>
                        </tr>
                    </table>
                </div>
                <div class="clear"/>
                <div class="affiliate_podglad_desc">Aby sprawdzić jak będzie wyglądała reklama z powyższymi ustawieniami, kliknij przycisk "Pokaż podgląd reklamy".</div>
                <a href="#" id="podglad_button" class="btn --solid affiliate_podglad_button">Advertentievoorbeeld tonen</a>
                <div class="podglad"/>
                <div class="affiliate_generator_js_step3_label">
<iaixsl:attribute name="class">big_label affiliate_generator_js_step3_label</iaixsl:attribute>
                    <span class="affiliate_generator_js_step3_label_span">STAP 3 - KLAAR!</span>
                </div>
                <div class="affiliate_js_step3_desc">Po wcisnięciu przycisku "Genereuj kod JavaScript" pojawi się kod JavaSscript, który możesz skopiować i wkleić na swojej stronie. Kliknij na ten button za każdym razem jak dokonasz jakiś zmian w ustawieniach reklam.</div>
                <div class="js_generator_output" id="js_generator_output"><textarea class="js_output" readonly="true" cols="65" rows="4" name="output" id="output"/></div>
                <a id="affiliate_js_generate" class="btn --solid affiliate_js_generate" href="#">Genereer Javascript code</a>
            </form>
        </div>
    </iaixsl:if>
</iaixsl:if>
<!--Affiliate - generator kodu PHP (affiliate_generator_php, 90344.1)-->
<iaixsl:if test="page/generator">
    <iaixsl:if test="page/generator/@type='php'">
    <div id="php_code" style="display:none;">
        <iaixsl:for-each select="page/generator/code/line">
            <iaixsl:value-of select="text"/><br/>
        </iaixsl:for-each>
    </div>
        <div class="affiliate_html_generator">
            <form name="affiliate_form_js" id="affiliate_form_js" action="/ajax/affiliate-generator.php" method="POST">
                <input id="shop_url" type="hidden" name="affiliate_shop_urtl">
                    <iaixsl:attribute name="value">
                        <iaixsl:value-of select="@baseurl"/>
                    </iaixsl:attribute>
                </input>
                <div class="affiliate_generator_js_step1_label">
                    <iaixsl:attribute name="class">big_label affiliate_generator_js_step1_label</iaixsl:attribute>
                    <span class="affiliate_generator_js_step1_label_span">STAP 1 - PRODUCTEN SELECTEREN</span>
                </div>
                     <div class="step1_js_desc">
                    <span>Voer de URL in naar de productlijst of naar een enkele productkaart.</span>
                </div>
                <div class="affiliate_products_link">
                <input type="text" name="link" class="affiliate_products_link">
                    <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/generator/default_link"/></iaixsl:attribute>
                </input>
                </div>
                
                <div class="affiliate_js_sprawdzenie"><a href="#" id="sprawdzenie_pr" class="btn --solid affiliate_js_sprawdzenie_a">Bekijk de producten</a><img style="display:none;" class="affiliate_loader_gif" id="affiliate_loader_gif" src="/gfx/pol/affiliate_loader.gif?r=1685223127"/>
                    <div style="color:green; display:none;" class="affiliate_resources_ok" id="affiliate_resources_ok">Er zijn producten die aan bovenstaande criteria voldoen</div>
                    <div style="color:red; display:none;" class="affiliate_resources_none" id="affiliate_resources_none">Geen producten die aan bovenstaande criteria voldoen</div>
                </div>


                <div class="affiliate_generator_js_step2_label">
                    <iaixsl:attribute name="class">big_label affiliate_generator_js_step2_label</iaixsl:attribute>
                    <span class="affiliate_generator_js_step2_label_span">STAP 2 - ONTWERP VAN DE ADVERTENTIE</span>
                </div>
                <div class="affiliate_generator_js_step2_desc">Pas het uiterlijk van uw advertentie aan door de weergaveparameters, de grootte en het kleurenschema te specificeren. Om de werkbalk voor kleurselectie te openen, klikt u op het gekleurde pictogram</div>
                <div class="affiliate_wyswietlanie">
                    <div style="font-weight:bold; font-size:13px;">Display-instellingen</div>
                    <table cellspacing="0" cellpadding="0" class="affiliate_wyswietlanie">
                        <tr>
                            <td class="affiliate_wyswietlanie_left">Language:</td>
                            <td class="affiliate_wyswietlanie_right">
                                <iaixsl:choose>
                                    <iaixsl:when test="count(/shop/language/option) = 1">
                                        <iaixsl:for-each select="/shop/language/option">
                                            <iaixsl:value-of select="@name"/><input type="hidden" id="lang" name="language"><iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute></input>
                                        </iaixsl:for-each>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <select class="affiliate_wyglad" id="lang" name="language">
                                            <iaixsl:for-each select="/shop/language/option">
                                                <option><iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute><iaixsl:value-of select="@name"/></option>
                                            </iaixsl:for-each>
                                        </select>
                                   </iaixsl:otherwise>
                                </iaixsl:choose>
                            </td>
                        </tr>
                        <tr>
                            <td class="affiliate_wyswietlanie_left">Valuta:</td>
                            <td class="affiliate_wyswietlanie_right">
                            <iaixsl:choose>
                                <iaixsl:when test="count(/shop/currency/option) = 1">
                                    <iaixsl:for-each select="/shop/currency/option">
                                        <iaixsl:value-of select="@id"/> (<iaixsl:value-of select="@symbol"/>)<input type="hidden" id="curr" name="currency"><iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute></input>
                                    </iaixsl:for-each>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <select class="affiliate_wyglad" id="curr" name="currency">
                                    <iaixsl:for-each select="/shop/currency/option">
                                        <option><iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute><iaixsl:value-of select="@id"/> (<iaixsl:value-of select="@symbol"/>)</option>
                                    </iaixsl:for-each>
                                    </select>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                            </td>
                        </tr>
                        <tr id="affiliate_ilosc_produktow">
                            <td class="affiliate_wyswietlanie_left">Aantal producten:</td>
                            <td class="affiliate_wyswietlanie_right">
                                <select class="affiliate_wyglad" id="products_count" name="products_count">
                                    <option value="1">1</option>
                                    <option selected="selected" value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                </select>
                            </td>
                        </tr>
                        <tr id="affiliate_uklad_produktow">
                            <td class="affiliate_wyswietlanie_left">Productindeling:</td>
                            <td class="affiliate_wyswietlanie_right">
                                <select class="affiliate_wyglad" id="products_uklad" name="products_uklad">
                                    <option value="poziomy">niveaus</option>
                                    <option value="pionowy">verticaal</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="affiliate_wyswietlanie_left">Breedte per product:</td>
                            <td class="affiliate_wyswietlanie_right">
                                <input value="225" style="width:40px;" type="text" name="banner_width" id="banner_width"/>px</td>
                        </tr>
                        <tr>
                            <td class="affiliate_wyswietlanie_left">Hoogte van een product:</td>
                            <td class="affiliate_wyswietlanie_right">
                                <input value="300" style="width:40px;" type="text" name="banner_height" id="banner_height"/>px</td>
                        </tr>
                        <tr>
                            <td class="affiliate_wyswietlanie_left">Breedte van productafbeeldingen:</td>
                            <td class="affiliate_wyswietlanie_right">
                                <input value="225" style="width:40px;" type="text" name="image_width" id="image_width"/>px</td>
                        </tr>
                        <tr>
                            <td class="affiliate_wyswietlanie_left">Hoogte van productgrafiek:</td>
                            <td class="affiliate_wyswietlanie_right">
                                <input value="220" style="width:40px;" type="text" name="image_height" id="image_height"/>px</td>
                        </tr>
                    </table>
                    <input type="hidden" name="affiliate"><iaixsl:attribute name="value"><iaixsl:value-of select="basket/@login"/></iaixsl:attribute></input>
                </div>
                <div class="affiliate_kolorystyka">
                    <div style="font-weight:bold; font-size:13px;">Kleuren</div>
                    <table class="affiliate_kolorystyka">
                        <tr>
                            <td class="affiliate_kolorystyka_left"><span>Productnaam kleur:</span></td>
                            <td class="affiliate_kolorystyka_right">
                                <input name="color3" type="text" style="width: 60px;" maxlength="7" value="#000000" id="color3" class="iColorPicker"/>
                                <span style="float:left;">
                                <input class="affiliate_js_bold" type="checkbox" name="nazwa_bold"/>Gedurfd</span>
                                <div class="clear"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="affiliate_kolorystyka_left"><span>Prijs kleur:</span></td>
                            <td class="affiliate_kolorystyka_right"><input name="color4" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#d9592b" id="color4"/><span style="float:left;"><input class="affiliate_js_bold" type="checkbox" name="cena_bold"/>Gedurfd</span><div class="clear"/></td>
                        </tr>
                        <tr>
                            <td class="affiliate_kolorystyka_left"><span>Kleur van de prijs doorgestreept:</span></td>
                            <td class="affiliate_kolorystyka_right"><input name="color5" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#8d8d8d" id="color5"/><span style="float:left;"><input class="affiliate_js_bold" type="checkbox" name="cena_promo_bold"/>Gedurfd</span><div class="clear"/></td>
                        </tr>
                        <tr>
                            <td class="affiliate_kolorystyka_left"><span>Frame:</span></td>
                            <td class="affiliate_kolorystyka_right">
                                <span><input name="border_radio" class="border_color" type="radio" id="border_radio1" value="nie" checked="checked"/>niet</span>
                                <span style="margin-left:10px;"><input name="border_radio" class="border_color" type="radio" id="border_radio2" value="tak"/>ja</span>
                            </td>
                        </tr>
                        <tr id="border_tr" style="display:none;">
                            <td class="affiliate_kolorystyka_left"><span>Kleur van het frame:</span></td>
                            <td class="affiliate_kolorystyka_right"><div><input name="color1" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#fff" id="color1"/><span style="float:left;">Dikte<input style="width:20px;" name="border_width" type="text" value="1"/>px</span><div class="clear"/></div></td>
                        </tr>
                        <tr>
                            <td class="affiliate_kolorystyka_left"><span>Achtergrond:</span></td>
                            <td class="affiliate_kolorystyka_right">
                                <span><input name="background_radio" class="background_color" type="radio" id="background_radio1" value="nie" checked="checked"/>niet</span>
                                <span style="margin-left:10px;"><input name="background_radio" class="background_color" type="radio" id="background_radio2" value="tak"/>ja</span>
                            </td>
                        </tr>
                        <tr id="background_tr" style="display:none;">
                            <td class="affiliate_kolorystyka_left"><span>Achtergrondkleur:</span></td>
                            <td class="affiliate_kolorystyka_right"><div><input name="color2" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#fff" id="color2"/><div class="clear"/></div></td>
                        </tr>
                    </table>
                </div>
                <div class="clear"/>
                <div class="affiliate_podglad_desc">Aby sprawdzić jak będzie wyglądała reklama z powyższymi ustawieniami, kliknij krzycisk "Pokaż podgląd reklamy".</div>
                <a href="#" id="podglad_button" class="btn --solid affiliate_podglad_button">Advertentievoorbeeld tonen</a>
                <div class="podglad"/>
                <div class="affiliate_generator_js_step3_label">
                <iaixsl:attribute name="class">big_label affiliate_generator_js_step3_label</iaixsl:attribute>
                    <span class="affiliate_generator_js_step3_label_span">STAP 3 - KLAAR!</span>
                </div>
                <div class="affiliate_js_step3_desc">
                    <p class="affiliate_php_desc">Po wciśnięciu przycisku "Generuj kod PHP" pojawi się przykładowy kod PHP, który możesz skopiować i wkleić do swojego skryptu. Możesz go dowolnie modyfikować.</p>
                    <p class="affiliate_php_desc">Het script haalt XML op gecodeerd in UTF-8. Om Poolse tekens correct weer te geven, moet u de juiste invoer- en uitvoercodering instellen in uw code. De uitvoercodering moet overeenkomen met de codering die u op uw site gebruikt. De standaard is gedefinieerd:</p>
                    <ul class="php_ul">
                        <li>invoer (INPUT_ENCODING): UTF-8</li>
                        <li>uitvoer - weergegeven op uw website (OUTPUT_ENCODING): ISO-8859-2</li>
                    </ul>
                    <p class="affiliate_php_desc">Deze instelling is geschikt voor PHP5. Voor PHP 4 en eerder is het noodzakelijk om de invoercodering in te stellen op ISO-8859-2. De meest voorkomende coderingen die in PHP beschikbaar zijn, zijn:</p>
                    <ul class="php_ul">
                        <li>UTF-8</li>
                        <li>Windows-1251</li>
                        <li>Windows-1252</li>
                        <li>ISO-8859-1</li>
                        <li>ISO-8859-2</li>
                        <li>ISO-8859-3 ... ISO-8859-15</li>
                    </ul>
                    <p class="affiliate_php_desc">De iconv() functie, beschikbaar voor PHP sinds versie 4.0.5, wordt gebruikt om de ontvangen xml te converteren. Ondersteuning voor specifieke tekensets is afhankelijk van de implementatie van iconv() op uw systeem. Houd er rekening mee dat iconv() op sommige systemen niet werkt zoals verwacht. In dergelijke gevallen moet de libiconv-bibliotheek worden geïnstalleerd. Zie de website voor meer informatie over de functie iconv() en codering<a href="http://php.net/">http://php.net/</a></p>
                </div>
                <a id="affiliate_php_generate" class="btn --solid affiliate_php_generate" href="#">PHP-code genereren</a>
                <div style="display:none;" class="php_generator_output" id="php_output"/>

            </form>
        </div>
    </iaixsl:if>
</iaixsl:if>
<!--Affiliate - kody promocyjne (affiliate_generator_code, 107732.1)-->


    
    <iaixsl:if test="page/generator/@type ='promoCodes'">
      <div id="affiliate_promo_code" class="clearfix">
        <div class="big_label">Verwijs een vriend en verdien</div>
        <iaixsl:choose>
          <iaixsl:when test="page/generator/rebate_codes/rebate_code">
            <div class="affiliate_code_desc">
              <p class="affiliate_promo_code_desc">Verdienen met codes kost u niets, het vereist alleen uw inzet en de tijd die u investeert in promotie.<br/>Ontdek hoe makkelijk het is en begin geld te verdienen.</p>
            </div>

            <div class="info_bar row">
              <div class="info_bar_sub col-12 col-md-4">
                <div class="info_bar_sub" id="info_bar_step1">
                    <strong>Kies een code</strong>
                    <div class="info_bar_desc">Wij geven u een individuele code die gekoppeld is aan uw partneraccount in onze winkel.</div>
                </div>
              </div>

              <div class="info_bar_sub col-12 col-md-4">
                <div class="info_bar_sub" id="info_bar_step2">
                    <strong>KORTINGSCODES PROMOTEN</strong>
                    <div class="info_bar_desc">Deel de geselecteerde code verder, bijvoorbeeld op sociale media of op uw website.</div>
                </div>
              </div>

              <div class="info_bar_sub col-12 col-md-4">
                <div class="info_bar_sub" id="info_bar_step3">
                    <strong>geld verdienen</strong>
                    <div class="info_bar_desc">Een deel van het bedrag dat is betaald door klanten die deze kortingscode hebben gebruikt, wordt teruggestort op uw rekening.</div>
                </div>
              </div>
            </div>
            <div class="affiliate_code_desc">
              <p class="affiliate_promo_code_desc">Wil je geweldige cash beloningen ontvangen voor jezelf en je vrienden? Als het antwoord ja is, kopieer dan gewoon de kortingscode en stuur hem naar je vrienden.</p>
            </div>


            <div class="affiliate_promo_codes clearfix">
              <div class="row">
                <iaixsl:for-each select="page/generator/rebate_codes/rebate_code">
                  <div class="col-12 col-sm-4">
                    <div class="affiliate_promo_codes_wrapper">
                      <div class="affiliate_promo_code">Code:<strong>
                          <iaixsl:value-of disable-output-escaping="yes" select="@number"/>
                        </strong>
                        <a href="#" class="show_rebate_details">Korting details</a>
                      </div>
                      <div class="affiliate_promo_code_rebate">
                        <small>Geldig tot:</small>
                        <br/>
                        <iaixsl:value-of disable-output-escaping="yes" select="@expires"/>
                      </div>
                    </div>

                    <div style="display:none;" class="promo_code_details">
                      <div class="n67313_out">
                        <div class="n67313_border">

                          <div class="n67313_rebate_l">
                            <span class="code_details_number">Code:<strong><iaixsl:value-of disable-output-escaping="yes" select="@number"/></strong>
                            </span>
                          </div>

                          <span class="code_details_shops">
                            <div class="n67313_rebate_l">Actief in winkels</div>
                            <iaixsl:for-each select="active_in_shops/shop_name">
                              <strong><iaixsl:value-of select="text()"/></strong>
                            </iaixsl:for-each>
                          </span>

                          <iaixsl:if test="products_rebate">
                            <div class="n67313_rebate_l"/>
                            <table class="clients_rebates">
                              <tbody>
                                <tr>
                                  <iaixsl:for-each select="products_rebate">
                                    <td style="width:100%;" class="clients_rebates">
                                      <div class="clients_rebates_wrapper">
                                        <a class="product_name">Voor het hele assortiment</a>
                                        <span class="n67313_other_value">
                                          <iaixsl:value-of select="@rebate_value_formatted"/>
                                        </span>
                                      </div>
                                    </td>
                                  </iaixsl:for-each>
                                </tr>
                              </tbody>
                            </table>
                          </iaixsl:if>

                          <iaixsl:if test="producer/item">
                            <div class="n67313_rebate_l">Op geselecteerde fabrikanten</div>

                            <table class="clients_rebates">
                              <tbody>
                                <tr>
                                  <iaixsl:for-each select="producer/item">
                                    <td style="width:100%;" class="clients_rebates">
                                      <div class="clients_rebates_wrapper">
                                        <a class="product_name">
                                          <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                          <iaixsl:value-of select="@name"/>
                                        </a>
                                        <span class="n67313_other_value">
                                          <iaixsl:value-of select="@rebate_value"/>
                                          <iaixsl:if test="@rebate_type = 'percentage'">%</iaixsl:if>
                                        </span>
                                      </div>
                                    </td>
                                  </iaixsl:for-each>
                                </tr>
                              </tbody>
                            </table>
                          </iaixsl:if>

                          <iaixsl:if test="series/item">
                            <div class="n67313_rebate_l">Voor geselecteerde series</div>

                            <table class="clients_rebates">
                              <tbody>
                                <tr>
                                  <iaixsl:for-each select="series/item">
                                    <td style="width:100%;" class="clients_rebates">
                                      <div class="clients_rebates_wrapper">
                                        <a class="product_name">
                                          <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                          <iaixsl:value-of select="@name"/>
                                        </a>
                                        <span class="n67313_other_value">
                                          <iaixsl:value-of select="@rebate_value"/>
                                          <iaixsl:if test="@rebate_type = 'percentage'">%</iaixsl:if>
                                        </span>
                                      </div>
                                    </td>
                                  </iaixsl:for-each>
                                </tr>
                              </tbody>
                            </table>
                          </iaixsl:if>

                          <iaixsl:if test="main_cat/item">
                            <div class="n67313_rebate_l">Voor bepaalde categorieën</div>

                            <table class="clients_rebates">
                              <tbody>
                                <tr>
                                  <iaixsl:for-each select="main_cat/item">
                                    <td style="width:100%;" class="clients_rebates">
                                      <div class="clients_rebates_wrapper">
                                        <a class="product_name">
                                          <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                          <iaixsl:value-of select="@name"/>
                                        </a>
                                        <span class="n67313_other_value">
                                          <iaixsl:value-of select="@rebate_value"/>
                                          <iaixsl:if test="@rebate_type = 'percentage'">%</iaixsl:if>
                                        </span>
                                      </div>
                                    </td>
                                  </iaixsl:for-each>
                                </tr>
                              </tbody>
                            </table>
                          </iaixsl:if>
                        </div>
                      </div>

                    </div>

                  </div>
                </iaixsl:for-each>
              </div>
            </div>

            <div class="affiliate_code_desc">
              <p class="affiliate_promo_code_desc">Bent u een ervaren ontwikkelaar en wilt u de mogelijkheden om het uiterlijk van de kortingscodeknop aan te passen uitbreiden, klik dan op de onderstaande knop.</p>
            </div>
            <div class="row justify-content-center">
                <div class="col-12 col-sm-4">
                    <a id="show_generator_form" class="btn --solid --medium">&lt;/&gt; Jestem developerem</a>
                </div>
            </div>

            <canvas id="promo_code_canvas" style="display:none;"/>

            
            <form name="affiliate_form_promo_codes" id="affiliate_form_promo_codes" method="POST">

              
              <div class="affiliate_form_step step1">
                <div class="big_label">stap1 - selecteer kortingscode</div>
                <div class="affiliate_code_desc">
                  <p class="affiliate_promo_code_desc">Hieronder vindt u een lijst van alle promotiecodes die actief zijn in de deelnemende winkels</p>
                </div>

                  <div class="form-group row">
                  <div class="col-12 col-sm-3">
                        <label for="promo_codes_shop" class="control-label grid">Kies een winkel:</label>
                   </div>
                   <div class="has-feedback control-label next_div_grid  col-12 col-sm-9">
                    <select id="promo_codes_shop" name="promo_codes_shop">
                      <iaixsl:for-each select="/shop/page/generator/shop">
                        <option>
                          <iaixsl:attribute name="value">
                            <iaixsl:value-of select="@name"/>
                          </iaixsl:attribute>
                          <iaixsl:value-of select="@name"/>
                        </option>
                      </iaixsl:for-each>
                    </select>
                  </div>
                </div>

                <div class="form-group row">
                    <div class="col-12 col-sm-3">
                        <label for="promo_codes_code" class="control-label grid">Kies een code:</label>
                    </div>
                 <div class="has-feedback control-label next_div_grid  col-12 col-sm-9">
                  <select class="affiliate_promo_codes" id="promo_codes_code" name="promo_codes_code">
                    <iaixsl:for-each select="/shop/page/generator/rebate_codes/rebate_code">
                      <option>
                        <iaixsl:attribute name="value">
                          <iaixsl:value-of select="@number"/>
                        </iaixsl:attribute>
                        <iaixsl:attribute name="data-shop">
                          <iaixsl:for-each select="active_in_shops/shop_name">
                            <iaixsl:value-of select="text()"/>
                            <iaixsl:if test="not(position() = last())">
                              ,
                            </iaixsl:if>
                          </iaixsl:for-each>
                        </iaixsl:attribute>
                        <iaixsl:value-of select="@number"/>
                      </option>
                    </iaixsl:for-each>
                  </select>
                </div>
              </div>
              <div class="form-group row justify-content-end">
                <div class="has-feedback control-label next_div_grid col-12 col-sm-9 pull-right">
                  <iaixsl:for-each select="/shop/page/generator/rebate_codes/rebate_code">
                    <div class="active-code n67313_out" style="display:none;">
                      <iaixsl:attribute name="data-shops">
                        <iaixsl:for-each select="active_in_shops/shop_name">
                          <iaixsl:value-of select="text()"/>
                          <iaixsl:if test="not(position() = last())">
                            ,
                          </iaixsl:if>
                        </iaixsl:for-each>
                      </iaixsl:attribute>

                      <div class="code-name">
                        <i>
                          <iaixsl:attribute name="class">
                            icon-tags
                          </iaixsl:attribute>
                        </i>
                        <span>Geselecteerde code:<strong>
                            <iaixsl:value-of select="@number"/>
                          </strong>
                        </span>
                      </div>

    

                        <div class="code-info">
                        <ul class="code-details">
                            <iaixsl:if test="@min_order &gt; 0">
                            <li>

                                <iaixsl:variable name="minProdVal"><iaixsl:value-of select="@min_order"/></iaixsl:variable>Vereiste waarde van de producten in het mandje:<strong><iaixsl:value-of disable-output-escaping="yes" select="format-number($minProdVal, '#')"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="/shop/currency/@name"/></strong>
                            </li>
                            </iaixsl:if>
                            <iaixsl:variable name="max_order_value">Maksymalna wartość produktów w koszyku: </iaixsl:variable>
                            <iaixsl:if test="@max_order &gt; 0 and $max_order_value != ''">
                            <li>
                                <iaixsl:value-of select="$max_order_value"/>
                                <strong><iaixsl:value-of select="@max_order_formatted"/></strong>
                            </li>
                            </iaixsl:if>
                            <iaixsl:if test="@expires">
                            <li>Geldig tot:<strong><iaixsl:value-of disable-output-escaping="yes" select="@expires"/></strong>
                            </li>
                            </iaixsl:if>
                            <iaixsl:choose>
                            <iaixsl:when test="@combined='y' or @combined='m'">
                                <li>De korting wordt opgeteld bij de andere kortingen.</li>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <li>De korting telt niet op bij andere kortingen.</li>
                            </iaixsl:otherwise>
                            </iaixsl:choose>

                            <iaixsl:if test="inactive_zones/item">
                            <li>De korting geldt niet voor producten gemarkeerd als:<iaixsl:for-each select="inactive_zones/item">
                                <strong><iaixsl:value-of disable-output-escaping="yes" select="@description"/></strong><iaixsl:if test="position() != last()">, </iaixsl:if>
                                </iaixsl:for-each>
                            </li>
                            </iaixsl:if>
                        </ul>

                        </div>

                    </div>
                    </iaixsl:for-each>
                    <div class="active-code n67313_out error menu_messages_message" style="display:none;">Geen code die overeenkomt met de bovenstaande criteria.</div>
                </div>
                </div>
            </div>

            
            <div class="affiliate_form_step step2">
            <div class="big_label">stap2 - kies een stijl</div>
            <div class="affiliate_code_desc">
            <p class="affiliate_promo_code_desc">
                
            </p>
            </div>
            <div class="affiliate_promo_step_2">
            <div class="form-group row">
                <div class="has-feedback control-label next_div_grid affiliate_promo_step_2_input">
                    <input name="promo_code_radio" type="radio" value="text" id="promo_code_text_link" checked="checked"/>
                    </div>
                    <div class="col-6 col-sm-4 col-md-3">
                    <label for="promo_code_text_link" id="promo_code_text_link_label" class="control-label grid">Tekstlink</label>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="has-feedback control-label next_div_grid affiliate_promo_step_2_input">
                    <input name="promo_code_radio" type="radio" value="text_icon" id="promo_code_text_link_icon"/>
                    </div>
                    <div class="col-6 col-sm-4 col-md-3">
                    <label for="promo_code_text_link_icon" id="promo_code_text_link_icon_label" class="control-label grid">
                        <i class="icon-tags"></i>Tekstlink + pictogram</label>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="has-feedback control-label next_div_grid affiliate_promo_step_2_input">
                        <input name="promo_code_radio" type="radio" value="button" id="promo_code_przycisk"/>
                    </div>
                    <div class="col-6 col-sm-4 col-md-3">
                    <label for="promo_code_przycisk" id="promo_code_przycisk_label" class="control-label grid">Tekstlink + pictogram</label>
                    </div>
                </div>

                <div class="form-group row">
                <div class="has-feedback control-label next_div_grid affiliate_promo_step_2_input">
                <input name="promo_code_radio" type="radio" value="button_icon" id="promo_code_text_przycisk_ikona"/>
                </div>
                <div class="col-6 col-sm-4 col-md-3">
                    <label for="promo_code_text_przycisk_ikona" id="promo_code_text_przycisk_ikona_label" class="control-label grid">
                        <i class="icon-tags"></i>Knop + pictogram</label>
                </div>
                </div>
            </div>
            </div>


            
            <div class="affiliate_form_step step3">
            <div class="big_label">stap3 - de look aanpassen</div>
            <div class="affiliate_code_desc">
            <p class="affiliate_promo_code_desc">
                
            </p>
            </div>

            <div class="clearfix row">
            <div class="affiliate_promo_codes_kolorystyka col-12 col-md-6">

            <div class="form-group row">
                <div class="col-12 col-sm-4">
                    <label for="promo_codes_code" class="control-label grid">Tekst op de knop:</label>
                </div>
                <div class="has-feedback control-label next_div_grid col-12 col-sm-8">
                    <iaixsl:variable name="promo_code_init_text">Kliknij, aby aktywować kod: %s</iaixsl:variable>
                    <input name="promo_code_text" type="text" value="" id="promo_code_text">
                        <iaixsl:attribute name="data-initVal"><iaixsl:value-of select="$promo_code_init_text"/></iaixsl:attribute>
                    </input>
                </div>
            </div>

            <div class="form-group row">
                <div class="col-12 col-sm-4">
                    <label for="promo_code_text_size" class="control-label grid">Tekstgrootte:</label>
                </div>
                <div class="has-feedback control-label next_div_grid col-12 col-sm-8">
                    <input name="promo_code_text_size" type="text" id="promo_code_text_size">
                        <iaixsl:attribute name="value">14</iaixsl:attribute>
                    </input>px</div>
            </div>
        <div class="form-group row">
            <div class="col-12 col-sm-4">
                <label for="color3" class="control-label grid">Tekstkleur:</label>
            </div>
            <div class="has-feedback control-label next_div_grid col-12 col-sm-8">
            <input name="color3" type="text" style="width: 60px;" maxlength="7" value="#000000" id="color3" class="iColorPicker"/>

                <input class="affiliate_promo_codes_bold" type="checkbox" name="nazwa_bold"/>

                <label for="nazwa_bold">Gedurfd</label>
            </div>

            </div>

            <div class="form-group row">
            <div class="col-12 col-sm-4">
                <label for="color4" class="control-label grid">Icoonkleur:</label>
            </div>
            <div class="has-feedback control-label next_div_grid col-12 col-sm-8">
                <input name="color4" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#000000" id="color4"/>
            </div>
            </div>

            <div class="form-group row">
            <div class="col-12 col-sm-4">
            <label for="color5" class="control-label grid">Achtergrondkleur:</label>
            </div>
            <div class="has-feedback control-label next_div_grid col-12 col-sm-8">
                <input name="color5" class="iColorPicker" type="text" style="width: 60px;" maxlength="7" value="#0090f6" id="color5"/>
            </div>
            </div>

            <div class="form-group row">
            <div class="col-12 col-sm-4">
                <label for="ikona1" class="control-label grid">Selecteer het pictogram:</label>
            </div>
            <div class="col-12 col-sm-8">
            <div class="has-feedback control-label next_div_grid affiliate_promo_icon selected" id="ikona1">
                <i class="icon-tags"></i>
                <input name="ikona" type="radio" id="ikona1_input" style="visibility: hidden"/>
                </div>
                <div class="has-feedback control-label next_div_grid affiliate_promo_icon" id="ikona2">
                <i class="icon-star"></i>
                <input name="ikona" type="radio" id="ikona2_input" style="visibility: hidden"/>
                </div>
                <div class="has-feedback control-label next_div_grid affiliate_promo_icon" id="ikona3">
                <i class="icon-credit-card"></i>
                <input name="ikona" type="radio" id="ikona3_input" style="visibility: hidden"/>
                </div>
                <div class="has-feedback control-label next_div_grid affiliate_promo_icon" id="ikona4">
                <i class="icon-link"></i>
                <input name="ikona" type="radio" id="ikona4_input" style="visibility: hidden"/>
                </div>
                <div class="has-feedback control-label next_div_grid affiliate_promo_icon" id="ikona5">
                <i class="icon-heart"></i>
                <input name="ikona" type="radio" id="ikona5_input" style="visibility: hidden"/>
                </div>
            </div>
            </div>
            </div>

            <div class="form-group col-12 col-md-6">
            <div class="has-feedback control-label">
            <p id="promo_codes_preview_label">Kortingscode knop voorbeeld</p>
            <div id="promo_codes_preview" name="promo_codes_preview" readOnly="true"/>
            </div>
        </div>
        </div>
    </div>


    
    <div class="affiliate_form_step step4">
        <div class="big_label">stap4 - klaar</div>
        <div class="affiliate_code_desc">
        <p class="affiliate_promo_code_desc">Masz możliwość wygenerowania bezpośredniego linku, dzięki czemu klienci nie muszą ręcznie wpisywać kodu w sklepie. Klikając w wygenerowany link, klient zostanie przeniesiony do sklepu z aktywnym juz kodem promocyjnym, złożone zamówienia będa zarabuiały na Ciebie. Aby wygenerować bezpośredni url wybierz sklep i kliknij "Generuj url linka" jeśli potrzebujesz gotowy kod HTML do wstawienia na stronę lub e-maila kliknij "Generuj kod linka."</p>
        </div>
        <div class="row">
        <div class="affiliate_promo_codes_buttons col-12 col-sm-3">
            <a class="btn --solid generate_promo_codes_button" href="#" id="button_generate_code">Linkcode genereren</a>
            <a class="btn --solid generate_promo_codes_button" href="#" id="button_generate_link">Genereer link url</a>
        </div>
        <div class="form-group affiliate_promo_codes_output col-12 col-sm-9">
        <div class="has-feedback control-label">
            <textarea id="promo_codes_output" name="promo_codes_output" readOnly="true"/>
        </div>
        </div>
    </div>
    </div>
    </form>

    

    </iaixsl:when>
    <iaixsl:otherwise>
    <div class="affiliate_promo_code_desc">
    <span class="affiliate_noresources">Geen actieve promotiecodes!</span>
    </div>
    </iaixsl:otherwise>
    </iaixsl:choose>
    </div>
    </iaixsl:if>
    <!--Affiliate - generator kodu HTML (affiliate_generator_html, 110551.1)-->
<iaixsl:if test="page/generator">
	<iaixsl:if test="page/generator/@type='html'">
		<div class="affiliate_html_generator">
			<form name="affiliate_form_html" id="affiliate_form_html">
				<input id="shop_url" type="hidden">
					<iaixsl:attribute name="value">
						<iaixsl:value-of select="@baseurl"/>
					</iaixsl:attribute>
				</input>
				<div class="affiliate_generator_html_step1_label">
<iaixsl:attribute name="class">big_label affiliate_generator_html_step1_label</iaixsl:attribute>
					<span class="affiliate_generator_html_step1_label_span">STAP 1 - REFERENTIE</span>
				</div>
				<div class="step1_html_desc">
					<span>Specificeer het adres waarnaar de klant zal worden gestuurd (voorbeeld: http://nazwasklepu.pl/)</span>
				</div>
				<div>
					<input id="affiliate_link" type="text">
						<iaixsl:attribute name="value"><iaixsl:value-of select="/shop/@baseurl"/></iaixsl:attribute>
					</input>
				</div>
				<div class="step1_html_desc2">
					<span>Specificeer de inhoud van de link (noodzakelijk wanneer de code als link wordt gegenereerd)</span>
				</div>
				<div>
					<input id="affiliate_link_name" type="text">
						<iaixsl:attribute name="value"><iaixsl:value-of select="/shop/contact/owner/@shopname"/></iaixsl:attribute>
					</input>
				</div>
				<div class="affiliate_generator_html_step2_label">
<iaixsl:attribute name="class">big_label affiliate_generator_html_step2_label</iaixsl:attribute>
					<span class="affiliate_generator_html_step2_label_span">STAP 2 - SELECTEER EEN BANNER</span>
				</div>
				<div class="affiliate_banners">
                    <iaixsl:choose>
                        <iaixsl:when test="page/generator/banners/banner">
                        <table cellspacing="0" cellpadding="2">
                            <iaixsl:for-each select="page/generator/banners/banner">
                                <tr><td style="vertical-align:middle; padding:5px;">
                                    <input type="hidden" name="height"><iaixsl:attribute name="value"><iaixsl:value-of select="@height"/></iaixsl:attribute><iaixsl:attribute name="id">height_<iaixsl:value-of select="@nr"/></iaixsl:attribute></input>
                                    <input type="hidden" name="width"><iaixsl:attribute name="value"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="id">width_<iaixsl:value-of select="@nr"/></iaixsl:attribute></input>
                                    <input class="affilate_html_banners" type="radio" name="banner"><iaixsl:if test="@checked = 'checked'"><iaixsl:attribute name="checked"/></iaixsl:if><iaixsl:attribute name="value"><iaixsl:value-of select="@link"/></iaixsl:attribute></input>
                                    </td>
                                    <td style="padding:5px;">
                                        <iaixsl:choose>
                                            <iaixsl:when test="@type = 'swf'">
                                                <object id="linkicon" type="application/x-shockwave-flash">
                                                    <iaixsl:attribute name="data">/<iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="id">width_<iaixsl:value-of select="@nr"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><iaixsl:attribute name="id">height_<iaixsl:value-of select="@nr"/></iaixsl:attribute>
                                                    <param name="movie">
                                                    <iaixsl:attribute name="value">/<iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                    </param>
                                                    <param name="bgcolor" value="#FFFFFF"/>
                                                    <param name="WMode" value="Opaque"/>
                                                </object>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <img style="margin:0px;padding:0px"><iaixsl:attribute name="src">/<iaixsl:value-of select="@link"/></iaixsl:attribute></img>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </td>
                                </tr>
                            </iaixsl:for-each>
                            <input type="hidden" name="banner" value=" "/>
                        </table>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <div class="affiliate_no_banners">Geen banners om uit te kiezen.</div>
                    </iaixsl:otherwise>
                    </iaixsl:choose>
				</div>
				<div class="affiliate_generator_html_step3_label">
<iaixsl:attribute name="class">big_label affiliate_generator_html_step3_label</iaixsl:attribute>
					<span class="affiliate_generator_html_step3_label_span">STAP 3 - KLAAR!</span>
				</div>
				<div class="affiliate_html_explain">Po wciśnięciu przycisku "Generuj kod bannera" pojawi się kod HTML, który po wstawieniu na Twoją stronę zaowocuje bannerem kierującym do wybranej przez Ciebie podstrony naszego sklepu. Jeśli chcesz otrzymać zwykły link tekstowy prowadzący do wybranej podstrony, kliknij przycisk "Generuj url linka". Aby otrzymać adres URL, którego możesz użyć np. do rozsyłania w e-mailach, wciśnij przycisk "Generuj kod linka".</div>

                <div class="affiliate_html_buttons">
					<a class="generate_html_button" href="##">
					 <iaixsl:choose>
	                        <iaixsl:when test="page/generator/banners/banner">
                    			 <iaixsl:attribute name="class">btn --solid generate_html_button</iaixsl:attribute>
                    			 <iaixsl:attribute name="onClick">generate('<iaixsl:value-of select="basket/@client_id"/>','html'); return false;</iaixsl:attribute>
                    			 Generuj kod bannera
                    		</iaixsl:when>
                    		<iaixsl:otherwise>
                    			<iaixsl:attribute name="class">btn --solid generate_html_button disabled</iaixsl:attribute>Bannercode genereren</iaixsl:otherwise>
	                    </iaixsl:choose>
                    </a>
					<a class="btn --solid generate_url_button" href="##">
                        <iaixsl:attribute name="onClick">generate('<iaixsl:value-of select="basket/@client_id"/>', 'link_url'); return false;</iaixsl:attribute>Genereer link url</a>
					<a class="btn --solid generate_link_button" href="##">
						<iaixsl:attribute name="onClick">generate('<iaixsl:value-of select="basket/@client_id"/>', 'link_html'); return false;</iaixsl:attribute>Linkcode genereren</a>
				</div>
				<div class="affiliate_html_output"><textarea id="html_output" name="html_output" rows="4" cols="65" readOnly="true"/></div>
				<div class="clear"/>
			</form>
		</div>
	</iaixsl:if>
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
                        <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1685223127</iaixsl:attribute></script>
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
