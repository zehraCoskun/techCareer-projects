//
//  TVCell.swift
//  MediumClone
//
//  Created by Zehra Coşkun on 27.09.2023.
//

import UIKit

class TVCell: UITableViewCell {

    @IBOutlet weak var profilImage: UIImageView!
    @IBOutlet weak var profilName: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var info: UILabel!
    @IBOutlet weak var info2: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let imageHeight = postImage.layer.frame.height
        profilImage.layer.cornerRadius = 12
        postImage.layer.cornerRadius = imageHeight / 8
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
