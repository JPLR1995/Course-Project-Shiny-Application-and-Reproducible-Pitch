library(shiny)
shinyServer(function(input, output) {
    output$USArrests <- renderPlot({
        barplot(USArrests[,input$graph], names.arg = state.name, las = 2, col = "green")
    })
})