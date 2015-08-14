library(shiny)

# random distribution app
shinyUI(fixedPage(
#--------------------------- fixed row 1 logos---------------------------------#
fixedRow(
    HTML("<hr color=SteelBlue noshade=noshade />"),
    column(width=3,offset = 0,
           tags$img(src = "logoepn.jpg", width = "190px", height = "90px",border="1")
    ),
    column(width=4,offset = 0,
           HTML("<div align=center> <font color=SteelBlue face=Arial size=5> <b>
                Variables Aleatorias Continuas \n
                Función de densidad.
                </b> </font> </div>")
           ),
    column(width=3,offset = 1,
           tags$img(src = "logodm.png", width = "70px", height = "90px",border="1"), 
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
                           "Otra" = "Otra"
                           )),
    HTML("<hr color=SteelBlue noshade=noshade />"),
    
    sliderInput("mu", "Media:",
                value = 0,
                min = -5, 
                max = 5,
                step = 1),
    HTML("<hr color=SteelBlue noshade=noshade />"),
    sliderInput("sd", "Desviación estándar:",
                value = 1,
                min = 1, 
                max = 3,
                step = 0.5)
    ),

    column(width=3,offset = 0,
           # graf densidad
           plotOutput(outputId="densidad", width = 450, height = 300),
           plotOutput(outputId="dcajas", width = 450, height = 120)
    ),
    column(width=4,offset = 2,
    HTML("<div align=left> <b> <font color=Black face=Arial size=3>
        Estadísticos descriptivos: </font> </b> </div>"),
    HTML("<br> </br>"),
           # descript
           verbatimTextOutput("summary")
    )
    
),

                   
                   #tableOutput("table")
HTML("<hr color=SteelBlue noshade=noshade />")
)
)
