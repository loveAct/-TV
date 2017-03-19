//
//  MusicVC.swift
//  MYPandaTV
//
//  Created by apple on 2017/3/19.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class MusicVC: BaseEntertainmentVC {

    fileprivate lazy var musicVM: MusicVM = MusicVM()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadData() {
        baseVM = self.musicVM
        musicVM.requestData {
            self.collectionView.reloadData()
            self.loadDataFinished()
        }
    }
}
