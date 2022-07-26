import UIKit
import CoreFoundation
import Foundation
import Darwin

//변수와 상수는 읽기전에 값을 가져야함

//만약 저장할 값이 없을때는 어떻게 할 것인가?
//이럴때 사용하는 것 Optional -> nil
//nil -> 키워드인 동시에 값이 없다는 것을 나타내는 특별한 값
//아무런 값을 저장하지 않는 것과 같다는 의미
//let num = nil
//형식 추론을 통ㅐ num을 추론해야 하는데 nil은 아무런 형식을 갖고 있지 않아서 오류가 발생함
//let num2 : Int = nil
//이또한 오류
let num3 : Int? = nil
//nil을 사용하고 싶다면 ?를 붙혀줘야함
//Int, Double, String, Bool -> nil을 저장 할 수 없으나 ? 붙일시 nil을 저장 할 수 있도록 한것

//Unwrapping
let test : Int? = nil
print(test)

let test2 : Int? = 0
print(test2) // -> Optional(0)
//Optional 타입이 값을 저장하는 방식이 다르기 때문
//optional로 감싸서 보관한다고 의미하면 좋음 -> 값을 사용하고 싶다면 벗겨내야함 -> Unwrapping 뒤에 !를 붙힘

let test3 : Int? = 0
print(test3!)

//let test4 : Int? = nil
//print(test4!)
//추출할 값이 없기때문에(nil이 저장되어) 오류가 발생함
//옵셔널 타입에 값이 있는지 없는지는 중요하지 않고 !를 사용시 강제로 추출함
//Forced Unwrapping Operator -> ! 강제 추출 연산자
//유효한 값이 저장되어 있는 경우에는 괜찮지만 없다면 어플이 강제로 종료가 되버림
//강제종료를 막기 위하여 if문을 이용하는 것이 좋음

let test5 : Int? = nil
if test5 != nil {
    print(test5!)
}else {
    print("is empty")
}


//옵셔널 추가 공부
//옵션 -> 있을 수 있고 없을 수도 있음 -> 그래서 '?'를 사용함
var someVariable : Int? = nil //? 를 통해서 값이 없다는 것을 표현함

if someVariable == nil {
    someVariable = 90 //태생적으로 값이 있는지 모르는 Optional 상태로 나옴
}
print(someVariable) //옵셔널 값으로 출력됨

// 언래핑을 통해 옵셔널 값을 사용할 수 있음
// 감싸져있는 옵셔널을 벗기는 것 -> 언래핑
if let otherVariable = someVariable {
    //값이 있다면 other~에 넣어서 사용하겠다
    print("언래핑을 통해 값이 있음 : \(otherVariable)")
} else { //값이 없는 조건
    print("값이 없음")
}

someVariable = nil

// someVariable이 비어있다면(비어있음) 기본값으로 넣어줄것을 설정 가능
let myValue = someVariable ?? 10
print("myValue :  \(myValue)") //10 출력

var firstValue : Int? = 30
var secondValue : Int? = 50
//옵셔널 변수 두개 선언

//guard let
func unwrap(parameter : Int?) { //값이 없을 수도 있다
    print("unwrap() called")
    //값이 없는 상태면 리턴
    guard let unWrappedParam = parameter //위에서 옵셔널 값을 다른 변수에 넣어주는 것과 유사함
    else { //guard let은 주로 리턴을 사용함 -> 특정 행동을 하지 않고 반환하겠다
        return
    }
    print("unWrappedParam: \(unWrappedParam)")
    
}

unwrap(parameter: firstValue)
unwrap(parameter: secondValue)

//선택적인 이라는 의미로 값이 있을 수도, 없을 수도라는 느낌이 강함 그래서 변수나 상수가 nil일 수도 있다는 의미
// '?' 또는 '!' 기호가 옵셔널 기호
//스위프는 변수를 선언할때 non-optional 즉 '값'을 변수에 주어야함
//var test : Int = nil -> 오류가 발생 정수가 아닌 nil을 넣었기때문

//변수 안에 값이 확실히 있다는 것을 보장할 수 없으면 Optional을 사용해야함
//var test : Int? = nil !를 사용해도 오류가 사라짐

//옵셔널 타입 정의
//@frozen public enum Optional<Wrapped>:ExpressibleByNilLiteral{
    //case none 값이 없다(nil)
    //case some(Wrapped) 값이 있다

    //중략
//}

//옵셔널 타입은 = 열거형 그리고 '제네릭'으로 선언되어있기 때문에 어떤 타입이던지 받을 수 있음

//열거형이기 때문에 switch구문을 통해서 값이 있고 없음을 확인 할 수 있음
func isOptional(value OptionalValue:Any?){
    switch OptionalValue{
    case.none:
        print("옵셔널 값이 없음")
    case.some(let someValue):
        print("옵셔널 값이 있음")
    }
}

var name : String? = "수빈"
isOptional(value: name)

name = nil
isOptional(value: name)

//여러 케이스의 조건을 통해 검사하고 싶다면 where 을 사용하면 됨

