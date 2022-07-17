import UIKit

//컬렉션 타입인 세트(set)
//말 그대로 공통적인 것들을 묶어놓은 것 -> 배열과 반대로 순서가 중요하지 않으며, 유일한 값들로 채우려고 할 때 세트가 유용함

//세트(Set)와 배열(array)의 차이점 크게 2가지
//1. 항목은 어떤 순서로도 저장되지 않음 -> 사실상 임의의 순서로 저장이됨
//2. 한 세트에 항목이 두 번 나타날 수 없습니다. 즉, 중복이 안 됨 -> 모든 항목은 고유해야함

let colors = Set(["red", "green", "blue"])
print(colors)
//blue, red, green 이 출력 됨
//위에서 생성 한 순서와 일치하지 않음 -> 순서가 지정되지 않았음 -> 배열에서와 같이 숫자 위치를 사용하여 값을 읽을 수 없음
//중복 항목을 삽입하려고 하면 중복 항목이 무시 됨
let colors2 = Set(["red", "green", "blue", "red"])
print(colors2) //red  한번만 출력됨

//세트 기본 프로퍼티
//let emptyIntSet:Set=[]
//print(emptyIntSet)
//let emptyIntSet2 : Set = Set()
//print(emptyIntSet2)

var animal:Set<String> = ["dog", "샤샤", "lion"]
print(animal.isEmpty) //비어있는가?
animal.insert("tiger") //tiger추가

print(animal.count) //Set animal이 가진 값의 수를 세지만 중복은 제외함
print(animal.remove("cat")) //요소가 삭제되면 해당 값을 -> 삭제 되지 않으면 nil을 반환함
var someStrSet:Set=["a", "b", "c", "d"]

if let someVal = someStrSet.remove("c"){
    print(someVal)
    print(someStrSet)
}else {
    print("cannot find element")
}


//Set와 Array 배열이 다른 이유
//세트와 배열은 모두 데이터 모음이므로 단일 변수 내에 여러 값을 보유함
//하지만 값을 유지하는 방법이 중요함
//세트는 -> 순서가 지정되지 않고 중복을 포함할 수 없는 반면
//배열은 -> 순서를 유지하고 중복을 포함 할 수 있음

//두 가지 차이점은 작게 보일 수 있지만 부작용이 있는데
//세트는 추가 한 순서대로 개체를 저장할 필요가 없기 때문에 대신 -> 빠른 검색을 위해 최적화하는 순서로 개체를 저장
//ex) 이 세트에 항목 x가 포함이 되어있냐? 라고 묻는다면 세트의 크기에 관계없이 빠르게 답을 얻을 수 있음

//반대로 배열은 항목을 제공 한 순서대로 저장해야함 -> 따라서 항목 x가 10,000개의 항목을 포함하는 배열에 존재하는지 확인하려면
//첫 번째 항목에서 시작하여 발견될 때까지 모든 단일 항목을 확인해야함

//큰 차이점으로는 "해당 항목이 있느냐?" 라고 말하고 싶을 때 Set가 더 유용하게 쓰임
//중복이 없고 더 빠른 검색을 할 수 있기때문

//세트의 선언

var names1:Set<String> = Set<String>()
var names2:Set<String> = []

//Array와 마찬가지로 대괄호를 사용함
var names3:Set<String>=["수빈", "승주", "규형", "상민"]
//타입 추론을 사용하면 컴파일러가 Set이 아닌 Array로 타입을 지정해주기 때문에 Set을 사용하려면 반드시 명시해주어야함
//추가 하고 싶다면 insert(), 삭제하고 싶다면 remove() 메서드를 사용함

//세트는 자신 내부의 값들이 모두 유일함을 보장함 -> 집합 관계를 표현하고자 할 때 유용하게 쓰일 수 있음
//두 세트의 교집합, 합집합 등을 연산하기에 매우 용이합니다. -> 또한 sorted()메서드를 통해 정렬된 배열을 반환해줄 수도 있음
//intersection - 교집합
//symmetricDifference - 여집합
//union - 합집합
//subtracting - 차집합

let firstFruits:Set<String> = ["사과", "배", "포도", "메론", "수박"]
let secondFruits:Set<String> = ["메론", "수박", "딸기", "참외", "자두"]

let intersectSet:Set<String> = firstFruits.intersection(secondFruits)
print(intersectSet) //메론, 수박
let symmetricDiffSet:Set<String> = firstFruits.symmetricDifference(secondFruits)
print(symmetricDiffSet) //참외, 자두, 사과, 포도, 딸기, 배 (겹치는 것 제외)
let unionSet:Set<String> = firstFruits.union(secondFruits)
print(unionSet) //모두 출력됨
let subtracSet:Set<String> = firstFruits.subtracting(secondFruits)
print(subtracSet) //사과 포도 배

print(unionSet.sorted())
//정렬된 배열을 반환해줌

