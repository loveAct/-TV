//
//  BaseVM.swift
//  MYPandaTV
//
//  Created by apple on 2017/3/19.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class BaseVM: NSObject {
    // MARK: - items, total, type
    lazy var anchorGroups: [AnchorGroup] = [AnchorGroup]()
    func loadAnchorGroupData(isLiveData : Bool, URLString : String, parameters : [String : Any]? = nil, finishedCallback : @escaping () -> ()) {
        NetworkTool.request(type: .GET, urlString: URLString, paramters: parameters) { (result) in
            guard let dict = result as? [String : Any] else { return }
            if isLiveData {
                guard let dictionary = dict["data"] as? [String : Any] else { return }
                self.anchorGroups.append(AnchorGroup(dict: dictionary))
            } else {
                guard let arr = dict["data"] as? [[String : Any]] else { return }
                for dict in arr {
                    self.anchorGroups.append(AnchorGroup(dict: dict))
                }
            }
            finishedCallback()
        }
    }
    
    // MARK: - items, total
    lazy var searchGroup: [SearchModel] = [SearchModel]()
    func loadSearchData(URLString : String, parameters : [String : Any]? = nil, finishedCallback : @escaping () -> ()) {
        NetworkTool.request(type: .GET, urlString: URLString, paramters: parameters) { (result) in
            guard let dict = result as? [String : Any] else { return }
            guard let dictionary = dict["data"] as? [String : Any] else { return }
            self.searchGroup.append(SearchModel(dict: dictionary))
            finishedCallback()
        }
    }
    
    // MARK: - items, total
//    lazy var searchGroup: [SearchModel] = [SearchModel]()
//    func loadSearchData(URLString : String, parameters : [String : Any]? = nil, finishedCallback : @escaping () -> ()) {
//        NetworkTool.request(type: .GET, urlString: URLString, paramters: parameters) { (result) in
//            guard let dict = result as? [String : Any] else { return }
//            guard let dictionary = dict["data"] as? [String : Any] else { return }
//            self.searchGroup.append(SearchModel(dict: dictionary))
//            finishedCallback()
//        }
//    }
}
