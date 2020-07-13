## updated by soham on 12/07/2020
#updated by shubham on 12/07/2020
#updated by manju on 12/07/2020
#added by manju
library(shiny)
library((firebase))
shinyApp(
  ui = shinyUI(  
    fluidRow(
      fileInput("myFile", "Choose a file", accept = c('image/png', 'image/jpeg'))
    )
  ),
  server = shinyServer(function(input, output,session){
    observeEvent(input$myFile, {
      inFile <- input$myFile
      if (is.null(inFile))
        return()
      file.copy(inFile$datapath, file.path("D:/", inFile$name) )
    })
  })
)

shinyApp(ui, server)
