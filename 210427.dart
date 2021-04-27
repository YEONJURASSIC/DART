int v = 0;

void main() {
 
  // Dart
  // - Google 
  // - Pyhon + Kotlin : JavaScript + JAVA
  // - NodeJS - JS
  // 동적인 언어(타입을 정하지 않고 쓰는 것) + 정적인 언어(타입O)
  // var value = 123; 동적인 언어 -> 안쓸 것
  // int value2 = 123; 정적인 언어 -> 얘를 쓸거야
  
  // Class 클래스 : OOP 객체지향(추상화, 플러터) - 함수형 패러다임/프로그래밍(모든 내용을 함수로)
  
  // 1. 변수
  // ? 왜 : 내가 쓰고 있는 값을 저장하는 용도
  // 값의 타입 변수명 = 값; (세미콜론; 으로 줄 마침)
  
  int a = 1; // 전역변수 // 변수의 초기화(변수를 만들고 값을 넣는 작업) 혹은 변수 선언
  a = 123; // 바꾸는 과정 -> 할당, 재할당, 초기화(a가 비어있는데 값을 담으면 초기화)
  a;
  print(a);
  
  // = 대입연산자 : 등호
  // 우항의 값이 좌항의 값이 되는
  int b = 2;
  a = b;
  b = 3;
  // a : 2
  // b : 2
  
  // 지역변수와 전역 변수
  // {} 실행범위 =/= dict, Map, Set 
  // {}, Func{}, Class{}
  
  {
    int c = 3; // 지역변수 // 전역변수
    print(a);
    print(c);
    {
      int d = 4; // 지역변수
      // abcd 변수 모두 사용 가능
    }
    // d를 제외한 abc만 사용 가능
  } // 사라짐
  {
    print(a);
    int e = 5;
    print(e); // 지역변수
  }
  
  int vv = 0;
  {
    print ( vv );
    int v1 = 0;
    print( v1 );
  }
  {
    print ( vv );
    int v1 = 0;
    print( v1 );
  }
  
  print(a);
  // print(c); -> 실행 자체가 안됨
  
  // 함수 : 
  // ? 왜 : 수식/공식 - 순수 함수, 묶을 수 있음 - 반복 
  // 작성 방법 * 만들고 쓴다
  // 결과값의타입 함수명(...){...}
  // 결과값의타입 함수명(...) => 값/식;
  
  // 선언부 = 생성부
  int func(){
    // ... 처리
    return 123;
    //return 이후 작성 불가
  }
  
  // 실행부, 호출, 호출부
  // 함수명(...);
  print( func() );
 
  int funcValue = func();
  print( funcValue );
  
  int func2(int x){
    return x+1;
  }
  
  print( func2(123) ); // 124
  // (1) 인자를 쓰게 되면 실행하는 쪽에서도 일자를 반드시 써야함
  
 int func3(int x, int y){
   return x+y;
 }
  print (func3(2,1));
  // (2) 순서에 의존(맞게 써줘야 함)
  
  
  // - 네이밍 옵션
  
  // NULL X 개발자가 쓰지 못하게 하는 것이 NULL Safety(코틀린의 ..?)
  
  int func4({int x = 0, int y = 0}){
    return x+y+1;
  }
  
  print(func4(y:12, x:1));
  // 1. 기본 값이 있으므로 적지 않아도 됨 --> 오류는 없다
  // 2. 순서 상관 없이 이름에다가 넣게 됨 
  
  // x, z를 반드시 print 인자로 쓰게 강제하는 방법
  int func5(int x, int z, {int y = 0, int u = 0 }){
    return x+2;
  }
  
  print ( func5( 1, 2, u:1, y:3 ) );
  
  // Dart required Dart 2.12x & Flutter 2.x // FLutter 1.x ver @required
  // required 기본값 입력 불가
  int func6({required int x, int y=0}) => x+2;
  
  print( func6(y:98, x: 98) );
  
  // 응용
  // 해당 공간에서 가장 가까운 것의 영향
  int ele =123; // 전역
  
  int eleFunc(int ele){
    // int ele = 333;
    return ele+2;
  }
  
  int result = eleFunc(ele);
  
  print("result : $result");
  // $는 문자열 안에서만 사용 가능
  
  
  
  
  
  
}
