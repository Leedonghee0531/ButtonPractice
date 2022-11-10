//
//  ViewController.swift
//  Button change practice
//
//  Created by 동희 on 2022/11/05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textid: UILabel!
    
    var leftValue: Int = 0
    var rightValue: Int = 0
    var isEditStarted = false
    var type: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }

    @IBAction func numberClick(_ sender: UIButton) {
        if !isEditStarted {
            isEditStarted = true
            self.textid.text = ""
        }
        self.textid.text = self.textid.text! + sender.titleLabel!.text!
    }
  
  
    @IBAction func result(_ sender: Any) {
        rightValue = Int(textid.text!)!
        var result = 0
        if type == 0 {
            result = leftValue + rightValue
        } else if type == 1 {
            result = leftValue - rightValue
        } else if type == 2 {
            result = leftValue * rightValue
        } else if type == 3 {
            result = leftValue / rightValue
        }
        textid.text = String(result)
        leftValue = 0
        rightValue = 0
        isEditStarted = false
    }
    
    @IBAction func curOperator(_ sender: UIButton) {
        leftValue = Int(textid.text!)!
        textid.text = ""
        type = sender.tag
    }
}
