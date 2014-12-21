library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Temperature Conversion"),
  sidebarPanel(
    numericInput('temperature', 'Temperature', 0,min=0, max=10, step=5),
    radioButtons("convType", "Conversion type:",
                 c("Celsius to Fahrenheit" = "ctof",
                   "Fahrenheit to Celsius" = "ftoc")),
    submitButton("Submit"),
    h3('Documentation '),
    p('This is a temperature converter. It can convert temperature values from Celsius to Fahrenheit and from Fahrenheit to Celsius.'),
    p('To convert a temperature from Celsius to Fahrenheit, please make sure radio button has "Celsius to Fahrenheit" checked. Enter your celsius value. Then click "Submit".'),
    p('To convert a temperature from Fahrenheit to Celsius, please make sure radio button has "Fahrenheit to Celsius" checked. Enter your fahrenheit value. Then click "Submit".')
  ),
  mainPanel(
    h3('Result of Conversion'),
    h4('You entered'),
    verbatimTextOutput("inputValue"),
    h4('The converted value is'),
    verbatimTextOutput("convertedValue")
  )
))