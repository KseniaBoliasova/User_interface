//
//  FriendsTableViewController.swift
//  UserInterface
//
//  Created by Ксения Болясова on 09.11.2021.
//
//imageView?.layer.cornerRadius = imageView?.frame.height / 2
//imageView?.clipsToBounds = true


import UIKit

class FriendsTableViewController: UITableViewController {


    let someFriends = friends()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return someFriends.names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            // Получаем ячейку из пула
            if let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath) as? FriendsTableViewCell {
                // Получаем имя, аватар и город для конкретной строки
                let name = someFriends.names[indexPath.row]
                let ava = someFriends.avatar[indexPath.row]
                let city = someFriends.cities[indexPath.row]
        
                // Устанавливаем имя, аватар и город в ячейку
                cell.nameFriends.text = name
                cell.imageFriends.image = ava
                cell.cityFriends.text = city
        
                return cell
            }
        
            return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    

    override func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("I was selected")

    }
//
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let cell = sender as? FriendsTableViewController else {
//            return
//        }
//
//        guard let photos = segue.destination as? FriendsCollectionViewController else {
//            return
//        }
//
////        photoVC.avatarImage = cell.PhotoFriends.image
//    }

}
