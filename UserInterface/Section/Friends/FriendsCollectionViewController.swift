//
//  FriendsCollectionViewController.swift
//  UserInterface
//
//  Created by Ксения Болясова on 18.11.2021.
//

import UIKit

private let reuseIdentifier = "FriendsCollectionCell"

class FriendsCollectionViewController: UICollectionViewController {
    
    let someFriends = friends()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }


    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 1
    }

//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? FriendsCollectionViewCell {
//            
//            let photo = someFriends.photos[indexPath.row]
//            
//            cell.friendsCollectionImage.image = photo
//
//            return cell
//        }
//    return UICollectionViewCell()
//    }




}
