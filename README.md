# unhcrshiny

A branded template for shiny dashboard
 
![](https://raw.githubusercontent.com/Edouard-Legoupil/unhcrshiny/main/man/screen.png)

## Installation

This package is not on yet on CRAN and to install it, you will need the `pak` package.

```
install.packages("pak")
pak::pkg_install("edouard-legoupil/unhcrshiny")
```

## Usage

simply call the function within the  `dashboardBody` of your app.

See a simple example here

```
## you can then run the app locally with
library(shiny)
library(shinydashboard)
library(unhcrshiny)
 
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
```

Then follow the [ShinyDashboard Get Started](https://rstudio.github.io/shinydashboard/get_started.html) and apply [unhcrthemes](https://vidonne.github.io/unhcrthemes/articles/intro-unhcrthemes.html) on your plots!
