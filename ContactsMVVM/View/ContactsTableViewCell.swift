//
//  ContactsTableViewCell.swift
//  ContactsMVVM
//
//  Created by Ahmet Ali ÇETİN on 27.03.2023.
//

import UIKit

class ContactsTableViewCell: UITableViewCell {

    //OUTLETS
    @IBOutlet weak var personNameLabel: UILabel!
    @IBOutlet weak var personDetailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
