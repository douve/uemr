
uem.anydate = function(x){
  slength = stringr::str_length(x)
  iY = isDate(x)
  if(Mode(slength,na.rm=T)==8 & iY) x = lubridate::ymd(as.character(x))
  if(Mode(slength,na.rm=T)==6 & iY) x = lubridate::ymd(as.character(paste0(x,"01")))
  return(x)
}
