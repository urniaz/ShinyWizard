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
 
          <input type="file" id="filepicker" name="fileList" webkitdirectory multiple />
<ul id="listing"></ul>

<script>
document.getElementById("filepicker").addEventListener("change", function(event) {
  let output = document.getElementById("listing");
  let files = event.target.files;

  for (let i=0; i<files.length; i++) {
    let item = document.createElement("li");
    item.innerHTML = files[i].webkitRelativePath;
    output.appendChild(item);
  };
}, false);
</script>
          
          
          ')
 )
)

# zawsze ns() do id !!!!! lacznie z output każdy id z ns() !!!!!