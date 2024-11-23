#server logic
server <- function(input, output) {
  observeEvent(input$show_name, {
    output$output_text <- renderText({
      paste("Hello,", input$name, "Welcome to the DataPulse Dashboard!")
    })
  })
  
  output$sample_plot <- renderPlot({
    hist(rnorm(100), main = "Sample Histogram", xlab = "Value")
  })
  # Call module server here
  example_module_server("example1")
}