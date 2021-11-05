class LetterGenerator {
  
  PShape a, b, c;
  ArrayList<Letter> letters;
  PVector position;
  float offset = 150;
  
  LetterGenerator(String input, float x, float y) {
    initShapes();
    position = new PVector(x, y);
    letters = new ArrayList<Letter>();
    
    for (int i=0; i<input.length(); i++) {     
      char ch = input.charAt(i);
      
      float px = position.x + ((i+1) * offset);
      float py = position.y;
      
      switch(ch) {
        case 'a':
          letters.add(new Letter(a, px, py));
          break;
        case 'b':
          letters.add(new Letter(b, px, py));
          break;
        case 'c':
          letters.add(new Letter(c, px, py));
          break;
      }
    }
    
  }

  void initShapes() {
   
  
    
    a = createShape();
    a.beginShape();
    
      background(242, 71, 71);
      line(67.0, 326.0, 67.0, 323.0);
      line(66.0, 345.0, 191.0, 74.0);
      line(190.0, 77.0, 231.0, 99.0);
      line(125.0, 115.0, 125.0, 115.0);
      stroke(242, 71, 71);
      line(231.0, 95.0, 189.0, 222.0);
      line(230.0, 100.0, 122.0, 329.0);
      line(225.0, 97.0, 149.0, 267.0);
      line(155.0, 266.0, 259.0, 195.0);
      line(266.0, 194.0, 128.0, 178.0);
      line(130.0, 141.0, 367.0, 266.0);
      line(171.0, 180.0, 59.0, 185.0);
      line(21.0, 122.0, 116.0, 164.0);
      line(102.0, 168.0, 94.0, 173.0);
      ellipse(197.0, 128.0, 118.0, 56.0);
      ellipse(188.5, 140.0, 1.0, 0.0);
      ellipse(149.0, 80.5, 110.0, 83.0);
      ellipse(306.0, 148.5, 76.0, 73.0);
      ellipse(196.5, 331.5, 213.0, 17.0);
      ellipse(170.0, 254.0, 142.0, 124.0);
      ellipse(365.0, 186.5, 108.0, 101.0);
      ellipse(256.0, 257.0, 510.0, 508.0);
      line(235.0, 139.0, 365.0, 340.0);
      line(238.0, 141.0, 93.0, 448.0);
      line(304.0, 187.0, 138.0, 324.0);
      
    a.endShape(CLOSE);
    
    
    b = createShape();
    b.beginShape();
    
      ellipse(280.5, 255.0, 391.0, 402.0);
      strokeWeight(4);
      line(211.0, 146.0, 163.0, 381.0);
      line(213.0, 147.0, 357.0, 213.0);
      line(357.0, 213.0, 190.0, 254.0);
      line(190.0, 254.0, 342.0, 375.0);
      line(162.0, 382.0, 343.0, 375.0);
      stroke(224, 163, 163);
      line(240.0, 195.0, 241.0, 195.0);
      line(240.0, 194.0, 307.0, 250.0);
      line(307.0, 251.0, 225.0, 254.0);
      line(240.0, 195.0, 202.0, 251.0);
      line(235.0, 253.0, 203.0, 253.0);
      line(225.0, 307.0, 314.0, 360.0);
      line(223.0, 309.0, 205.0, 362.0);
      line(314.0, 358.0, 208.0, 360.0);

    b.endShape(CLOSE); 
    
    
    
    c = createShape();
    c.beginShape();
    
      rect(85.0, 50.0, 392.0, 309.0);
      stroke(55, 178, 188);
      rect(76.0, 31.0, 412.0, 348.0);
      fill(55, 178, 188);
      rect(66.0, 17.0, 346.0, 306.0);
      stroke(12, 32, 33);
      strokeWeight(5);
      line(269.0, 62.0, 133.0, 77.0);
      line(132.0, 76.0, 154.0, 257.0);
      line(132.0, 224.0, 307.0, 279.0);


    c.endShape(CLOSE);
  }
  
  void update() {
    //
  }
  
  void draw() {
    for (Letter letter : letters) {
      letter.run();
    }
  }
  
  void run() {
    update();
    draw();
  }

}
