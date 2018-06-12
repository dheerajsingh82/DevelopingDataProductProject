library(shiny)

# ## In the application we are trying to explain different distribution with grapgical representation of the dataset which we usually incounter during data analysis

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Distribution Graphing"),
  
  # Sidebar with input and outputs
  sidebarLayout(
    sidebarPanel(
      
      # Input: User can select among the below distribution types
      radioButtons("dist", "Select a Distribution:",
                   c("Uniforn"="unif",
                     "Normal" ="norm",
                     "Exponential" = "exp",
                     "Cauchy" = "cauchy")),
      
      # Format nicely
      br(),
      br(),
      
      
      # Input: User can select the range of observations
      sliderInput("n",
                  "Number of observations:",
                  value = 5000,
                  min = 1,
                  max = 10000)
    ),
    
    # Show a plot of the generated distribution based on user selection
    mainPanel(
      
      # Output: Draw out the plots from user's choice
      tabsetPanel(type="tabs",
                  tabPanel("Plot",plotOutput("plot")),
                  tabPanel("Summary",verbatimTextOutput("summary")
                  )
      )
    )
  )))