//
//  AddVc.swift
//  ToDoAppSqlite
//
//  Created by Zehra Coşkun on 30.09.2023.
//

import UIKit

class AddVc: UIViewController {

    @IBOutlet weak var taskTextField: UITextField!
    
    var viewModel = AddVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    

    @IBAction func taskAdded(_ sender: Any) {
        if let taskText = taskTextField.text{
            viewModel.added(text: taskText)
        }
    }
    

    

}
