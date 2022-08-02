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
