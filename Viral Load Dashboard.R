library(shiny)
library(shinythemes)
# Define UI
ui <- fluidPage(theme = shinytheme("slate"),
                navbarPage(
                  "AHF Dashboard",
                  sidebarPanel(
                    tags$h3("Login"),
                    textInput("firstname","Given Name:", ""),
                    textInput("lastname", "Lastname:", "" )
                    
                  ), #sidepanel
                  mainPanel(
                    h1("AHF Emplyee"),
                    h4("Full Name"),
                    verbatimTextOutput("FullName")
                    
                  )
                  
                  
                
                  tabPanel(
                    "HTS Tracker"),
                     #tabpanel 
                  tabPanel("VL Dash", "This panel is intentionally left blank"),
                  tabPanel("PPR", "This panel is intentionally left blank")
             
                ) #navbar
                
  
              ) #fluidpage

# Define server function  
server <- function(input, output) {
  
  output$FullName <- renderText({
    paste( input$firstname, input$lastname, sep = " " )
  })
} # server


# Create Shiny object
shinyApp(ui = ui, server = server)