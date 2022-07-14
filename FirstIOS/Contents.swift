import UIKit


//Variables, Constants - 변수, 상수
//프로그램에서 데이터를 처리하기 단계 메모리에 값을 저장하는 것

//Variables
//var name = value (메모리에 값을 넣음 -> 할당 연산자)


var name = "Subin" //문자열을 표현하려면 "" 사용
var year = 2022
var swiftVersion = 00
var isMale = true
var isMail = false

name
print(name) //console 출력 -> 디버그 영역
//할당 연산자를 사용하여 새로운 값 넣기
//variableName = initialValue -> 동일한 이름 사용불가능(이름으로 구별하기 때문)

name = "Winter"
name = "real"

var anotherName = name
anotherName = "Subin"
anotherName

var yearString = "d"

//Constansts
//#let

let letname = "let_test"
letname
print(letname)

//letname = "test" 변수를 var(키워드)로 변경하라는 오류가 발생함

let yearlet = 2022, month = 7, day = 7
yearlet
month
day

//Type Annotation
//반드시 초기값을 저장해아 하는 것은 아님
//ex) name 상수를 선언할때 초기 값을 저장하지 않으려면 저장할 값의 종류를 직접 지정해줘야함 -> 자료형

var Sname : String
Sname = "test"
Sname //Sname 변수에 초기화 되기전에 사용했다는 오류문 발생 -> 저장된 값을 읽고 싶은데 값이 없어서 오류가 생김

//Swift에서는 상수를 주로 사용함
//발생할 오류를 미리 발견할 수 있고 컴파일러가 최적화를 통해 조금더 빠른 코드를 만들 수 있기 때문

//변수는 프로그램에 임시 데이터를 저장하는 좋은 방법이지만 Swift는 상수를 주로 사용
//문제를 피하기 위한 것

