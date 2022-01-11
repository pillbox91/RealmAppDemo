//
//  TasksViewController.swift
//  RealmAppDemo
//
//  Created by Андрей Аверьянов on 11.01.2022.
//

import UIKit

class TasksViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
//    MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TasksCell", for: indexPath)
        
        return cell
    }
    
    private func addButtonPressed() {
        showAlert()
    }

}

extension TasksViewController {
    
    private func showAlert() {
        let alert = AlertController(title: "New List", message: "Please insert new value", preferredStyle: .alert)
        
        alert.actionWithTaskList { newValue in
            
        }
        
        present(alert, animated: true)
    }
}
