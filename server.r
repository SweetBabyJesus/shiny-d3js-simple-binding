# server.R
# SHINY & D3JS SIMPLE BINDING

# Data for tree
df=data.frame(
  col1=c("big","big","small","small","small","small","small"),
  col2=c("FALSE","TRUE","shoppers","teens","youngadults","youngadults","youngadults"),
  col3=c("end","end","end","end","TRUE","FALSE","FALSE"),
  col4=c("","","","","end","black","purple"),
  col5=c("","","","","","end","end")
  )

# JSON: dataframe input to json using toJSON (in list form)
jsonlist <- function(x){
  templist <- split(x[-1],x[1],drop=TRUE)
  lapply(names(templist),function(y){
    # if y == "end"; do not create name or children
    # else create name and children
    if (templist[[y]][1,1]=="end"){
      list(name=y)
    } else {
      list(name=y,children=jsonlist(templist[[y]]))
    }
  })
}

shinyServer(
  function(input, output, session) {

  	# exception handler for when action button is clicked
  	observe({
  		if (input$var_run == 0){
  			return()
  		} 

  		var_json = list(name="root",children=jsonlist(df))
  		session$sendCustomMessage(type="jsondata",var_json)

  		})

  }
)



