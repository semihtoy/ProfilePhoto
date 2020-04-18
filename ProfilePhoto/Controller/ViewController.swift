//
//  ViewController.swift
//  ProfilePhoto
//
//  Created by Xcode on 17.04.2020.
//  Copyright © 2020 Xcode. All rights reserved.
//
import UIKit
import Kingfisher
class ViewController: UIViewController{
    var _profilePhoto = ProfilePhotoService()
    var _links : Links?
    var _result : [Result]?
    var photoArray : [Any] = []
    var tableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
            self._profilePhoto.getProfilePhoto { (data) in
            self._result = data
            for index in 0 ..< data.count{
            self.photoArray.append(self._result![index].thumbnail!)
            }
            self.setTableView()
        } 
    }
    
    func setTableView()  {
        tableView.frame = self.view.frame
        tableView.backgroundColor = UIColor.clear
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = UIColor.clear
        tableView.backgroundColor = UIColor.lightGray
        self.view.addSubview(tableView)
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "Cell")
    }
}
extension ViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photoArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as?
        CustomTableViewCell else { return UITableViewCell() }
        if let imageURL = URL(string: self._result![indexPath.row].thumbnail!) {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: imageURL)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        cell.photoImages.image = image                        
                    }
                }
            }
        }
        cell.title.text = self._result![indexPath.row].title
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
