void main(){
  
  // print ( a );
  // int a = 123;
  
  // class 를 생성할 때, new 라는 키워드를 적지 않는 경우도 있는데 그냥 생략이 가능해서 그런 것, JS 생략 불가능 ....언제나 써주는 습관 중요
  
  Main main = new Main() ; // 출력 작성법: new 클래스명(); / 출력값(물) = 인스턴스 
  print( main );
  print( main.name ); //""
  main.name = 'James';
  print( main.name );
  
  
  print( new Main().name );
  // X 
  
  main.pr();
  new Main().pr();
  
  
  Child ch = new Child(321, i: 123);
  print ( ch.i );
//   ch.age : 사용불가 
  
  Child ch2 = new Child.abc(555);
  print( ch2.i);
  
  Child.age; // 구조라고 보지 않고 일반적인 변수라고 봄 - 이름/목적을 자세하게 붙여준 변수
  
  int red = 123;
  
  Colors.red; //13
  
  Colors.red = 66666666;
  
  print (Colors.red); //66666666
  
  Colors.op();
    
}

class Colors{
  static int red = 13;
  static int op(){
    return 123;
  }
  //static 변수들의 묶음, 특정 목적으로 묶어서 Class.만 하면 자동완성으로 목록이 쫙 뜨니까
  //전역적으로 생긴 변수가 static
}

// Class 클래스
// ? 왜: 변수와 함수 묶어 주는 역할
// -> 공통적인 특징을 만들어두고 재활용할 수 있게 하는
// -> 간결하게 하는 
// : 양식 
// 조퇴증 ? : 미리 폼을 만들어두고 입력하는 
// Dart / Flutter -> Class 로 생성, 활용 
// ---> 객체지향프로그래밍 OOP: 패러다임의 일종 
// : 다형성 

// 함수 안에서 선언 불가 
// 작성법: class ClassName{...변수, 함수들.....}
// * 암묵적인 규칙: 첫 글자는 대문자 / 변수, 함수 첫 글자는 소문자로

class Main{
  // ** 구조체: 구조만 담아주는 것 
  // 값을 넣어주는 건 안됨 예시: name = "123" 같은게 안된다고 
  String name  = "공백"; // 변수 초기화: 변수 만들면서 값 넣어주는 것
  
  void pr(){ // void 반환값이 없는 함수 타입
    print( "${this.name}님, 안녕하세요." ); // this를 찍어야 하는 이유: 이 클래스 안에 있는 name을 써줘, {}는 쩜 찍으면this 까지만인줄 알고 $적용되니까 중괄호로 묶어줘
    return;
  }
}

// * 생성자(함수)

class Child{
  //클래스 내부에 클래스 이름과 동일한 함수를 만들어주면 생성자
  
  int i = 0 ;
  
  // 함수의 기본, 네이밍, 섞어서 
//   Child(int i){
//     print("Child를 만들 때 무언가 하고 싶다면"); //...특정 작업
//     this.i = i;
    // 생성자 함수에서는 return 금지 : Child 인스턴스를 알아서 반환}
//   Child(this.i) //위에서 쓴 내용을 줄여서 이렇게 쓸 수 있음

//  [네이밍]
//    Child({required int i}){
//       this.i = i;
//     }
//    Child({required this.i})
   
// [섞어서 쓰기]
   Child(int x, {required int i}){
   this.i = i + x;
 }
  
Child.abc(int x){
  this.i = x;
}

static int age = 123;
  
}

// new.Child(...인자처럼...); // Child

// new Child.aaa(); // Child








