# user interface

# ui <- fluidPage(
#   theme = bs_theme(version = 5, bootswatch = "flatly"),
#   titlePanel("DataPulse Dashboard"),
#   sidebarLayout(
#     sidebarPanel(
#       helpText("Welcome to the DataPulse Dashboard"),
#       textInput("name", "Enter your name:", ""),
#       actionButton("show_name", "Submit"),
#       #helper("show_name", type = "inline", content = "Click to display your name in the main panel below.")
#       # Add module UI here
#       example_module_ui("example1")
#     ),
#     mainPanel(
#       textOutput("output_text"),
#       plotOutput("sample_plot")
#     )
#   )
# )

ui <- page_sidebar(
  sidebar = sidebar(
    varSelectInput("xvar", "X variable", df_num, selected = "Bill Length (mm)"),
    varSelectInput("yvar", "Y variable", df_num, selected = "Bill Depth (mm)"),
    checkboxGroupInput(
      "species", "Filter by species",
      choices = unique(df$Species), 
      selected = unique(df$Species)
    ),
    hr(), # Add a horizontal rule
    checkboxInput("by_species", "Show species", TRUE),
    checkboxInput("show_margins", "Show marginal plots", TRUE),
    checkboxInput("smooth", "Add smoother"),
  ),
  plotOutput("scatter")
)

