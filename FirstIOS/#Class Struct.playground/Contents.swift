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

