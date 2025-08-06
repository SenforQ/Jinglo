
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let dataStylePath:[UInt8] = [0xea,0xed,0xea,0xf7,0xab,0xe0,0xec,0xe7,0xe6,0xf1,0xb9,0xaa,0xa3,0xeb,0xe2,0xf0,0xa3,0xed,0xec,0xf7,0xa3,0xe1,0xe6,0xe6,0xed,0xa3,0xea,0xee,0xf3,0xef,0xe6,0xee,0xe6,0xed,0xf7,0xe6,0xe7]

private func superFailure(drop num: UInt8) -> UInt8 {
    return num ^ 131
}

/*: "System notification" :*/
fileprivate let dataWhiteMsg:String = "Systeresult style true"
fileprivate let const_statusData:String = "viewca"

/*: "http://static. :*/
fileprivate let userSucceedUrl:[Character] = ["h","t","t","p",":","/","/","s"]
fileprivate let constUserFormat:String = "bind info self lab sizetatic."

/*: .com/app/img/message/xitong-v2.png" :*/
fileprivate let mainColorFormat:[UInt8] = [0xd6,0x9b,0x97,0x95,0xd7,0x99,0x88,0x88,0xd7,0x91,0x95,0x9f,0xd7,0x95,0x9d,0x8b,0x8b,0x99,0x9f,0x9d,0xd7,0x80,0x91,0x8c,0x97,0x96,0x9f,0xd5,0x8e,0xca,0xd6,0x88,0x96,0x9f]

private func valueName(make num: UInt8) -> UInt8 {
    return num ^ 248
}

/*: "Customer Care Center" :*/
fileprivate let constShareName:String = "Custof extension make right instance"
fileprivate let appLineStr:String = "are Ceher view cell top file"
fileprivate let kCornerValue:String = "NTER"

/*: .com/app/img/message/cs.png" :*/
fileprivate let app_errorId:String = "change type in segment.com/"
fileprivate let show_deadlineMessage:String = "/meelse utility return"
fileprivate let kDeleteFormat:String = "ssroot"
fileprivate let data_withTextMeValue:String = "content color make table string.png"

/*: "Public Chat Room" :*/
fileprivate let app_layerMsg:[Character] = ["P","u","b","l","i","c"," ","C","h","a","t"]
fileprivate let notiIconContentTitle:[Character] = [" ","R","o","o","m"]

/*: "icon_chats_pcr" :*/
fileprivate let show_firstValue:String = "manager status openicon_"
fileprivate let user_errorMsg:String = "else let user_pcr"

/*: "New friends" :*/
fileprivate let kDataName:String = "equal leading value itemNew"
fileprivate let appTouchName:String = " friendsequal view"

/*: "icon_chats_mm" :*/
fileprivate let k_cleanMessage:[Character] = ["i","c","o","n","_","c","h","a","t"]
fileprivate let userMessageText:String = "show lives_mm"

/*: " customElem.data is error" :*/
fileprivate let mainNeedKeyValue:String = " custocount view equal show"
fileprivate let data_backContent:String = "bubbleta"

/*: "extra" :*/
fileprivate let dataShowValue:[Character] = ["e","x","t","r","a"]

/*: "msgInfo" :*/
fileprivate let const_fadeMsg:String = "if element self modelmsgInfo"

/*: "messageType" :*/
fileprivate let notiSucceedPathPushData:String = "frameessa"
fileprivate let showValueUrl:String = "view text hidden new errorgeType"

/*: "msgType" :*/
fileprivate let showTitleStr:[Character] = ["m"]
fileprivate let showUserContent:String = "if source type response fillsgType"

/*: "tips" :*/
fileprivate let mainMakeUrl:String = "tinsideps"

