//
//  Anasayfa.swift
//  TasarımOrnegi
//
//  Created by Zehra Coşkun on 16.09.2023.
//

import UIKit

class Anasayfa: UIViewController {

    @IBOutlet weak var sepeteEkleButon: UIButton!
    
    @IBOutlet weak var baslikLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        baslikLabel.font = UIFont(name: "Inter-VariableFont_slnt,wght", size: 20)
        // Do any additional setup after loading the view.
    }


}
