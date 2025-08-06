
//: Declare String Begin

/*: "fee" :*/
fileprivate let dataCoverValue:String = "statuse"

/*: "VIPFee" :*/
fileprivate let app_actualFormat:[Character] = ["V","I","P","F","e","e"]

/*: "chattingNum" :*/
fileprivate let const_stopResultValue:[Character] = ["c","h","a","t","t","i","n","g","N","u","m"]

/*: "You're already in her live room" :*/
fileprivate let mainLayerStyleText:[UInt8] = [0x6d,0x6f,0x6f,0x72,0x20,0x65,0x76,0x69,0x6c,0x20,0x72,0x65,0x68,0x20,0x6e,0x69,0x20,0x79,0x64,0x61,0x65,0x72,0x6c,0x61,0x20,0x65,0x72,0x27,0x75,0x6f,0x59]

/*: "toUid" :*/
fileprivate let data_removeByKey:[UInt8] = [0x71,0x6a,0x50,0x6c,0x61]

private func giftNext(time num: UInt8) -> UInt8 {
    return num ^ 5
}

/*: "momentId" :*/
fileprivate let userIndexMsg:[UInt8] = [0xc5,0xc7,0xc5,0xcd,0xc6,0xdc,0xe1,0xcc]

private func kitFrame(image num: UInt8) -> UInt8 {
    return num ^ 168
}

/*: "extra" :*/
fileprivate let kEqualName:[UInt8] = [0x75,0x68,0x64,0x62,0x71]

private func modelMoment(table num: UInt8) -> UInt8 {
    return num ^ 16
}

/*: "uid" :*/
fileprivate let notiImageText:[UInt8] = [0x5b,0x47,0x4a]

private func subjectMatter(match num: UInt8) -> UInt8 {
    return num ^ 46
}

/*: "onlineStatus" :*/
fileprivate let kUserName:[UInt8] = [0x84,0x83,0x81,0x7e,0x83,0x7a,0x68,0x89,0x76,0x89,0x8a,0x88]

