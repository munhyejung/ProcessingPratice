import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

String name;
PFont f;

songInfo[] songs = new songInfo[10];

void setup() {
  size(500,800);
  background(255);
  loadData(); 
  fill(0);
  f = createFont("Arial",14);
  
  for(int i = 0; i<10; i++) {
    int x = 30;
    int y = 30 + i*70;
    songs[i].display(x,y);
    
  }
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
      Elements songName = element.get(i).getElementsByClass("ellipsis rank01");
      Elements singer = element.get(i).getElementsByClass("ellipsis rank02");
      Elements album = element.get(i).getElementsByClass("ellipsis rank03");
      Elements imgElement = element.get(i).select("[width=60]");
      String imgUrl = imgElement.get(0).attributes().get("src");
      
      //error singerx2
      String singerText = singer.text();
      singerText = singerText.substring(singerText.length()/2);
      
      //img - rank songName - singer
      println(imgUrl);
      println( songName.text() + " - " + singerText);
      println(album.text());
      
      songs[i] = new songInfo(songName.text(),singerText,album.text(),imgUrl);
      
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
