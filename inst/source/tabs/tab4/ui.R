# --- Navigation ---
# TabName: Download & Deploy
# TabIcon: download

# --- Next/Prev buttons
# ShowButtons: TRUE
# ButtonsAlignment: center

# --- Info ---
# InfoTitle: tir
# InfoMessage: mes


fluidPage(
  fluidRow(HTML('<center><h1>Download & Deploy Your Project !</h1>
      <p> Now it is time for download and deploy your project.
      <br /> <br />
      </p>
      '),
           
    downloadButton(ns("DownloadShinyWizardZIP"), "Download"),
    
    HTML('Downloaded file can be simply deployed by,... '),
    
    layout_columns(
      col_width = 3,
      card(
        card_header("Running in terminal"),
        HTML(
          'Open text editor, write command <br /><br /><code> ShinyWizard::RunShinyWizard(&#60;Path to downloaded zip file&#62;)</code><br /><br /> save file as <code>run.R</code> and run from console by command<br /><br /><code>Rscript run.R</code>'
        )
      ),
      card(
        card_header("Running in R studio console"),
        HTML(
          'Open R studio, write command to console <br /><br /><code> ShinyWizard::RunShinyWizard(&#60;Path to downloaded zip file&#62;)</code><br /><br /> and click enter.'
        )
      ),
      card(
        card_header("Adding to your package"),
        HTML(
          'Copy downloaded zip file to the <code>inst/</code> folder of your package and add the command to your package<br /> <br /><code>ShinyWizard::RunShinyWizard(paste0(system.file(package = "&#60;name of your package&#62;"), &#60;downloaded zip filename&#62;)</code>'
        )
      )
  )
  ),
  
  HTML('<center>
      <p>      <br /> <br />
                Downloaded file can be simply deployed as,... 
                <br /> <br /> ... <b>separate file</b> ... <br /><br /> 
                <code>ShinyWizard::RunShinyWizard(&#60;Path to downloaded zip file&#62;)</code>
                  <br /> <br /> 
                  ... or a <b> part of your package</b> 
                  <br /> <br />
                  Copy zip file to the <code>inst</code> folder of your package and provide the path to the zip file 
                  <br /> <br />
                <code>ShinyWizard::RunShinyWizard(paste0(system.file(package = "&#60;name of your package&#62;"), &#60;downloaded zip filename&#62;)</code>
      </p>
      <center>'),
  verbatimTextOutput(outputId = ns("result")),

)