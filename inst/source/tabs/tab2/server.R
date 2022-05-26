# You can access the value of the widget with input$text, e.g.


choose.dir = function(default = NA, caption = NA, useNew=TRUE) {
  if (Sys.info()['sysname'] == 'Darwin') {
    return(choose.dir.darwin(default = default, caption = caption))
  } else if (Sys.info()['sysname'] == 'Linux') {
    return(choose.dir.linux(default = default, caption = caption))
  } else if (Sys.info()['sysname'] == 'Windows') {
    # Use batch script to circumvent issue w/ `choose.dir`/`tcltk::tk_choose.dir`
    # window popping out unnoticed in the back of the current window
    return(choose.dir.windows(default = default, caption = caption, useNew = useNew))
  }
  return(paste("Error: don't know how to show a folder dialog in", Sys.info()['sysname']) )
}

#' @name choose.dir.darwin
#' 
#' @title The apple version of the choose folder
#' 
#' @seealso \code{\link{choose.dir}}
#' 
#' @return 
#' A length one character vector, character NA if 'Cancel' was selected.
#' 
choose.dir.darwin <- function(default = NA, caption = NA) {
  command = 'osascript'
  args = '-e "POSIX path of (choose folder{{prompt}}{{default}})"'
  
  if (!is.null(caption) && !is.na(caption) && nzchar(caption)) {
    prompt = sprintf(' with prompt \\"%s\\"', caption)
  } else {
    prompt = ''
  }
  args = sub('{{prompt}}', prompt, args, fixed = T)
  
  if (!is.null(default) && !is.na(default) && nzchar(default)) {
    default = sprintf(' default location \\"%s\\"', path.expand(default))
  } else {
    default = ''
  }
  args = sub('{{default}}', default, args, fixed = T)
  
  suppressWarnings({
    path = system2(command, args = args, stderr = TRUE)
  })
  if (!is.null(attr(path, 'status')) && attr(path, 'status')) {
    # user canceled
    path = NA
  } else {
    # cut any extra output lines, like "Class FIFinderSyncExtensionHost ..."
    path = tail(path, n=1)
  }
  
  return(path)
}


#' @name choose.dir.linux
#' 
#' @title The linux version of the choose folder
#' 
#' @seealso \code{\link{choose.dir}}
#' 
#' @return 
#' A length one character vector, character NA if 'Cancel' was selected.
#' 
choose.dir.linux <- function(default = NA, caption = NA) {
  command = 'zenity'
  args = '--file-selection --directory'
  
  if (!is.null(default) && !is.na(default) && nzchar(default)) {
    args = paste(args, sprintf('--filename="%s"', default))
  }
  
  if (!is.null(caption) && !is.na(caption) && nzchar(caption)) {
    args = paste(args, sprintf('--title="%s"', caption))
  }
  
  suppressWarnings({
    path = system2(command, args = args, stderr = TRUE)
  })
  
  #Return NA if user hits cancel
  if (!is.null(attr(path, 'status')) && attr(path, 'status')) {
    # user canceled
    return(NA)
  }
  
  #Error: Gtk-Message: GtkDialog mapped without a transient parent
  if(length(path) > 1){
    path = path[(length(path))]
  }
  
  return(path)
}

#' @name choose.dir.windows
#' 
#' @title The windows version of the choose folder
#' 
#' @seealso \code{\link{choose.dir}}
#' 
#' @return 
#' A length one character vector, character NA if 'Cancel' was selected.
#'
choose.dir.windows <- function(default = NA, caption = NA, useNew = TRUE) {
  if(useNew){
    ## uses a powershell script rather than the bat version, gives a nicer interface
    ## and allows setting of the default directory and the caption
    whereisutils <- system.file("utils", 'newFolderDialog.ps1', package = "shinyDirectoryInput")
    command = 'powershell'
    args = paste('-NoProfile -ExecutionPolicy Bypass -File',normalizePath(whereisutils))
    if (!is.null(default) && !is.na(default) && nzchar(default)) {
      args = paste(args, sprintf('-default "%s"', normalizePath(default)))
    }
    
    if (!is.null(caption) && !is.na(caption) && nzchar(caption)) {
      args = paste(args, sprintf('-caption "%s"', caption))
    }
    
    suppressWarnings({
      path = system2(command, args = args, stdout = TRUE)
    })
  } else {
    whereisutils <- system.file("utils", 'choose_dir.bat', package = "shinyDirectoryInput")
    command = normalizePath(whereisutils)
    args = if (is.na(caption)) '' else sprintf('"%s"', caption)
    suppressWarnings({
      path = system2(command, args = args, stdout = TRUE)
    })
  }  
  if (path == 'NONE') path = NA
  return(path)
}

output$directory <- renderText(choose.dir())

print(input)