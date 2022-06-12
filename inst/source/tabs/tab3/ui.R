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
      actionButton(ns("add"), "Add 'Dynamic' tab"),
      actionButton(ns("remove"), "Remove 'Foo' tab")
    ),
    mainPanel(
      tabsetPanel(id = ns("tabs"),
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
  
