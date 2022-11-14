
library(shiny)
library(shinyauthr)
library(tidyverse)

shinyUI(fluidPage(
  
  navbarPage("Acceso de usuarios",
             tabPanel("Sección 1",
                      h3("Sección 1"),
                      loginUI("entrar")),
             tabPanel("Sección 2",
                      h3("Sección 2"),
                      "Contenido de la sección 2."),
             tabPanel("Sección 3",
                      h3("Sección 3"),
                      "Contenido de la sección 3.")),
  logoutUI(id = "salir")
  
))
