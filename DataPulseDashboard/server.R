#server logic
# server <- function(input, output) {
#   observeEvent(input$show_name, {
#     output$output_text <- renderText({
#       paste("Hello,", input$name, "Welcome to the DataPulse Dashboard!")
#     })
#   })
#   
#   output$sample_plot <- renderPlot({
#     hist(rnorm(100), main = "Sample Histogram", xlab = "Value")
#   })
#   # Call module server here
#   example_module_server("example1")
# }

server <- function(input, output, session) {
  subsetted <- reactive({
    req(input$species)
    df |> filter(Species %in% input$species)
  })
  
  output$scatter <- renderPlot({
    p <- ggplot(subsetted(), aes(!!input$xvar, !!input$yvar)) + list(
      theme(legend.position = "bottom"),
      if (input$by_species) aes(color = Species),
      geom_point(),
      if (input$smooth) geom_smooth()
    )
    
    if (input$show_margins) {
      margin_type <- if (input$by_species) "density" else "histogram"
      p <- ggExtra::ggMarginal(p, type = margin_type, margins = "both",
                               size = 8, groupColour = input$by_species, groupFill = input$by_species)
    }
    
    p
  }, res = 100)
}
