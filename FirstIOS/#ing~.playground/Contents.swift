import UIKit

/*
Swift

Camel Case 를 사용함
- Lower Camel Case : fuction, method, variable, constant
- Upper Camel Case : type(class, struct, enum, extension)
-> 대소문자를 구분함

콘솔에 출력
- print -> 단순 문자열 출력
- dump -> 인스턴스에 자세한 설명으로 프로퍼티까지 출력함
- 문자열 보관 방법 \() 사용함
*/

/*
변수, 상수 선언
- Swift는 함수형 프로그램으로 불변 객체를 중요시 여김 -> 상수표현이 많이 나옴
- 변수 선언 키워드 var
- 상수 선언 키워드 let
let 변수명 : 타입 = 값
var 변수명 : 타입 = 값
- 선언후 나중에 할당하려는 상수나 변수는 타입을 반드시 명시해줘야함
 */
let sum : Int
let inputA : Int = 100
let inputB : Int = 100
//- 선언 후 첫 할당
sum = inputA + inputB

/*
- 기본 데이터 타입은 자바와 비슷하며
 */
var someUInt : UInt = 100
var soemInt : Int = -100
//둘다 정수형 타입이지만 Uint은 -를 포함하지 않음 0은 포함
//int의 최댓값(64 비트의 환경이라면 int64) 이상 Unit
//int 값으로 표현할 수 있는 값을 초과하고 Uint의 최댓값 보다는 작은 범위 해당하는 값은 Unit 사용
//음수형이 따로 있음

//기본 데이터 타입은 아니지만 특별한 역할을 하는 키워드
/* Any - Swift의 모든 타입을 지칭하는 키워드
 AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
 nil - 없음을 의미하는 키워드
 */

//모든 타입을 허용하는 someAny  변수 선언
var someAny : Any = 100
someAny = 123.12

//클래스 선언
class SomeClass {}
//인스턴스 생성
var SomeAnyObject : AnyObject = SomeClass()

//nil
//Any 타입으로 선언하여 어떠한 타입이던 올 수 있지만, 빈 값(nil)은 들어올 수 없음 -> null 과 유사함
someAny = nil
SomeAnyObject = nil




