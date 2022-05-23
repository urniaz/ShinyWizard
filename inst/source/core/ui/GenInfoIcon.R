#' Generate html footer on the bottom of the page

GenInfoIcon <- function(id){
  actionButton(inputId = id, #<--- remember to ns() all IDs, the IDs corresponds to output in server file 
               label = "<i class='fas fa-info-circle'></i>")#,
               #style='position: fixed; padding: 10px 60px 10px 10px; bottom: 0; height: 30; width: 100%; background: inherited; text-align: right' )
}

