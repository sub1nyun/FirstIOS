import UIKit

//함수 정의
//함수정의시 매개변수 이름 설정

func myFunction(name : String) -> String { //String을 반환하는 형태
    return "어우 출근하기 싫어 \(name)"
}

//함수, 메소드 호출
myFunction(name: "수빈")

//이름 바꿔보기
func myFunctionSeconde(with name : String) -> String { //String을 반환하는 형태
    return "어우 출근하기 싫어 \(name)"
}

myFunctionSeconde(with: "금요일언제와") //매개변수 이름 변경

//매개변수 이름 명 쓰기 귀찬을때
func myFunctionThird(_ name : String) -> String { //String을 반환하는 형태
    return "어우 출근하기 싫어 \(name)"
}

func test() {
    print("리턴 없음")
}


test()
myFunctionThird("변수 명 없이 할 수 있음")

//함수는 특정 작업을 수행하는 '코드 조각' -> '독립된 기능'을 수행하는 단위
//클래스, 구조체 등 특정 타입에 연관되어 사용하는 함수를 메서드
//모듈 전체에서 전역으로 사용할 수 있는 메서드를 '함수'라고 칭함

//스위프트의 경우 재정의 -> 오버라이드와 중복 정의 -> 오버로드를 지원하기에
//매개변수의 타입이 다르면 같은 이름의 함수를 여럿 구성 할 수 있고
//매개변수의 개수가 달라도 같은 이름의 함수를 만들 수 있음
//키워드로는 func을 사용함
//반환 타입을 명시하기 전에는 -> 를 사용하여 어떤 타입이 반환될 것인지 명시
//반환 키워드로는 return을 사용

//스트링 반환
func hello(name:String) -> String {
    return "반갑다\(name)"
}

hello(name: "subin")

//함수를 스트링 변수에 넣은건가?
let myName : String = hello(name: "수빈")
print(myName)

func hello2(name:String) -> Void {
    print("\(name)")
}
//함수 내부의 코드 표현과, 그 표현의 결과값이 타입이 함수의 반환 타입과 일치한다면 return 키워드를 생략 할 수 있음
func introduce(name:String) -> String {
    "안녕하세요 리턴문 없어도 됩니다 이거"
}
let welcome : String = introduce(name: "수빈")
print(welcome)
//void로 선언해서 오류나는듯
//let testName : String = hello2(name: "테스트")
//print(testName)

//두 수를 더하는 함수
func sum(a : Int, b : Int) -> Int {
    return a+b
}
//중간에 멀티라인도 가능함

//매개변수
//스위프트 함수는 매개변수 정의에 따라 모습이 달라 질 수 있음
func square(number : Int){ //매개 변수의 이름을 지정한 다음 : 을 통해 데이터 유형을 알려줘야함
    
}

//매개변수가 없는 함수
func helloSubin() -> String { //매개변수가 필요 없다면 공란으로 둠 , 여러 개라면 쉼표로 구분
    return "방갑습니다"
}

//매개변수 이름과 전달 인자 레이블
//전달인자 레이블을 별도로 지정하여 역할을 좀 더 명확하게 할 수 있음
func welcome2(from myname:String, to yourname:String) -> String { //레이블, 변수명 : 타입
    "안녕하세여\(yourname)님아 저는 \(myname)이라고 합니당"
}
//from 과 to 라는 전달인자레이블이 존재
//myName과 name이라는 매개변수 이름이 있는 함수
print(welcome2(from: "설화", to: "승주"))

//전달인자 레이블을 사용하고 싶지 않다면 와일드카드 식별자를 사용할 수 있음
func welcome3(_ myname:String, _ times:Int) -> String {
    "아무튼 \(myname) 이녀석을 \(times) 이만큼 리턴"
}
print(welcome3("수빈", 2))

func welcome3(to name:String, repeatCount times: Int) -> String {
    "함수 명이 같지만 전달인자 레이블이 다르기에 중복 정의(오버로드)가 가능함"
}

//매개변수 기본값
//함수에서 매개변수마다 기본값을 지정할 수 있음 -> 매개변수가 전달 되지 않으면 기본값을 사용하는 구조
func delcome3(to name:String, repeatCount times: Int = 3) -> String {
    var result : String = ""
    
    for _ in 0..<times {
        result += "안농\(name)" + ""
    }
    return result
}
print(delcome3(to: "테스트")) //3번 찍힘

//가변 매개변수
//매개변수로 몇 개의 값이 들어올지 모를때 -> 가변 매개변수를 사용함 0개 이상의 값을 받아올 수 있음
//배열처럼 사용가능하며 함수마다 가변 매개변수는 '하나만' 갖을 수 있음

func welcomeToFriends(me:String, friends name:String...) -> String {
    var result : String = ""
    
    for friends in name {
        result += "안녕\(friends)야"
    }
    
    result += "저는" + me + "입니다"
    return result
}

print(welcomeToFriends(me: "수빈", friends: "승주", "규형", "상민"))
print(welcomeToFriends(me: "수빈"))

      

