# Install and load required packages
install.packages("shiny")
install.packages("ggplot2")
library(shiny)
library(ggplot2)

# Define UI
ui <- fluidPage(
  titlePanel("Score Data"),
  sidebarLayout(
    sidebarPanel(
      h4("Shiny Web App Example")
    ),
    mainPanel(
      tableOutput("score_table"),
      plotOutput("score_plot")
    )
  )
)

# Define Server
server <- function(input, output) {
  # Example dataset
  score_data <- data.frame(
    Student = c("Alice", "Bob", "Charlie", "David"),
    Score = c(85, 90, 78, 92)
  )
  
  # Render Table
  output$score_table <- renderTable({
    score_data
  })
  
  # Render Plot
  output$score_plot <- renderPlot({
    ggplot(score_data, aes(x = Student, y = Score, fill = Student)) +
      geom_bar(stat = "identity") +
      theme_minimal() +
      labs(title = "Student Scores", x = "Student", y = "Score")
  })
}

# Run the app in browser
options(shiny.launch.browser = TRUE)
shinyApp(ui = ui, server = server)

