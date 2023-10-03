//
//  Tasks.swift
//  ToDoAppSqlite
//
//  Created by Zehra Coşkun on 30.09.2023.
//

import Foundation

class Tasks{
    
    var task_id: Int
    var task_text: String
    
    init(task_id:Int, task_text: String) {
        self.task_id = task_id
        self.task_text = task_text
    }
}
