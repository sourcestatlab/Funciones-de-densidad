library(shiny)

# random distribution app
shinyUI(fixedPage(
#--------------------------- fixed row 1 logos---------------------------------#
fixedRow(
    HTML("<hr color=SteelBlue noshade=noshade />"),
    column(width=3,offset = 1,
           tags$img(src = "logoepn.jpg", width = "190px", height = "90px",border="1")
    ),
    column(width=4,offset = 0,
           HTML("<div align=center> <font color=SteelBlue face=Arial size=5> <b>
                Variables Aleatorias Continuas \n
                Función de densidad.
                </b> </font> </div>")
           ),
    column(width=3,offset = 1,
           #tags$img(src = "logodm.png", width = "70px", height = "90px",border="1"), 
           tags$img(src = "logofc.jpg", width = "90px", height = "90px",border="1")
    )
    ),    
HTML("<hr color=SteelBlue noshade=noshade />"),


#--------------------- fixed row 2 grafico densidad -------------------------# 
# distrib de prob
#HTML("<div align=left> <b> <font color=SteelBlue face=Cambria size=3>
#     Distribuciones de probabilidad: </font> </b> </div>"),
fixedRow(
    column(width=3,offset = 0,
    radioButtons("dist", "Distribución de probabilidad:",
                         c("Normal" = "Normal",
                           "Exponencial" = "Exponencial",
                           "Beta" = "Beta",
                           "Gamma" = "Gamma",
                           "Chi-Cuadrado" = "ChiCuadrado",
                           "Fisher" = "Fisher"
                           )),
    HTML("<hr color=SteelBlue noshade=noshade />"),
    
    sliderInput("mu", "Media:",
                value = 0,
                min = -4, 
                max = 4,
                step = 2),
    HTML("<hr color=SteelBlue noshade=noshade />"),
    sliderInput("sd", "Desviación estándar:",
                value = 1,
                min = 1, 
                max = 3,
                step = 1)
 
    ),

    column(width=3,offset = 0,
           # graf densidad
   HTML("<div align=center> <b> <font color=Black face=Arial size=3>
        Función de densidad: </font> </b> </div>"),
           HTML("<br> </br>"),
           plotOutput(outputId="densidad", width = 410, height = 280),
           plotOutput(outputId="fdensidad", width = 420, height = 120)
    ),
    column(width=4,offset = 1,
    HTML("<div align=center> <b> <font color=Black face=Arial size=3>
        Función de distribución: </font> </b> </div>"),
    HTML("<br> </br>"),
    plotOutput(outputId="distribucion", width = 410, height = 275),
    
    HTML("<br> </br>"),
    fixedRow(
        column(width=2, offset = 4,
               HTML("<img src=logodm.jpg width = 60 height = 80 align=left>")
        ),
        column(width=6, offset = 0,
               HTML("<font color=SteelBlue face=Arial size=4> <b> Departamento de Matemática.
                    </b> </font>")
        )
    )
    )
    
),

HTML("<hr color=SteelBlue noshade=noshade />"),
mainPanel( # all of the output elements go in here
    tabsetPanel(
        tabPanel("Funciones de densidad",
                 
                 HTML("<font color=#2E2E2E face=Arial size=2> El aplicativo desarrollado tiene como propósito
                      principal facilitar el aprendizaje de las <font color=SteelBlue> funciones de densidad </font>
                      de variables aleatorias continuas mayormente utilizadas,
                      mediante la visualización de forma dinámica de cómo se ve afectada la forma de la función de 
                      densidad y distribución cuando los parámetros asociados a la misma cambian progresivamente.
                      .</font>"),
                 tags$br(),
                 tags$br(),
                 
                 HTML("<font color=#2E2E2E face=Arial size=2> La interfaz fue desarrollada para que de una
                      manera sencilla el usuario pueda hacer uso de la misma. Los pasos que se deben seguir 
                      son los siguientes:</font>"),
                
            HTML("<font color=#2E2E2E face=Arial size=2> <ol>
                 <li> Mediante el slider <b>Media</b> varíar la media en el caso de una distribución normal.</li>
                 <li> Mediante el slider <b>Desviación estándar</b> varíar la desviación estándar en el caso de una distribución normal.</li> 
                 </ol> </font>"),
            
            
            HTML("<font color=#2E2E2E face=Arial size=2> En lo que se refiere a las <font color=SteelBlue> 
                 herramientas informáticas </font> utilizadas en la generación del modelo podemos enumerar 
                 las siguientes:</font>"),
            tags$ol(
                tags$li(tags$a(href="http://www.r-project.org", "R Project")), 
                tags$li(tags$a(href="http://www.rstudio.com", "Rstudio"))
                )
           ),
    tabPanel("R",
                 tags$iframe(src = "http://www.r-project.org",
                             seamless=NA,height=300,with=500)
        ),
    tabPanel("Rstudio",
             tags$iframe(src = "http://www.rstudio.com",
                         seamless=NA,height=300,with=500)
            
    ),
    tabPanel("Facultad de Ciencias EPN",
             tags$iframe(src = "http://www.ciencias.epn.edu.ec",
                         seamless=NA,height=300,with=500)
             
    ),
    tabPanel("Dep. de Matemáticas EPN",
             tags$iframe(src = "http://www.math.epn.edu.ec",
                         seamless=NA,height=300,with=500)
             
    )
          
             ),
HTML("<hr color=SteelBlue noshade=noshade />"),           
  
# Redes sociales
   HTML("<font color=SteelBlue face=Arial size=1.7> Siguenos en</font>"),
   HTML("<a href=https://www.facebook.com/sourcestatlab> <img src=facebook.png width = 50 height = 35> </a> 
        <font color=SteelBlue face=Arial size=1.7>  Source Stat Lab EC </font>"),
   HTML("<a href=https://twitter.com/SourceStatLab> <img src=twitter.jpg width = 50 height = 45> </a>
        <font color=SteelBlue face=Arial size=1.7> @SourceStatLabEC </font>"),
HTML("<hr color=SteelBlue noshade=noshade />")
  )



)
)
