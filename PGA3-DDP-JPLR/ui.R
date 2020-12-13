library(shiny)
shinyUI(fluidPage(
    titlePanel("Murders, Assaults, Urban Population and Rapes in the USA in 1973"),
    sidebarLayout(
        sidebarPanel(
            selectInput("graph", "Select data to graph:",
                        names(USArrests)),
            p('This application uses data from the default dataset USArrests in R. It simply takes the type of data the user would like to plot (Murders, Assaults and Rapes per 100,000 residents; or percentage of Population in urban areas in the USA in 1973), and plots the indicated data into a histogram of all US states.')
        ),
        mainPanel(
            plotOutput("USArrests"),
        )
    )
))
