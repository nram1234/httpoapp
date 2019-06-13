class ValidationData{

  String vEmail(String value){
    if(!value.contains('@')){
      return 'enter a valid email';
    }
    return null;
  }
  String vPassword(String value){
    if(value.length<5){
      return 'Password must be at least 4 characters';
    }
    return null;
  }
}