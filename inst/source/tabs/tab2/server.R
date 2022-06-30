# You can access the value of the widget with input$text, e.g.

# trigger for change in config 
observeEvent(input$AppTitleInput, { save_config.yaml(input, output, session)}) 
observeEvent(input$AppSubTitleInput, { save_config.yaml(input, output, session)}) 
observeEvent(input$LogoFilePathInput, { save_config.yaml(input, output, session)}) 
observeEvent(input$FooterTextInput, { save_config.yaml(input, output, session)}) 
observeEvent(input$`shinytheme-selector`, { save_config.yaml(input, output, session)}) 

print(input)

