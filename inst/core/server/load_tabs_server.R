#' Loading function for tabs
#' 
#' @param dir directory to tabs, when NULL run demo

load_tabs_server <- function(dir = NULL){
  
# Dir
if (is.null(dir)){ dir <- "core/tabs/" }else{
  if (dir.exists(dir)){ stop("App directory ", dir, "does not exist!")}
}

tabs <- list.files(dir)

for (i in seq_along(tabs)){
  
  FilePath <- paste0(dir,tabs[i],"/server.R")
  
  FileContent <- read_file(file = FilePath)
  
  if ((file.info(FilePath)$size != 0) && (trimws(na.omit(FileContent )) != "")){
    
    pre <- paste0("moduleServer(id = 'tab",i,"',function(input, output, session){")
    aft <- "})"
    
    temp <- tempfile()
    write_file(paste0(pre,FileContent,aft),temp)
    
    source(temp)
  }
 }
}