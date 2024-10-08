#' Generate html footer on the bottom of the page

GenInfoIcon <- function(id, InfoTitle, InfoMessage){
  fluidRow(
  actionButton(inputId = id, #<--- remember to ns() all IDs, the IDs corresponds to output in server file 
               label = HTML("<i class='fas fa-info-circle'></i>"),
               style='position: fixed; bottom: 0; right: 0; margin-bottom: 60px; height: 80px;' ),
  
  tags$script(paste0("/*jslint browser:true*/
               document.getElementById('",id,"').addEventListener('click', function() {swal('",InfoTitle,"', '",InfoMessage,"', 'info');});"))
  
  )
}

