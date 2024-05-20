//
//  ViewController.swift
//  sesac20240520
//
//  Created by 장예지 on 5/20/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelList: [UILabel]!
    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    @IBOutlet var thirdButton: UIButton!
    
    var count = Array(repeating: 0, count: 3)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //labelName: 매개변수(paramter)
        //firstLabel, ..: 전달인자(argument)
        for label in labelList {
            designLabelUI(label, textColor: .red)
        }
        
        
        //():함수 호출 연산자
        designButtonUI(firstButton, title: "클릭1", textColor: .red)
        designButtonUI(secondButton, title: "클릭2", textColor: .orange)
        designButtonUI(thirdButton, title: "클릭3", textColor: .blue)
    }
    
    /*
        매개변수(parameter)
        외부매개변수 - argument label
            - textColor는 밖에서 보이는 이름이기 때문에 외부매개변수라고 함
        내부매개변수 - parameter name
            - color는 함수 안에서 사용되기 때문에 내부매개변수라고 한다.
        와일드카드 식별자: _ 외부매개변수명을 생략할 수 있음
     */
    func designLabelUI(_ label: UILabel, textColor color: UIColor){
        label.text = "0"
        label.textColor = color
        label.font = .boldSystemFont(ofSize: 30)
        label.textAlignment = .center
    }
    
    func designButtonUI(_ button: UIButton, title: String, textColor color: UIColor){
        button.setTitleColor(color, for: .normal)
        button.setTitle(title, for: .normal)
    }
    
    //어떤 버튼을 클릭했는지 우찌 알죠
    //1. currentTitle을 사용하기(옵셔널 조심, 버전 조심)
    //2. tag를 활용하기
    //3. 아울렛 머 어떻게 못할까? @IBOutletCollection
    @IBAction func buttonTapped(_ sender: UIButton) {
        count[sender.tag] = count[sender.tag] + 1
        
        labelList[sender.tag].text = "\(count[sender.tag]) 번"
    }
    
}

