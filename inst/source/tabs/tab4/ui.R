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
  HTML('<div class="row">
  <div class="col-sm-6 mb-3 mb-sm-0">
    <div class="card border-light mb-3" style="max-width: 18rem;">
  <div class="card-header">Header</div>
  <div class="card-body">
    <h5 class="card-title">Light card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the cards content.</p>
  </div>
  </div>
         
  </div>
  <div class="col-sm-6">
    <div class="card border-light mb-3" style="max-width: 18rem;">
  <div class="card-header">Header</div>
  <div class="card-body">
    <h5 class="card-title">Light card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card content.</p>
         </div>
         </div>
         
  </div>
</div>'),
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