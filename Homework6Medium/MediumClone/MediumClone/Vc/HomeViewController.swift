//
//  HomeVC.swift
//  MediumClone
//
//  Created by Zehra Coşkun on 27.09.2023.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    var categoryList = [CategoryModel]()
    var postList = [PostModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        tableView.dataSource = self
        tableView.delegate = self
        
        categoryCreated()
        postCreated()
        
        
    }
    
    func categoryCreated() {
        let c1 = CategoryModel(name: "+")
        let c2 = CategoryModel(name: "For you")
        let c3 = CategoryModel(name: "Following")
        let c4 = CategoryModel(name: "Turkish Kit")
        
        categoryList.append(c1)
        categoryList.append(c2)
        categoryList.append(c3)
        categoryList.append(c4)
    }
    
    func postCreated(){
        let p1 = PostModel(profilName: "Kadirhan Keleş", profilImage: "p1", title: "Life-Cycle iOS", info1: "3 min read · Sep 2023", info2: "Selected for you", postImage: "i1")
        let p2 = PostModel(profilName: "Steven Curtis", profilImage: "p2", title: "Swift Developer Interview", info1: "10 min read · May 2023", info2: "Selected for you", postImage: "i2")
        let p3 = PostModel(profilName: "Zehra Coşkun", profilImage: "p3", title: "Multilingual iOS Applications", info1: "12 min read · Sep 2023", info2: "Mustafa Bolat clapped", postImage: "i3")
        let p4 = PostModel(profilName: "Kasım Adalan", profilImage: "p4", title: "Everything About Swift UI", info1: "21 min read · May 2023", info2: "Selected for you", postImage: "i4")
        
        
        postList.append(p1)
        postList.append(p2)
        postList.append(p3)
        postList.append(p4)
    }
    
    
}
extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cvCell", for: indexPath) as! CollectionViewCell
        
        let category = categoryList[indexPath.row].name
        cell.categoryName.text = category
        
        return cell
    }
    
    
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tvCell") as! TVCell
        cell.profilName.text = postList[indexPath.row].profilName
        cell.title.text = postList[indexPath.row].title
        cell.info.text = postList[indexPath.row].info1
        cell.info2.text = postList[indexPath.row].info2
        cell.profilImage.image = UIImage(named: postList[indexPath.row].profilImage!)
        cell.postImage.image = UIImage(named: postList[indexPath.row].postImage!)
        return cell
    }
    
    
}

