//
//  GroupTableViewController.swift
//  UserInterface
//
//  Created by Ксения Болясова on 12.11.2021.
//

import UIKit

class GroupTableViewController: UITableViewController {
    

    let someGroups = groups()

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return someGroups.names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            // Получаем ячейку из пула
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SomeCell", for: indexPath) as? GroupTableViewCell {
            
            // Получаем название и изображение конкретной строки
            let title = someGroups.names[indexPath.row]
            let icon = someGroups.icons[indexPath.row]
        
            // Устанавливаем название и изображение в надпись ячейки
            cell.groupTitle.text = title
            cell.groupImage.image = icon
        
            return cell
        }
        
        return UITableViewCell()
    }



}
