//
//  TableViewCell.swift
//  MediumClone
//
//  Created by Zehra Coşkun on 27.09.2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var personName: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var info: UILabel!
    @IBOutlet weak var contentImage: UIImageView!
    @IBOutlet weak var footer: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