fileprivate func nameMessage(current num: UInt8) -> UInt8 {
    let value = Int(num) - 21
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "isNewUser" :*/
fileprivate let show_fileName:[UInt8] = [0x5d,0x47,0x7a,0x51,0x43,0x61,0x47,0x51,0x46]

private func boyItemLet(text num: UInt8) -> UInt8 {
    return num ^ 52
}

/*: "userStatus" :*/
fileprivate let showIndexMessage:[UInt8] = [0x17,0x11,0x7,0x10,0x31,0x16,0x3,0x16,0x17,0x11]

private func statusData(layer num: UInt8) -> UInt8 {
    return num ^ 98
}

/*: "Account is restricted！" :*/
fileprivate let k_textKey:[Character] = ["A","c","c","o","u","n","t"," ","i","s"," ","r","e","s","t","r","i","c","t","e","d"]
fileprivate let k_makeStr:[Character] = ["！"]

/*: "Failed to enter the chat room. Please try again later" :*/
fileprivate let dataActualFormat:[UInt8] = [0x37,0x10,0x18,0x1d,0x14,0x15,0x51,0x5,0x1e,0x51,0x14,0x1f,0x5,0x14,0x3,0x51,0x5,0x19,0x14,0x51,0x12,0x19,0x10,0x5,0x51,0x3,0x1e,0x1e,0x1c,0x5f,0x51,0x21,0x1d,0x14,0x10,0x2,0x14,0x51,0x5,0x3,0x8,0x51,0x10,0x16,0x10,0x18,0x1f,0x51,0x1d,0x10,0x5,0x14,0x3]

private func resultIndex(miss num: UInt8) -> UInt8 {
    return num ^ 113
}

/*: "url" :*/
fileprivate let dataCountStr:[Character] = ["u","r","l"]

/*: "userDetail" :*/
fileprivate let kTopMsg:String = "view"
fileprivate let show_aboutFormat:String = "serDeeffect abs result"

/*: "&type=7" :*/
fileprivate let k_keyVoiceFormat:[Character] = ["&","t","y","p","e","=","7"]

/*: "amount" :*/
fileprivate let data_indexOfCellPath:[UInt8] = [0x16,0x22,0x24,0x2a,0x23,0x29]

fileprivate func addRange(data num: UInt8) -> UInt8 {
    let value = Int(num) + 75
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "transparency" :*/
fileprivate let noti_photoBeautyValue:[Character] = ["t","r","a","n","s","p","a","r","e","n"]
fileprivate let appFromName:String = "table"

/*: "`%^{}" :*/
fileprivate let mainEqualValue:[Character] = ["`","%","^","{","}"]

/*: "[]|\\<>" :*/
fileprivate let data_keyMsg:[Character] = ["[","]","|","\\","<",">"]

/*: "version= :*/
fileprivate let const_menuUrl:String = "VERSIO"
fileprivate let main_responseStr:[Character] = ["n","="]

/*: &packageId= :*/
fileprivate let noti_modeName:[Character] = ["&","p","a","c","k","a"]
fileprivate let dataEqualEyeId:[Character] = ["g","e","I","d","="]

/*: &bundleId= :*/
fileprivate let main_timingTitle:[Character] = ["&","b","u","n","d","l","e"]
fileprivate let notiPlayerViewKey:[Character] = ["I","d","="]

/*: & :*/
fileprivate let constTabPath:[Character] = ["&"]

/*: ? :*/
fileprivate let data_willBlueFormat:[Character] = ["?"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RangePushManager.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/31.
//

//: import UIKit
import UIKit

//: public class RangePushManager: NSObject {
public class RangePushManager: NSObject {
    //: @objc static public let share = RangePushManager()
    @objc public static let share = RangePushManager()
    //: private override init() {}
    override private init() {}
}

//: extension RangePushManager {
extension RangePushManager {
    // MARK: - 随机视频入口

    //: func func__pushToRandomVideoVC(isBeginRand: Bool) {
    func metadataRand(isBeginRand: Bool) {
        //: uploadRecord.uploadRecordEvent(eventID: ClickInRandomvideo)
        const_screenFormat.occurrenceIn(eventID: const_statusKey)
        //: guard TalkingSocketManager.shared.workSpace == false else {
        guard WrittenRecordSocketDelegate.shared.workSpace == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.drawObserver(showMsg: mainKeyTransformMsg)
            //: return
            return
        }
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        CustomPermissionTool.showDrunk { isOpen in
            //: guard isOpen == true else { return }
            guard isOpen == true else { return }
            //: TalkingQuickVideoManager.req_videoMatchCheck() { succeed, result, errorModel in
            QuaternaryVideoManager.colouredOn { succeed, result, _ in
                //: guard succeed else { return }
                guard succeed else { return }
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: let vc = TalkingRandomVideoViewController()
                let vc = ColorCallerDelegate()
                //: vc.fee = json["fee"].intValue
                vc.fee = json[(dataCoverValue.replacingOccurrences(of: "status", with: "fe"))].intValue
                //: vc.vipFee = json["VIPFee"].intValue
                vc.vipFee = json[(String(app_actualFormat))].intValue
                //: vc.chattingNum = json["chattingNum"].intValue
                vc.chattingNum = json[(String(const_stopResultValue))].intValue
                //: vc.isBeginRand = isBeginRand
                vc.isBeginRand = isBeginRand
                //: vc.isFirstRandow = isBeginRand
                vc.isFirstRandow = isBeginRand
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.occurrentWith()?.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

    // MARK: - 完善资料

    //: func func__pushToFillUserInfoVC() {
    func sumSelect() {
        //: PunctuateThen.share.userFillInfoMode = UserFillInfoModel.init()
        PunctuateThen.share.userFillInfoMode = TitleSessionInfoModel()
        //: let VC = TalkingLoginGenderVC()
        let VC = SizeGrammaticalGenderReactiveCompatible()
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = retrieve()
        //: if currentVC != nil {
        if currentVC != nil {
            //: currentVC?.navigationController?.pushViewController(VC, animated: true)
            currentVC?.navigationController?.pushViewController(VC, animated: true)
        }
    }

    // MARK: - 绑定邮箱

    /// - Parameters:
    ///   - type: 类型
    ///   - isShowBack: 是否显示返回按钮
    //: func func__pushToLockUserEmailVC(isShowBack: Bool = true) {
    func magnitudeSharedDorsalVertebra(isShowBack: Bool = true) {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = retrieve()
        //: if currentVC != nil {
        if currentVC != nil {
            //: if currentVC!.isKind(of: TalkingLoginBindEmailVC.self) ||
            if currentVC!.isKind(of: BackgroundEmailVc.self) ||
                //: currentVC!.isKind(of: TalkingLoginMainViewController.self) {
                currentVC!.isKind(of: ThrowViewController.self)
            {
                //: return
                return
            }
            //: let vc = TalkingLoginBindEmailVC()
            let vc = BackgroundEmailVc()
            //: vc.isBack = isShowBack
            vc.isBack = isShowBack
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
        }
    }

    // MARK: - 跳转个人资料

    //: func func__pushToUserDetailVC(uid: String?) {
    func clickOfUid(uid: String?) {
        //: guard let currentVC = self.currentViewController() else { return }
        guard let currentVC = self.occurrentWith() else { return }
        //: if let liveVC = currentVC as? TalkingLiveBeautifyViewController, TalkingLiveManager.shared().isLive {
        if let liveVC = currentVC as? NameThen, LogLiveManager.anUp().isLive {
            // 从主播页跳转个人资料时，切小屏模式
            //: liveVC.topView.miniButtonClick()
            liveVC.topView.belowImage()

            //: } else if currentVC.isKind(of: TalkingVoiceRoomViewController.self), TalkingVoiceRoomManager.shared().isParty {
        } else if currentVC.isKind(of: VoiceViewController.self), RangeManager.universalShared().isParty {
            //: TalkingVoiceRoomManager.shared().voiceRoom_mini()
            RangeManager.universalShared().finding()

            //: } else if let profileVC = currentVC as? TalkingUserDetailViewController {
        } else if let profileVC = currentVC as? CuttingEdgeRecordObjectProtocol {
            // 同一用户的资料页已经在顶部，只刷新
            //: if profileVC.uid == uid {
            if profileVC.uid == uid {
                //: profileVC.requestAllData()
                profileVC.per()
                //: return
                return
            }
        }

        //: let vc = TalkingUserDetailViewController(tempUid: uid)
        let vc = CuttingEdgeRecordObjectProtocol(tempUid: uid)
        //: getNavigationController()?.pushViewController(vc, animated: true)
        fileController()?.pushViewController(vc, animated: true)
    }

    // MARK: - 观众侧进入直播间

    /// 观众侧跳转到直播间
    /// - Parameters:
    ///   - uid: 主播id
    ///   - enterType: 入口
    //: func func_audiencePushToLiveRoomVC(uid: String, enterType: LiveEnterType) {
    func titleAllList(uid: String, enterType: SendEnterType) {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard CustomPermissionTool.withGift() == false else { return }

        // 同一直播间只能进一次
        //: guard String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid) != uid else {
        guard String(LogLiveManager.anUp().liveRoomModel.streamerInfo.uid) != uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "You're already in her live room".localized)
            self.drawObserver(showMsg: String(bytes: mainLayerStyleText.reversed(), encoding: .utf8)!.localized)
            //: return
            return
        }
        // 校验接口，通过后进入直播间
        //: TalkingAudienceManager().req_enterLiveRoom(streamerUid: uid) { succeed, result, errorModel in
        CookingPanAudienceManager().styleChemicalElement(streamerUid: uid) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: guard let livemodel = TalkingLiveRoomModel.deserialize(from: result as? Dictionary) else { return }
            guard let livemodel = ClickTransformable.deserialize(from: result as? Dictionary) else { return }
            // 退出之前的直播间
            //: let currentVC = self.func__getCurrentActivityVC()
            let currentVC = self.retrieve()
            //: if let vcArr = currentVC?.navigationController?.viewControllers {
            if let vcArr = currentVC?.navigationController?.viewControllers {
                //: for index in 0..<(vcArr.count) {
                for index in 0 ..< (vcArr.count) {
                    //: let vc = vcArr[index]
                    let vc = vcArr[index]
                    //: if vc.isKind(of: TalkingLivePullStreamsViewController.self) == true {
                    if vc.isKind(of: SubViewDelegate.self) == true {
                        //: (vc as! TalkingLivePullStreamsViewController).popCurrentViewController()
                        (vc as! SubViewDelegate).dole()
                    }
                }
            }

            // 进入新直播间
            //: TalkingLiveManager.shared().liveRoomModel = livemodel
            LogLiveManager.anUp().liveRoomModel = livemodel
            //: let liveVc = TalkingLivePullStreamsViewController()
            let liveVc = SubViewDelegate()
            //: liveVc.type = enterType
            liveVc.type = enterType
            //: currentVC?.navigationController?.pushViewController(liveVc, animated: true)
            currentVC?.navigationController?.pushViewController(liveVc, animated: true)
            // 埋点
            //: switch enterType {
            switch enterType {
            //: case .match:
            case .match:
                //: uploadRecord.uploadRecordEvent(eventID: ClickMatchLiveWindowNoP, toUid: uid)
                const_screenFormat.occurrenceIn(eventID: notiShowId, toUid: uid)
            //: case .userDetail:
            case .userDetail:
                //: uploadRecord.uploadRecordEvent(eventID: ClickProfileLiveWindowNoP, toUid: uid)
                const_screenFormat.occurrenceIn(eventID: app_tagFormat, toUid: uid)
            //: case .unknown: break
            case .unknown: break
            }
        }
    }

    /// 进入语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    //: func func_pushToVoiceRoomVC(roomId: String? = nil) {
    func interval(roomId: String? = nil) {
        //: if TalkingLiveManager.shared().isLive == true {
        if LogLiveManager.anUp().isLive == true { // 直播中
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            drawObserver(showMsg: kBarAdjustKeyMessage)
            //: return
            return
        }
        //: if roomId == TalkingVoiceRoomManager.shared().partyModel.roomId {
        if roomId == RangeManager.universalShared().partyModel.roomId { // 返回语聊房
            //: TalkingVoiceRoomManager.shared().voiceRoom_goback()
            RangeManager.universalShared().giftGoback()
            //: return
            return
        }
        //: if TalkingVoiceRoomManager.shared().isParty == true {
        if RangeManager.universalShared().isParty == true { // 切换语聊房
            //: if roomId != nil {
            if roomId != nil {
                //: TalkingVoiceRoomManager.shared().voiceRoom_switch(roomId: roomId!, beforeRoomId: TalkingVoiceRoomManager.shared().partyModel.roomId)
                RangeManager.universalShared().viewCount(roomId: roomId!, beforeRoomId: RangeManager.universalShared().partyModel.roomId)
            }
            //: return
            return
        }
        //: TalkingVoiceRoomManager.shared().voiceRoom_checkAndTurnOn(roomId: roomId)
        RangeManager.universalShared().giftBy(roomId: roomId)
    }

    // MARK: - 跳转聊天

    /// 跳转到消息列表页
    /// - Parameter isHalf: 是否半屏展示
    //: func func__pushToChatListVC(isHalfView: Bool = false) {
    func chat(isHalfView: Bool = false) {
        //: let vc = TalkingChatListViewController(isHalfView: isHalfView)
        let vc = BackgroundDataSource(isHalfView: isHalfView)
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = retrieve()
        //: if isHalfView == false {
        if isHalfView == false {
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: currentVC?.addChild(vc)
            currentVC?.addChild(vc)
            //: currentVC?.view.addSubview(vc.view)
            currentVC?.view.addSubview(vc.view)
        }
    }

    /// 跳转到消息聊天页
    /// - Parameters:
    ///   - chatID: 对方Id
    ///   - isFrom: 私聊页入口
    /// - Returns: 消息聊天页

    //: func func__pushToPriveteChatVC(chatID: String, isFrom: PrivateChatIsFromEnum = .Normal, completion: ((_ vc: TalkingPrivateChatController) -> Void)? = nil ) {
    func liveInsideCompletion(chatID: String, isFrom: ListFromEnum = .Normal, completion: ((_ vc: GiftChatController) -> Void)? = nil) {
        //: guard chatID.count > 0 else { return }
        guard chatID.count > 0 else { return }

        //: if chatID != PublisherReactiveCompatible.getXiaoMiID() {
        if chatID != PublisherReactiveCompatible.exceptXiao() { // 系统消息
            //: ProgressHUD.show()
            DirectThen.levelHandle()
            //: let param = ["toUid": chatID, "momentId": "0", "extra": "1"]
            let param = [String(bytes: data_removeByKey.map{giftNext(time: $0)}, encoding: .utf8)!: chatID, String(bytes: userIndexMsg.map{kitFrame(image: $0)}, encoding: .utf8)!: "0", String(bytes: kEqualName.map{modelMoment(table: $0)}, encoding: .utf8)!: "1"]
            //: SomebodyRequestTool.req_refreshUserChatInfo(param: param) { [weak self] succeed, result, errorModel in
            SomebodyRequestTool.wineWaiter(param: param) { [weak self] succeed, result, _ in
                //: ProgressHUD.dismiss()
                DirectThen.cutWith()
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: guard succeed else { return }
                guard succeed else { return }

                //: let userWrap = RequestHandyJSON.func__transformedChatinfo(userDic: result as! Dictionary<String, Any>)
                let userWrap = RequestHandyJSON.ofDic(userDic: result as! [String: Any])
                //: DBUserInfoManager.cache_updateMsgUserInfoAndPostNotif(with: userWrap)
                ReadoutReactiveCompatible.postSomeoneInfoAndModifyImageStreetwiseAdd(with: userWrap)
                // 更新消息列表用户在线状态
                //: let userInfo = ["uid": chatID,
                let userInfo = [String(bytes: notiImageText.map{subjectMatter(match: $0)}, encoding: .utf8)!: chatID,
                                //: "onlineStatus": userWrap.onlineStatus,
                                String(bytes: kUserName.map{nameMessage(current: $0)}, encoding: .utf8)!: userWrap.onlineStatus,
                                //: "isNewUser":userWrap.isNewUser,
                                String(bytes: show_fileName.map{boyItemLet(text: $0)}, encoding: .utf8)!: userWrap.isNewUser,
                                //: "userStatus": userWrap.userStatus]
                                String(bytes: showIndexMessage.map{statusData(layer: $0)}, encoding: .utf8)!: userWrap.userStatus]
                //: NotificationCenter.default.post(name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                NotificationCenter.default.post(name: appNetPath,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: userInfo)
                                                userInfo: userInfo)
                //: if userWrap.userStatus == 3 {
                if userWrap.userStatus == 3 { /// 被封号
                    //: self.func__showStatusBarErrorMsg(showMsg: "Account is restricted！".localized)
                    self.drawObserver(showMsg: (String(k_textKey) + String(k_makeStr)).localized)
                    //: return
                    return
                }
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: let chatVC = self.func__canPushToPriveteChatVC(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
                    let chatVC = self.adult(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
                    //: completion?(chatVC)
                    completion?(chatVC)
                }
            }
            //: }else{
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: let chatVC = self.func__canPushToPriveteChatVC(chatID: chatID, isFrom: isFrom, userWrap: RequestHandyJSON())
                let chatVC = self.adult(chatID: chatID, isFrom: isFrom, userWrap: RequestHandyJSON())
                //: completion?(chatVC)
                completion?(chatVC)
            }
        }
    }

    //: func func__canPushToPriveteChatVC(chatID: String, isFrom: PrivateChatIsFromEnum = .Normal, userWrap: RequestHandyJSON ) -> TalkingPrivateChatController {
    func adult(chatID: String, isFrom: ListFromEnum = .Normal, userWrap: RequestHandyJSON) -> GiftChatController {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = retrieve()
        //: if isFrom != .LiveRoom, let vcArr = currentVC?.navigationController?.viewControllers {
        if isFrom != .LiveRoom, let vcArr = currentVC?.navigationController?.viewControllers {
            //: for index in 0..<(vcArr.count) {
            for index in 0 ..< (vcArr.count) {
                //: if vcArr[index] .isKind(of: TalkingPrivateChatController.self) == true {
                if vcArr[index].isKind(of: GiftChatController.self) == true {
                    //: let vc = vcArr[index] as! TalkingPrivateChatController
                    let vc = vcArr[index] as! GiftChatController
                    //: if vc.targetId == chatID {
                    if vc.targetId == chatID {
                        //: currentVC?.navigationController?.popToViewController(vc, animated: true)
                        currentVC?.navigationController?.popToViewController(vc, animated: true)
                        //: return vc
                        return vc
                    }
                }
            }
        }

        //: let vc = TalkingPrivateChatController(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
        let vc = GiftChatController(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
        //: if isFrom == .LiveRoom {
        if isFrom == .LiveRoom {
            //: currentVC?.addChild(vc)
            currentVC?.addChild(vc)
            //: currentVC?.view.addSubview(vc.view)
            currentVC?.view.addSubview(vc.view)
            //: } else {
        } else {
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
        }
        //: return vc
        return vc
    }

    // MARK: - 跳转群聊

    //: func func__pushToGroupChat(groupId: String) {
    func halfStaff(groupId: String) {
        //: guard groupId.count > 0 else { return }
        guard groupId.count > 0 else { return }
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: SomebodyRequestTool.req_checkChatRoom(roomId: groupId) { succeed, result, errorModel in
        SomebodyRequestTool.loadCompletion(roomId: groupId) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 106 {
                if errorModel?.errorCode == 106 {
                    //: } else {
                } else {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel?.errorMsg ?? "")
                    self.drawObserver(showMsg: errorModel?.errorMsg ?? "")
                    //: if errorModel?.errorCode == 103 {
                    if errorModel?.errorCode == 103 { // 不在家族里
                    }
                }

                //: return
                return
            }

            //: guard let data = result as? [String: Any] else {
            guard let data = result as? [String: Any] else {
                //: return
                return
            }

            //: if PublisherReactiveCompatible.isGroupChat(groupId) {
            if PublisherReactiveCompatible.receiveChatBlock(groupId) {
                //: } else {
            } else { // 公共聊天室
                //: V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
                V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
                    //: guard self.func__checkIsGroupChatVC(roomId: groupId) == false else { return }
                    guard self.checked(roomId: groupId) == false else { return }
                    //: let vc = TalkingGroupChatController(groupType: GroupType_Meeting, infoData: data)
                    let vc = ControllerDelegate(groupType: GroupType_Meeting, infoData: data)
                    //: self.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
                    self.retrieve()?.navigationController?.pushViewController(vc, animated: true)

                    //: } fail: { code, desc in
                } fail: { code, _ in
                    //: if code == 10013 {
                    if code == 10013 { // 程序异常退出，未退出聊天室
                        //: guard self.func__checkIsGroupChatVC(roomId: groupId) == false else { return }
                        guard self.checked(roomId: groupId) == false else { return }
                        //: let vc = TalkingGroupChatController(groupType: GroupType_Meeting, infoData: data)
                        let vc = ControllerDelegate(groupType: GroupType_Meeting, infoData: data)
                        //: self.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
                        self.retrieve()?.navigationController?.pushViewController(vc, animated: true)
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: "Failed to enter the chat room. Please try again later".localized)
                        self.drawObserver(showMsg: String(bytes: dataActualFormat.map{resultIndex(miss: $0)}, encoding: .utf8)!.localized)
                    }
                }
            }
        }
    }

    /// 检测堆栈中是否有群聊控制器，有则跳转到群聊页
    /// - Parameter roomId: 房间Id
    /// - Returns: 检测结果（true: 有; false: 无）
    //: private func func__checkIsGroupChatVC(roomId: String) -> Bool {
    private func checked(roomId: String) -> Bool {
        //: let currentVC = self.func__getCurrentActivityVC()
        let currentVC = self.retrieve()
        //: if let vcArr = currentVC?.navigationController?.viewControllers {
        if let vcArr = currentVC?.navigationController?.viewControllers {
            //: for index in 0..<(vcArr.count) {
            for index in 0 ..< (vcArr.count) {
                //: if vcArr[index].isKind(of: TalkingGroupChatController.self) == true {
                if vcArr[index].isKind(of: ControllerDelegate.self) == true {
                    //: let vc = vcArr[index] as! TalkingGroupChatController
                    let vc = vcArr[index] as! ControllerDelegate
                    //: if vc.infoModel.roomId == roomId {
                    if vc.infoModel.roomId == roomId {
                        //: currentVC?.navigationController?.popToViewController(vc, animated: true)
                        currentVC?.navigationController?.popToViewController(vc, animated: true)
                        //: return true
                        return true
                    }
                }
            }
        }

        //: return false
        return false
    }

    // MARK: - 真人认证

    //: func func__pushUserVerifyController(toast: String?) {
    func controller(toast: String?) {
        //: let tpAuth = TPUserAuth(rawValue: PunctuateThen.share.loginUserMode.isTPAuth)
        let tpAuth = AuthColumnConvertible(rawValue: PunctuateThen.share.loginUserMode.isTPAuth)
        //: switch(tpAuth) {
        switch tpAuth {
        //: case .unknown, .isRefused:
        case .unknown, .isRefused:
            //: let vc = TalkingFaceVerificationVC()
            let vc = ClickViewController()
            //: vc.toastStr = toast ?? ""
            vc.toastStr = toast ?? ""
            //: let currentVC = func__getCurrentActivityVC()
            let currentVC = retrieve()
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)

        //: case .isOnGoing:
        case .isOnGoing:
            //: let vc = TalkingFinalVerificationVC()
            let vc = TopViewController()
            //: let currentVC = func__getCurrentActivityVC()
            let currentVC = retrieve()
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)

        //: default:
        default:
            //: break
            break
        }
    }

    // MARK: - 任意用户的动态列表

    //: func func__pushUserPostListWithUid(uid: String) {
    func pushUid(uid _: String) {}

    // MARK: - 反馈feebook

    //: func func__pushFeedbackVC() {
    func belowState() {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = retrieve()
        //: let vc = TalkingFeedbackVC.init()
        let vc = InvisibleViewController()
        //: currentVC?.navigationController?.pushViewController(vc, animated: true)
        currentVC?.navigationController?.pushViewController(vc, animated: true)
    }

    // MARK: - 消息跳转

    //: func func__actionPushForMessage(jumpModel: TalkingMessageJumpModel) {
    func actionModel(jumpModel: TelephoneMessageJumpModel) {
        //: if jumpModel.jumpKey == "url" {
        if jumpModel.jumpKey == (String(dataCountStr)) {
            //: func__pushToWebVC(urlStr: jumpModel.url)
            userBlade(urlStr: jumpModel.url)
            //: } else if jumpModel.jumpKey == "userDetail"{
        } else if jumpModel.jumpKey == (kTopMsg.replacingOccurrences(of: "view", with: "u") + String(show_aboutFormat.prefix(5)) + "tail") {}
    }

    // MARK: - 会员订阅网页

    //: @objc public func pushOn() {
    @objc public func pushOn() {
        //: RangePushManager.share.func__pushToWebVC(webViewType: .SubscribePage)
        RangePushManager.share.barOn(webViewType: .SubscribePage)
    }

    // MARK: - 设置密码页面

    /// 跳转设置密码页面
    /// - Parameters:
    ///   - type: 手机号/邮箱
    ///   - content: 展示内容
    ///   - isNewPwd: 是否新设置密码（修改需要验证码）
    //: func func__pushToSetNewPasswordVC(type: LoginType, content: String, isNewPwd: Bool) {
    func student(type: PublicCollection, content: String, isNewPwd: Bool) {
        //: let vc = TalkingSetNewPasswordVC()
        let vc = NewViewController()
        //: vc.type = type
        vc.type = type
        //: vc.content = content
        vc.content = content
        //: vc.isNewPwd = isNewPwd
        vc.isNewPwd = isNewPwd
        //: func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
        retrieve()?.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - 跳转H5

//: extension RangePushManager {
extension RangePushManager {
    // 跳转全屏H5入口
    //: func func__pushToWebVC(webViewType: WebUrlType) {
    func barOn(webViewType: DataPlumeBidirectionalCollection) {
        //: func__pushToWebVC(webViewType: webViewType, webConfig: TalkingWebConfig())
        shareFace(webViewType: webViewType, webConfig: SearchConfig())
    }

    /// 余额不足跳转充值/订阅页
    /// - Parameters:
    ///   - clickEvent: 埋点事件
    ///   - sufficient: 余额是否充足（默认true）
    //: func func__jumpToWebRecharge(clickEvent: String = "", sufficient: Bool = true, appendParams: String = "&type=7") {
    func picParams(clickEvent: String = "", sufficient: Bool = true, appendParams: String = (String(k_keyVoiceFormat))) {
        //: let payWinType = PunctuateThen.share.appUserConfigMode.payWinType
        let payWinType = PunctuateThen.share.appUserConfigMode.payWinType
        // 样式：半屏充值页 || (已订阅 && 余额不足)
        //: if payWinType == 1 || (PunctuateThen.share.loginUserMode.loungePlus && sufficient == false) {
        if payWinType == 1 || (PunctuateThen.share.loginUserMode.loungePlus && sufficient == false) { // 半屏充值页
            //: func__pushToHalfWebVC(webViewType: .RechargeHalfPage, clickEvent: clickEvent)
            isoclinicEvent(webViewType: .RechargeHalfPage, clickEvent: clickEvent)

            //: } else if payWinType == 2 {
        } else if payWinType == 2 { // 会员订阅弹窗
            //: func__pushToSubscribeAlert(appendParams: appendParams)
            quantityernalRepresentation(appendParams: appendParams)
        }
    }

    /// 跳转会员订阅弹窗
    /// - Parameter appendParams: url拼接参数（假视频流程拼接："&type=6；默认流程："&type=7"）
    //: func func__pushToSubscribeAlert(appendParams: String = "&type=7") {
    func quantityernalRepresentation(appendParams: String = (String(k_keyVoiceFormat))) {
        //: var urlStr = TalkingWebManager.getFullUrl(urlType: .SubscribeAlert)
        var urlStr = VoiceTableReactiveCompatible.comeUponModel(urlType: .SubscribeAlert)
        //: urlStr.append(appendParams)
        urlStr.append(appendParams)
        //: RangePushManager.share.func__pushToWebVC(urlStr: urlStr)
        RangePushManager.share.userBlade(urlStr: urlStr)
        // 曝光用户数埋点
        //: uploadRecord.uploadRecordEvent(eventID: subscribtionRecordButton, parameterStr: ["amount": 0])
        const_screenFormat.infoEqual(eventID: noti_timeUrl, parameterStr: [String(bytes: data_indexOfCellPath.map{addRange(data: $0)}, encoding: .utf8)!: 0])
    }

    /// 跳转半屏H5入口
    /// - Parameters:
    ///   - webViewType: 网页URL
    ///   - clickEvent: 埋点事件
    //: func func__pushToHalfWebVC(webViewType: WebUrlType, clickEvent: String = "") {
    func isoclinicEvent(webViewType: DataPlumeBidirectionalCollection, clickEvent: String = "") {
        //: var config = TalkingWebConfig.init()
        var config = SearchConfig()
        //: config.showLoadingView = false
        config.showLoadingView = false
        //: config.isHalfView = true
        config.isHalfView = true
        //: func__pushToWebVC(webViewType: webViewType, webConfig: config)
        shareFace(webViewType: webViewType, webConfig: config)
        // 充值埋点
        //: if webViewType == .RechargeHalfPage {
        if webViewType == .RechargeHalfPage {
            //: RECHARGE_CLICK_EVENT = clickEvent
            showScreenMessage = clickEvent
            //: if clickEvent.count > 0 {
            if clickEvent.count > 0 {
                //: uploadRecord.uploadRecordEvent(eventID: clickEvent, parameterStr: ["amount": 0])
                const_screenFormat.infoEqual(eventID: clickEvent, parameterStr: [String(bytes: data_indexOfCellPath.map{addRange(data: $0)}, encoding: .utf8)!: 0])
            }
        }
    }

    //: func func__pushToWebVC(webViewType: WebUrlType, webConfig: TalkingWebConfig) {
    func shareFace(webViewType: DataPlumeBidirectionalCollection, webConfig: SearchConfig) {
        //: let urlStr = TalkingWebManager.getFullUrl(urlType: webViewType)
        let urlStr = VoiceTableReactiveCompatible.comeUponModel(urlType: webViewType)
        //: func__pushToWebView(urlStr: urlStr, webViewType: webViewType, webConfig: webConfig)
        buildMode(urlStr: urlStr, webViewType: webViewType, webConfig: webConfig)
    }

    //: func func__pushToWebVC(urlStr: String?, webConfig: TalkingWebConfig? = nil) {
    func userBlade(urlStr: String?, webConfig: SearchConfig? = nil) {
        //: let config = (webConfig == nil) ? TalkingWebConfig():webConfig
        let config = (webConfig == nil) ? SearchConfig() : webConfig
        //: func__pushToWebView(urlStr: urlStr, webViewType: nil, webConfig: config!)
        buildMode(urlStr: urlStr, webViewType: nil, webConfig: config!)
    }

    //: func func__pushToWebView(urlStr: String?, webViewType: WebUrlType?, webConfig: TalkingWebConfig) {
    func buildMode(urlStr: String?, webViewType: DataPlumeBidirectionalCollection?, webConfig: SearchConfig) {
        //: guard urlStr != nil && urlStr != "" else { return }
        guard urlStr != nil, urlStr != "" else { return }
        //: var config = webConfig
        var config = webConfig

        // 有值且大于0，半屏按照比例展示
        //: if config.widthHeight ?? 0 > 0 {
        if config.widthHeight ?? 0 > 0 {
            //: config.isHalfView = true
            config.isHalfView = true
        }
        // 解析url中带的参数
        //: let urlParams = JSON(urlStr!.urlParameters ?? [:])
        let urlParams = JSON(urlStr!.urlParameters ?? [:])
        //: if urlParams["transparency"].stringValue == "1" { // 透明背景
        if urlParams[(String(noti_photoBeautyValue) + appFromName.replacingOccurrences(of: "table", with: "cy"))].stringValue == "1" { // 透明背景
            //: config.clearBgColor = true
            config.clearBgColor = true
        }

        // url拼接参数
        //: let allowCharSet: CharacterSet = CharacterSet.init(charactersIn: "`%^{}\"[]|\\<>").inverted
        let allowCharSet = CharacterSet(charactersIn: "`%^{}" + "\"" + "[]|\\<>").inverted
        //: var urlStr = urlStr!.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
        var urlStr = urlStr!.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
        //: let otherParams = "version=\(AppNetVersion)&packageId=\(PackageID)&bundleId=\(AppBundle)"
        let otherParams = (const_menuUrl.lowercased() + String(main_responseStr)) + "\(constKeyFormat)" + (String(noti_modeName) + String(dataEqualEyeId)) + "\(show_systemValue)" + (String(main_timingTitle) + String(notiPlayerViewKey)) + "\(show_screenNoData)"
        //: if urlStr.contains("?") {
        if urlStr.contains("?") {
            //: urlStr = "\(urlStr)&\(otherParams)"
            urlStr = "\(urlStr)&\(otherParams)"
            //: } else {
        } else {
            //: urlStr = "\(urlStr)?\(otherParams)"
            urlStr = "\(urlStr)?\(otherParams)"
        }

        //: let vc = TalkingWebViewController.init(urlString: urlStr, webViewType: webViewType, webConfig: config)
        let vc = RubricViewController(urlString: urlStr, webViewType: webViewType, webConfig: config)

        // 展示网页
        //: if let currentVC = func__getCurrentActivityVC() {
        if let currentVC = retrieve() {
            // 如果当前视图是模态上来的，跳转到下级时只能使用模态效果跳转
            //: var currentVCIsPresent = false
            var currentVCIsPresent = false
            //: if currentVC.isKind(of: TalkingWebViewController.self) &&
            if currentVC.isKind(of: RubricViewController.self) &&
                //: (currentVC as! TalkingWebViewController).isModal == true {
                (currentVC as! RubricViewController).isModal == true
            {
                //: currentVCIsPresent = true
                currentVCIsPresent = true
            }

            //: if config.isHalfView {
            if config.isHalfView { // 半屏使用present
                //: if config.widthHeight == nil {
                if config.widthHeight == nil {
                    //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight*2/3)
                    vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle * 2 / 3)
                    //: vc.tranConfig.configCorner(corners: [.topLeft, .topRight], radius: 18)
                    vc.tranConfig.pushData(corners: [.topLeft, .topRight], radius: 18)
                    //: } else {
                } else {
                    //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenWidth/config.widthHeight!)
                    vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: kQueryValue, height: kQueryValue / config.widthHeight!)
                }
                //: vc.isModal = true
                vc.isModal = true
                //: currentVC.present(vc, animated: true)
                currentVC.present(vc, animated: true)

                //: } else if config.clearBgColor || currentVCIsPresent {
            } else if config.clearBgColor || currentVCIsPresent { // 透明背景只能用present
                //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
                vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle)
                //: vc.isModal = true
                vc.isModal = true
                //: currentVC.present(vc, animated: true)
                currentVC.present(vc, animated: true)

                //: } else {
            } else {
                //: vc.isModal = false
                vc.isModal = false
                //: currentVC.navigationController?.pushViewController(vc, animated: true)
                currentVC.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
}

// MARK: - 获取当前视图、导航

//: extension RangePushManager {
public extension RangePushManager {
    //: @objc public func func__getCurrentActivityVC() -> UIViewController? {
    @objc func retrieve() -> UIViewController? {
        //: return currentViewController()
        return occurrentWith()
    }
}

//: struct TalkingMessageJumpModel: HandyJSON {
struct TelephoneMessageJumpModel: HandyJSON {
    //: var jumpKey: String?
    var jumpKey: String? // 评论的id
    //: var jumpUid: String?
    var jumpUid: String?
    //: var url: String?
    var url: String?
}
