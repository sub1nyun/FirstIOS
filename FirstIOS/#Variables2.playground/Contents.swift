import UIKit


//Bool은 불리언 타입으로 true 또는 false만 값으로 가질 수 있음

var boolean : Bool = false
boolean.toggle() //false -> true

let MyNameIsS : Bool = true
let MyNameIsB : Bool = false

print("나의 이름은 S입니까? : \(MyNameIsS)")
print("나의 이름은 S입니까? : \(MyNameIsB)")

//Float 와 Double은 부동 소수점을 사용하는 실수며 부동소수 타입이라고 한다.
//64비트 Double과 32비트의 부동 소수를 표현하는 Float가 존재
//만약 무엇을 사용해야할지 모른다면 Double을 사용하는 것이 좋다.

var FloatValue : Float = 1.234567890
var DoubleValue : Double = 1.234567890

print("Floatvalue : \(FloatValue), Double은: \(DoubleValue)")
//Float의 경우는 9에서 잘리지만, Double은 모든 소숫정을 다 보여준다
FloatValue = 123.4567899 //8에서 반올림
print(FloatValue)
//4.2  버전부터 임의의 수를 만드는 random(in:) 메서드가 추가 되었음
//정수 실수 모두 가능함

var myInt : Int = 1
var myDouble : Double = 1.0

//var total = myInt + myDouble
//둘 다 숫자 1을 포함하지만 전자는 Integer 이고 후자는 Double 이지만 둘을 합칠 수 없음

//Character는 '문자'를 의미함 집단이 아닌 단 하나의 문자를 뜻함 표현을 위하여 " " 사용함
let alphabetA : Character = "A"
print(alphabetA)

//String은 문자의 나열 즉, 문자열을 뜻함 앞 뒤로 " " 사용
let name : String = "수빈"
//이니셜라이저를 사용하면 빈 문자열을 생성할 수 있음
var introduce : String = String()
//var 변수를 사용하여 생성했기 때문에 수정과 변경이 가능함
introduce.append("반갑고")
//append() 메서드를 이용하여 문자열을 이어붙일 수 있음
print(introduce)
let unicodeScalarValue : String = "\u{2665}"
print(unicodeScalarValue)
//유니코드의 스칼라 값을 입력하면 값에 해당하는 표현이 출력됨

//Any, AnyObject
//Any는 모든 데이터 타입을 사용할 수 있다는 의미로 변수var 또는 상수let의 데이터 타입이 Any로 지정 되어 있다면
//그 변수 또는 상수에는 어떠한 종류의 데이터 타입읻은지 상관없이 할당 할 수 있음
var Somevar : Any = "테스트"

Somevar = 100
print(Somevar)
Somevar = 1233.4
print(Somevar)
Somevar=true
print(Somevar)
//오류 없이 모두 출력 됨(할당됨)

var things : [Any] = []
things.append(10)
things.append(100)
things.append("설화누나 보고 계신가요?")
things.append(false)
things.append({print("이게 되네")})
print(things)
//AnyObject는 Any보다 한정된 의미로 Class의 인스턴스만 할당할 수 있음
//Swift의 경우 타입에 엄격한 언어 Any 또는 AnyObject의 사용을 비추천 -> 매번 타입을 확인해야 하고 변환해야함

//nil -> 특정 타입이 아닌 '없음'을 나타내는 키워드
//변수나 상수에 값이 들어있지 않고 비어있음을 나타내는데 사용함 -> 이때 접근하면 메모리 접근 오류 런타임 오류가 발생함
//이러한 오류를 해결하기 위해서는 옵셔널을 사용해야함
//특정 함수의 반환 타입으로 사용될 수 있는 Never 타입이 존재

//Multi-line
//Swift의 표준 문자열은 따옴표로 시작하고 끝나지만 줄 바꿈(Enter)을 해서는 안됨
var test : String = "아무튼 스위프트 공부하는거임"
//길어지면 소스 코드에 보기 흉해짐 -> Multi-line Strings를 이용할 수 있음
//삼중 따옴표 """
var burns : String = """
이거 iot 수업 할때 본 기억이 있는데
뭔 세개 써가지고 주석 만드는 거
대충 기억이 날듯 말듯
"""
print(burns)
//문자열의 줄 바꿈을 텍스트 자체의 일부로 간주 -> 문자열에 실제로 세 줄이 포함됨
//원하지 않다면 앞에 \를 이용하면 각 줄로 끝냄
var str2 = """
This goes\
over multiple\
lines
"""
print(str2)
