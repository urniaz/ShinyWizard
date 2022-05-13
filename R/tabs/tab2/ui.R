# Assign the dedicated ID for the tab/module, the same as in server file 
ns <- NS("tab1")

# UI code goes here ...
fluidPage(
  tagList(
    actionButton(inputId = ns("tab1button"), #<--- remember to ns() all IDs, the IDs corresponds to output in server file 
                 label = "alert")
  )
)