#' Generate Tabs UI 

GenNavTabsUI <- function(){
  # Read tabs names
  TabsNames <- strsplit(config$NavTabElementsName, ";")[[1]]
  tabs <- NULL
  
  for (i in seq_along(TabsNames)) {
    
    
    tabs[[i]] <-  tabPanel(TabsNames[i], 
                  value = paste0("tab", i),
                  try(source(paste0("R/tabs/tab",i,"/ui.R"), local = TRUE)$value),
                  if (config$ShowButtons) next_prev_button(i, length(TabsNames))
    )
  } 
  
  # Navigation Bar
  tabs$id <- NS("NavBar", "tabs") # NavBar id = NavBar-tabs
  tabs$theme <- shinytheme(config$ShinyTheme)
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

