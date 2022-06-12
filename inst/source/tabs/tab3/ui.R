# --- Navigation ---
# TabName: Tabs
# TabIcon: file

# --- Next/Prev buttons
# ShowButtons: TRUE
# ButtonsAlignment: center

# --- Info ---
# InfoTitle: tir
# InfoMessage: mes

fluidPage(
  sidebarLayout(
    sidebarPanel(
      actionButton("add", "Add 'Dynamic' tab"),
      actionButton("remove", "Remove 'Foo' tab")
    ),
    mainPanel(
      tabsetPanel(id = "tabs",
                  tabPanel("Hello", 
                           fluidPage(
                             fluidRow(
                               column(12, fluidRow(
                                 column(6,
                                        HTML("<b>ui.R</b><hr/>")),
                                 column(6,
                                        HTML("<b>server.R</b><hr/>"))
                               )
                               )
                             )
                           )
                           ),
                  
      )
    )
  )
)
  
