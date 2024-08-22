#' @title ShinyWizzard themes
#' 
#' @description
#' Load one of available themes for ShinyWizard project
#'
#' @param name theme name to be applied. No argument returns all available themes.
#' 
# @export

ShinyWizzardTheme <- function(name = ""){
  
  templatesPath <- base::system.file("templates", package = "ShinyWizard")
  templatesList <- base::list.files(paste0(templatesPath, "/css/"))
  # Ext only names
  templatesList <- base::substr(templatesList, 1, base::nchar(templatesList)-8)
   if ( name == ""){
     return(templatesList)
   }else{
     if(base::file.exists(paste0(templatesPath, "/css/", name, ".min.css"))){
       return(paste0(templatesPath, "/css/", name, ".min.css"))
     }else{ 
       stop("The template name '", name, "' is not avaliable. Please use one of ", base::paste(ShinyWizzardTheme(), collapse=", "))}
   }
}

#' ShinyWizzard themes selector
#'
#' @description
#' Shiny selector for themes. It returns a shiny ui code. 
#' 
#' @export

ShinyWizzardThemeSelector <- function() { 
  shiny::fluidRow(align="center",
  shiny::selectInput("tab2-shinytheme-selector", "Theme",
                c(allThemes()),
                selectize = FALSE,
                selected = "flatly", # starting theme
               ),
    
  shiny::tags$script(
      "$('#tab2-shinytheme-selector')
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

#' @title  All available themes
#'
#' @description
#' List all available themes 
#' 

allThemes <- function() {
  themes <- base::dir(base::system.file("shinythemes/css", package = "shinythemes"),
                ".+\\.min.css")
  base::sub(".min.css", "", themes)
}
