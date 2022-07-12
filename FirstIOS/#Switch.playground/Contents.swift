import UIKit

    //Switch 전등 스위치와 같은 의미 조건에 따라 코드를 분류하는 것
//if문과 비슷한 역할

//if문은 컨디션을 판단하고 실행할 코드를 판단

//switch문은 값의 일치 여부에 따라 실행할 코드를 판단
//스위치문의 동작방식을 패던매칭 or 밸류매칭이라고함

//c계열 언어는 매칭할 대상이 정수로 제한됨
//Swift의 경우는 실수 문자열 인스턴스 범위 등 다양한 대상을 매칭할 수 있음

//switch case default where break 5개의 키워드
//value Expression Pattern Case Body
// {} : 2개의 특수문자로 구분

//switch value_expression {
//case pattern_1:
//    Code_1
//default:
//    Code_2
//} ->브레이스

//스위치 키워드로 시작후 익스프레션이 따라옴 -> 스위치에서 매칭시킬 값을 나타내는 것(다양한 형태가옴)
//이후 case or default로 시작하는 키워드가 와야함
//case 이후 패턴이 와ㅑ함 -> 밸류 와 동일한 자료형의 값 또는 표현식 ex)익스프래션 정수 패턴 문자열 x 일치해야함 : 으로 구분
//이후 default 키워드나 } 닫는 블록을 만나기 전까지 코드를 진행시킴
//밸류 익스프레션 값과 케이스 블럭의 패턴이 같다면 케이스 블럭 코드를 실행함 -> 나머지 블록은 무시하고 스위치 문을 종료
//default -> 매칭되는 블록이 아무것도 없을 경우를 위함(항상 케이스 블럭 뒤에 와야하며 모든 블록 뒤에 와야함
//생략이 불가능하고 필요시 하나만 추가가능 -> if문의 else 와 비슷함 -> 패턴이 없음
//case pattern_1, pattern_2 -> 복수의 패턴을 갖을 수 있으며 ,로 구분함 -> 단 하나만 일치해도 매칭이 됨 -> 블록실행
//pattern은 값을 표현해야 하기 때문에 조건을 함께 지정하는 것은 어려움 -> where절의 도움을 받음 condition:



//ex Switch
let num = 1 //-> 상수
let num1 : Int = 1

switch num {
case 1:
    print("one")
case 2,3:
    print("two or three")
case 4:
    print("four")
default:
    print("others")
}
//2개의 케이스 블록과 하나의 디폴트 블록을 가지고 있고 익스프레션으로 num 상수를 사용중

let num2 = 1

switch num {
case 1 :
    print("first")
case 1 :
    print("second")
case 1 :
    print("third")
default :
    print("others")
}
//매칭하는 순서 -> 스위프트 레퍼런스상 매칭의 순서는 정해져 있지 않음 -> 컴파일러가 알아서 판단함
//if문과 비슷하게 first가 출력될 확률이 가장 높음 -> 스위프트 컴파일러는 오류로 보지 않지만
//겹치는 케이스를 만들지 않는 것이 중요함
//반드시 모든 경우의 수를 처리해야 함(반드시) -> must be Exhaustive

let num3 = 1
switch num3 {
case 1:
    print("f")
case 2, 3:
    print("s,t")
}
// 1, 2~3 이외의 경우는 처리 하지 않기때문에 오류가 발생함


let num4 = 1
switch num4 {
case 1 :
    print("f")
case 2,3 :
    print("s, t")
default :
    print("others") //바디를 비워두면 오류가 발생함 break를 명시해주면됨
}
// 모든 경우를 처리해 주기 때문에 오류가 발생하지 않음

//value 와 패턴의 일치를 확인하는 패턴매칭 방법 (위)

//#blog
//switch 구문도 소괄호()를 생략할 수 있음 단, break 키워드 사용은 선택 사항 즉, case 내부의 코드를 모두 실행하면
//break 없이도 switch 구문이 종료가 됨 -> 계속해서 case 를 실행하려면 fallthrough 키워드를 사용해야함(여러번 사용가능)

//Interval Matching
//범위 표현식이 패턴에 오게 됨 -> 범위 연산자가 필수로 오게됨
let temperature = 30
switch (temperature) {
case ..<10:
    print("Cold")
case 11...20:
    print("cool")
    case 21...21:
    print("Warm")
case 28... : //28보다 크거나 같은 범위인 hot이 출력됨
    print("Hot")
default :
    break
}

//FallThrough -> 이어지는 case의 블록의 코드로 이동하며(패턴매칭 생략함)
//where키워드를 사용하여 case의 조건을 확장할 수 있음
let iceCream : String = "비비빅"
let price : Int = 400
let isDelicious: Bool = false

switch iceCream {
case "비비빅" where isDelicious == true:
    print("맛있음")
case "비비빅" where price<1000&&isDelicious==false:
    print("\(iceCream)..? 홀리 쉣")
case "비비빅" where price>200:
    print("저렴")
case "메로나":
    print("메로나")
default:
    print("노맛")
}
