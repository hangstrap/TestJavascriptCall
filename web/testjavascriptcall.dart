
import 'dart:js';

void main() {

  context[ "reverse"]=( JsObject pTag){

    var text = pTag["input"];    
    pTag[ "output"] = reverse(text);
  };
}

String reverse( String text){
  if( text == null){
    throw new Exception("Text parameter cannot be null");
  }
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.write(text[i]);
  }
  return buffer.toString();
  
}