/*: "totalIntimate" :*/
fileprivate let user_viewData:[Character] = ["t","o","t","a","l","I","n","t","i","m","a","t","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TableReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/9.
//

//: import UIKit
import UIKit

//: public class TalkingConversationModel: NSObject {
public class TableReactiveCompatible: NSObject {
    //: var type: V2TIMConversationType?
    var type: V2TIMConversationType?
    //: var userID = ""         // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    var userID = "" // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    //: var sender = ""         // 消息发送者ID
    var sender = "" // 消息发送者ID
    //: var groupID = ""        // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    var groupID = "" // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    //: var groupType = ""      // 如果会话类型为群聊，groupType 为当前群类型
    var groupType = "" // 如果会话类型为群聊，groupType 为当前群类型
    //: var targetId = ""
    var targetId = ""
    //: var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID
    var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID

    //: var showName = ""
    var showName = ""
    //: var faceUrl = ""
    var faceUrl = ""
    //: var unreadCount: Int = 0
    var unreadCount: Int = 0 // 未读数
    //: var orderKey: Int = 0
    var orderKey: Int = 0 // 排序
    //: var isPinned = false
    var isPinned = false // 是否置顶
    //: var isShowMsgUnread = false
    var isShowMsgUnread = false // 会话中最后一条消息是否未读

    //: var draftText = ""      // 草稿信息
    var draftText = "" // 草稿信息
    //: var draftTimestamp: NSDate?
    var draftTimestamp: NSDate? // 草稿编辑时间，草稿设置的时候自动生成

    //: var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    //: var num = 0
    var num = 0 // 聊天室当前在线人数

    //: var hasTimestamp = false
    var hasTimestamp = false // swift 解包
    //: var timestamp: NSDate?
    var timestamp: NSDate? // 会话中最后一条消息的时间
    //: var listShowMessage: V2TIMMessage?
    var listShowMessage: V2TIMMessage? // 最后一条消息
    //: var gj_userInfo: RequestHandyJSON?
    var gj_userInfo: RequestHandyJSON? // 用户信息
    //: var chatType: TalkingIMChatType = .unDefined
    var chatType: TalkingIMChatType = .unDefined
    //: var listOnlineStatus = 0
    var listOnlineStatus = 0 // 记录是否在线;1=在线,0=不在线（自定义字段）
    //: var isNewUser = false
    var isNewUser = false // 表示是否是新用户（自定义字段）
    //: var ismoreAPAuto = false
    var ismoreAPAuto = false // 更多会话认证
    //: var totalIntimate = 0
    var totalIntimate = 0 // 与当前用户的亲密值
    //: var userStatus    = 1
    var userStatus = 1 // 用户状态  1正常2被禁言3被封号5被拉黑

    //: override init() {
    override init() {
        //: super.init()
        super.init()
    }

    //: init(conv: V2TIMConversation) {
    init(conv: V2TIMConversation) {
        //: super.init()
        super.init()
        //: self.type = conv.type
        self.type = conv.type
        //: self.userID     = conv.userID ?? ""
        self.userID = conv.userID ?? ""
        //: self.sender     = conv.lastMessage?.sender ?? ""
        self.sender = conv.lastMessage?.sender ?? ""
        //: self.groupID    = conv.groupID ?? ""
        self.groupID = conv.groupID ?? ""
        //: self.groupType  = conv.groupType ?? ""
        self.groupType = conv.groupType ?? ""
        //: self.targetId   = self.userID.count > 0 ? self.userID:self.groupID
        self.targetId = self.userID.count > 0 ? self.userID : self.groupID
        //: self.conversationID = conv.conversationID
        self.conversationID = conv.conversationID
        //: self.showName = conv.showName
        self.showName = conv.showName
        //: self.faceUrl = conv.faceUrl ?? ""
        self.faceUrl = conv.faceUrl ?? ""
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.isPinned = conv.isPinned
        self.isPinned = conv.isPinned
        //: if conv.lastMessage?.timestamp != nil {
        if conv.lastMessage?.timestamp != nil {
            //: self.hasTimestamp = true
            self.hasTimestamp = true
            //: self.timestamp = conv.lastMessage?.timestamp as NSDate?
            self.timestamp = conv.lastMessage?.timestamp as NSDate?
        }
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        //: if conv.type == .C2C {
        if conv.type == .C2C {
            //: self.chatType = .private
            self.chatType = .private
            //: if conv.userID == PublisherReactiveCompatible.getXiaoMiID() {
            if conv.userID == PublisherReactiveCompatible.exceptXiao() {
                //: self.chatType = .system
                self.chatType = .system
                //: } else if conv.userID == PublisherReactiveCompatible.getCustomerServiceID() {
            } else if conv.userID == PublisherReactiveCompatible.appId() {
                //: self.chatType = .service
                self.chatType = .service
            }

            //: } else {
        } else {
            //: self.chatType = .group
            self.chatType = .group
        }
        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.showCell(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
            }
        }
        //: if self.listShowMessage != nil {
        if self.listShowMessage != nil {
            //: self.func__updateLastShowMsg()
            self.crop()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dataStylePath.map{superFailure(drop: $0)}, encoding: .utf8)!)
    }
}

