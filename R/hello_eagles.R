#' Say Hello to the EAGLES
#' 
#' This function says Hello to the EAGLES depending on data
#' 
#'@param eagles character, the names of the EAGLES to be greeted
#'@param daytime character, optional, either "morning" or "evening"
#'
#'@return Nothing, just say hello
#' 
#'@export 

hello_eagles<-function(eagles, daytime ="auto"){
  
  if(daytime=="auto"){  
  time<- Sys.time()
  time_hour<-hour(time)
  
  if(time_hour>= 6 & time_hour< 12) {
    daytime<-"morning"
  }else if(time_hour>= 12 & time_hour< 14) {
    daytime<-"day"
  }else if(time_hour>= 14 & time_hour< 17) {
    daytime<-"afternoon"
  }else if(time_hour>= 17 & time_hour< 21) {
    daytime<-"evening"
  }else if((time_hour>= 22 & time_hour< 24)|(time_hour>= 0 & time_hour< 5) ) 
    {daytime<-"night"}
  
  } 
  
  if(daytime=="morning") {
    greeting <- "Good morning, "
  } else if (daytime== "evening"){
    greeting <-"Good evening, "
  } else if (daytime== "day"){
    greeting<-"Good day, "
  } else if (daytime == "afternoon"){
    greeting<-"Good afternoon, "
  } else greeting<-"Hello, "
  
  cat(paste0(greeting, paste0(eagles, collapse = ", "), "!"))
}

 