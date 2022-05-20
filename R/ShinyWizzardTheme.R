#' Return dir / show available ShinyWizard templates
#'
#' @param name the theme name to be applied. None argument provided returns all available themes.
#' 
#' @export

ShinyWizzardTheme <- function(name = ""){
  
  templatesPath <- system.file("templates", package = "ShinyWizard")
  templatesList <- list.files(paste0(templatesPath, "/css/"))
  # Ext only names
  templatesList <- substr(templatesList, 1, nchar(templatesList)-8)
   if ( name == ""){
     return(templatesList)
   }else{
     if(file.exists(paste0(templatesPath, "/css/", name, ".min.css"))){
       return(paste0(templatesPath, "/css/", name, ".min.css"))
     }else{ 
       stop("The template name '", name, "' is not avaliable. Please use one of ", paste(ShinyWizzardTheme(), collapse=", "))}
   }
}

#' 
#'
#' @export

ShinyWizzardThemeSelector <- function() {
  shiny::fixedPanel(
    top = "15px",
    right = "15px",
    draggable = TRUE,
    style = "width: 250px; z-index: 100000;",
    div(class = "panel panel-danger",
        style = "box-shadow: 5px 5px 15px -5px rgba(0, 0, 0, 0.3);",
        div(class = "panel-heading", "Select theme:"),
        div(class = "panel-body",
            selectInput("shinytheme-selector", NULL,
                        c("default", ShinyWizzardTheme()),
                        selectize = FALSE
            )
        )
    ),
    tags$script(
      "$('#shinytheme-selector')
  .on('change', function(el) {
    var allThemes = $(this).find('option').map(function() {
      if ($(this).val() === 'default')
        return 'bootstrap';
      else
        return $(this).val();
    });
    // Find the current theme
    var curTheme = el.target.value;
    if (curTheme === 'default') {
      curTheme = 'bootstrap';
      curThemePath = 'shared/bootstrap/css/bootstrap.min.css';
    } else {
      curThemePath = 'shinythemes/css/' + curTheme + '.min.css';
    }
    // Find the <link> element with that has the bootstrap.css
    var $link = $('link').filter(function() {
      var theme = $(this).attr('href');
      theme = theme.replace(/^.*\\//, '').replace(/(\\.min)?\\.css$/, '');
      return $.inArray(theme, allThemes) !== -1;
    });
    // Set it to the correct path
    $link.attr('href', curThemePath);
  });"
    )
  )
}