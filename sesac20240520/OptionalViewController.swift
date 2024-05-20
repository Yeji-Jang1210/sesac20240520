//
//  OptionalViewController.swift
//  sesac20240520
//
//  Created by 장예지 on 5/20/24.
//

import UIKit

class OptionalViewController: UIViewController {

    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var searchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        searchTextField.addTarget(self, action: #selector(dismissKeyboard), for: .editingDidEnd)
//        searchButton.addTarget(self, action: #selector(dismissKeyboard), for: .touchUpInside)

        
    }
    
    //1. 바탕 탭 제스쳐
    //2. 키보드 return 키
    //3. button을 클릭했을 때
    @IBAction func dismissKeyboard(_ sender: Any){
        self.view.endEditing(true)
    }
    
//    @objc func dismissKeyboard(){
//        view.endEditing(true)
//    }
}
