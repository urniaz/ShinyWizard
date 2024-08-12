#' Generate Tabs UI 

GenNavTabsUI <- function(){
  
  # List tabs
  TabsFiles <- list.files("tabs/")
  tabs <- NULL
  
  for (i in seq_along(TabsFiles)){
    
    FilePath <- paste0("tabs/",TabsFiles[i],"/ui.R")
    
    # Extract values from comments 
    FileContent <-readr::read_file(file = FilePath)
      # --- Navigation ---
      TabName <- str_match(FileContent, "# TabName:\\s*(.*?)\\s*\n")[1,2]
      TabIcon <- str_match(FileContent, "# TabIcon:\\s*(.*?)\\s*\n")[1,2]
      # --- Next/Prev buttons
      ShowButtons <- str_match(FileContent, "# ShowButtons:\\s*(.*?)\\s*\n")[1,2]
          if (is.na(ShowButtons)){ ShowButtons <- TRUE}
      ButtonsAlignment <- str_match(FileContent, "# ButtonsAlignment:\\s*(.*?)\\s*\n")[1,2]
          if (is.na(ButtonsAlignment)){ ButtonsAlignment <- "center" }
      # --- Info ---
      InfoTitle <- str_match(FileContent, "# InfoTitle:\\s*(.*?)\\s*\n")[1,2]
      InfoMessage <- str_match(FileContent, "# InfoMessage:\\s*(.*?)\\s*\n")[1,2]
      
    if ((file.info(FilePath)$size != 0) && (trimws(na.omit(FileContent )) != "")){
      
      # Rebuild file
      pre <- paste0("ns <- NS('tab",i,"')")
      temp <- tempfile()
      write_file(paste0(pre,FileContent),temp)
      
      # Generate tabs
      tabs[[i]] <-  tabPanel(if(is.na(TabName)){paste0("Tab",i)}else{TabName},
                             # Icon
                             icon = if(is.na(TabIcon)){NULL}else{icon(TabIcon, verify_fa = FALSE)},
                             # Value
                             value = paste0("tab", i),
                             # Load code
                             try(source(temp, local = TRUE)$value), # $value to not show TRUE text in console
                             # Generate buttons
                             div(style = "position: fixed; padding: 10px 30px 50px 10px; bottom: 0; width: 100%; background: inherited;", if (ShowButtons){ next_prev_button(i, length(TabsFiles), ButtonsAlignment)} ),
                             # Generate info button
                             if (is.na(InfoMessage) == FALSE){ GenInfoIcon(id = NS(paste0("tab", i),"info"), InfoTitle, InfoMessage) }
      )
    }
 }

  # Navigation Bar
  tabs$id <- NS("NavBar", "tabs") # NavBar id = NavBar-tabs
  tabs$theme <-  shinytheme(config$ShinyWizzardTheme) #ShinyWizzardTheme(config$ShinyWizzardTheme) # ShinyWizzardIncludeCSSAndTheme()
  tabs$title <- config$NavTabName
  tabs <- do.call("navbarPage", tabs)
  tabs
  
}

#' Generate next prev buttons 
next_prev_button <- function(i, len, ButtonsAlignment){
  
  PrevButton <- NULL
  PrevButton <- if (i > 1) actionButton(NS("NavBar", paste0("go_", i, "_", i-1)), "Prev")
  
  NextButton <- NULL
  NextButton <- if (i < len) actionButton(NS("NavBar", paste0("go_", i, "_", i+1)), "Next")
  
  switch(ButtonsAlignment,
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

