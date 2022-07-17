import UIKit

//Array(배열)은 단일 값으로 저장되는 값의 모임 -> 많은 값을 단일 컬렉션으로 그룹화 한 다음 위치별로 해당 값에 액세스 할 수 있음
//Swift는 유형 추론을 사용하여 다음과 같이 배열에 어떤 유형의 데이터가 있는지 추론 파악이 가능함

//let 키워드로 사용해 선언하면 변경할 수 없는 배열이 되고, var 키워드를 사용해 변수로 선언해주면 변경 가능한 배열이 됨

var evenNumbers = [2,4,6,8]
var songs = ["For us", "Night View", "Lone Summer"]
//배열의 각 항목은 쉼표로 구분
//Swift는 인덱스 0부터 계산을 시작함
songs[0]
songs[1]
songs[2]
//코드가 어떤 유형의 배열인지 확인하고 싶다면 특수 명령어를 사용
type(of: songs) //Array<String>.Type

//타입을 지정해주진 않았기에 예측을 하는 것
//var songs2 = ["아무튼", "노래 제목", 3]
//type(of: songs2) // -> 오류가 표시되지만 혼합 배열을 처리할 수 없다는 의미는 아님(Any) 유형
var songs3 : [Any] = ["애니", "타입", 3]
type(of: songs3) //Any

let test1 = "test1"
let test2 = "test2"
let test3 = "test3"
let test4 = "test4"

let testArray = [test1, test2, test3, test4]
testArray[0] // -> 0인덱스부텨 읽음
//[9] 존재하지 않는 항목을 읽으면 충돌 -> 런타임오류가 발생함

//배열의 선언 방법
var arraytest = [String]()
var arraytest2 : [String] = []
var emptyArray : [Any] = [Any]() //Any 데이터를 요소로 갖는 빈 배열을 생성
var emptyArray2 : [Any] = Array<Any>() //위 선언과 동일한 방법
var emptyArray3 : [Any] = [] //배열의 타입을 명시했다면 []만으로도 빈 배열 생성이 가능


var names : [String] = ["수빈", "승주", "규형", "상민"]
//var names : Array<String> = []
print(emptyArray.isEmpty)
print(names.count)
names[3] = "설화"
print(names[3])

names.append("종효") //배열 마지막에 종효가 추가됨
names.append(contentsOf: ["슬기", "상민"])
print(names)
names.insert("지훈", at: 4) //4 인덱스에 추가됨
names.insert(contentsOf: ["추가","넣음"], at: 3) //3번 인덱스에 추가
print(names)

print(names.firstIndex(of: "수빈")) //0
print(names.firstIndex(of: "지건")) //nil
print(names.first)
print(names.last)

names.removeFirst() //수빈 삭제
names.removeLast() //상민 삭제
print(names)

let firstItem : String = names.removeFirst()
let lasetItem : String = names.removeLast()
let indexZeroItem : String = names.remove(at: 0) //인덱스를 지정하여 삭제가 가능

print(firstItem)
print(lasetItem)
print(names)
print(indexZeroItem)
print(names[1...4])

//배열 연산자
let aTeam : Array<String> = ["슬기", "설화", "종효"]
let bTeam : Array<String> = ["수빈", "승주", "규형", "상민"]
var hanul : Array<String> = aTeam + bTeam
print(hanul)
hanul += ["추가"]
print(hanul)

//String, Int, Booleans 및 일시적으로 단일 값을 저장할 수 있지만 많은 값을 저장하려면 [배열]을 사용하는 경우가 많음
//배열이 그 안에 많은 값을 보유함 ex) 다음 주의 기온 예측 또는 비디오 게임의 최고 점수 등을 저장하려면 단일 값이 아닌 배열이 필요
//배열은 index로 읽기때문에 순서가 중요함