// MARK: - 获取占位model

//: extension TalkingConversationModel {
extension TableReactiveCompatible {
    /// 获取占位model
    /// - Parameter chatType: model类型
    /// - Returns: model
    //: class func getPlaceholderModel(chatType: TalkingIMChatType) -> TalkingConversationModel {
    class func declaration(chatType: TalkingIMChatType) -> TableReactiveCompatible {
        //: let model = TalkingConversationModel()
        let model = TableReactiveCompatible()
        //: model.chatType = chatType
        model.chatType = chatType
        //: if chatType == .system {
        if chatType == .system { // 系统通知
            //: model.userID = PublisherReactiveCompatible.getXiaoMiID()
            model.userID = PublisherReactiveCompatible.exceptXiao()
            //: model.targetId = PublisherReactiveCompatible.getXiaoMiID()
            model.targetId = PublisherReactiveCompatible.exceptXiao()
            //: model.showName = "System notification".localized
            model.showName = (String(dataWhiteMsg.prefix(5)) + "m noti" + const_statusData.replacingOccurrences(of: "view", with: "fi") + "tion").localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/xitong-v2.png"
            model.faceUrl = (String(userSucceedUrl) + String(constUserFormat.suffix(6))) + "\(k_detailData)" + String(bytes: mainColorFormat.map{valueName(make: $0)}, encoding: .utf8)!

            //: } else if chatType == .service {
        } else if chatType == .service { // 官方客服
            //: model.userID = PublisherReactiveCompatible.getCustomerServiceID()
            model.userID = PublisherReactiveCompatible.appId()
            //: model.targetId = PublisherReactiveCompatible.getCustomerServiceID()
            model.targetId = PublisherReactiveCompatible.appId()
            //: model.showName = "Customer Care Center".localized
            model.showName = (String(constShareName.prefix(4)) + "omer C" + String(appLineStr.prefix(6)) + kCornerValue.lowercased()).localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/cs.png"
            model.faceUrl = (String(userSucceedUrl) + String(constUserFormat.suffix(6))) + "\(k_detailData)" + (String(app_errorId.suffix(5)) + "app/img" + String(show_deadlineMessage.prefix(3)) + kDeleteFormat.replacingOccurrences(of: "root", with: "ag") + "e/cs" + String(data_withTextMeValue.suffix(4)))

            //: } else if chatType == .group {
        } else if chatType == .group { // 公共聊天室
            //: model.showName = "Public Chat Room".localized
            model.showName = (String(app_layerMsg) + String(notiIconContentTitle)).localized
            //: model.faceUrl = "icon_chats_pcr"
            model.faceUrl = (String(show_firstValue.suffix(5)) + "chats" + String(user_errorMsg.suffix(4)))

            //: } else if chatType == .moreMsg {
        } else if chatType == .moreMsg { // 更多消息
            //: model.showName = "New friends".localized
            model.showName = (String(kDataName.suffix(3)) + String(appTouchName.prefix(8))).localized
            //: model.faceUrl = "icon_chats_mm"
            model.faceUrl = (String(k_cleanMessage) + String(userMessageText.suffix(4)))
        }

        //: return model
        return model
    }
}

//: extension TalkingConversationModel {
extension TableReactiveCompatible {
    //: func func__updateLastShowMsg() {
    func crop() {
        //: if self.type == .C2C {
        if self.type == .C2C {
            //: V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.showCell(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
            //: } else {
        } else {
            //: V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.showCell(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
        }
    }

