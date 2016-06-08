float noise_param = 0;
float noise_step = 0.1;

void setup(){
 size(800,600);
 
 noLoop();
 rectMode(CENTER);
  
}

// random() と noise() について
// random()関数もnoise()関数も結果が予測できないという意味では同じです。
// ramdom()関数はパラメータの範囲における乱数を返します。
// random(0,1)の結果は0〜1の範囲の乱数です。
// noise()関数のパラメータには実行ごとに一定に変化する数値を与えます。
// 変化しない定数を与えると常に同じ結果が返るので意味がありません。noise(5)の結果は毎回おなじになります。
// このサンプルでは、変化する数値をnoise_param、一定に変化する量をnoise_stepとしています。
// noise()関数は変化量（noise_step）が小さいほど、連続的な結果を返します。大きければ不連続になります。
// noise()関数の結果はパラメータによらず常に0〜1の範囲になります。
// 山の稜線の形状や、水面のある位置の高さの変化など、自然界における自然なノイズは連続的なものです。
// noise()関数を使うことで予測不可能でありながら連続的な変化を生み出す事ができます。
// noise()関数は、Ken Perlin（ケン・パーリン）が開発したPerlin Noiseというアルゴリズムを使っています。
// CGに自然な外観を与えるために非常によく利用されています。


void draw(){
  background(0);
  
  for(int i=0; i<width; i+=10){
    
    stroke(255,0,0);
    fill(255,0,0,128);
    float h1 = random(0,150);
    rect(i, height/4 ,10, h1);
    
    
    stroke(0,0,255);
    fill(0,0,255,128);
    float h2 = noise(noise_param)*150;
    rect(i, height*3/4 ,10, h2);
    noise_param += noise_step;
    
  }
  
}