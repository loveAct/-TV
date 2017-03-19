//
//  UnLivingVC.swift
//  MYPandaTV
//
//  Created by apple on 2017/3/19.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class UnLivingVC: BaseSearchVC {
    
    fileprivate lazy var searchVM: IsLivingVM = IsLivingVM()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK:- 发送网络请求
extension UnLivingVC {
    override func loadData() {
        baseVM = self.searchVM
        searchVM.status = 3
        searchVM.keywords = UserDefaults.standard.object(forKey: "keywords") as! String
        searchVM.requestLivingData {
            self.collectionView.reloadData()
            self.loadDataFinished()
        }
    }
}
