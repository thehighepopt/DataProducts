
library(shiny)
ui <- shinyUI(pageWithSidebar(
    headerPanel("The Amazing Zorbax Predicts Your Death!"),
    sidebarPanel(
        h2('Input Your Stats'),
        h3('Your Age'),
        sliderInput(inputId = "age", label = "Choose Your Age",value = 0, animate = TRUE, min = 0,max = 100),
        h3('Your Race'),
        selectInput(inputId="race",label = "Choose Your Race",choices = c("","Black","White",
                                                    "Hispanic","Other")),
        h3('Your Gender'),
        selectInput(inputId="gender",label = "Choose Your Gender",choices = c("","Female",
                                                    "Male","Other")),

        submitButton(text="Predict My Death",icon("heartbeat"))
    ),
    mainPanel(
            h3('I will now predict how many years you have left to live'),
            h4('You say your age is...'),
            verbatimTextOutput("inputValue1"),
            h4('You say your race is...'),
            verbatimTextOutput("inputValue2"),
            h4('You you say your gender is...'),
            verbatimTextOutput("inputValue3"),
            h3("The Spirits are now talking to me..."),
            h3("They are telling me..."),
            h3("You have this many years left to live!"),
            verbatimTextOutput("prediction")
        )
        #h3('Main Panel text'),
        #code('some code'),
        #p('some ordinary text')
))


