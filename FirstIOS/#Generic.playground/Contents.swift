import UIKit

//자바에서 제네릭은 데이터 타입을 일반화하는 것을 의미함
//클래스나 메소드에서 사용할 내부 데이터 타입을 컴파일 시에 미리 지정하는 방법
//객체의 안정성을 높일 수 있으며, 반환값에 대한 확인에 노력을 줄일 수 있음
//JDK1.5 부터 도입되었음

//<> 제네릭 표기법 -> 어떠한 자료형이 오던 받음
struct MyArray<SomeElement> {
    // 제네릭을 담은 빈 배열 생성
    var elements : [SomeElement] = [SomeElement]()
    
    //생성자를 안 만들어도 됨
    init(_ elements: [SomeElement]){
        self.elements = elements
    }
}

struct Friend {
    var name : String
}

struct PpakCoder {
    var name : String
}

var mySomeArray = MyArray([1,2,3])
print("\(mySomeArray)")

//보통 T- > Type 으로 선언을 많이 함
struct GenericArray<T> {
    var test : [T] = [T]()
}
