//
//  PostModel.swift
//  MediumClone
//
//  Created by Zehra Coşkun on 27.09.2023.
//

import Foundation

class PostModel{
    
    var profilName: String?
    var profilImage: String?
    var title: String?
    var info1: String?
    var info2: String?
    var postImage: String?
    
    init(profilName: String? = nil, profilImage: String? = nil, title: String? = nil, info1: String? = nil, info2: String? = nil, postImage: String? = nil) {
        self.profilName = profilName
        self.profilImage = profilImage
        self.title = title
        self.info1 = info1
        self.info2 = info2
        self.postImage = postImage
    }
}
