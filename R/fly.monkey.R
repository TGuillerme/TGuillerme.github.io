# Flying monkey
fly.monkey <- function() {
    # packages
    if(!require(jpeg)) install.packages("jpeg")
    library(jpeg)
    
    # Get the images
    load(url("https://tguillerme.github.io/R/monkey_raster.Rda"))

    # Empty plot
    plot(1,1, col = "white", xlim = c(1,1500), ylim = c(1,1500), xaxs='i',yaxs='i',xaxt='n',yaxt='n',xlab='',ylab='',bty='n')

    # Fly monkey! Fly!
    for(mouvement in 1:1500) {

        Sys.sleep(0.0005)
        rect(0,0,1500,1500, col = "white", border = "white")

        xleft = mouvement
        xright = mouvement + 300

        if(mouvement < 301) {
            ybottom = mouvement
            ytop = 300 + mouvement
            rasterImage(jpg[[as.numeric(mouvement %% 2 == 0)+1]], xleft, ybottom , xright, ytop)
        }
        if(mouvement > 300 && mouvement < 601) {
            ybottom = 300 - (mouvement-300)
            ytop = 600 - (mouvement-300)
            rasterImage(jpg[[as.numeric(mouvement %% 2 == 0)+1]], xleft, ybottom , xright, ytop)
        }
        if(mouvement > 600 && mouvement < 901) {
            ybottom = (mouvement-600)
            ytop = 300 + (mouvement-600)
            rasterImage(jpg[[as.numeric(mouvement %% 2 == 0)+1]], xleft, ybottom , xright, ytop)
        }
        if(mouvement > 900 && mouvement < 1201) {
            ybottom = 300 - (mouvement-900)
            ytop = 600 - (mouvement-900)
            rasterImage(jpg[[as.numeric(mouvement %% 2 == 0)+1]], xleft, ybottom , xright, ytop)
        }
        if(mouvement > 1200 && mouvement < 1501) {
            ybottom = (mouvement-1200)
            ytop = 300 + (mouvement-1200)
            rasterImage(jpg[[as.numeric(mouvement %% 2 == 0)+1]], xleft, ybottom , xright, ytop)
        }
    }
}