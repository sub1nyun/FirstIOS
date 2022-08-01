import UIKit

//함수 정의
//함수정의시 매개변수 이름 설정

func myFunction(name : String) -> String { //String을 반환하는 형태
    return "어우 출근하기 싫어 \(name)"
}

//함수, 메소드 호출
myFunction(name: "수빈")

//이름 바꿔보기
func myFunctionSeconde(with name : String) -> String { //String을 반환하는 형태
    return "어우 출근하기 싫어 \(name)"
}

myFunctionSeconde(with: "금요일언제와") //매개변수 이름 변경

//매개변수 이름 명 쓰기 귀찬을때
func myFunctionThird(_ name : String) -> String { //String을 반환하는 형태
    return "어우 출근하기 싫어 \(name)"
}
myFunctionThird("변수 명 없이 할 수 있음")
