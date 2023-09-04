<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop">
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
                            </iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>
