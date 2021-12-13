//
//  FriendsTableViewCell.swift
//  UserInterface
//
//  Created by Ксения Болясова on 09.11.2021.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameFriends: UILabel!
    @IBOutlet weak var imageFriends: UIImageView!
    @IBOutlet weak var cityFriends: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
