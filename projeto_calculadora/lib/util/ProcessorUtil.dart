class ProcessorUtil {
  String text;
  int operatorIndex;

  ProcessorUtil(){
    text = "";
    operatorIndex = 0;
  }

  String addOnDisplay(String value){
    switch(value){
      case "+":
      case "-":
      case "*":
      case "/":
        addOperator(value);
        break;
      
      case "AC":
        deleteDigit();
        break;

      case "=":
        calculate();
        break;
      
      default:
        addNumber(value);
        break;
    }
    return text;
  }

  addNumber(String value){
    text += value;
  } 

  addOperator(String value){
    if(
        text.contains('+') ||
        text.contains('*') ||
        text.contains('/') ||
        text.lastIndexOf('-') > 0
      )
          calculate();      
    text += value;
    operatorIndex = text.length;
  }

  deleteDigit(){
    if(text.isNotEmpty)
      text = text.substring(0, text.length - 1);
  } 

  calculate(){
    double n1 = double.parse(text.substring(0, operatorIndex - 1));
    double n2 = double.parse(text.substring(operatorIndex));
    String op = text.substring(operatorIndex - 1, operatorIndex);
    switch(op){
      case "+":
        text = (n1 + n2).toStringAsPrecision(2);
        break;
      case "-":
        text = (n1 - n2).toStringAsPrecision(2);
        break;
      case "*":
        text = (n1 * n2).toStringAsPrecision(2);
        break;
      case "/":
        text = (n1 / n2).toStringAsPrecision(2);
        break;
      default:
        text = "Error";
        break;
    }
  }
}