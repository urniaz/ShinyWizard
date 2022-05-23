#' Generate html footer on the bottom of the page

GenFooter <- function(){
  
  # Changing this part without written permission is a violation of the license.
  HTML(paste0("<div style='position: fixed; padding: 10px 30px 10px 10px; bottom: 0; height: 30; width: 100%; background: inherited; text-align: right'>Created with ShinyWizzard © <div id ='FooterText'>", config$FooterText, "</div></div>"))

}