void main(){

  // 조건문 : 특정 조건을 만족하면 실행
  // if - else: 하나의 세트
  // 값의 형태 bool - true / false
  // * 비교연산자: >, <, ==, >=크거나같다, <=작거나같다
  
  int a = 11;
  if (a < 10){
    print("a는 10보다 작다");
    return;
   
  }
  else if(10 <=a && a <20){ 
    // || 는 or 연산 "또는" 이라는 뜻: 둘 중에 하나만 맞으면 된다
    // && "그리고": 둘 다 맞아야함 
    print("a는 10보다 크거나 같고, 20보다 작다");
  }
  
  else{
    print("a는 20보다 크다 !");
    return;
  }
  
  int check ( int a ){
    if (a < 10){
      print("a는 10보다 작다");
      return 12345789;

    }
    else if(10 <=a && a <20){
      print("a는 10보다 크거나 같고, 20보다 작다");
//        return;
    }

    else{
      print("a는 20보다 크다 !");
      return 21212123123;
    }
    print ("check 는 실행 중");
    return 1020;
  }
  
//   가장 자주 쓰는 방식
  
  int check2(int y){
    if ( y < 10 ) return 9;
//     else if() 대신에 if 만 계속 쓰는 방식 
    if ( y >= 10 && y < 20) return 1020;
    // 둘 다 실행 안되면 그냥 아래로 떨어져서 마지막 return될 수 있게 함으로써 굳이 else 두 번 쓰지 않아도 됨
    
    return 2222220200220;
  }
  
  print( "check2 : ${ check2(2)}");
  
  // print( check(14) );
  int ch = check(13);
  print( ch );
  
  
  print("---반복문 진행 전---");
  
  // 반복문 : 특정 행위를 반복
  
  return;
  
}









