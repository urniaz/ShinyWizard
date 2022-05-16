#' Observe events on next prev buttons

observe_event_next_prev_buttons <- function(input, output, session){
  
    changePage <- function(from, to) {
      observeEvent(input[[paste0("NavBar-go_", from, "_", to)]], {
        updateTabsetPanel(session, "NavBar-tabs", selected = paste0("tab", to))
      })  
    }
    ids <- seq_along(list.files("R/tabs"))
    lapply(ids[-1], function(i) changePage(i, i - 1))
    lapply(ids[-length(ids)], function(i) changePage(i, i + 1))
 
}


