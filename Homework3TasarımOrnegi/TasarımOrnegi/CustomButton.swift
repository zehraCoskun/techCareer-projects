//
//  CustomButton.swift
//  TasarımOrnegi
//
//  Created by Zehra Coşkun on 16.09.2023.
//

import UIKit

class CustomButton: UIButton {
    

    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = 6
        layer.masksToBounds = true
    }
}
