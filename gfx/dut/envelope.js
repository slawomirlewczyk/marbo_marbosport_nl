
var browser_txt=[];browser_txt['browser_supp_visible']="true";browser_txt['browser_supp1']="Download een van de moderne browsers:";browser_txt['browser_supp2']="U GEBRUIKT EEN VEROUDERDE BROWSER";browser_txt['browser_supp3']="Przeglądarka, której używasz nie wspiera aktualnych technologii i może być niebezpieczna. <br />Zainstaluj jedną ze współczesnych przeglądarek internetowych.";browser_txt['browser_supp4']="Ik wil de onveilige browser blijven gebruiken";browser_txt['browser_supp_firefox1']="Mozilla Firefox";browser_txt['browser_supp_firefox2']="https://www.mozilla.org/firefox/download/thanks/";browser_txt['browser_supp_firefox3']="Mozilla";browser_txt['browser_supp_firefox4']="Firefox";browser_txt['browser_supp_google1']="Google Chrome";browser_txt['browser_supp_google2']="https://www.google.com/intl/pl/chrome/";browser_txt['browser_supp_google3']="Google";browser_txt['browser_supp_google4']="Chrome";browser_txt['browser_supp_edge1']="Microsoft Edge";browser_txt['browser_supp_edge2']="https://www.microsoft.com/pl-pl/windows/microsoft-edge";browser_txt['browser_supp_edge3']="Microsoft";browser_txt['browser_supp_edge4']="Edge";browser_txt['browser_supp_opera1']="Opera Software Opera";browser_txt['browser_supp_opera2']="https://www.opera.com/";browser_txt['browser_supp_opera3']="Opera Software";browser_txt['browser_supp_opera4']="Opera";browser_txt['browser_supp_idosell1']="https://www.idosell.com/";browser_txt['browser_supp_idosell2']="IdoSell Shop";var browser_support_html="<table id=\"browser_support\"\n  style=\"width: 100%; height: 100%; position: fixed; top: 0; left: 0; bottom: -100px; text-align: center; z-index: 99999; background: #ffffff; background: rgba(255,255,255,0.9); font-family: sans-serif;\">\n  <tr>\n    <td class=\"vertical_center\" style=\"vertical-align: middle;\">\n      <table class=\"centered\" style=\"margin: 0 auto;\">\n        <tr class=\"first_tr\">\n          <td style=\"padding: 0 5px 10px 5px;\">"+browser_txt['browser_supp1']+"</td>\n        </tr>\n        <tr class=\"second_tr\">\n          <td>\n            <table class=\"browser_wrapper\" style=\"margin: 0 auto; border-spacing: 5px; border-collapse: separate;\">\n              <tr>\n                <td class=\"browser_wrapper_td\" style=\"width: 25%;\">\n                  <a href=\"#\" title=\""+browser_txt['browser_supp_firefox1']+"\" style=\"display: block; background: #fff; color: #333333; text-decoration: none; padding: 2px 2px 2px 2px;\" onclick=\"window.open('"+browser_txt['browser_supp_firefox2']+"', '_blank');\">\n                    <table style=\"cursor: pointer;\">\n                      <tr>\n                        <td class=\"browser_logo\" style=\"width: 25%;\"><img src=\""+app_shop.urls.prefix+"firefox.png\" alt=\""+browser_txt['browser_supp_firefox1']+"\" /></td>\n                      </tr>\n                      <tr>\n                        <td>"+browser_txt['browser_supp_firefox3']+"</td>\n                      </tr>\n                      <tr>\n                        <td><b>"+browser_txt['browser_supp_firefox4']+"</b></td>\n                      </tr>\n                    </table>\n                  </a>\n                </td>\n                <td class=\"browser_wrapper_td\" style=\"width: 25%;\">\n                  <a href=\"#\" title=\""+browser_txt['browser_supp_google1']+"\" style=\"display: block; background: #fff; color: #333333; text-decoration: none; padding: 2px 2px 2px 2px;\" onclick=\"window.open('"+browser_txt['browser_supp_google2']+"', '_blank');\">\n                    <table style=\"cursor: pointer;\">\n                      <tr>\n                        <td class=\"browser_logo\" style=\"width: 25%;\"><img src=\""+app_shop.urls.prefix+"chrome.png\" alt=\""+browser_txt['browser_supp_google1']+"\" /></td>\n                      </tr>\n                      <tr>\n                        <td>"+browser_txt['browser_supp_google3']+"</td>\n                      </tr>\n                      <tr>\n                        <td><b>"+browser_txt['browser_supp_google4']+"</b></td>\n                      </tr>\n                    </table>\n                  </a>\n                </td>\n                <td class=\"browser_wrapper_td\" style=\"width: 25%;\">\n                  <a href=\"#\" title=\""+browser_txt['browser_supp_edge1']+"\" style=\"display: block; background: #fff; color: #333333; text-decoration: none; padding: 2px 2px 2px 2px;\" onclick=\"window.open('"+browser_txt['browser_supp_edge2']+"', '_blank');\">\n                    <table style=\"cursor: pointer;\">\n                      <tr>\n                        <td class=\"browser_logo\" style=\"width: 25%;\"><img src=\""+app_shop.urls.prefix+"edge.png\" alt=\""+browser_txt['browser_supp_edge1']+"\" /></td>\n                      </tr>\n                      <tr>\n                        <td>"+browser_txt['browser_supp_edge3']+"</td>\n                      </tr>\n                      <tr>\n                        <td><b>"+browser_txt['browser_supp_edge4']+"</b></td>\n                      </tr>\n                    </table>\n                  </a>\n                </td>\n                <td class=\"browser_wrapper_td\" style=\"width: 25%;\">\n                  <a href=\"#\" title=\""+browser_txt['browser_supp_opera1']+"\" style=\"display: block; background: #fff; color: #333333; text-decoration: none; padding: 2px 2px 2px 2px;\" onclick=\"window.open('"+browser_txt['browser_supp_opera2']+"', '_blank');\">\n                    <table style=\"cursor: pointer;\">\n                      <tr>\n                        <td class=\"browser_logo\" style=\"width: 25%;\"><img src=\""+app_shop.urls.prefix+"opera.png\" alt=\""+browser_txt['browser_supp_opera1']+"\" /></td>\n                      </tr>\n                      <tr>\n                        <td>"+browser_txt['browser_supp_opera3']+"</td>\n                      </tr>\n                      <tr>\n                        <td><b>"+browser_txt['browser_supp_opera4']+"</b></td>\n                      </tr>\n                    </table>\n                  </a>\n                </td>\n              </tr>\n            </table>\n          </td>\n        </tr>\n        <tr class=\"third_tr\" style=\"font-size: 18px; font-weight: bold;\">\n          <td style=\"padding: 8px 5px 8px 5px;\">"+browser_txt['browser_supp2']+"</td>\n        </tr>\n        <tr class=\"fourth_tr\">\n          <td style=\"padding: 0 5px 0 5px;\">"+browser_txt['browser_supp3']+"</td>\n        </tr>\n        <tr class=\"fifth_tr\">\n          <td style=\"padding: 10px 5px 10px 5px;\">\n            <a class=\"browser_btn\" href=\"#close\" style=\"display: block; background: #0090F6; color: #fff; text-decoration: none; padding: 15px 15px 15px 15px; font-size: 15px; border: 1px solid #0090F6; margin: 0 auto;    max-width: 400px;\" onclick=\"var elem = document.getElementById('browser_support'); elem.parentNode.removeChild(elem);\">"+browser_txt['browser_supp4']+"</a>\n          </td>\n        </tr>\n        <tr class=\"sixth_tr\">\n          <td><a href=\""+browser_txt['browser_supp_idosell1']+"\" title=\""+browser_txt['browser_supp_idosell2']+"\" target=\"_blank\"><img src=\""+app_shop.urls.prefix+"idosell.png\" alt=\""+browser_txt['browser_supp_idosell2']+"\" /></a></td>\n        </tr>\n      </table>\n    </td>\n  </tr>\n</table>";var browser_support_style="#browser_support .centered .first_tr {\n  font-size: 15px;\n}\n#browser_support .centered .first_tr td {\n  padding: 0 0 25px 0 !important;\n}\n#browser_support .centered .browser_wrapper {\n  width: 100%;\n  border-spacing: 0 !important;\n}\n#browser_support .centered .browser_wrapper a {\n  width: 170px;\n  height: 170px;\n  position: relative;\n  font-size: 16px;\n  margin: 0 13px 26px 13px;\n  border: 1px solid #AAAAAA;\n  padding: 0 !important;\n}\n#browser_support .centered .browser_wrapper a:hover {\n  border: 1px solid #333333 !important;\n  background: #333333 !important;\n  color: #ffffff !important;\n}\n#browser_support .centered .browser_wrapper .browser_wrapper_td {\n  width: auto !important;\n}\n#browser_support .centered .browser_wrapper a > table {\n  position: absolute;\n  top: 25px;\n  left: 50%;\n  width: 170px;\n  margin-left: -85px;\n}\n#browser_support .centered .browser_wrapper a > table .browser_logo {\n  padding: 0 0 10px 0;\n  width: auto !important;\n}\n#browser_support .centered .third_tr {\n  font-size: 22px !important;\n}\n#browser_support .centered .third_tr td {\n  padding: 4px 0 20px 0 !important;\n}\n#browser_support .centered .fourth_tr {\n  font-size: 15px;\n}\n#browser_support .centered .fourth_tr td {\n  padding: 0 0 30px 0 !important;\n}\n#browser_support .centered .fifth_tr td {\n  padding: 0 0 30px 0 !important;\n}\n#browser_support .centered .browser_btn:hover {\n  border: 1px solid #333333 !important;\n  background: #333333 !important;\n}";function browser_support_append(){var tmp=document.createElement('body');tmp.innerHTML=browser_support_html;document.getElementsByTagName('body')[0].appendChild(tmp.firstChild);if(document.documentElement.clientWidth>"757"){var css=document.createElement('style');css.type='text/css';if(css.styleSheet)css.styleSheet.cssText=browser_support_style;else css.appendChild(document.createTextNode(browser_support_style));document.getElementsByTagName("body")[0].appendChild(css);}}
function get_browser(){var ua=navigator.userAgent,tem,M=ua.match(/(opera|chrome|safari|firefox|msie|trident(?=\/))\/?\s*(\d+)/i)||[];if(/trident/i.test(M[1])){tem=/\brv[ :]+(\d+)/g.exec(ua)||[];return{name:'IE',version:(tem[1]||'')};}
if(M[1]==='Chrome'){tem=ua.match(/\b(OPR|Edge)\/(\d+)/);if(tem!=null){if(tem[1]==='OPR')
return{name:tem[1].replace('OPR','Opera'),version:tem[2]};else
return{name:tem[1],version:tem[2]};}}
M=M[2]?[M[1],M[2]]:[navigator.appName,navigator.appVersion,'-?'];if((tem=ua.match(/version\/(\d+)/i))!=null)
M.splice(1,1,tem[1]);return{name:M[0],version:M[1]};}
if(browser_txt['browser_supp_visible']!=''){var browser=get_browser();if(browser.name=="IE"||browser.name=="MSIE"){browser_support_append();}else if(browser.name=="Safari"&&parseInt(browser.version)<10){browser_support_append();}}