library(shiny)
library(plotly)
library(gridlayout)
library(bslib)
library(DT)


ui <- grid_page(
  layout = c(
    "header  header header",
    "sidebar plotly plotly"
  ),
  row_sizes = c(
    "100px",
    "1.72fr"
  ),
  col_sizes = c(
    "250px",
    "0.59fr",
    "1.41fr"
  ),
  gap_size = "1rem",
  grid_card(
    area = "sidebar",
    card_header("Settings"),
    card_body(
      radioButtons(
        inputId = "color",
        label = "Which color?",
        choices = list("blue" = "blue", "red" = "red"),
        width = "100%"
      ),
      sliderInput(
        inputId = "bins",
        label = "How many bins do we want?",
        min = 20,
        max = 50,
        value = 35,
        width = "100%"
      )
    )
  ),
  grid_card_text(
    area = "header",
    content = "My super app",
    alignment = "center",
    is_title = TRUE
  ),
  grid_card(
    area = "plotly",
    card_header("Interactive Plot"),
    card_body(
      plotlyOutput(
        outputId = "distPlot",
        width = "100%",
        height = "100%"
      )
    )
  )
)

myhist <- function(x, color, bins) {
  # generate bins based on input$bins from ui.R
  plot_ly(x = x, type = "histogram", color = I(color), xbins = bins)
}

server <- function(input, output) {

  output$distPlot <- renderPlotly({
    color <- input$color
    req(color)
    bins <- input$bins

    myhist(x = ~ faithful[, 2], color = color, bins = bins)
  })

}

shinyApp(ui, server)


