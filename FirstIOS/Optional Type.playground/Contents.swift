import UIKit

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

let test4 : Int? = nil
print(test4!)
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





