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
                Remember to save changes and download file.
                <br /> <br />
      </p>
      '),
    downloadButton(ns("DownloadShinyWizardZIP"), "Download")
  ),
  HTML('<center><h1>Welcome!</h1>
      <p> 
                Downloaded file can be simply deployed as,... 
                <br /> <br /> ... separate file ... <br /> 
                <code>ShinyWizard::RunShinyWizard(<Path to downloaded zip file>)</code>
                  <br /> <br /> 
                  ... or a part of your package 
                  <br /> 
                  Copy zip file to the <code>inst</code> folder of your package and provide the path to the zip file 
                <code>ShinyWizard::RunShinyWizard(paste0(system.file(package = "ShinyWizard"), <downloaded zip filename>)</code>
      </p>
      <center>'),
  verbatimTextOutput(outputId = ns("result")),

)