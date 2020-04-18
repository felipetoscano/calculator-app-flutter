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
    int n1 = int.parse(text.substring(0, operatorIndex - 1));
    int n2 = int.parse(text.substring(operatorIndex));
    String op = text.substring(operatorIndex - 1, operatorIndex);
    switch(op){
      case "+":
        text = (n1 + n2).toString();
        break;
      case "-":
        text = (n1 - n2).toString();
        break;
      case "*":
        text = (n1 * n2).toString();
        break;
      case "/":
        text = (n1 / n2).truncate().toString();
        break;
      default:
        text = "Error";
        break;
    }
  }
}