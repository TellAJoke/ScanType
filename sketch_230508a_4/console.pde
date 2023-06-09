class Console {

  String message = "Welcome to ScanType!";
  String messageTime;
  Float boxHeight;

  Console(float h) {
    boxHeight = h;
    setMessageTime();
  }

  void setMessage(String msg){
    message = msg;
    setMessageTime();
  }
  
  void setMessageTime(){
    messageTime = hour() + ":" + minute() + ":" + second();
  }

  void show() {
    textFont(fontWeightRegular);
    
    fill(black);
    rect(0, height- boxHeight, width, boxHeight);
    fill(255);
    textSize(fontSizeSmall);
    textAlign(LEFT, CENTER);
    text(messageTime + " - " + message, mainPadding/2, height- boxHeight/2);
    
    textAlign(LEFT, CENTER);
    text("Frame rate: " + nf(frameRate, 0, 2), width - mainPadding * 5, height- boxHeight/2);
  }
}
