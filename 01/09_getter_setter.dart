// GETTERS AND SETTERS
void main() {
  
  final sq = Square(side: 5);
  print (sq);  
  sq.side = 5;
  
}

class Square{
  // el _ indica que la variable es private 
  // PRIVATE => solo se accede desde la nmisma clase
  double _side;
  
  Square({required double side}) : _side = side;
  
  double get area{
    return _side * _side;
  }
  
  set side(double value){
    if( value < 0) throw "Value must be >= 0";
    
    _side = value;
  }
  
  double calculateArea(){
    return _side * _side;
  }
  
  
  @override
  String toString(){
    return "Side de $_side";
  }
  
}
