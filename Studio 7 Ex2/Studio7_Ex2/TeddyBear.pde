public class TeddyBear {
  
  private PImage _img;
  private PVector _position;
  private int _direction;
  
  public TeddyBear(int x, int y) {
    
    _position = new PVector(x, y);
    _direction = 1;
    _img = loadImage("teddybearicon.jpg");
  }
  
  public int getWidth() {
    // returns back the width of the image inside the img object.
    return _img.width;
  }
  
  public void drawBear() {
    // draw the teddy bear icon to the sketch window using the position as the top left hand corner of the image.
    image(_img, _position.x, _position.y);
  }
  
  
  public void moveBear(int amount) {
    // will move the teddy bear to the right by the amount passed into the method.
    
    // checks if the right hand edge of the bear is greater than the width of the sketch window
    if (_position.x + _img.width > width) {
      _direction = -1;
      _position.y += _img.height;
    }
    else if (_position.x <= 0) {
       _direction = 1;
       _position.y += _img.height;
    }
    
      _position.x += amount * _direction;

  }
}
