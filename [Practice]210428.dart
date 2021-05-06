void main(){

  // 설명과 함께 써보기

  // 1. 변수
  // - 용도: 내가 쓰고 있는 값을 저장하기 위해서
  // - 작성법: 값의타입 변수명 = 값
  int a = 1;
  a = 123;
  a; // ****** 질문: 여기에 왜 a를 한 번 더 쓰는지?******
  print(a);

  // 2. "=" 대입연산자 : 등호 -> 우항의 값이 좌항의 값이 되는 
  int b = 2;
  a = b; // a = 2, b = 2
  b = 5; // a = 2, b = 5

  // 3. 지역변수와 전역변수
  // {} 실행범위 =/= dict,Map, Set
  // {}, Func{}, Class{}

  {
    int c = 3; // 사용 가능 변수: a, b, c
    print(a); // a,b쪽에게 지역 변수, d쪽에게 전역 변수 
    print(c); // *****전역을 지역에서 쓸 수는 있지만, 지역을 전역으로 가져갈 수는 없음******
    {
      int d = 4; // 사용 가능 변수: a, b, c, d // 지역변수   
    }
    // 이제 d 못 쓴다 
  }

  // -예시(1) : ****여기 뭐였는지 기억이 안나
  int vv = 0;
  {
    print( vv );
    int v1 = 0;
    print ( v1 );
  }

  //-예시(2) 
  {
    int vv = 0;
    print ( vv );
    int v1 = 0;
    print ( v1 );
  }

  print( a ); // print ( c )는 안됨, 지역 변수 안에 있으니까

  // 4, 함수 
  // 용도: 수식/공식, 묶을 수 있음
  // 작성 방법 **만들고 쓴다
  // 작성법(1) 결과값의타입 함수명(..인자..){...} 
  // 작성법(2) 결과값의타입 함수명(..인자..) => 값/식;

  // 선언부, 생성부 
  int func(){
    // ... 처리 
    return 123;
    // return 이후 작성 불가
  }
  
  //실행부, 호출, 호출부
  // 함수명(...);
  print( func () );
  
  int funcValue = func();
  print( funcValue );
  
  int func2(int x){
    return x+1;
  }
  
  // (1) 인자를 쓰게 되면 실행하는 쪽에서도 인자에 해당하는 값을 반드시 써야 함
  print ( func2(123) ); // 124
  
  // (2) 순서에 의존 (순서에 맞게 써줘야 함)
  int func3(int x, int y){
    return x+y;
  }
  print ( func3(2,1) );
  
  // 5. 네이밍 옵션: *****인자에 값을 부여해서 기본값을 넣어주고 안써도 되게끔 하는 것?*****
  // * 아래 null safety 는 개발자가 null을 쓰지 못하게 하는 것
  
  int func4({int x = 0, int y = 0}){
    return x+y+1;
  }
  
  print ( func4 (y:12, x: 1));
  // (1) 기본 값이 있으므로 적지 않아도 됨 --> 오류는 없다
  // (2) 순서 상관 없이 이름 쓰고 바로 값 해도 됨 (이름:값)
  
  // x, z를 반드시 print 인자로 쓰게 강제하는 방법
  int func5(int x, int z, {int y = 0, int u = 0}){
    return x+2;
  }
  
  print ( func5 ( 1, 2, u:3, y: 5 ) );
  
  // required  기본값 입력 불가 ***입력을 안하면 안했지 굳이 required 쓰는 이유를 모르겠다*****
  int func6({required int x, int y = 0}) => x+2;
  
  print ( func6 (y: 5, x: 6 ) );
  
  // <응용>
  int ele = 123;
  
  int eleFunc(int ele){
    return ele + 2;
  }
  
  int result = eleFunc(ele);
  
  print("result : $result");
  // $는 문자열 안에서만 사용 가능


}
