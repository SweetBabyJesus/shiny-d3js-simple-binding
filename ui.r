# ui.R
# SHINY & D3JS SIMPLE BINDING

shinyUI(fluidPage(
  titlePanel("Shiny & D3JS: simple binding"),
  sidebarLayout(
    sidebarPanel(
    	tags$head(tags$link(rel = "stylesheet", type = "text/css", href = "style.css")),
    	actionButton("var_run",label="CREATE TREE!")
    	),
    mainPanel(
      h3("D3JS TREE OUTPUT:"),
      # load D3JS library
      tags$script(src="http://d3js.org/d3.v3.min.js"),
      # load javascript
      tags$script(src="tree.js"),
      # create div
      tags$div(id="div_tree")
    )
  )
))  


