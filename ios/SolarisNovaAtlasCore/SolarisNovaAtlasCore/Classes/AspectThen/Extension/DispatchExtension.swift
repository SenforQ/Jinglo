
//: Declare String Begin

/*: "DispatchQueueToken_StatusBarInit" :*/
fileprivate let noti_noTitle:[UInt8] = [0xfa,0xd7,0xcd,0xce,0xdf,0xca,0xdd,0xd6,0xef,0xcb,0xdb,0xcb,0xdb,0xea,0xd1,0xd5,0xdb,0xd0,0xe1,0xed,0xca,0xdf,0xca,0xcb,0xcd,0xfc,0xdf,0xcc,0xf7,0xd0,0xd7,0xca]

private func varEqual(hidden num: UInt8) -> UInt8 {
    return num ^ 190
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DispatchExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: let DispatchQueueToken_StatusBarInit = "DispatchQueueToken_StatusBarInit"  //状态栏初始化
let dataAvailableStr = String(bytes: noti_noTitle.map{varEqual(hidden: $0)}, encoding: .utf8)! // 状态栏初始化

//: extension DispatchQueue {
extension DispatchQueue {
    //: private static var _onceTracket = [String]()
    private static var _onceTracket = [String]()
    //: class func once(token:String , block:() -> Void) {
    class func dishonour(token: String, block: () -> Void) {
        //: if _onceTracket.contains(token) {
        if _onceTracket.contains(token) {
            //: return
            return
        }
        //: _onceTracket.append(token)
        _onceTracket.append(token)
        //: block()
        block()
    }
}
