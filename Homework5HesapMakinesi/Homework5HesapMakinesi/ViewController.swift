//
//  ViewController.swift
//  Homework5HesapMakinesi
//
//  Created by Zehra Coşkun on 19.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    var labelStr = ""
    var resultNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        labelStr += (sender.titleLabel?.text)!
        resultLabel.text = labelStr

        
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
        if !labelStr.isEmpty && !labelStr.hasSuffix("+"){
            labelStr += (sender.titleLabel?.text)!
            resultLabel.text = labelStr
        }
        

    }
    
    @IBAction func equalButton(_ sender: UIButton) {
        
        add(totalStr: labelStr)
        
        labelStr += " = "
        resultLabel.text = labelStr + " " + String(resultNum)

        labelStr = ""
        resultNum = 0
        
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        resultLabel.text = "0"
        resultNum = 0
    }
    
    func add(totalStr: String){
        var arr = totalStr.components(separatedBy: "+")
        print(arr)
        
        for i in arr {
            var k = Int(i)
            resultNum += k!
            
        }

        resultLabel.text = labelStr + " " + String(resultNum)
    }
    
}