let numbers : [Int?] = [nil, 100, -10, nil, 6, 20]

for item in numbers {
    switch item{
    case.some(let someValue) where someValue > 50:
        print("큰값")
    case.some(let someValue) where someValue < 0:
        print("음수")
    case.some(let someValue) :
        print("양수")
    case.none:
        print("nil")
    }
}

//옵셔널 타입을 안전하고 편하게 추출하는 방법

var op1 : Int = 30 //상자 안에 들어있지 않는 변수
var op2 : Int? = 30 //상자 안에 포장되어 있는 변수
//상자 안에는 값이 있을 수도 없을(nil) 수도 있음
//그렇기에 변수가 옵셔널로 되어있다면, 상자를 하나 만듬

//?가 붙으면 Xcode는 상자에 '노크'를 함 -> 만약 상자 안에 값이 있다면 30을 얻게 되고
//값이 없다면 nil을 반환해줌

var testopValue : Int? = 30 //testopValue에는 정수가 들어갈 수도 있지만 nil이 들어갈 수도 있다는것을 의미
var v = testopValue
type(of: v) //v는 옵셔널타입
//v는 옵셔널 타입이며 Int 데이터형을 가질 수 있는 변수(Int형 값을 가질 수도, 가지지 않을 수도 있음)

//'!'는 언래핑(Unwrapping)으로 불리며 강제 추출이라는 의미를 가짐
//노크를 하지 않고 강제로 상자 속의 값을 꺼내버림
var testopValue2 : Int? = 30
var v2 : Int = testopValue2! //강제로 추출해서 담음
var v3 : Int! = testopValue2 //같음

//만약 강제 추출했는데 값이 없다면 런타임 에러가 발생함
//즉 언래핑을 하기 전에는 항상 옵셔널 값이 nil이 아리라는 것을 확실히 해야함

//'!' 또한 옵셔널 이기 때문에 초기화할 때 값을 요구하지 않음 -> 하지 않으면 nil이 들어감
var name2 : String? = "수빈"

var subin : String = name2!
name2 = nil
//subin = name2 nil을 강제 언래핑했기에 컴파일 오류

//강제 추출하지 않고 안전하게 if문을 사용하여 처리
var name3 : String? = "수빈"

var subin2 : String = name3!

if name3 != nil {
    print("이름은 \(name3)입니다")
} else {
    print("nil이네요")
}

//옵셔널 변수에 값을 가져오는 디테일
//1. 옵셔널 바인딩(Optional Binding)
//2. 옵셔널 체이닝(Optional Chaining)
//3. 강제 언래핑(Forced Unwrapping) 즉, !

// 1. 옵셔널 바인딩
//if let(또는 var) 구문과 같이 사용함 -> 먼저 체크해주는 개념
//옵셔널에 값이 있는지 확인 후 있으면 옵셔널이 아닌 형태로 바꾸는 것
//nil인지 아니면 값이 있는지 경우에 따라 결과를 다르게 하고 싶다면 옵셔널 바인딩을 사용하면 됨

func printName(_name : String) {
    print(_name)
}

var myName : String? = nil
//tname 상자에 값이 있다면 tname에 myName 값을 넣고 조건 실행
if let tname = myName {
    printName(_name: tname)
}
//myName이 nil이기 때문에 if 문이 작동을 하지 않음
//값이 있을 때만 값이 바인딩-> 그렇기에 옵셔널 바인딩

var height : Int? = 170
if let value = height, value>=160{ // ',' 를 사용하면 && 효과를 볼 수 있음
    print("실행")
}

//nil을 할당함에 있어 오류는 발생하지 않을 것 같고 매번 값을 추출 하기에는 귀찮을때 암시적 추출 옵셔널 사용
//키워드 타입 뒤에 !
//옵셔널 이기에 nil을 할당할 수는 있으나 접근함녀 런타임 오류가 발생
//myName.isEmpty

// 2. 옵셔널 체이닝
//이름처럼 chain으로 이어져 있음
//하위 프로퍼티에 옵셔널 값이 있는지 연속적으로 확인하면서, 중간에 nil값이 하나라도 발견된다면 nil이 반환되는 형식

class Person {
    var residence:Residence?
    //residence 변수가 클래스를 상속 받고 있으면서 동시에 옵셔널
    //Person 타입의 인스턴스가 만들어지면 residence 변수 초기 값은 nil
}

class Residence {
    var numberOfRooms = 1
}

let ysb = Person()
/* Person 타입의 인스턴스가 ysb로 만들어짐
 ysb에 있는 프로퍼티로 class에서 선언한 residence가 있음
 
 하지만 Residence의 클래스를 옵셔널로 상속받고 있기 때문에
 값이 있을수도 없을수도 있음
 옵셔널 타입은 따로 초기화를 하지 않으면 nil상태로 초기화가 됨으로
 ysb의 residence의 값은 nil임
 */

//ysb의 residence가 값이 있다면 조건문을 실행 아니면 else 실행
if let roomCount = ysb.residence?.numberOfRooms {
    print("\(roomCount) room")
} else {
    print("Unalbe")
}
