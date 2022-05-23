# --- Navigation ---
# TabName: Tabs
# TabIcon: file

# --- Next/Prev buttons
# ShowButtons: TRUE
# ButtonsAlignment: center

fluidPage(
  tagList(
    actionButton(inputId = ns("tab1button"), #<--- remember to ns() all IDs, the IDs corresponds to output in server file 
                 label = "alert")
  )
)