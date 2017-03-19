//
//  OutdoorLivingVC.swift
//  MYPandaTV
//
//  Created by apple on 2017/3/19.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class OutdoorLivingVC: BaseEntertainmentVC {

    fileprivate lazy var outdoorVM: OutdoorLivingVM = OutdoorLivingVM()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadData() {
        baseVM = self.outdoorVM
        outdoorVM.requestData {
            self.collectionView.reloadData()
            self.loadDataFinished()
        }
    }
}


