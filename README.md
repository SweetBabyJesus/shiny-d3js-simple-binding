# shiny-d3js-tree
Binding Shiny and D3JS using simple custom message handler

This example shows how to create a (simple) d3js tree from a data frame. The data is pre-made in the server.r in data.frame format. When the actionbutton is clicked, the data.frame is passed to the function "jsonlist" to change it to json format. Lastly the json-styled data is send to "tree.js" using a customMessageHandler.

I found the code of the static tree somewhere on the internet, I adjusted it such that it responds to shiny input.

The original code runs a tree algorithm and then creates a mbostock's dynamic d3js tree after you upload a large dataset into the dashboard (csv), but I tried to create a minimal code example for the less experienced coders (like me). 

NOTE: This is not the custom input/output binding as on:
http://shiny.rstudio.com/articles/building-inputs.html
http://shiny.rstudio.com/articles/building-outputs.html

I'm still trying to wrap my head around this one:)
