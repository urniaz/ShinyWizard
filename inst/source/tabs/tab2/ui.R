# TabName: Step I

fluidPage(
  ShinyWizzardThemeSelector(),
  tagList(
    actionButton(inputId = ns("tab1button"), #<--- remember to ns() all IDs, the IDs corresponds to output in server file 
                 label = "alert")
  )
)