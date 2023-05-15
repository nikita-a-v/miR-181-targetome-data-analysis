# Define plotting theme
theme_nice <- function(size = 12) {
    baseSize = size
    largeSize = size + 2
    smallSize = size - 2
    theme_bw() +
        theme(
            ## axis
            axis.text = element_text(size = smallSize, color = "black"),
            axis.title = element_text(size = baseSize, color = "black"),
            axis.ticks=element_line(color="black"),
            axis.ticks.length=unit(.15, "cm"),
            strip.text.x = element_text(size = baseSize, color = "black"),
            ## legend
            legend.text = element_text(size = baseSize, color = "black"),
            legend.title = element_text(size = baseSize, color = "black"),
            ## title
            title = element_text(size = largeSize, color = "black"),
            plot.title = element_text(size = largeSize, color = "black"),
            plot.subtitle = element_text(size = smallSize, color = "black"),
            plot.title.position = 'plot',
            ## caption
            plot.caption = element_text(hjust = 0,
                                        face= "italic", size = smallSize),
            plot.caption.position = "plot",
            # panel background
            panel.border=element_rect(color="black", fill = NA),
            panel.background = element_blank(),
            plot.background = element_blank(),
        )
}


theme_nice_pie <- function(size = 12) {
    baseSize = size
    largeSize = size + 2
    smallSize = size - 2
    theme_void() +
        theme(## legend
            legend.text = element_text(size = baseSize),
            legend.title = element_text(size = baseSize),
            ## title
            title = element_text(size = largeSize),
            plot.title = element_text(size = largeSize),
            plot.subtitle = element_text(size = smallSize),
            plot.title.position = 'plot',
            ## caption
            plot.caption = element_text(hjust = 0,
                                        face= "italic", size = smallSize),
            plot.caption.position = "plot",
        )
}

theme_pub <- function(){
    theme_nice() + 
        theme(axis.text = element_text(size = 6),
              axis.title = element_text(size = 8),
              title = element_text(size = 10),
              legend.text = element_text(size = 8),
              legend.title = element_text(size = 8),
              plot.title = element_text(size = 10),
              strip.text.x = element_text(size = 8))
} 

theme_md <- function() {
    theme(              ## nicer text formatting
        plot.title = ggtext::element_markdown(),
        plot.caption = ggtext::element_markdown(),
        plot.subtitle = ggtext::element_markdown(),
        axis.title.x = ggtext::element_markdown(),
        axis.title.y = ggtext::element_markdown())
}


myNumberFormat <- function(x){
    format(x, big.mark = ",", decimal.mark = ".")
}
