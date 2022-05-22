#' Generate Tabs UI 

GenNavTabsUI <- function(){
  
  # List tabs
  TabsFiles <- list.files("tabs/")
  tabs <- NULL
  
  for (i in seq_along(TabsFiles)){
    
    FilePath <- paste0("tabs/",TabsFiles[i],"/ui.R")
    
    # Extract values from comments 
    FileContent <-readr::read_file(file = FilePath)
      TabName <- str_match(FileContent, "# TabName:\\s*(.*?)\\s*\n")[1,2]
      TabIcon <- str_match(FileContent, "# TabIcon:\\s*(.*?)\\s*\n")[1,2]
      
    if ((file.info(FilePath)$size != 0) && (trimws(na.omit(FileContent )) != "")){
      
      # Rebuild file
      pre <- paste0("ns <- NS('tab",i,"')")
      temp <- tempfile()
      write_file(paste0(pre,FileContent),temp)
      
      tabs[[i]] <-  tabPanel(if(is.na(TabName)){paste0("Tab",i)}else{TabName},
                             icon = if(is.na(TabIcon)){NULL}else{icon(TabIcon, verify_fa = FALSE)},
                             value = paste0("tab", i),
                             try(source(temp, local = TRUE)$value),
                             div(style = config$ButtonsStyle, if (config$ShowButtons) next_prev_button(i, length(TabsFiles)))
      )
    }
 }

  # Navigation Bar
  tabs$id <- NS("NavBar", "tabs") # NavBar id = NavBar-tabs
  tabs$style <- if (NavTabsVisible){""}else{"display:none;"}
  tabs$theme <-  shinytheme(config$ShinyWizzardTheme) #ShinyWizzardTheme(config$ShinyWizzardTheme) # ShinyWizzardIncludeCSSAndTheme()
  tabs$title <- config$NavTabName
  tabs <- do.call("navbarPage", tabs)
  tabs
  
}

#' Generate next prev buttons 
next_prev_button <- function(i, len){
  
  PrevButton <- NULL
  PrevButton <- if (i > 1) actionButton(NS("NavBar", paste0("go_", i, "_", i-1)), "Prev")
  
  NextButton <- NULL
  NextButton <- if (i < len) actionButton(NS("NavBar", paste0("go_", i, "_", i+1)), "Next")
  
  switch(config$ButtonsAlignment,
         "center" = {
           fluidRow(
             column(5,""),
             column(1, PrevButton),
             column(1, NextButton),
             column(5,""))
         },
         "right"   = {
           fluidRow(
             column(10,""),
             column(1, PrevButton),
             column(1, NextButton))
         },
         "left"  = {
           fluidRow(
             column(1, PrevButton),
             column(1, NextButton),
             column(10,""))
         }
         )
}

