# user interface

ui <- fluidPage(
  theme = bs_theme(version = 5, bootswatch = "flatly"),
  titlePanel("DataPulse Dashboard"),
  sidebarLayout(
    sidebarPanel(
      helpText("Welcome to the DataPulse Dashboard"),
      textInput("name", "Enter your name:", ""),
      actionButton("show_name", "Submit"),
      #helper("show_name", type = "inline", content = "Click to display your name in the main panel below.")
      # Add module UI here
      example_module_ui("example1")
    ),
    mainPanel(
      textOutput("output_text"),
      plotOutput("sample_plot")
    )
  )
)
