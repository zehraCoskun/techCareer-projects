//
//  ListVM.swift
//  ToDoAppSqlite
//
//  Created by Zehra Coşkun on 30.09.2023.
//

import Foundation
import RxSwift

class ListVM{
    
    
    var tRepo = TasksDaoRepo()
    
    var taskList = BehaviorSubject<[Tasks]>(value: [Tasks]())
    
    init(){
        tRepo.databaseCopy()
        taskList = tRepo.taskList
    }
    
    func search(searchText:String){
        tRepo.search(searchText: searchText)
    }
    func delete(task_id: Int){
        tRepo.delete(task_id: task_id)
        upload()
    }
    func upload(){
        tRepo.upload()
    }
}
