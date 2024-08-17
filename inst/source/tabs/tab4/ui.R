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
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Special title treatment</h5>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        <a href="#" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Special title treatment</h5>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        <a href="#" class="btn btn-primary">Go somewhere</a>
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