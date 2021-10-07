shinyApp(
    ui = fluidPage(
        fluidRow(
            column(12,
                   dataTableOutput('table')
            )
        )
    ),
    server = function(input, output) {
        output$table <- renderDataTable(iris)
    }
)
