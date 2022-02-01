//
//  ExtencionTableViewCell.swift
//  
//
//  Created by Дмитрий Бессонов on 01.02.2022.
//

import UIKit

extension UITableViewCell {
    func configure(with taskList: TaskList) {
        let currrentTasks = taskList.tasks.filter("isComplete = false")
        var content = defaultContentConfiguration()
        
        content.text = taskList.name
        
        if taskList.tasks.isEmpty {
            content.secondaryText = "0"
            accessoryType = .none
        } else if currrentTasks.isEmpty {
            content.secondaryText = nil
            accessoryType = .checkmark
        } else {
            content.secondaryText = "\(currrentTasks.count)"
            accessoryType = .none
        }
        
        contentConfiguration = content
    }
}
