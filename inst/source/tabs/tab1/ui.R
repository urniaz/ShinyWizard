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

<button onclick="document.getElementById("FileUpload).onchange()">Click me</button> 
<input style="display:none;" type="file" id="FileUpload" onchange="selectFolder(event)" webkitdirectory mozdirectory msdirectory odirectory directory />

          <script type="text/javascript">
function selectFolder(e) {
    var theFiles = e.target.files;
    var relativePath = theFiles[0].webkitRelativePath;
    var folder = relativePath.split("/");
    alert(folder[0]);
}
</script>

 <img id="output" src="" width="100" height="100">

<input name="photo" type="file" accept="image/*" onchange="document.getElementById("output").src = window.URL.createObjectURL(this.files[0])">         
          
          
          '),
     verbatimTextOutput(ns("directorypath")),
    shiny::actionButton(inputId = ns("directory"),
               label = "Title")

  )
)

# zawsze ns() do id !!!!! lacznie z output każdy id z ns() !!!!!