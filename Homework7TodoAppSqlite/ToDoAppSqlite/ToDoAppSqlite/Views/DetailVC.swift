//
//  DetailVC.swift
//  ToDoAppSqlite
//
//  Created by Zehra Coşkun on 30.09.2023.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var detailTextField: UITextField!
    var viewModel = DetailVM()
    
    var task: Tasks?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let t = task{
            detailTextField.text = t.task_text
        }
    }
    

    @IBAction func okButton(_ sender: UIButton) {
        
        if let text  = detailTextField.text, let t = task {
            viewModel.update(task_text: text, text_id: t.task_id)
        }
    }
    
}
