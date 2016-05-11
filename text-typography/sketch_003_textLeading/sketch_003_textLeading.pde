size(500,300);
background(255);

String s = "Processing is a flexible software sketchbook for the visual arts.";

fill(0);
textSize(16);

//行間なし(textLeadingとtextSizeが等しい）
textLeading(16);
text(s,10,80,200,100);

//行間10px（textLeadingはtextSize+10）
textLeading(26);
text(s,260,80,200,100);