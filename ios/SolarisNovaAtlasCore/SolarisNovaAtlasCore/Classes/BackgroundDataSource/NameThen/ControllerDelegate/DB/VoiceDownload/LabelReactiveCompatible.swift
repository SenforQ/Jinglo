
//: Declare String Begin

/*: "http://" :*/
fileprivate let notiShareId:[Character] = ["h","t"]
fileprivate let app_gestureContent:[Character] = ["t","p",":","/","/"]

/*: "https://" :*/
fileprivate let user_infoName:String = "https:/gift scale label"
fileprivate let showCaptureData:[Character] = ["/"]

/*: "platform=iphone&version=%@&packageId=%@&bundleId=%@" :*/
fileprivate let kOnMsg:[UInt8] = [0xfc,0xe0,0xed,0xf8,0xea,0xe3,0xfe,0xe1,0xb1,0xe5,0xfc,0xe4,0xe3,0xe2,0xe9,0xaa,0xfa,0xe9,0xfe,0xff,0xe5,0xe3,0xe2,0xb1,0xa9,0xcc,0xaa,0xfc,0xed,0xef,0xe7,0xed,0xeb,0xe9,0xc5,0xe8,0xb1,0xa9,0xcc,0xaa,0xee,0xf9,0xe2,0xe8,0xe0,0xe9,0xc5,0xe8,0xb1,0xa9,0xcc]

private func nowadaysTemp(text num: UInt8) -> UInt8 {
    return num ^ 140
}

/*: "%@%@&%@" :*/
fileprivate let app_leadingContent:String = "%white%white&%white"

/*: "url" :*/
fileprivate let noti_backgroundContent:[Character] = ["u","r","l"]

/*: "id" :*/
fileprivate let const_contentFormat:String = "ishare"

/*: "length" :*/
fileprivate let appReplaceImageText:String = "lcustomngth"

