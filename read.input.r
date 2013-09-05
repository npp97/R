# read.input.grid<-function(){
#   pixel_year<-get.output.info(path.out)
#   npixel.out<-pixel_year[1]
#   res=0.5
#   grid.fn.out<- file(paste(path.input,"grid_OTMed_6089p_h43.bin",sep=""),"rb")
#   grid.data<<-readBin(grid.fn.out,integer(),n=2*npixel.out,size=2)/100
#   lon<<-grid.data[c(1:npixel.out)*2-1]
#   lat<<-grid.data[c(1:npixel.out)*2]
#   ind_lon<<- as.integer((grid.data[c(1:npixel.out)*2-1]+20)/res + 1.01)
#   ind_lat<<- as.integer((grid.data[c(1:npixel.out)*2]-25)/res + 1.01)
#   close(grid.fn.out)
# }

#temporary read function for testing
read.input.clm<-function(){

file.name<-"../inputs/OTMed_window_6089p_2013/cru_ts_3_10.1901.2009.tmp_OTMed_6089p_h43.clm"
nyear<-(file.info(file.name)$size-input_header)/6089/2/12
filetemp <- file(sprintf(file.name),"rb")
tmp<<-array(NA,dim=c(12,nyear,6089))
seek(filetemp,where=input_header,origin="start")
 for(i in 1:nyear){
   for(j in 1:6089){
     tmp[,i,j]<<-readBin(filetemp, integer(), n=12, size=2)/10
   }
 }


close(filetemp)
}