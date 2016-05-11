size(600,600);
background(255);

String s_short = "Processing is flexible";
String s_long = "Processing is a flexible software sketchbook for the visual arts.";

stroke(255,0,0,60);
line(width/2,0,width/2,height);

fill(0);
textSize(16);
textLeading(26);

//ウィンドウの中心(width/2)を基準に左揃えで描く（基準は行頭）
textAlign(LEFT);
text(s_short,width/2,40);

//ウィンドウの中心(width/2)を基準に中央揃えで描く（基準は行の中央）
textAlign(CENTER);
text(s_short,width/2,80);

//ウィンドウの中心(width/2)を基準に右揃えで描く（基準は行末）
textAlign(RIGHT);
text(s_short,width/2,120);

//テキストボックスの行揃えも変更できるが、基準はテキストボックスの左上のまま変わらない
textAlign(LEFT);
text(s_long,width/2,160,200,100);

textAlign(CENTER);
text(s_long,width/2,260,200,100);

textAlign(RIGHT);
text(s_long,width/2,360,200,100);


//テキストボックスをウィンドウ中心に表示し、中央揃えした例
textAlign(CENTER);
text(s_long,width/2-100,480,200,100);