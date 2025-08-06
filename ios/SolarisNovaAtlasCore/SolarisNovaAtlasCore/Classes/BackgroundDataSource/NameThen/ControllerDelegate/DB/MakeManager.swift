
//: Declare String Begin

/*: ".db" :*/
fileprivate let userTitleMessage:[Character] = [".","d","b"]

/*: "WCDB数据库打开失败：userId为空。" :*/
fileprivate let showNextKey:String = "WCDB数据visible right make var"
fileprivate let mainCenterMakeFormat:String = "败\u{ff1a}user"
fileprivate let notiPopManagerData:[Character] = ["I","d","为","空","。"]

/*: "WCDB/ :*/
fileprivate let showFrameId:[Character] = ["W","C","D","B","/"]

/*: "WCDB数据库打开失败： :*/
fileprivate let user_toDrawMessage:String = "WCDprepare"
fileprivate let notiAppEqualReloadData:String = "数\u{636e}库打开\u{5931}\u{8d25}："

/*: "WCDB数据库成功打开： :*/
fileprivate let app_imageTitle:[Character] = ["W","C","D","B","数","据","\u{5e93}","成","功","打","\u{5f00}","："]

/*: "WCDB数据库成功关闭。" :*/
fileprivate let dataViewNearbyMsg:String = "WvalueDB"
fileprivate let notiEventMediaHiddenPath:[Character] = ["功","\u{5173}","\u{95ed}","\u{3002}"]

/*: "WCDB数据库：创建表失败。error： :*/
fileprivate let notiRequestPath:[Character] = ["W","C","D","B","\u{6570}","\u{636e}","库","：","\u{521b}","建","表","失","败","。","e"]
fileprivate let const_titleViewValue:String = "rror\u{ff1a}"

/*: ." :*/
fileprivate let notiContextUrl:String = "lab"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeManager.swift
//  SolarisNovaAtlasCore
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

//: class WCDBManager: NSObject {
class MakeManager: NSObject {
    //: static let shared = WCDBManager()
    static let shared = MakeManager()
    /// 数据库
    //: var database: Database?
    var database: Database?
    /// 数据库名称
    //: private var wcdbName: String {
    private var wcdbName: String {
        //: return PunctuateThen.share.loginUserMode.userID + ".db"
        return PunctuateThen.share.loginUserMode.userID + ".db"
    }

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.connectDatabase()
        self.putThroughView()
    }

    /// 连接数据库
    //: func connectDatabase() {
    func putThroughView() {
        //: closeDatabase()
        notice()

        //: guard !PunctuateThen.share.loginUserMode.userID.isEmpty else {
        guard !PunctuateThen.share.loginUserMode.userID.isEmpty else {
            //: UploadLogTool.writeLog(msg: "WCDB数据库打开失败：userId为空。")
            GestureLogTool.playChangeImage(msg: (String(showNextKey.prefix(6)) + "库\u{6253}开失" + mainCenterMakeFormat + String(notiPopManagerData)))
            //: return
            return
        }
        //: guard let fileURL = try? FileManager.default
        guard let fileURL = try? FileManager.default
            //: .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            //: .appendingPathComponent("WCDB/\(wcdbName)") else { return }
            .appendingPathComponent((String(showFrameId)) + "\(wcdbName)") else { return }
        //: database = Database(at: fileURL)
        database = Database(at: fileURL)
        //: guard database?.canOpen == true else {
        guard database?.canOpen == true else {
            //: UploadLogTool.writeLog(msg: "WCDB数据库打开失败：\(fileURL.path)")
            GestureLogTool.playChangeImage(msg: (user_toDrawMessage.replacingOccurrences(of: "prepare", with: "B") + notiAppEqualReloadData) + "\(fileURL.path)")
            //: return
            return
        }
        //: printLog(message: "WCDB数据库成功打开：\(fileURL.path)")
        printLog(message: (String(app_imageTitle)) + "\(fileURL.path)")
        //: createTables()
        statusTables()
    }

    /// 关闭数据库
    //: private func closeDatabase() {
    private func notice() {
        //: guard database != nil else { return }
        guard database != nil else { return }
        //: database?.close()
        database?.close()
        //: try? database?.close(onClosed: { [weak self] in
        try? database?.close(onClosed: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.database = nil
            self.database = nil
            //: printLog(message: "WCDB数据库成功关闭。")
            printLog(message: (dataViewNearbyMsg.replacingOccurrences(of: "value", with: "C") + "\u{6570}据库成" + String(notiEventMediaHiddenPath)))
            //: })
        })
    }
}

// MARK: - 创建表

//: extension WCDBManager {
extension MakeManager {
    /// 创建表
    //: private func createTables() {
    private func statusTables() {
        //: do {
        do {
            // 用户信息表
            //: try database?.create(table: WCDBUserInfoTableName, of: WCDBUserInfoTable.self)
            try database?.create(table: appButtonData, of: GestureInfoTable.self)
            // 语音消息表
            //: try database?.create(table: WCDBVoiceMsgTableName, of: WCDBVoiceMsgTable.self)
            try database?.create(table: showLineTitle, of: QueryQuantityoMsgTable.self)
            //: } catch {
        } catch {
            //: UploadLogTool.writeLog(msg: "WCDB数据库：创建表失败。error：\(error).")
            GestureLogTool.playChangeImage(msg: (String(notiRequestPath) + const_titleViewValue) + "\(error).")
        }
    }
}
