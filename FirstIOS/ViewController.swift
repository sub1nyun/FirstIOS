//
//  ViewController.swift
//  FirstIOS
//
//  Created by 윤수빈 on 2022/07/04.
//

import UIKit

class ViewController: UIViewController { //유아이뷰 컨트롤러 상속
    //안드로이드의 엑티비티 개념과 비슷함
    //커밋 테스트

    //제목
    //선언과 동시에 정의하기
    var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "hellow ios!"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = .white
        
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        //view(전체 그림) 위에서 만든 titleLabel을 집어 넣는다
        view.addSubview(titleLabel)
        
        //스토리보드에서 센터에 두었던 작업을 하는 부분
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        //constraint 제약 -> 부모와 같이 증가
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        //ios view를 그리는 방법은 크게 두가지가 있음
        //스토리보드를 활용하는 방법 나머지를 코드를 활용하여 그리는 방법
        //스위프트유아이가 나오면서 조금더 직관적으로 화면을 그릴 수 있긴함 -> 최신 방법인듯함
        
    }



}



