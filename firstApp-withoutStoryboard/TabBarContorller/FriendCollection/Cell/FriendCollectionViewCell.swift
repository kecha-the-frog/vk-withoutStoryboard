//
//  FriendCollectionViewCell.swift
//  firstApp-withoutStoryboard
//
//  Created by Ke4a on 31.01.2022.
//

import UIKit

class FriendCollectionViewCell: UICollectionViewCell {
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    static let identifier = "FriendCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI(){
        addSubview(imageView)
        let widthConstraint = imageView.widthAnchor.constraint(equalToConstant: 160)
        widthConstraint.priority = UILayoutPriority(rawValue: 999)
        let heightConstraint = imageView.heightAnchor.constraint(equalToConstant: 160)
        heightConstraint.priority = UILayoutPriority(rawValue: 999)
        NSLayoutConstraint.activate([
            widthConstraint,
            heightConstraint,
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            imageView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            imageView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
        ])
    
    }
    
    func configure(_ image:ImageModel){
        imageView.image = UIImage(named: image.name)
    }
}
