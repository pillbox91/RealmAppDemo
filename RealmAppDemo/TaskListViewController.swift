//
//  TaskListViewController.swift
//  RealmAppDemo
//
//  Created by Андрей Аверьянов on 11.01.2022.
//

import UIKit

class TaskListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addButtonPressed(_ sender: Any) {
        showAlert()
    }
    
    @IBAction func sortingList(_ sender: UISegmentedControl) {
        
    }
    
    // MARK: - Table view data sorce
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskListCell", for: indexPath)
        
        return cell
    }
}

extension TaskListViewController {
    
    private func showAlert() {
        let alert = AlertController(title: "New List", message: "Please insert new value", preferredStyle: .alert)
        
        alert.actionWithTaskList { newValue in
            
        }
        
        present(alert, animated: true)
    }
}
