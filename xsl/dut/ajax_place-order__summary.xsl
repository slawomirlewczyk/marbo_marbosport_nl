<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop">
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
            </iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>
