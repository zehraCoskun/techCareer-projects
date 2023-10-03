//
//  ListVC.swift
//  ToDoAppSqlite
//
//  Created by Zehra Coşkun on 30.09.2023.
//

import UIKit
import RxSwift

class ListVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var viewModel = ListVM()
    var tasks = [Tasks]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
        
        _ = viewModel.taskList.subscribe(onNext: { task in
            self.tasks = task
            self.tableView.reloadData()
        })
      
    }
    override func viewWillAppear(_ animated: Bool) {
        viewModel.upload()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail"{
            if let task = sender as? Tasks {
                let toVC = segue.destination as! DetailVC
                    toVC.task = task
                
            }
        }
    }
    



}
extension ListVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListTableViewCell
        cell.cellLabel.text = tasks[indexPath.row].task_text
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let task = tasks[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: task)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAct = UIContextualAction(style: .destructive, title: "Delete") { ca, view, bool in
            let task = self.tasks[indexPath.row]
            let alert = UIAlertController(title: "Delete", message: "Are you sure?", preferredStyle: .alert)
            let noAct = UIAlertAction(title: "No", style: .cancel)
            alert.addAction(noAct)
            let yesAct = UIAlertAction(title: "Yes", style: .destructive) { _ in
                self.viewModel.delete(task_id: task.task_id)
            }
            alert.addAction(yesAct)
            self.present(alert, animated: true)
        }
        return UISwipeActionsConfiguration(actions: [deleteAct])
    }
     
}

extension ListVC: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        viewModel.search(searchText: searchText)
    }
}
