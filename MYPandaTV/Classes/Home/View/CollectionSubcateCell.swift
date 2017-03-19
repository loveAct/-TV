//
//  CollectionSubcateCell.swift
//  MYPandaTV
//
//  Created by apple on 2017/3/19.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class CollectionSubcateCell: UICollectionViewCell {

    @IBOutlet weak var itemButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        itemButton.isUserInteractionEnabled = false
        itemButton.setBackgroundImage(UIImage(named: "getButton_hove"), for: .normal)
        itemButton.setTitleColor(UIColor(r: 104, g: 225, b: 182), for: .normal)
    }
    
    var subcateModel: GameModel? {
        didSet {
            itemButton.setTitle(subcateModel?.cname, for: .normal)
        }
    }
    
}
