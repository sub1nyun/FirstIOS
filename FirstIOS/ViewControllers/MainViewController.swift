//
//  ViewController.swift
//  FirstIOS
//
//  Created by 윤수빈 on 2022/07/04.
//


//ViewControllers 라는 Group을 만들었음
//그룹안으로 ViewController를 옮기고 Main으로 이름을 변경함
import UIKit

class MainViewController: UIViewController { //유아이뷰 컨트롤러 상속
    //안드로이드의 엑티비티 개념과 비슷함
    //커밋 테스트
    
    //제목
    //선언과 동시에 정의하기
//    var titleLabel: UILabel = {
//        let label = UILabel()
//        label.text = "hellow ios!"
//        label.textAlignment = .center
//        label.font = UIFont.boldSystemFont(ofSize: 50)
//        label.textColor = .white
//
//        return label
//    }()
 
//Main으로 변경후 작업
        //코드로 메인화면 작업하기 -> main(Base) 란에서 이름 Class 이름 변경했음
    let titleLabel: UILabel = {
        let label = UILabel() //인스턴스 메모리에 올라감
        label.textColor = .black
        label.textAlignment = .center
        label.text = "메인화면" // = 은 양쪽을 다 뛰어줘야 인식이 가능한듯
        label.font = UIFont.boldSystemFont(ofSize: 70)
        return label
    }() //선언과 동시에 정의
    
    
    //뷰가 생성이 되었을때 vieewDidLoad -> 뷰가 가장 큰 덩어리
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(titleLabel) //위에서 정의한 Label을 뷰에 추가하는 것
        //추가한 뷰의 Label을 화면의 정가운데에 두기
        titleLabel.translatesAutoresizingMaskIntoConstraints = false //이것을 하지 않으면 적용이 안 됨
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        
        
        
        
//        view.backgroundColor = .blue
//        //view(전체 그림) 위에서 만든 titleLabel을 집어 넣는다
//        view.addSubview(titleLabel)
//
//        //스토리보드에서 센터에 두었던 작업을 하는 부분
//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//        //constraint 제약 -> 부모와 같이 증가
//        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//
//        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        //ios view를 그리는 방법은 크게 두가지가 있음
        //스토리보드를 활용하는 방법 나머지를 코드를 활용하여 그리는 방법
        //스위프트유아이가 나오면서 조금더 직관적으로 화면을 그릴 수 있긴함 -> 최신 방법인듯함
        
    }



}



