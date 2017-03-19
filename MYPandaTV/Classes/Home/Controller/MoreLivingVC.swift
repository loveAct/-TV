//
//  MoreLivingVC.swift
//  MYPandaTV
//
//  Created by apple on 2017/3/19.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class MoreLivingVC: BaseEntertainmentVC {

    var cateName: String = ""
    fileprivate lazy var moreLivingVM: MoreLivingVM = MoreLivingVM()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK:- 发送网络请求
    override func loadData() {
        baseVM = self.moreLivingVM
        moreLivingVM.cate = cateName
        moreLivingVM.requestData {
            self.collectionView.reloadData()
            self.loadDataFinished()
        }
    }
}
