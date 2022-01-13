//
//  Extension + UITableViewCell.swift
//  RealmAppDemo
//
//  Created by Андрей Аверьянов on 13.01.2022.
//

import UIKit

extension UITableViewCell {
    func configure(with taskList: TaskList) {
        let currentTasks = taskList.tasks.filter("siComplete = false")
        let completedTasks = taskList.tasks.filter("siComplete = true")
        
        textLabel?.text = taskList.name
        
        if !currentTasks.isEmpty {
            detailTextLabel?.text = "\(currentTasks.count)"
        } else if !completedTasks.isEmpty {
            detailTextLabel?.text = nil
            accessoryType = .checkmark
        } else {
            detailTextLabel?.text = "0"
            accessoryType = .none
        }
    }
}
