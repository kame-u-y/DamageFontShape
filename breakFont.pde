import java.awt.Font;
import java.awt.font.FontRenderContext;
import java.awt.image.BufferedImage;
import java.awt.geom.PathIterator;

DamageFontShape damageFontShape;
float r = 0;

void setup() {
  size(600, 400);
  print(PathIterator.SEG_CLOSE, PathIterator.SEG_MOVETO, PathIterator.SEG_LINETO, PathIterator.SEG_QUADTO, PathIterator.SEG_CUBICTO);

  String fontName = "HiraginoSans-W6";
  int fontSize = 50;
  damageFontShape = new DamageFontShape(fontName, fontSize, "%あいうえおaiueo");
}

void draw() {
  background(100);
  ellipse(mouseX, mouseY, 100, 100);
  damageFontShape.displayShape();
}

void mousePressed() {
  r += random(10, -10);
}