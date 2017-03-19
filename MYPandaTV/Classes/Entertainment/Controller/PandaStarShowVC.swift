//
//  PandaStarShowVC.swift
//  MYPandaTV
//
//  Created by apple on 2017/3/19.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class PandaStarShowVC: BaseEntertainmentVC {
    
    fileprivate lazy var starShowVM: PandaStarShowVM = PandaStarShowVM()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK:- 发送网络请求
extension PandaStarShowVC {
    override func loadData() {
        baseVM = self.starShowVM
        starShowVM.requestData {
            self.collectionView.reloadData()
            self.loadDataFinished()
        }
    }
}
