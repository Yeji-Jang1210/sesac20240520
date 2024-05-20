//
//  ViewController.swift
//  sesac20240520
//
//  Created by 장예지 on 5/20/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    @IBOutlet var thirdButton: UIButton!
    
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var secondLabel: UILabel!
    @IBOutlet var thirdLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //labelName: 매개변수(paramter)
        //firstLabel, ..: 전달인자(argument)
        designLabelUI(firstLabel, textColor: .red)
        designLabelUI(secondLabel, textColor: .orange)
        designLabelUI(thirdLabel, textColor: .blue)
        
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
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        firstLabel.text = "Tapped"
    }
    
}

