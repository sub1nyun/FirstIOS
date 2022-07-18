import UIKit
import Darwin

//if 명령어 만 단독으로 사용이 가능하며, else else if와 조합해서 사용이 가능함
let firstCard : Int = 11
let secondCard : Int = 10

if firstCard + secondCard == 21 {
    print("맞음")
} else {
    print("틀림")
}
// 조건이 true이면 중괄호 {} 안의 코드가 프린트 됨
// if문 안에 주석이 들어가면 작동이 안 되는듯?

//1. 조건 앞에 '!'
//!는 not 이라는 의미로서 조건이 true인지 false인지 정해 줄 때 사용함

let score : Int = 9001

if score > 9000 {
    print("over")
} else if score == 9000 {
    print("exactly")
} else {
    print("not over")
}

var action : String
var person : String = "주부"

if person == "학생"{
    action = "공부"
} else if person == "주부" {
    action = "육아"
} else {
    action = "뭐함"
}
print(action)

//Switch 복습
//소괄호 () 생략이 가능함 break는 선택 사항 else -> default 모든 경우의 수를 정의해주어야함
//case를 연속 실행하기 위해서는 fallthrough를 사용함 -> 여러번 사용가능

func Calculator() {
    let Score : Int = Int.random(in: 0...100)
    
    if Score > 80 {
        print("80 over")
    } else if Score >= 40 && Score <= 80 {
        print("40 ~ 80")
    } else {
        print("holySheet")
    }
}
Calculator()

//Switch문으로 변경
func CalculatorSwitch() {
    let point : Int = Int.random(in: 0...100)
    
    switch point {
    case 1 :
        print("1")
    case 2 :
        print("2")
    default :
        print("know")
}
}
CalculatorSwitch()

//switch 입력 값 {
// case 비교 값 :
// 실행구문
// case 비교 값2 :
// 실행구문
// fallthrough //이 case를 마치고 switch 구문을 탈출하지 않고 아래의 case문을 계속 진행
//case 비교 값3, 비교 값4, 비교 값5 : //한 번에 여러 값과 비교가 가능함
//break //종료
//default //한정된 범위가 명확하지 않다면 사용이 필수
//실행구문
//}

// 조건이 거짓으로 평가 될 때까지 일부 코드를 반복적으로 실행함
//배열과 범위를 반복하고 루프가 돌아갈 때마다 하루나의 항목을 꺼내 상수에 할당
let count = 1...10
type(of: count)
//for루프를 사용하여 출력
for number in count {
    print("숫자는\(number)입니다")
}

//for 루프가 제공하는 상수를 사용하지 않을 경우 불피요한 값을 생성하지 않도록 _(밑줄)을 사용해야함
for i in 4...6 {
    print("스타워즈 시리즈:\(i) 번째")
}

//2단
for i in 1...9 {
    print("2단 : 2 x \(i) = \(2*i)")
}

//2~9 단
for i in 2...9{
    for j in 1...9 {
print("\(i) x \(j) = \(i*j)")
}
}

var people : Array<String> = ["players", "haters", "heart-breakers", "fakers"]
var actions : Array<String> = ["play", "hate", "break", "fake"]

for i in 0..<people.count {
    print("\(people[i]) gonna \(actions[i])")
}
//루프가 돌아갈 때마다 배열에서 한 항목을 가져와 상수에 입력한 다음 다음 루프 본문을 실행함
//하지만 때로는 현재 읽고있는 값이 실제로 필요하지 않은 경우도 있음 이곳에 밑줄(_)을 추가해줘야함
//변수가 필요하지 않음을 인식하고 임시 상수를 만들지 않음