/*: "getFileSize error : :*/
fileprivate let const_withName:String = "true count togetFi"
fileprivate let user_deadlinePath:String = "e erself wrap stop remove"
fileprivate let dataGiftKey:[Character] = ["r","o","r"," ",":"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelReactiveCompatible.swift
//  SolarisNovaAtlasCore
//
//  Created by DouXiu on 2024/8/26.
//

//: import UIKit
import UIKit

//: enum DownloadTaskStatus: Int {
enum LogValueConvertible: Int {
    //: case none = 0
    case none = 0 // 未定义
    //: case prepare = 1
    case prepare = 1 // 准备
    //: case running = 10
    case running = 10 // 下载中
    //: case pause = 20
    case pause = 20 // 暂停
    //: case cancel = 30
    case cancel = 30 // 取消
    //: case expired = 40
    case expired = 40 // 过期
    //: case finish = 100
    case finish = 100 // 完成
    //: case error = 1000
    case error = 1000 // 错误
}

//: enum DownloadTaskTypeID: Int {
enum LayerParentMultiplierTarget: Int {
    //: case undefined = 0
    case undefined = 0 // 未定义
    //: case chatRecord = 1
    case chatRecord = 1 // 语音聊天
    //: case oneKeyGreet = 2
    case oneKeyGreet = 2 // 一键发送打招呼语音
}

//: class VoiceDownloadTaskModel: NSObject {
class LabelReactiveCompatible: NSObject {
    //: var taskId: String = ""
    var taskId: String = ""
    /// 下载地址
    //: var downloadUri: String = ""
    var downloadUri: String = ""
    /// 输出路径zip包
    //: var zipFilePath: String = ""
    var zipFilePath: String = ""
    /// 已下载大小
    //: var currentSize: Double = 0.0
    var currentSize: Double = 0.0
    /// 总大小
    //: var totalSize: Double = 0.0
    var totalSize: Double = 0.0
    /// 下载状态
    //: var taskStatus: DownloadTaskStatus = .none
    var taskStatus: LogValueConvertible = .none
    /// 解压后路径
    //: var unZipFilePath: String = ""
    var unZipFilePath: String = ""
    /// 下载区分标识回调
    //: var taskTypeId: DownloadTaskTypeID = .undefined
    var taskTypeId: LayerParentMultiplierTarget = .undefined
    /// 语音id
    //: var vid: String = ""
    var vid: String = ""
    /// 时长
    //: var length = 0
    var length = 0
    /// 输出流
    //: var stream: OutputStream?
    var stream: OutputStream?
    /// session
    //: var dataTask: URLSessionDataTask?
    var dataTask: URLSessionDataTask?

    /// 获取语音下载model
    //: class func getVoiceModel(_ tempModel: WCDBVoiceMsgTable) -> VoiceDownloadTaskModel {
    class func failureModel(_ tempModel: QueryQuantityoMsgTable) -> LabelReactiveCompatible {
        //: let model = VoiceDownloadTaskModel()
        let model = LabelReactiveCompatible()
        //: model.taskTypeId = .chatRecord
        model.taskTypeId = .chatRecord
        //: model.taskId = tempModel.msgId
        model.taskId = tempModel.msgId
        //: model.zipFilePath = tempModel.db_filePath
        model.zipFilePath = tempModel.db_filePath
        //: if tempModel.db_voiceUri.contains("http://") || tempModel.db_voiceUri.contains("https://") {
        if tempModel.db_voiceUri.contains((String(notiShareId) + String(app_gestureContent))) || tempModel.db_voiceUri.contains((String(user_infoName.prefix(7)) + String(showCaptureData))) {
            //: model.downloadUri = tempModel.db_voiceUri
            model.downloadUri = tempModel.db_voiceUri
            //: } else {
        } else {
            //: let otherParams = String(format: "platform=iphone&version=%@&packageId=%@&bundleId=%@", PublisherReactiveCompatible.getAppNetVersion(), PublisherReactiveCompatible.getPackageID(), PublisherReactiveCompatible.getAppBundle())
            let otherParams = String(format: String(bytes: kOnMsg.map{nowadaysTemp(text: $0)}, encoding: .utf8)!, PublisherReactiveCompatible.capabilityEvent(), PublisherReactiveCompatible.appearArea(), PublisherReactiveCompatible.signalBundle())
            //: model.downloadUri = String(format: "%@%@&%@", TalkingRequestAddrTool.share.serverUrlStr, tempModel.db_voiceUri, otherParams)
            model.downloadUri = String(format: "%@%@&%@", LayerAddrTool.share.serverUrlStr, tempModel.db_voiceUri, otherParams)

            //: model.currentSize = VoiceDownloadTaskModel.getFileSize(path: tempModel.db_filePath)
            model.currentSize = LabelReactiveCompatible.tagPush(path: tempModel.db_filePath)
        }
        //: return model
        return model
    }

    /// 获取一键打招呼model
    //: class func getOneKeyGreetModel(_ voiceInfo: [String: Any]) -> VoiceDownloadTaskModel {
    class func moment(_ voiceInfo: [String: Any]) -> LabelReactiveCompatible {
        //: let model = VoiceDownloadTaskModel()
        let model = LabelReactiveCompatible()
        //: model.taskTypeId = .oneKeyGreet
        model.taskTypeId = .oneKeyGreet
        //: model.downloadUri = voiceInfo["url"] as? String ?? ""
        model.downloadUri = voiceInfo[(String(noti_backgroundContent))] as? String ?? ""
        //: model.vid = voiceInfo["id"] as? String ?? ""
        model.vid = voiceInfo["id"] as? String ?? ""
        //: model.length = Int(voiceInfo["length"] as? String ?? "0") ?? 0
        model.length = Int(voiceInfo[(appReplaceImageText.replacingOccurrences(of: "custom", with: "e"))] as? String ?? "0") ?? 0
        //: let fileName = (model.downloadUri as NSString).lastPathComponent
        let fileName = (model.downloadUri as NSString).lastPathComponent
        //: let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: model.zipFilePath = "\(AppCacheDefine.getChatVoicePath())\(pathName)\(timeInterval)"
        model.zipFilePath = "\(LogLayerReactiveCompatible.takeItemStraightAndNarrow())\(pathName)\(timeInterval)"
        //: return model
        return model
    }
}

//: extension VoiceDownloadTaskModel {
extension LabelReactiveCompatible {
    /// 获取文件大小
    /// - Parameter path: 文件完整路径
    /// - Returns: 文件size
    //: class func getFileSize(path: String) -> Double {
    class func tagPush(path: String) -> Double {
        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: guard fileManager.fileExists(atPath: path) else {
        guard fileManager.fileExists(atPath: path) else {
            //: return 0.0
            return 0.0
        }
        //: do {
        do {
            //: let attr = try fileManager.attributesOfItem(atPath: path)
            let attr = try fileManager.attributesOfItem(atPath: path)
            //: let fileSize = attr[FileAttributeKey.size] as! UInt64
            let fileSize = attr[FileAttributeKey.size] as! UInt64
            //: return Double(fileSize)
            return Double(fileSize)
            //: } catch {
        } catch {
            //: printLog(message: "getFileSize error :\(error)")
            printLog(message: (String(const_withName.suffix(5)) + "leSiz" + String(user_deadlinePath.prefix(4)) + String(dataGiftKey)) + "\(error)")
            //: return 0.0
            return 0.0
        }
    }

    /// 获取文件本地存储路径
    /// - Returns: 路径
    //: func getDownloadZipFilePath() -> String {
    func toOnBlock() -> String {
        //: guard self.zipFilePath.isEmpty else {
        guard self.zipFilePath.isEmpty else {
            //: return self.zipFilePath
            return self.zipFilePath
        }
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: return "\(AppCacheDefine.getChatVoicePath())\(self.taskId)\(timeInterval)"
        return "\(LogLayerReactiveCompatible.takeItemStraightAndNarrow())\(self.taskId)\(timeInterval)"
    }
}
