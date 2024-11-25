# user interface

# ui <- fluidPage(
#   theme = bs_theme(version = 5, bootswatch = "flatly"),
#   titlePanel(windowTitle = "DataPulse Dashboard"),
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
  theme = bs_theme(version = 5, bootswatch = "flatly"),
  titlePanel("Penguins..!", windowTitle = "DataPulse Dashboard"),
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
    checkboxInput("by_island", "Show islands", FALSE),
    checkboxInput("smooth", "Add smoother"),
    hr(), # Add a horizontal rule
    checkboxInput("by_year", "facet by year", FALSE),
    checkboxInput("by_gender", "facet by genders", FALSE),
  ),
  plotOutput("scatter")
)

