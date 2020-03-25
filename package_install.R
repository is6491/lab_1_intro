pckgs <- list('tidyverse','here','nlme','nycflights13','hrbrthemes','ggrepel')
install_me <- function(x){
    has_pckg <- require(x,character.only=TRUE)
    if( !has_pckg ){
        install.packages(x,character.only=TRUE)
    }
}
result <- lapply(pckgs,install_me)