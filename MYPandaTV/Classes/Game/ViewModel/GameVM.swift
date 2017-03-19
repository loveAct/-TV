//
//  GameVM.swift
//  MYPandaTV
//
//  Created by apple on 2017/3/19.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class GameVM: NSObject {
    //http://api.m.panda.tv/index.php?method=category.list&type=game&__version=1.1.7.1305&__plat=ios&__channel=appstore
    lazy var gameArray: [GameModel] = [GameModel]()
    func loadGameData(finishedCallback : @escaping () -> ()) {
        NetworkTool.request(type: .GET, urlString: "http://api.m.panda.tv/index.php", paramters: ["method":"category.list", "type":"game", "__version":"1.1.7.1305", "__plat":"ios", "__channel":"appstore"]) { (result) in
            guard let resultDict = result as? [String: NSObject] else { return }
            guard let dataArray = resultDict["data"] as? [[String: NSObject]] else { return }
            for dict in dataArray {
                self.gameArray.append(GameModel(dict: dict))
            }
        }
    }
}
