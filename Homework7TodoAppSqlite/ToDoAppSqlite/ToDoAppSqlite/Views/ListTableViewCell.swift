//
//  ListTableViewCell.swift
//  ToDoAppSqlite
//
//  Created by Zehra Coşkun on 30.09.2023.
//

import UIKit

class ListTableViewCell: UITableViewCell {


    @IBOutlet weak var cellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
