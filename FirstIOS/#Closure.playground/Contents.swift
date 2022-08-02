import UIKit

//클로저

//String을 반환하는 클로저
let myName : String = {
    // myName 으로 들어가
    return "수빈"
}()

print(myName)

//매개변수를 가진 클로저
//스트링을 매개변수로 받아서 -> '' 이걸로 내뱉음
//클로저 정의 -> 메소드
let myRealName : (String) -> String = { (name: String) -> String in
        return "뭐임 이건\(name)"
}

myRealName("테스트")

//String을 받아서 돌려줄 거 없음(Void)
let myRealNameLogic : (String) -> Void = { (name: String) in
        print("보이드\(name)")
}

myRealNameLogic("출근")
