size(600,600);
background(0);

String s0 = "Processing";
String s1 = "Processing is flexible.";
String s2 = "Processing is a flexible software.";


textSize(16);

fill(255);
rect(20,24,textWidth(s0),20); //s0の文字列と同じ幅をの四角形を描く
fill(0);
text(s0,20,40);


fill(255,0,0);
rect(20,54,textWidth(s1),20); //s1の文字列と同じ幅をの四角形を描く
fill(0);
text(s1,20,70);

fill(200,200,255);
rect(20,84,textWidth(s2),20); //s2の文字列と同じ幅をの四角形を描く
fill(0);
text(s2,20,100);