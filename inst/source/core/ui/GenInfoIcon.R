#' Generate html footer on the bottom of the page

GenInfoIcon <- function(id){
  fluidRow(
  actionButton(inputId = id, #<--- remember to ns() all IDs, the IDs corresponds to output in server file 
               label = HTML("<i class='fas fa-info-circle'></i>"),
               style='position: fixed; padding: 10px 160px 10px 10px; bottom: 0; background: inherited; text-align: right' ),
  
  tags$script(paste0("/*jslint browser:true*/
               document.getElementById('",id,"').addEventListener('click', function() {swal('Good job!', 'You clicked the ",id," button!', 'info');});"))
  
  )
}

