import UIKit

//컬렉션 타입 복습
//데이터의 집합소
//Array, Dictionary, Set

//Array : 같은 데이터 타입의 값들을 순서대로 저장하는 리스트 -> 데이터들의 집합으로 순서가 있어 접근이 편함
//단일 값으로 저장되는 값의 모임

//배열 선언
var name : Array<String> = ["수빈", "승주", "규형", "상민"]
var number : Array<Int> = [010, 8807, 7810]

//배열에 요소 추가
name += ["설화"]
number.append(99)
name.append(contentsOf: ["설화", "종효"])
//배열의 접근 -> 순서(인덱스)가 있어서 편함
print(name[1])
print(name.first) //OPTIONAL
print(name.last) //#

//Dictionary
//순서없이 키(Key)와 값(Value)를 한 쌍으로 데이터를 저장하는 컬렉션 타입 -> key는 중복될 수 없음(식별자)
var nameDic : [String :Int] = ["song":4, "kim": 8]
//Map과 유사한듯?
type(of: nameDic)
//key와 value값
print(nameDic.keys)
print(nameDic.values)

//딕셔너리 접근 -> key 값으로 접근
print(nameDic["song"])
print(nameDic["kim"])

//키를 배열로 가져오기
let nameStr = [String](nameDic.keys)
print(nameStr)

//딕셔너리 배열 차이
//둘 다 하나의 변수에 많은 데이터를 저장하는 방법이지만 서로 다른 방법으로 저장함
//딕셔너리를 사용하면 식별하는 "키"를 선택할 수 있지만, 배열은 순차적으로 추가함
//세트와 마찬가지로 특정 순서로 항목을 저장하지 않음 -> 빠른 검색을 위함
//존재하지 않는 키를 사용하면 값을 읽으려고하면 nil을 돌려줌
//누락 된 키를 요청하는 경우 사용할 기본값을 사전에 제공할 수 있음

var favoriteIceCream : Dictionary<String, String> = ["수빈":"안단거", "승주":"단거", "종효":"군대"]
print(favoriteIceCream)
print(favoriteIceCream.keys)
print(favoriteIceCream["승주"])
favoriteIceCream["수빈"]
favoriteIceCream["상민"] //nil
favoriteIceCream["상민", default: "괘씸"]




//배열에 없는 키를 입력하면 nil을 반환 -> 키 값이 없음을 의미함
print(favoriteIceCream["설화", default:"아무튼 단거"])
print(favoriteIceCream["설화"])
//누락 된 값을 안전하게 처리하기 위해 기능을 추가해야 함

let results : Dictionary<String, Int> = ["영어":100, "일본어":85, "불어":75]
//시험 결과를 저장하는 딕셔너리 생성
//학생의 일본어 점수를 읽고 싶다면 원하는 것에 따라 방법이 달라짐
//1. 누락된 값이 학생이 시험에 실패했음을 의미하는 경우 기본 값 0을 사용하여 반환
//2. 아직 시험을 치르지 않아서, 기본값을 건너 뛰고 nil반환
let historyResult = results["history", default: 0]
print(historyResult)
print(results)
typealias StringIntDictionary = [String:Int]
//특정 키에 해당하는 값을 제거하고 싶다면 removeValue()를 사용
favoriteIceCream.removeValue(forKey: "종효")
print(favoriteIceCream)
print(favoriteIceCream["종효",default: "군바"])
let planets = [1: "Mercury", 2: "Venus"]
let venus = planets[2, default: "Planet X"]
print(venus)
print(planets[2])

favoriteIceCream.updateValue("밸류 값 추가", forKey: "여긴 키값")
print(favoriteIceCream)





//Set
//같은 데이터 타입의 값들을 순서없이 저장하는 리스트 -> 순서가 없기 때문에 중복 값을 구분 할 수 없음 -> 허용되지 않음 하나만 인정
var subway : Set<String> = ["시청", "을지로", "대전", "광주"]
var subway2 : Set<String> = ["용산", "대화", "대치", "성수"]

subway2.insert("군자")
print(subway2)
subway.remove("을지로")
print(subway)





