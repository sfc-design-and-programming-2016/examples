size(400,400);
background(255);

PFont times_roman;
PFont times_bold;

times_roman = createFont("Times-Roman",32);
times_bold = createFont("Times-Bold",32);

//textFont関数で、描画に適用されるフォントを指定

textFont(times_bold);

fill(0);
text("Processing is flexible.", 16, 100);

textFont(times_roman);
text("Processing is flexible.", 16, 150);