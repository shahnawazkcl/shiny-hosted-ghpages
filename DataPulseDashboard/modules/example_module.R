example_module_ui <- function(id) {
  ns <- NS(id)
  tagList(
    textInput(ns("input_text"), "Enter some text:"),
    textOutput(ns("output_text"))
  )
}

example_module_server <- function(id) {
  moduleServer(
    id,
    function(input, output, session) {
      output$output_text <- renderText({
        paste("You entered:", input$input_text)
      })
    }
  )
}
