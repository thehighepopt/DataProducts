library(shiny)

DeathDate <- function(age,race,gender) {
    Death <- read.csv("Death.csv")
    rnum <- age+1

    cnum <- if (race == 'Other' & gender == 'Other') {
        2
    } else if (race == 'Other' & gender == 'Male') {
        3
    } else if (race == 'Other' & gender == 'Female') {
        4
    } else if (race == 'White' & gender == 'Other') {
        5
    } else if (race == 'White' & gender == 'Male') {
        6
    } else if (race == 'White' & gender == 'Female') {
        7
    } else if (race == 'Black' & gender == 'Other') {
        8
    } else if (race == 'Black' & gender == 'Male') {
        9
    } else if (race == 'Black' & gender == 'Female') {
        10
    } else if (race == 'Hispanic' & gender == 'Other') {
        11
    } else if (race == 'Hispanic' & gender == 'Male') {
        12
    } else if (race == 'Hispanic' & gender == 'Female') {
        13
    }

    ##conc <- capture.output(cat(race1,sex1,'[',rnum,']',sep = "_"))
    ##col <- capture.output(cat('death1$',conc,sep=""))

    return(Death[rnum,cnum])

}

shinyServer(
    function(input, output) {
        output$inputValue1 <- renderPrint({input$age})
        output$inputValue2 <- renderText({input$race})
        output$inputValue3 <- renderText({input$gender})
        output$prediction <- renderText({DeathDate(input$age,input$race,input$gender)})

    }
)


