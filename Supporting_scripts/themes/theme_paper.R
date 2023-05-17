
theme_paper <- function(){ 
  font <- "Arial"   #assign font family up front
  
  ggpubr::theme_classic2() %+replace%    #replace elements we want to change
    
    theme(
      text = element_text(colour = "black"
                          ),
      #grid elements
      panel.grid.major = element_blank(),  #strip major gridlines
      panel.grid.minor = element_blank(),    #strip minor gridlines       #strip axis ticks
      plot.background = element_rect(fill='transparent', color=NA), #transparent plot bg
      #panel.border=element_rect(color="black", fill = NA),
      panel.background = element_rect(fill='transparent', color = "transparent"), #transparent panel bg
      
      #axis lines
      axis.line = element_line(colour = 'black', size = 0.5),
      axis.ticks = element_line(colour = "black", size = 0.5),
      
      
      
      #text elements
      
      plot.title = element_text(
        size = 8,
        color = "black"),
      
      
      axis.title = element_text(             #axis titles
        #family = font,            #font family
        size = 8,
        color = "black"),               #font size
      
      axis.text = element_text(              #axis text
        #family = font,            #axis family
        size = 6,
        color = "black"),                #font size
      
      axis.text.x = element_text(            #margin for axis text
        margin=margin(5, b = 10),
        color = "black"),
      
      legend.text = element_text(              #axis text
        #family = font,            #axis family
        size = 8,
        color = "black"),  

      
      legend.title = element_blank(),
      legend.background = element_rect(fill='transparent', color = "transparent"), #transparent legend bg
      legend.box.background = element_rect(fill='transparent', color = "transparent"), #transparent legend panel
      legend.position = c(0.8, 0.35) # positions the legend into the plot (can be moved later in affinity designer, but makes setting the size easier)

      
      #since the legend often requires manual tweaking 
      #based on plot content, don't define it here
    )
}
