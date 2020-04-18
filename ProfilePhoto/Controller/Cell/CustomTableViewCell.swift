//
//  CustomTableViewCell.swift
//  ProfilePhoto
//
//  Created by Xcode on 18.04.2020.
//  Copyright © 2020 Xcode. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    lazy var backView: UIView = {
        let view = UIView(frame: CGRect(x: 10, y: 6, width: UIScreen.main.bounds.width - 20 , height: 110))
        view.backgroundColor = UIColor.white
        return view
    }()
    lazy var photoImages : UIImageView = {
        let photoImages = UIImageView(frame: CGRect(x: 6, y: 6, width: 98, height: 98))
        photoImages.contentMode = .scaleAspectFit
        return photoImages
    }()
    lazy var title : UILabel = {
        let title = UILabel(frame: CGRect(x: 116, y: 8, width: backView.frame.width - 116, height: 100))
       // title.textAlignment = .left
        title.numberOfLines = 0
        title.lineBreakMode = .byWordWrapping
        title.font = UIFont.boldSystemFont(ofSize: 18)
        return title
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func layoutSubviews() {
        contentView.backgroundColor = UIColor.clear
        backgroundColor = UIColor.clear
        backView.layer.cornerRadius = 8
        backView.clipsToBounds = true
        photoImages.layer.cornerRadius = 49
        photoImages.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        addSubview(backView)
        backView.addSubview(photoImages)
        backView.addSubview(title)
        // Configure the view for the selected state
    }

}
