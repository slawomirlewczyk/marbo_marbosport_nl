<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop">

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

            </iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>
