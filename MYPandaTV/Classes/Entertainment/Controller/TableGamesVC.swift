//
//  TableGamesVC.swift
//  MYPandaTV
//
//  Created by apple on 2017/3/19.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class TableGamesVC: BaseEntertainmentVC {

    fileprivate lazy var tableGamesVM: TableGamesVM = TableGamesVM()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadData() {
        baseVM = self.tableGamesVM
        tableGamesVM.requestData {
            self.collectionView.reloadData()
            self.loadDataFinished()
        }
    }
}
