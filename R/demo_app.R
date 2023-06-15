#'  demo
#'
#' @noRd
#' @keywords internal
#' @import shiny
#' @import shinydashboard
#' @export

demo_app <- function() {

ui <- dashboardPage(
  dashboardHeader( title = "UNHCR Dashboard"),
  dashboardSidebar(
    sidebarMenu(
      menuItem(  "welcome", tabName = "welcome", icon = icon("house")),
      menuItem(  "upload", tabName = "upload", icon = icon("upload"))
    )
  ),
  dashboardBody(
    ## Get the theme here!!
    theme_shinydashboard_unhcr(),
    h1("Title 1"),
    h2("Title 2"),
    h3("Title 3"),
    p("Text"))
)

server <- function(input, output) { }

shinyApp(ui, server)
}
