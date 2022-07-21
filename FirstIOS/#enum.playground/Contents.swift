import UIKit
import Foundation

//enum -> 타입을 나누는 것
//경우를 나누는 것

//학교 - 초, 중, 고
enum School {
    //case elementary
    //case middle
    //case high
    //or
    case elementary, middle, high
    
    
}

let yourSchool = School.high
print("your: \(yourSchool)")

//원하는 값을 명시 할 수 있음
enum Grade : Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
print("yourg: \(yourGrade)")
//값을 가져오고 싶을때는
print("yourGradeValue: \(yourGrade.rawValue)")

//case에 이름을 정해주고 값을 가져올 수 있음
enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    //함수도 가질 수 있음
    func getName() -> String { //getName을 호출하면 String을 반환하겠다
        switch self {
        case .elementary(let name): return name
        case .middle(name: name) : return name
        case .high(name: name) : name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "수빈중학교")
print("name: \(yourMiddleSchoolName)")

//Enum
//열거형 : 연관된 항목들을 묶어서 표현할 수 있는 타입
//프로그래머가 정의해준 항목 값 이외에는 추가/수정이 불가능함 정해진 값만 속할 수 있음
//제한된 선택지를 주고 싶을때
//정해진 값 외에는 입력받고 싶지 않을 때
//예상된 입력 값이 한정되어 있을 ㄷ때

//ex - 열거형으로 묶을 수 있는 항목들
//지역 : 강원도, 경기도, 전라도, 제주도, 충청동
//애플 : 아이폰, 아이패드, 맥북
//삼성 : 갤럭시, 버즈, 삼성 노트북, 갤럭시탭

