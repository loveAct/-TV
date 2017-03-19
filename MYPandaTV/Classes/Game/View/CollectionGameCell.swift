//
//  CollectionGameCell.swift
//  MYPandaTV
//
//  Created by apple on 2017/3/19.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit
import Kingfisher

class CollectionGameCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var gameModel: GameModel? {
        didSet {
            guard let iconURL = URL(string: gameModel?.img ?? "") else { return }
            imageView.kf.setImage(with: iconURL)
            nameLabel.text = gameModel?.cname
        }
    }
}
