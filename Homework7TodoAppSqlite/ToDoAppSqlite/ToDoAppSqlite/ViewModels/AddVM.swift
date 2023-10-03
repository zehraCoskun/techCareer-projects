//
//  AddVM.swift
//  ToDoAppSqlite
//
//  Created by Zehra Coşkun on 30.09.2023.
//

import Foundation

class AddVM{
    
    var tRepo = TasksDaoRepo()
    
    func added(text: String){
        tRepo.added(text: text)
    }
}
