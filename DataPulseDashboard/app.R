library(shiny)
library(shinyhelper)
library(bslib)


library(bslib)

ui <- fluidPage(
  theme = bs_theme(version = 4, bootswatch = "flatly"),
  titlePanel("DataPulse Dashboard"),
  sidebarLayout(
    sidebarPanel(
      helpText("Welcome to the DataPulse Dashboard"),
      textInput("name", "Enter your name:", ""),
      actionButton("show_name", "Submit"),
      helper("show_name", type = "inline", content = "Click to display your name in the main panel below.")
    ),
    mainPanel(
      textOutput("output_text"),
      plotOutput("sample_plot")
    )
  )
)


server <- function(input, output) {
  observeEvent(input$show_name, {
    output$output_text <- renderText({
      paste("Hello,", input$name, "Welcome to the DataPulse Dashboard!")
    })
  })
  
  output$sample_plot <- renderPlot({
    hist(rnorm(100), main = "Sample Histogram", xlab = "Value")
  })
}

shinyApp(ui = ui, server = server)
