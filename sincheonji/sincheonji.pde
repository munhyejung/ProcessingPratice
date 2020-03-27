//Data Info
//https://data.gg.go.kr/portal/data/village/selectServicePage.do?page=1&rows=10&sortColumn=&sortDirection=&infId=74LAO29DU55OP50KBAMK30087813&infSeq=2&sigunFlag=41190&srvCd=A&sigunNm=%EB%B6%80%EC%B2%9C%EC%8B%9C
/*
String baseApi = "https://openapi.gg.go.kr/ShnnjChchStus";
String Key = "Key=d986fe0b496045349ff682fa00249a92";
String city = "SIGUN_NM=부천시";
String type = "Type=json";
*/

JSONArray bucheon;
InfoSin[] sins;

void setup() {
  size(700,600);
  loadData();
  background(255);
  display();
  
  
}

void draw() {
  
}

void loadData() {
  bucheon = loadJSONArray("data/sincheonji_quarntine.json");
  sins = new InfoSin[bucheon.size()];
  
  for(int i = 0; i<bucheon.size(); i++) {
    JSONObject tmp = bucheon.getJSONObject(i);
    String add,stus,lat,log;
      add = tmp.getString("LOCPLC_ADDR");
      lat = tmp.getString("REFINE_WGS84_LAT");
      log = tmp.getString("REFINE_WGS84_LOGT");
      stus = tmp.getString("MESURS_STUS");
      
      lat = lat.substring(3,7);
      log = log.substring(4,8);

      sins[i] = new InfoSin(add,lat,log,stus);
      
      println(add);
      println(lat);
      println(log);
      println(stus);

  }
}

void display() {
  //lat Mod 4500 & log Mod 7000
  int x,y;
  
  for(int i =0; i<bucheon.size();i++) {
  x = (Integer.parseInt(sins[i].getLog()))%7500*2;
  y = (Integer.parseInt(sins[i].getLat()))%4800*2; 
  
  if( sins[i].getStus().equals("방역처리완료")){
    PImage img = loadImage("unnamed.png");
    image(img,x,y,50,70);
  } 
  else {
    PImage img2 = loadImage("vir1.jpg");
    image(img2,x,y,50,70);
  }
  
  println("x : ",x,"y : ",y);
  
  }
  
}
