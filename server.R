library(shiny)
library(ggplot2)
#source(file = "mult_ggplot2.R")

# distribution app
shinyServer(function(input, output) {
    
    # genera n observaciones de la distrib dada
    
    # curva densidad
    output$densidad <- renderPlot({
        
        # input <- list(mu=0, sd=1)
        x <- c(input$mu-3*input$sd,input$mu+3*input$sd)
        d <- data.frame(x)
        
        if(input$mu==0){
            if(input$sd==1){
               g1 <- ggplot(data=d, aes(x=x))+
                     stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd),
                          colour="royalblue4", lwd=0.5)}
            if(input$sd==2){
                g1 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = dnorm, args = list(mean=input$mu,sd=input$sd-1),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu,sd=input$sd),
                                  colour="royalblue4", lwd=0.5)}
            if(input$sd==3){
                g1 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = dnorm, args = list(mean=input$mu,sd=input$sd-2),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu,sd=input$sd-1),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu,sd=input$sd),
                                  colour="royalblue4", lwd=0.5)}
        }
        if(input$mu==2){
            if(input$sd==1){
            g1 <- ggplot(data=d, aes(x=x))+
            stat_function(fun = dnorm, args = list(mean=input$mu-2, sd=input$sd),
                          colour="royalblue4", lwd=0.5)+
            stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd),
                          colour="red1", lwd=0.5)}
            if(input$sd==2){
                g1 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = dnorm, args = list(mean=input$mu-2, sd=input$sd-1),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu-2, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd-1),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="red1", lwd=0.5)}
            if(input$sd==3){
                g1 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = dnorm, args = list(mean=input$mu-2, sd=input$sd-2),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu-2, sd=input$sd-1),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu-2, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd-2),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd-1),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="red1", lwd=0.5)}
        
        }
        if(input$mu==4){
            if(input$sd==1){
                 g1 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = dnorm, args = list(mean=input$mu-4, sd=input$sd),
                           colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu-2, sd=input$sd),
                           colour="red", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd),
                           colour="green", lwd=0.5)}
            if(input$sd==2){
                 g1 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = dnorm, args = list(mean=input$mu-4, sd=input$sd-1),
                               colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu-4, sd=input$sd),
                               colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu-2, sd=input$sd-1),
                               colour="red1", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu-2, sd=input$sd),
                               colour="red1", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd-1),
                               colour="green", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd),
                               colour="green", lwd=0.5)}
            if(input$sd==3){
                 g1 <- ggplot(data=d, aes(x=x))+
                     stat_function(fun = dnorm, args = list(mean=input$mu-4, sd=input$sd-2),
                                   colour="royalblue4", lwd=0.5)+
                     stat_function(fun = dnorm, args = list(mean=input$mu-4, sd=input$sd-1),
                                   colour="royalblue4", lwd=0.5)+
                     stat_function(fun = dnorm, args = list(mean=input$mu-4, sd=input$sd),
                                   colour="royalblue4", lwd=0.5)+
                     stat_function(fun = dnorm, args = list(mean=input$mu-2, sd=input$sd-2),
                                   colour="red1", lwd=0.5)+
                     stat_function(fun = dnorm, args = list(mean=input$mu-2, sd=input$sd-1),
                                   colour="red1", lwd=0.5)+
                     stat_function(fun = dnorm, args = list(mean=input$mu-2, sd=input$sd),
                                   colour="red1", lwd=0.5)+
                     stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd-2),
                                   colour="green", lwd=0.5)+
                     stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd-1),
                                   colour="green", lwd=0.5)+
                     stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd),
                                   colour="green", lwd=0.5)}
        }
        
# Valores negativos para mu        
        if(input$mu==-2){
            if(input$sd==1){
                g1 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = dnorm, args = list(mean=input$mu+2, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="red1", lwd=0.5)}
            if(input$sd==2){
                g1 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = dnorm, args = list(mean=input$mu+2, sd=input$sd-1),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu+2, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd-1),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="red1", lwd=0.5)}
            if(input$sd==3){
                g1 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = dnorm, args = list(mean=input$mu+2, sd=input$sd-2),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu+2, sd=input$sd-1),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu+2, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd-2),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd-1),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="red1", lwd=0.5)}
        }
        if(input$mu==-4){
            if(input$sd==1){
                g1 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = dnorm, args = list(mean=input$mu+4, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu+2, sd=input$sd),
                                  colour="red", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="green", lwd=0.5)}
            if(input$sd==2){
                g1 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = dnorm, args = list(mean=input$mu+4, sd=input$sd-1),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu+4, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu+2, sd=input$sd-1),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu+2, sd=input$sd),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd-1),
                                  colour="green", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="green", lwd=0.5)}
            if(input$sd==3){
                g1 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = dnorm, args = list(mean=input$mu+4, sd=input$sd-2),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu+4, sd=input$sd-1),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu+4, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu+2, sd=input$sd-2),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu+2, sd=input$sd-1),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu+2, sd=input$sd),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd-2),
                                  colour="green", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd-1),
                                  colour="green", lwd=0.5)+
                    stat_function(fun = dnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="green", lwd=0.5)}
        }
        
