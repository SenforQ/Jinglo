
//: Declare String Begin

/*: "DBUserVoiceTable" :*/
fileprivate let const_levelFormat:String = "to through item return ofDBUser"
fileprivate let const_enterName:String = "ablmemory"

/*: "msgId" :*/
fileprivate let app_modelId:String = "msgIdshare log"

/*: "toUid" :*/
fileprivate let app_socialUrl:String = "color var self beautytoUid"

/*: "senderId" :*/
fileprivate let mainManagerName:String = "break return view currentsenderId"

/*: "audioSandbox" :*/
fileprivate let showAreaId:String = "audioSaframe add var component"
fileprivate let appFromId:String = "nviewbox"

/*: "audioLength" :*/
fileprivate let notiMyId:String = "import remove self pullaudioLeng"
fileprivate let noti_kitStr:String = "tadd"

/*: "audioData" :*/
fileprivate let userNeedUrl:[Character] = ["a","u","d","i","o","D","a","t","a"]

/*: "audioUri" :*/
fileprivate let showModelTitle:String = "audioUrvar error"
fileprivate let userMakeMessage:[Character] = ["i"]

/*: "isRead" :*/
fileprivate let mainToText:String = "isReadview label let in"

/*: "WCDB表 :*/
fileprivate let k_beginUrl:String = "WCDB表tab player"

/*: : 批量插入数据失败。error： :*/
fileprivate let data_remindCornerReturnPath:String = ": 批量插people"
fileprivate let const_timeId:String = "。errostring pass image true lab"
fileprivate let appNameId:String = "r：data equal else var"

/*: ." :*/
fileprivate let app_currentStr:String = "file"

/*: : 更新数据失败。error： :*/
fileprivate let k_equalMsg:[Character] = [":"," ","更","新","\u{6570}","\u{636e}","失","败","。","e"]
fileprivate let kIndexText:[Character] = ["r","r","o","r","\u{ff1a}"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QueryQuantityoMsgTable.swift
//  SolarisNovaAtlasCore
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

/// 表名
//: let WCDBVoiceMsgTableName = "DBUserVoiceTable"
let showLineTitle = (String(const_levelFormat.suffix(6)) + "VoiceT" + const_enterName.replacingOccurrences(of: "memory", with: "e"))
//: @objcMembers
@objcMembers
//: public final class WCDBVoiceMsgTable: NSObject, TableCodable {
public final class QueryQuantityoMsgTable: NSObject, TableCodable {
    /// 消息Id【主键】
    //: public var msgId: String = ""
    public var msgId: String = ""
    /// 语音长度
    //: public var db_audioLength: String = ""
    public var db_audioLength: String = ""
    /// 缓存路径
    //: public var db_filePath: String = ""
    public var db_filePath: String = ""
    /// 下载路径
    //: var db_voiceUri: String = ""
    var db_voiceUri: String = ""
    /// 发送方
    //: var db_senduid: String = ""
    var db_senduid: String = ""
    /// 接收方
    //: var db_touid: String = ""
    var db_touid: String = ""
    /// 是否已读; 0未读，1已读
    //: var db_isRead: String = ""
    var db_isRead: String = ""
    /// 下载状态
    //: var downloadStatus: String = ""
    var downloadStatus: String = ""

    //: public enum CodingKeys: String, CodingTableKey {
    public enum CodingKeys: String, CodingTableKey {
        //: public typealias Root = WCDBVoiceMsgTable
        public typealias Root = QueryQuantityoMsgTable
        //: case msgId
        case msgId
        //: case db_voiceUri
        case db_voiceUri
        //: case db_filePath
        case db_filePath
        //: case db_senduid
        case db_senduid
        //: case db_touid
        case db_touid
        //: case db_isRead
        case db_isRead
        //: case db_audioLength
        case db_audioLength
        //: case downloadStatus
        case downloadStatus

        //: public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
        public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
            //: BindColumnConstraint(msgId, isPrimary: true)
            BindColumnConstraint(msgId, isPrimary: true)
        }
    }
}

// MARK: - 增、删、改、查