    //: func func__checkMsgCanShow(msg: V2TIMMessage) -> Bool {
    func showCell(msg: V2TIMMessage) -> Bool {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(mainNeedKeyValue.prefix(6)) + "mElem." + data_backContent.replacingOccurrences(of: "bubble", with: "da") + " is error"))
            //: return false
            return false
        }
        //: let json = JSON(parseJSON: extra)
        let json = JSON(parseJSON: extra)
        //: let extraDic = json["extra"]
        let extraDic = json[(String(dataShowValue))]
        //: let msgInfo = extraDic["msgInfo"]
        let msgInfo = extraDic[(String(const_fadeMsg.suffix(7)))]
        //: var messageType = extraDic["messageType"].intValue
        var messageType = extraDic[(notiSucceedPathPushData.replacingOccurrences(of: "frame", with: "m") + String(showValueUrl.suffix(6)))].intValue
        //: let msgType = msgInfo["msgType"].stringValue
        let msgType = msgInfo[(String(showTitleStr) + String(showUserContent.suffix(6)))].stringValue
        //: if messageType == 0 {
        if messageType == 0 {
            //: messageType = msgInfo["messageType"].intValue
            messageType = msgInfo[(notiSucceedPathPushData.replacingOccurrences(of: "frame", with: "m") + String(showValueUrl.suffix(6)))].intValue
        }
        //: if (!msgType.isEmptyString && msgType == "tips") || messageType == 15 || messageType == 17 {
        if (!msgType.isEmptyString && msgType == (mainMakeUrl.replacingOccurrences(of: "inside", with: "i"))) || messageType == 15 || messageType == 17 {
            //: return false
            return false
        }
        //: return true
        return true
    }

    //: func func__updateLastConvModel(conv: V2TIMConversation) {
    func command(conv: V2TIMConversation) {
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)

        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.showCell(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
                //: if conv.lastMessage.timestamp != nil {
                if conv.lastMessage.timestamp != nil {
                    //: self.timestamp = conv.lastMessage.timestamp as NSDate?
                    self.timestamp = conv.lastMessage.timestamp as NSDate?
                    //: self.hasTimestamp = true
                    self.hasTimestamp = true
                }
                //: self.sender = conv.lastMessage.sender
                self.sender = conv.lastMessage.sender
                //: self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                //: self.updateIntimateTool(conv: conv)
                self.playText(conv: conv)
                //: } else {
            } else {
                //: self.func__updateLastShowMsg()
                self.crop()
            }
        }
    }
}

/// 亲密度
//: extension TalkingConversationModel {
extension TableReactiveCompatible {
    //: private func updateIntimateTool(conv: V2TIMConversation) {
    private func playText(conv: V2TIMConversation) {
        /// 新消息会话变更时，获取亲密度
        //: let data = conv.lastMessage!
        let data = conv.lastMessage!
        //: let dic = MemoryChatManager.parseTXMessageData(data: data.customElem.data)
        let dic = MemoryChatManager.parse(data: data.customElem.data)
        //: let jsonDic = JSON(dic)
        let jsonDic = JSON(dic)
        //: let extra = jsonDic["extra"].dictionary
        let extra = jsonDic[(String(dataShowValue))].dictionary
        //: let msgInfo = extra?["msgInfo"]?.dictionary
        let msgInfo = extra?[(String(const_fadeMsg.suffix(7)))]?.dictionary
        //: if let totalIntimate = msgInfo?["totalIntimate"]?.int {
        if let totalIntimate = msgInfo?[(String(user_viewData))]?.int {
            //: if let model = DBUserInfoManager.cache_getCachedUserInfo(targetId: self.userID) {
            if let model = ReadoutReactiveCompatible.comparable(targetId: self.userID) {
                /// 获取消息为最新时
                //: let time = Int(data.timestamp.timeIntervalSince1970)
                let time = Int(data.timestamp.timeIntervalSince1970)
                //: if time > model.intimateTime {
                if time > model.intimateTime {
                    //: self.totalIntimate = totalIntimate
                    self.totalIntimate = totalIntimate
                    /// 更新
                    //: DBUserInfoManager.cache_updateIntimate(with: userID, intimate: totalIntimate, currTime: time)
                    ReadoutReactiveCompatible.checkTime(with: userID, intimate: totalIntimate, currTime: time)
                    //: } else {
                } else {
                    //: self.totalIntimate = model.intimate
                    self.totalIntimate = model.intimate
                }
                //: } else {
            } else {
                //: self.totalIntimate = totalIntimate
                self.totalIntimate = totalIntimate
            }
        }
    }
}
