# --- Navigation ---
# TabName: Welcome
# TabIcon: home

# --- Next/Prev buttons
# ShowButtons: FALSE

# --- Info ---
# InfoTitle: tir
# InfoMessage: mes

fluidPage(
  fluidRow(
     HTML('<center><h1>Welcome!</h1>
      <p>If youre seeing this page, that means ShinyWizard is installed and running. <strong>Congratulations!</strong> </p></center>
    <label for="avatar">Choose a profile picture:</label>

<button id="but" onclick="">Click me</button> 
<input style="" type="file" id="FileUpload" onchange="selectFolder(event)" webkitdirectory mozdirectory msdirectory odirectory directory />



          <script type="text/javascript">
function selectFolder(e) {
    var theFiles = e.target.files;
    var relativePath = theFiles[0].webkitRelativePath;
    var folder = relativePath.split("/");
    alert(relativePath);
}
</script>

          
          
          '),
     tags$script(paste0("/*jslint browser:true*/
               document.getElementById('but').addEventListener('click', function() {
               document.getElementById('FileUpload').call('change', 'but');}")),
     verbatimTextOutput(ns("directorypath")),
    shiny::actionButton(inputId = ns("directory"),
               label = "Title")

  )
)

# zawsze ns() do id !!!!! lacznie z output każdy id z ns() !!!!!