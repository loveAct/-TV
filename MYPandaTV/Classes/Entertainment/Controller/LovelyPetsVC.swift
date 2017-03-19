//
//  LovelyPetsVC.swift
//  MYPandaTV
//
//  Created by apple on 2017/3/19.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class LovelyPetsVC: BaseEntertainmentVC {

    fileprivate lazy var lovelyVM: LovelyPetsVM = LovelyPetsVM()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadData() {
        baseVM = self.lovelyVM
        lovelyVM.requestData {
            self.collectionView.reloadData()
            self.loadDataFinished()
        }
    }

}