g1 <- g1 + scale_x_continuous(breaks=seq(-10,10,1))+ylim(c(0,0.41))+
    xlim(c(-10,10))+ 
    labs(x="x", y="f(x)") +theme_bw() +
    theme(panel.border=element_blank())
print(g1)        

})


    # curva distribucion
    output$distribucion <- renderPlot({
        
        # input <- list(mu=0, sd=1)
        x <- c(input$mu-3*input$sd,input$mu+3*input$sd)
        d <- data.frame(x)
        
        if(input$mu==0){
            if(input$sd==1){
                g2 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)}
            if(input$sd==2){
                g2 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = pnorm, args = list(mean=input$mu,sd=input$sd-1),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu,sd=input$sd),
                                  colour="royalblue4", lwd=0.5)}
            if(input$sd==3){
                g2 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = pnorm, args = list(mean=input$mu,sd=input$sd-2),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu,sd=input$sd-1),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu,sd=input$sd),
                                  colour="royalblue4", lwd=0.5)}
        }
        if(input$mu==2){
            if(input$sd==1){
                g2 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = pnorm, args = list(mean=input$mu-2, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="red1", lwd=0.5)}
            if(input$sd==2){
                g2 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = pnorm, args = list(mean=input$mu-2, sd=input$sd-1),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu-2, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd-1),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="red1", lwd=0.5)}
            if(input$sd==3){
                g2 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = pnorm, args = list(mean=input$mu-2, sd=input$sd-2),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu-2, sd=input$sd-1),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu-2, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd-2),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd-1),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="red1", lwd=0.5)}
            
        }
        if(input$mu==4){
            if(input$sd==1){
                g2 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = pnorm, args = list(mean=input$mu-4, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu-2, sd=input$sd),
                                  colour="red", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="green", lwd=0.5)}
            if(input$sd==2){
                g2 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = pnorm, args = list(mean=input$mu-4, sd=input$sd-1),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu-4, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu-2, sd=input$sd-1),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu-2, sd=input$sd),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd-1),
                                  colour="green", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="green", lwd=0.5)}
            if(input$sd==3){
                g2 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = pnorm, args = list(mean=input$mu-4, sd=input$sd-2),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu-4, sd=input$sd-1),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu-4, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu-2, sd=input$sd-2),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu-2, sd=input$sd-1),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu-2, sd=input$sd),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd-2),
                                  colour="green", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd-1),
                                  colour="green", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="green", lwd=0.5)}
        }
        
        # Valores negativos para mu        
        if(input$mu==-2){
            if(input$sd==1){
                g2 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = pnorm, args = list(mean=input$mu+2, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="red1", lwd=0.5)}
            if(input$sd==2){
                g2 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = pnorm, args = list(mean=input$mu+2, sd=input$sd-1),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu+2, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd-1),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="red1", lwd=0.5)}
            if(input$sd==3){
                g2 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = pnorm, args = list(mean=input$mu+2, sd=input$sd-2),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu+2, sd=input$sd-1),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu+2, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd-2),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd-1),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="red1", lwd=0.5)}
        }
        if(input$mu==-4){
            if(input$sd==1){
                g2 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = pnorm, args = list(mean=input$mu+4, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu+2, sd=input$sd),
                                  colour="red", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="green", lwd=0.5)}
            if(input$sd==2){
                g2 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = pnorm, args = list(mean=input$mu+4, sd=input$sd-1),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu+4, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu+2, sd=input$sd-1),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu+2, sd=input$sd),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd-1),
                                  colour="green", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="green", lwd=0.5)}
            if(input$sd==3){
                g2 <- ggplot(data=d, aes(x=x))+
                    stat_function(fun = pnorm, args = list(mean=input$mu+4, sd=input$sd-2),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu+4, sd=input$sd-1),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu+4, sd=input$sd),
                                  colour="royalblue4", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu+2, sd=input$sd-2),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu+2, sd=input$sd-1),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu+2, sd=input$sd),
                                  colour="red1", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd-2),
                                  colour="green", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd-1),
                                  colour="green", lwd=0.5)+
                    stat_function(fun = pnorm, args = list(mean=input$mu, sd=input$sd),
                                  colour="green", lwd=0.5)}
        }
        
        g2 <- g2 + scale_x_continuous(breaks=seq(-10,10,1))+ylim(c(0,1))+
            xlim(c(-10,10))+ 
            labs(x="x", y="F(x)") +theme_bw() +
            theme(panel.border=element_blank())
        print(g2)        
        
})
    
    
      
    # expresion
    output$fdensidad <- renderPlot({
        if(input$dist=="Normal"){
            expr <- "f(x) == frac(1, sqrt(2 * pi)*sigma) * ~ e ^ {displaystyle(
            - ~ frac(1,2*sigma^2)*(x - ~ mu)^2)} ~~ 
            displaystyle(list(paste(-~infinity < x) <infinity))"
            g3 <- ggplot(data.frame(x=c(-2,2)), aes(x=x))+
                annotate("text", x = 0, y = 0, parse=TRUE, label=expr, colour="royalblue4",
                         size=6)+
            labs(y = "", x = "Función de densidad")+
            theme_bw()+ theme(axis.text=element_blank(),axis.ticks.y=element_blank(),
                  panel.border=element_blank(), axis.ticks.x=element_blank())
        print(g3)
        }

})
    

})