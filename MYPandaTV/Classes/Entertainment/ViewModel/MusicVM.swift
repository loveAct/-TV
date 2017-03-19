//
//  MusicVM.swift
//  MYPandaTV
//
//  Created by apple on 2017/3/19.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class MusicVM: BaseVM {
    func requestData(finishedCallback : @escaping () -> ()) {
        loadAnchorGroupData(isLiveData: true, URLString: "http://api.m.panda.tv/ajax_get_live_list_by_cate?cate=music&pageno=1&pagenum=20&order=person_num&status=2&__version=1.1.7.1305&__plat=ios&__channel=appstore", finishedCallback: finishedCallback)
    }
}
