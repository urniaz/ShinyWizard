#' Loading function for tabs

load_tabs_server <- function(){

tabs <- list.files("tabs/")

for (i in seq_along(tabs)){
  
  FilePath <- paste0("tabs/",tabs[i],"/server.R")
  
  FileContent <- readr::read_file(file = FilePath)
  
  if ((file.info(FilePath)$size != 0) && (trimws(na.omit(FileContent )) != "")){
    
    pre <- paste0("moduleServer(id = 'tab",i,"',function(input, output, session){")
    aft <- "})"
    
    temp <- tempfile()
    write_file(paste0(pre,FileContent,aft),temp)
    
    source(temp)
  }
 }
}