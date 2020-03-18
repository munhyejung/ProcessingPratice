import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

String name;
String runningtime;
PImage poster;
PFont f;

void setup() {
  size(300,350);
  loadData(); 
  f = create("Arial",16);
}

void draw() {
  background(255);
  
}

void loadData() {
  try {
    //info save
    String url = "https://www.melon.com/chart/index.htm";
    Document doc = Jsoup.connect(url).get();
    String title = doc.title();
    Elements element = doc.getElementsByClass("lst50");
    
    
    //print 
    for(int i = 0; i<10; i++) {
      //println(element.html());
      Elements songName = element.get(i).getElementsByClass("ellipsis rank01");
      Elements singer = element.get(i).getElementsByClass("ellipsis rank02");
      Elements album = element.get(i).getElementsByClass("ellipsis rank03");
      Elements img = element.get(i).select("[width=60]");
      String imgUrl = img.get(0).attributes().get("src");
      
      //img
      println(imgUrl);
      
      
      //error singerx2
      String singerText = singer.text();
      singerText = singerText.substring(singerText.length()/2);
      //rank songName - singer
      println( songName.text() + " - " + singerText);
  
      //println(singerText);
      println(album.text());
      println();
     
      fill(0);
      text(songName.text(),0,0);
        
    }
    
  }
  
  catch(Exception e) {
    println(e.getMessage());

  }
}



String giveMeTextBetween(String s,String before,String after) {
    
  int startIndex = s.indexOf(before);
  if( startIndex == -1 ) { return "";}
  startIndex += before.length();
  
  int endIndex = s.indexOf(after,startIndex);
  if(endIndex == -1){ return "";}
  
  return s.substring(startIndex,endIndex);
  
}