//: extension WCDBVoiceMsgTable {
extension QueryQuantityoMsgTable {
    /// 插入单条数据
    /// - Parameter dic: 字典
    /// - Returns: 模型
    //: @discardableResult
    @discardableResult
    //: public class func db_inserVoiceMsgToDB(_ dic: [AnyHashable: Any]) -> WCDBVoiceMsgTable {
    public class func videoAdd(_ dic: [AnyHashable: Any]) -> QueryQuantityoMsgTable {
        //: let cache = WCDBVoiceMsgTable()
        let cache = QueryQuantityoMsgTable()
        //: cache.msgId = dic["msgId"] as? String ?? ""
        cache.msgId = dic[(String(app_modelId.prefix(5)))] as? String ?? ""
        //: cache.db_touid = String(dic["toUid"] as? Int ?? 0)
        cache.db_touid = String(dic[(String(app_socialUrl.suffix(5)))] as? Int ?? 0)
        //: cache.db_senduid = dic["senderId"] as? String ?? ""
        cache.db_senduid = dic[(String(mainManagerName.suffix(8)))] as? String ?? ""
        //: cache.db_filePath = dic["audioSandbox"] as? String ?? ""
        cache.db_filePath = dic[(String(showAreaId.prefix(7)) + appFromId.replacingOccurrences(of: "view", with: "d"))] as? String ?? ""
        //: cache.db_audioLength = dic["audioLength"] as? String ?? ""
        cache.db_audioLength = dic[(String(notiMyId.suffix(9)) + noti_kitStr.replacingOccurrences(of: "add", with: "h"))] as? String ?? ""
        //: if dic.keys.contains("audioData") {
        if dic.keys.contains((String(userNeedUrl))) {
            //: cache.db_voiceUri = dic["audioData"] as? String ?? ""
            cache.db_voiceUri = dic[(String(userNeedUrl))] as? String ?? ""
        }
        //: if cache.db_voiceUri.isEmpty {
        if cache.db_voiceUri.isEmpty {
            //: if dic.keys.contains("audioUri") {
            if dic.keys.contains((String(showModelTitle.prefix(7)) + String(userMakeMessage))) {
                //: cache.db_voiceUri = dic["audioUri"] as? String ?? ""
                cache.db_voiceUri = dic[(String(showModelTitle.prefix(7)) + String(userMakeMessage))] as? String ?? ""
            }
        }
        //: cache.db_isRead = dic["isRead"] as? String ?? ""
        cache.db_isRead = dic[(String(mainToText.prefix(6)))] as? String ?? ""
        //: cache.downloadStatus = "0"
        cache.downloadStatus = "0"
        //: db_updateVoiceMsg(cache)
        nearButton(cache)
        //: return cache
        return cache
    }

    /// 插入单条数据
    /// - Parameter voiceMsg: 数据模型
    //: class func db_insertVoiceMsg(_ voiceMsg: WCDBVoiceMsgTable) {
    class func tapWrite(_ voiceMsg: QueryQuantityoMsgTable) {
        //: WCDBVoiceMsgTable.db_insertVoiceMsgs([voiceMsg])
        QueryQuantityoMsgTable.incident([voiceMsg])
    }

