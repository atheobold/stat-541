loop_func <- function(d){
  typ <- rep(NA, ncol(d))
  for(i in 1:ncol(d)){
    typ[i] <- class(d[,i])
  }
  return(typ)
}

map_func <- function(d){
  typ <- map_chr(d, class)
  return(typ)
}

df <- as.data.frame(matrix(1,
                           nrow = 5,
                           ncol = 100000)
                    )

microbenchmark::microbenchmark(loop_func(df),
                               map_func(df),
                               times = 2)
