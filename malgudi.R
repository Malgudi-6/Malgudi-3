library(shiny)

##edited
library(fireData)
api_key <- Sys.getenv("AIzaSyBq8Jgj38R9wRyGzJ1JCTNeSCNfqRdM8mU")
db_url <- Sys.getenv("https://cartoon-f86c5.firebaseio.com")
project_id <- Sys.getenv("cartoon-f86c5")
project_domain <- Sys.getenv("cartoon-f86c5.firebaseapp.com")
webclient_id <- "45137693314-1u27rf1ih583ucia5he9bg4frhcrtfki.apps.googleusercontent.com"
webclient_secret <- "NLvMXXGJ2vtSJzkVix_pOlTD"



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
