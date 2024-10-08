# --- Navigation ---
# TabName: Download & Deploy
# TabIcon: download

# --- Next/Prev buttons
# ShowButtons: TRUE
# ButtonsAlignment: center


fluidPage(
  fluidRow(
    
    HTML('<center><h1>Download & Deploy Your Project !</h1><br />'),
           
    downloadButton(ns("DownloadShinyWizardZIP"), "Download"),
    
    HTML('<br /> <br /> Downloaded file can be simply deployed by,... '),
    br(),
    br(),
    layout_columns(
      col_width = 3,
      card(
        card_header(HTML("<h3><b>Running in terminal</b></h3><br />")),
        HTML(
          '<br />Open text editor, write command <code> ShinyWizard::RunShinyWizard(&#60;Path to downloaded file&#62;)</code><br /> save file as <code>run.R</code> and run from console by command<br /> <code>Rscript run.R</code>'
        )
      ),
      card(
        card_header(HTML("<h3><b>Running in R studio console</b></h3><br />")),
        HTML(
          'Open R studio, write command to console <br /><br /><code> ShinyWizard::RunShinyWizard(&#60;Path to downloaded file&#62;)</code><br /><br /> and click enter.'
        )
      ),
      card(
        card_header(HTML("<h3><b>Adding to your package</b></h3><br />")),
        HTML(
          'Copy downloaded zip file to the <code>inst/</code> folder of your package and add the command to your package<br /> <br /><code>ShinyWizard::RunShinyWizard(paste0(system.file(package = "&#60;Your package name&#62;"), &#60;downloaded file name&#62;)</code>'
        )
      )
  )
  )
  
  # ,verbatimTextOutput(outputId = ns("result")),

)