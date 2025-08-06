
//: Declare String Begin

/*: "call/sendMsg" :*/
fileprivate let dataTopWillMsg:String = "call/fail attribute"
fileprivate let noti_sizePath:String = "ok extension transition varsendMsg"

/*: "logId" :*/
fileprivate let notiPicId:String = "class extensionlogId"

/*: "content" :*/
fileprivate let noti_pathId:String = "frameonte"
fileprivate let const_titleAnyoneKey:[Character] = ["n","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MoveDanmuManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingVideoDanmuManagerDelegate: NSObject {
protocol PhotoReactiveCompatible: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingVideoCallDanmuModel)
    func eventCell(Msg: TagHandyJSON)
}

//: class TalkingVideoDanmuManager: NSObject {
class MoveDanmuManager: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数

    //: private static var _instance: TalkingVideoDanmuManager?
    private static var _instance: MoveDanmuManager? // singleton

    //: open weak var delegate: TalkingVideoDanmuManagerDelegate?
    open weak var delegate: PhotoReactiveCompatible?

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {}
    override private init() {}
    //: class func shared() -> TalkingVideoDanmuManager {
    class func underDismiss() -> MoveDanmuManager {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingVideoDanmuManager()
            _instance = MoveDanmuManager()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingVideoDanmuManager {
extension MoveDanmuManager {
    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg:
    //: func onRecvDanmuNewMsg(msg: [String: Any]) {
    func afterAdd(msg: [String: Any]) {
        //: if var model = TalkingVideoCallDanmuModel.deserialize(from: msg) {
        if var model = TagHandyJSON.deserialize(from: msg) {
            //: let celldata = TalkingVideoCallDammuCellData.init()
            let celldata = FootingCellData()
            //: model = celldata.caculateMsgHeight(model: model)
            model = celldata.methodOn(model: model)
            //: self.delegate?.func__DanmuRecvNewModel(Msg: model)
            self.delegate?.eventCell(Msg: model)
        }
    }

    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - logId: 当前通话id
    ///   - content: 消息内容
    ///   - completion: 回调

    //: class func uploadToTextMsg(logId: String, content: String, completion: FinishBlock? = nil) {
    class func collectionAdd(logId: String, content: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "call/sendMsg"
        reqModel.requestPath = (String(dataTopWillMsg.prefix(5)) + String(noti_sizePath.suffix(7)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["logId"] = logId
        dict[(String(notiPicId.suffix(5)))] = logId
        //: dict["content"] = content
        dict[(noti_pathId.replacingOccurrences(of: "frame", with: "c") + String(const_titleAnyoneKey))] = content
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}

//: extension TalkingVideoDanmuManager {
extension MoveDanmuManager {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func appearLine() {
        //: if TalkingVideoDanmuManager._instance != nil {
        if MoveDanmuManager._instance != nil {
            //: TalkingVideoDanmuManager._instance = nil
            MoveDanmuManager._instance = nil
        }
    }
}