    /// 插入多条数据
    /// - Parameter voiceMsgs: 数据数组
    //: class func db_insertVoiceMsgs(_ voiceMsgs: [WCDBVoiceMsgTable]) {
    class func incident(_ voiceMsgs: [QueryQuantityoMsgTable]) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? MakeManager.shared.database?.run(transaction: { _ in
            //: do {
            do {
                //: try WCDBManager.shared.database?.insert(voiceMsgs, intoTable: WCDBVoiceMsgTableName)
                try MakeManager.shared.database?.insert(voiceMsgs, intoTable: showLineTitle)
                //: } catch {
            } catch {
                //: UploadLogTool.writeLog(msg: "WCDB表\(WCDBVoiceMsgTableName): 批量插入数据失败。error：\(error).")
                GestureLogTool.playChangeImage(msg: (String(k_beginUrl.prefix(5))) + "\(showLineTitle)" + (data_remindCornerReturnPath.replacingOccurrences(of: "people", with: "入") + "\u{6570}据失败" + String(const_timeId.prefix(5)) + String(appNameId.prefix(2))) + "\(error).")
            }
            //: })
        })
    }

    /// 查询单个数据
    /// - Parameter msgId: 消息id
    /// - Returns: 模型
    //: public class func db_getVoiceMsg(with msgId: String) -> WCDBVoiceMsgTable? {
    public class func applicationClick(with msgId: String) -> QueryQuantityoMsgTable? {
        //: if let voiceMsgs = WCDBVoiceMsgTable.db_getVoiceMsgs(with: [msgId]) {
        if let voiceMsgs = QueryQuantityoMsgTable.outUpColor(with: [msgId]) {
            //: return voiceMsgs.first
            return voiceMsgs.first
        }
        //: return nil
        return nil
    }

    /// 查询多条数据
    /// - Parameter msgIds: id数据
    /// - Returns: 数据数组
    //: class func db_getVoiceMsgs(with msgIds: [String]) -> [WCDBVoiceMsgTable]? {
    class func outUpColor(with msgIds: [String]) -> [QueryQuantityoMsgTable]? {
        //: do {
        do {
            //: let condition = WCDBVoiceMsgTable.Properties.msgId.in(msgIds)
            let condition = QueryQuantityoMsgTable.Properties.msgId.in(msgIds)
            //: let voiceMsgs: [WCDBVoiceMsgTable]? = try WCDBManager.shared.database?.getObjects(on: WCDBVoiceMsgTable.Properties.all, fromTable: WCDBVoiceMsgTableName, where: condition)
            let voiceMsgs: [QueryQuantityoMsgTable]? = try MakeManager.shared.database?.getObjects(on: QueryQuantityoMsgTable.Properties.all, fromTable: showLineTitle, where: condition)
            //: return voiceMsgs
            return voiceMsgs
            //: } catch {
        } catch {
            //: return nil
            return nil
        }
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameter voiceMsg: 数据模型
    //: class func db_updateVoiceMsg(_ voiceMsg: WCDBVoiceMsgTable) {
    class func nearButton(_ voiceMsg: QueryQuantityoMsgTable) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? MakeManager.shared.database?.run(transaction: { _ in
            // 数据库中已存在，则更新数据
            //: if WCDBVoiceMsgTable.db_getVoiceMsg(with: voiceMsg.msgId) != nil {
            if QueryQuantityoMsgTable.applicationClick(with: voiceMsg.msgId) != nil {
                //: do {
                do {
                    //: let condition = WCDBVoiceMsgTable.Properties.msgId == voiceMsg.msgId
                    let condition = QueryQuantityoMsgTable.Properties.msgId == voiceMsg.msgId
                    //: try WCDBManager.shared.database?.update(table: WCDBVoiceMsgTableName,
                    try MakeManager.shared.database?.update(table: showLineTitle,
                                                            //: on: WCDBVoiceMsgTable.Properties.all,
                                                            on: QueryQuantityoMsgTable.Properties.all,
                                                            //: with: voiceMsg,
                                                            with: voiceMsg,
                                                            //: where: condition)
                                                            where: condition)
                    //: } catch {
                } catch {
                    //: UploadLogTool.writeLog(msg: "WCDB表\(WCDBVoiceMsgTableName): 更新数据失败。error：\(error).")
                    GestureLogTool.playChangeImage(msg: (String(k_beginUrl.prefix(5))) + "\(showLineTitle)" + (String(k_equalMsg) + String(kIndexText)) + "\(error).")
                }

                //: } else {
            } else {
                // 数据库中不存在，则插入数据
                //: WCDBVoiceMsgTable.db_insertVoiceMsg(voiceMsg)
                QueryQuantityoMsgTable.tapWrite(voiceMsg)
            }
            //: })
        })
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameters:
    ///   - msgId: 消息Id
    ///   - status: 状态
    ///   - filePath: 路径
    //: class func db_updateVoiceMsg(msgId: String, status: String = "", filePath: String = "") {
    class func mete(msgId: String, status: String = "", filePath: String = "") {
        //: guard let dbModel = WCDBVoiceMsgTable.db_getVoiceMsg(with: msgId) else { return }
        guard let dbModel = QueryQuantityoMsgTable.applicationClick(with: msgId) else { return }
        //: if status.isEmpty == false {
        if status.isEmpty == false {
            //: dbModel.downloadStatus = status
            dbModel.downloadStatus = status
        }
        //: if filePath.isEmpty == false {
        if filePath.isEmpty == false {
            //: dbModel.db_filePath = filePath
            dbModel.db_filePath = filePath
        }
        //: WCDBVoiceMsgTable.db_updateVoiceMsg(dbModel)
        QueryQuantityoMsgTable.nearButton(dbModel)
    }

    /// 根据消息Id删除数据
    /// - Parameter msgId: 消息Id
    //: class func db_deleteVoiceMsg(msgId: String) {
    class func illegitimacy(msgId: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? MakeManager.shared.database?.run(transaction: { _ in
            //: let condition = WCDBVoiceMsgTable.Properties.msgId == msgId
            let condition = QueryQuantityoMsgTable.Properties.msgId == msgId
            //: try? WCDBManager.shared.database?.delete(fromTable: WCDBVoiceMsgTableName,
            try? MakeManager.shared.database?.delete(fromTable: showLineTitle,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }

    /// 根据userId、toUid删除数据
    /// - Parameters:
    ///   - userId: 用户id
    ///   - toUid: 对方id
    //: class func db_deleteVoiceMsg(_ userId: String, toUid: String) {
    class func replyBlock(_ userId: String, toUid: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? MakeManager.shared.database?.run(transaction: { _ in
            //: let condition = WCDBVoiceMsgTable.Properties.db_senduid == userId && WCDBVoiceMsgTable.Properties.db_touid == toUid
            let condition = QueryQuantityoMsgTable.Properties.db_senduid == userId && QueryQuantityoMsgTable.Properties.db_touid == toUid
            //: try? WCDBManager.shared.database?.delete(fromTable: WCDBVoiceMsgTableName,
            try? MakeManager.shared.database?.delete(fromTable: showLineTitle,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }
}
