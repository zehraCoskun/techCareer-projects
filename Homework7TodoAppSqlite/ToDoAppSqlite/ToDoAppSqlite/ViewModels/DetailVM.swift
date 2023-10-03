//
//  DetailVM.swift
//  ToDoAppSqlite
//
//  Created by Zehra Coşkun on 30.09.2023.
//

import Foundation


class DetailVM{
    
    var tRepo = TasksDaoRepo()
    
    func update(task_text: String, text_id:Int){
        tRepo.update(task_text: task_text, task_id: text_id)
    }
}
