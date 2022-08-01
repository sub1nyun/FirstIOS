import UIKit

var myAge = 0 {
    willSet {
        print("값이 설정될 예정 \(myAge)")
    }
    didSet{
        print("값이 설정되었음 \(myAge)")
    }
}

myAge = 10
