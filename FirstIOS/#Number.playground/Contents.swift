import UIKit

//Number Literals / Types
//123 -> 정수 리터럴 12 3 -> 두가지의 리터럴
//금액 1,000,000 -> 콤마대신 _ 언더 스코어를 사용해야함

//숫자를 저장할 수 있는 자료형
//정수 -> Integer Types :  123
//실수 -> Floating-point Types  : 1.23

//정수를 저장 할 수 있는 4가지 자료형을 제공함 -> 모두 Signed에 속함
//Int8
//Int16
//Int32
//Int64


//정수 자료형은 음수를 포함 할 수 있는지에따라 나뉨
//Signed -> +123 , -123
//Unsigned -> +123만 가능함(양수만 저장이 가능함)
//Int8~64앞에 U를 붙혀주면 됨-> UInt8

//Int8 : -128 ~ 127 (byte 인듯함)
//UInt8 : 0 ~ 255 음수를 저장하지 않기때문에 양수에 모든 값을 할당 가능해서 범위가 더 넓음

//실수를 저장하는 타입
//Float or Double -> Double의 바이트가 더 큼
//정수 자료형과 달리 구별하지 않음 모두 담을 수 있음

let num = 123 //숫자사이에 공백이 들어갈 경우 오류가 발생함
let num2 = 1.23 //실수표현
let num3 = 0.23 //C계열의 언어는 정수 부분이 0일경우 생략이 가능하지만 Swift에서는 표현을 해주어야함

type(of: num) //타입을 확인하는 함수
let intNum : Int = 123
let i8Num : Int8 = 123
//진수가 다름 위

let fpNum = 12.34
type(of: fpNum)
//실수 타입에 자료형을 따로 지정해주지 않으면 더블타입으로 지정이됨
let fpNum2 : Float = 12.0
let fpNum3 : Float = 12
print(fpNum3) //소수 자리가 저장이 되어있음을 볼 수 있음





