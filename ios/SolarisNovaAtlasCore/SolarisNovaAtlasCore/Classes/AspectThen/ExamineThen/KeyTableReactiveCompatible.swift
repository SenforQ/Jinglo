
//: Declare String Begin

/*: "launchFromApns" :*/
fileprivate let user_kindId:String = "launchFrelse extension class user"
fileprivate let noti_norGoUrl:String = "omApnsmanager text"

/*: "type" :*/
fileprivate let main_actionLayerName:[Character] = ["t","y","p","e"]

/*: "fromUid" :*/
fileprivate let const_firstShareStr:String = "fromUidview view"

/*: "roomId" :*/
fileprivate let k_makeText:String = "R"
fileprivate let user_viewMsg:String = "oomIdlist private double"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyTableReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/26.
//

//: import UIKit
import UIKit

// 推送跳转
//: enum ANPSPushType: String {
enum QuaternaryCompatibleValue: String {
    //: case IM = "6"           // 私聊页
    case IM = "6" // 私聊页
    //: case Chat_Room = "7"    // 聊天室
    case Chat_Room = "7" // 聊天室
    //: case Calling = "11"     // 音视频通话
    case Calling = "11" // 音视频通话
    //: case User_Info = "12"   // 用户详情
    case User_Info = "12" // 用户详情
}

//: class TalkingAPNSManager: NSObject {
class KeyTableReactiveCompatible: NSObject {
    //: var APNSUserInfoStr = ""
    var APNSUserInfoStr = ""
    //: @objc dynamic var launchFromApns = false
    @objc dynamic var launchFromApns = false
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: @objc static let share = TalkingAPNSManager()
    @objc static let share = KeyTableReactiveCompatible()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: func func__listenAPNSInit() {
    func customer() {
        //: self.rx.observeWeakly(Bool.self, "launchFromApns")
        self.rx.observeWeakly(Bool.self, (String(user_kindId.prefix(8)) + String(noti_norGoUrl.prefix(6))))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: self.func__actionWithPushInfo()
                    self.tiptoeState()
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: func func__actionWithPushInfo() {
    func tiptoeState() {
        //: if !APNSUserInfoStr.isEmptyString {
        if !APNSUserInfoStr.isEmptyString {
            //: let json = JSON(parseJSON: APNSUserInfoStr)
            let json = JSON(parseJSON: APNSUserInfoStr)
            //: let type = json["type"].stringValue
            let type = json[(String(main_actionLayerName))].stringValue
            //: let apnsType = ANPSPushType(rawValue: type)
            let apnsType = QuaternaryCompatibleValue(rawValue: type)
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: switch(apnsType) {
                switch apnsType {
                //: case .IM:
                case .IM:
                    //: let fromUid = json["fromUid"].stringValue
                    let fromUid = json[(String(const_firstShareStr.prefix(7)))].stringValue
                    //: RangePushManager.share.func__pushToPriveteChatVC(chatID: fromUid)
                    RangePushManager.share.liveInsideCompletion(chatID: fromUid)

                //: case .Chat_Room:
                case .Chat_Room:
                    //: let roomId = json["roomId"].stringValue
                    let roomId = json[(k_makeText.lowercased() + String(user_viewMsg.prefix(5)))].stringValue
                    //: RangePushManager.share.func__pushToGroupChat(groupId: roomId)
                    RangePushManager.share.halfStaff(groupId: roomId)

                //: case .Calling:
                case .Calling:
                    //: break
                    break

                //: case .User_Info:
                case .User_Info:
                    //: let fromUid = json["fromUid"].stringValue
                    let fromUid = json[(String(const_firstShareStr.prefix(7)))].stringValue
                    //: RangePushManager.share.func__pushToUserDetailVC(uid: fromUid)
                    RangePushManager.share.clickOfUid(uid: fromUid)

                //: case .none:
                case .none:
                    //: break
                    break
                }

                // 跳转后还原数据
                //: TalkingAPNSManager.share.APNSUserInfoStr = ""
                KeyTableReactiveCompatible.share.APNSUserInfoStr = ""
                //: TalkingAPNSManager.share.launchFromApns = false
                KeyTableReactiveCompatible.share.launchFromApns = false
            }
        }
    }
}
