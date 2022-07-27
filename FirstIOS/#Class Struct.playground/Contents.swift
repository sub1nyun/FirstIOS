import UIKit


//Model 이라는 것에 데이터 덩어리를 모아놓음
// 클래스와 스트럭트의 차이

// 유튜버 (데이터) 모델 - struct / 구조체
struct YoutuberStruct {
    var name : String
    var subscribersCount : Int
}

var devSubin = YoutuberStruct(name: "수빈", subscribersCount: 99999)
//devSubin을 메모리에 올린 후 새로운 변수에 할당함
var devSubinClone = devSubin

print("\(devSubinClone.name)") //name에 새로운 값을 할당하기 전

devSubinClone.name = "설화누나" // name에 값을 할당

print("\(devSubinClone.name)") // 값을 넣은 후 -> 설화누나
print("\(devSubin.name)") // 값을 넣은 후 -> 수빈
//값(value) 복사이기 때문에 둘의 값이 다름

/* A종이          B종이
    수빈  복사 ->   수빈 상태에서 B종이의 값을 변경하거나 바꿔도 A에는 영향을 주지 않음
 값 복사 개념
Struct
 */

//클래스는 생성자를 만들어줘야함
//생성 -> 메모리에 올린다는 의미

//클래스 -> 메모리에 올린것을 객체(오브젝트)라고 함
class YoutuberClass {
    var name : String
    var subscribersCount : Int
    //시작을뜻함 이니셜라이져 (생성자) -> 메모리에 올림
    //선언한 변수에 값이 없는 상태
    //init으로 매개변수를 가진 생성자 메소드를 만들어야
    //매개변수를 넣어서 그 값을 가진 객체를 만들 수 있음
    init(name : String, subscribersCount : Int) { //인수명은 같지 않아도 됨
        self.name = name //외부에서 클래스를 만들때 넘어오는 값을 넣겠다 (self = this) ->인듯?
        self.subscribersCount = subscribersCount
    }
}

var classSubin = YoutuberClass(name: "수빈", subscribersCount: 99999)
var classSubinClone = classSubin

print("값 넣기 전: \(classSubinClone.name)")

classSubinClone.name = "출근싫엉"

print("값 넣은 후 : \(classSubinClone.name)") //출근싫엉

print("처음 : \(classSubin.name)") //출근싫엉

//스트럭트는 다른 변수에 복사함 -> 값 복사 -> 다른 곳(메모리)
//클래스는 서로 연결이 되어있음(참조?) -> 본따서 만듬(싱크가 되어 있음) -> 메모리주소(참조)를 보고 있음
//같은 메모리 공간안에 있는 서로 같은 것을 바라보고 있어서 하나를 수정하면 A,B 모두에게 영향을 줌

//스위프트는 객체라는 용어대신 인스턴스 라는 용어를 사용함
//단일 상속만 가능
//참조타입(레퍼런스)
//ios 프레임워크의 대부분은 클래스로 구성
//SwiftUI에서는 대부분이 스트럭트로 구성

//Struct(구조체)
//클래스와 다르게 상속이 불가능함
//값 타입으로 value라고 부름
//큰 뼈대는 보통 스트럭트로 구성이 되어있음
//Int, Double, String 등의 데이터 타입

//Struct를 사용하는 경우
//1. 연관된 몇몇의 값들을 모아서 하나의 데이터타입으로 표현하고 싶을 때,
//2. 다른 객체 또는 함수 등으로 전달될 때 참조가 아닌 복사를 원할 때,
//3. 자신을 상속할 필요가 없거나 자신이 다른 타입을 상속받을 필요가 없을 때,
// 4. Apple 프레임워크에서 프로그래밍을 할 때에는 주로 클래스를 많이 사용한다
//키워드로 struct를 사용
struct Sport {
    var name : String
}
//Sport이름을 문자열로 저장하는 구조체를 만들었음
//구조체 내부의 변수를 프로퍼티라고 하며 속성이 하나인 구조체로 인스턴스를 만들어 사용할 수 있음

var tennis = Sport(name: "Tennis")
print(tennis.name)

//구조체를 정의하고 인스턴스를 생성하고 초기화를 진행할때는 '멤버와이즈 이니셜라이저'를 사용함
//구조체의 프로퍼티 이름으로 자동으로 지정이됨
//인스턴스 생성 후 초기화된 후 프로퍼티 값에 접근하려면 마침표를 사용하면 됨

struct character {
    var name : String
    var isfavorie : Bool
}

var myCharacter = character(name: "샤샤", isfavorie: true)
print(myCharacter)

myCharacter.name = "승주"
myCharacter.isfavorie=false

print(myCharacter)

//Struct의 장점
//속도 : 값 타입은 시스템 리소스를 적게 먹음
//안정성 : 클래스는 참조 타입이기 때문에 '원본'에 바로 접근이 가능하지만, 구조체는 원본은 그대로 두고 '복사'가 일어나기 때문에
//원본을 지킬 수 있음. 클래스보다 안전한 코딩이 가능함. 여러 클래스 또는 다중 스레드 환경에서 변수를 전달할 때 유용, 변수의 복사본을
//다른 곳으로 보낼 수 있으면 다른 곳에서 변숫값을 변경하는 것에 대해 걱정할 필요가 없음.
//구조체의 주요 목적은 비교적 간단한 데이터 값을 캡슐화 하는 것

struct Code {
    var language : String
    var containsErrors = false
    var report : String {
        if containsErrors { //true 이면
            return "This \(language) code has bugs!"
            print("This \(language) code has bugs!") //반드시 스트링 값을 리턴해줘야함
        } else {
            return "This looks good to me"
        }
    }
}
let Korean = Code(language: "Korean", containsErrors: true)
print(Korean.report)
//true 이거나 false 일때 값을 반환하도록 저장하는 기능도 있음

//Struct를 사용해야 할 때
// 참조가 아닌 복사를 원할 때
// 자신을 상속할 필요가 없거나 자신이 다른 타입을 상속받을 필요가 없을 때
// 연관된 몇몇의 값들을 모아서 하나의 데이터 타입으로 표현하고 싶을 때
//클래스는 반대로 생각하면 편함

//멤버와이즈 이니셜라이저는 구조체의 특권으로 클래스에서는 지원하지 않음



