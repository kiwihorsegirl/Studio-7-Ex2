public class Wave {
 
  private ArrayList<TeddyBear> _bearList;
  private int _numBears;
  private int _x;
  private int _y;
  
  public Wave(int numBears) {
    
    _numBears = numBears;
    _bearList = new ArrayList<TeddyBear>();
    
    _x = 1;
    _y = 1;
      
      // for the number of bears
      for(int i = 0; i < _numBears; i++) {
        
        // Create a new teddy bear and add it to the list
        _bearList.add(new TeddyBear(_x, _y));
      _x += _bearList.get(i).getWidth(); 
      
    }
  }
  
  public void drawWave() {
    
    // for each bear in the list
     for(TeddyBear b : _bearList) {
       // display the bear 
        b.drawBear();
     }
    
  }
  
  public void moveWave(int amount) {
    
     for(TeddyBear b : _bearList) {
          b.moveBear(amount);
     }
  }
}
