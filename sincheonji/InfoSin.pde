class InfoSin {
  
  String Addr;
  String Lat;
  String Log;
  String Stus;
   
  InfoSin(String Addr, String Lat, String Log, String Stus) {
  
    this.Addr = Addr;
    this.Lat = Lat;
    this.Log = Log;
    this.Stus = Stus;
  
  }
  
  String getLat() {
    return Lat;
  }
  
  String getLog() {
    return Log;
  }
  
  String getStus() {
    return Stus;
  }
  
}
