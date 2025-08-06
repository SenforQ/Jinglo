
//: Declare String Begin

/*: "className" :*/
fileprivate let data_sizeOfTimeMsg:[Character] = ["c"]
fileprivate let app_errorContainerValue:String = "lassNameremove select bag height background"

/*: "nativeClassName" :*/
fileprivate let show_withKey:String = "manager beautynativeC"
fileprivate let notiPopTitle:String = "lassNamereturn index succeed type"

/*: "effectType" :*/
fileprivate let main_managerCreateMessage:String = "EFFEC"
fileprivate let main_saveToMsg:[Character] = ["t","T","y","p","e"]

/*: "gifFile" :*/
fileprivate let notiQuantityFormat:String = "model whitegifFile"

/*: "versions" :*/
fileprivate let constResponseFormat:String = "containerrsions"

/*: "config" :*/
fileprivate let user_quoteStr:[Character] = ["c","o","n","f","i","g"]

/*: "mainFile" :*/
fileprivate let appRequestName:[Character] = ["m","a","i","n","F","i"]
fileprivate let notiPageKey:[Character] = ["l","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlockAnimatModel.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/9.
//

//: import UIKit
import UIKit

//: enum TalkingGiftAnimatType: String {
enum SupernumeraryOutputStreamable: String {
    //: case Gif  = "gif"
    case Gif = "gif"
    //: case Chat = "chatGift"
    case Chat = "chatGift"
}

//: enum GiftAnimatUpdateError: Int {
enum InheritanceKeyRepresentable: Int {
    //: case UnzipFailed  = -1001
    case UnzipFailed = -1001 // 资源 解压失败
    //: case VerifyFailed = -1002
    case VerifyFailed = -1002 // 资源 校验失败
    //: case DownLoadFailed = -1003
    case DownLoadFailed = -1003 // 资源 下载失败
}

//: enum TalkingAnimatType: Int {
enum RecordMultiplierTarget: Int {
    //: case Unknown  = 0
    case Unknown = 0
    //: case Gift = 1
    case Gift = 1 // 礼物动效
}

/// 动效资源的信息封装，对应一个zip资源的config.json

//: struct TalkingGiftAnimatModel: HandyJSON {
struct BlockAnimatModel: HandyJSON {
    //: init() {
    init() {}

    //: var className = ""
    var className = ""
    //: var nativeClassName = ""
    var nativeClassName = ""
    //: var effectType = TalkingGiftAnimatType.Gif
    var effectType = SupernumeraryOutputStreamable.Gif /// 加载动效指定的类型
    //: var mainFile = ""
    var mainFile = ""
    //: var effectConfig = Dictionary<String, Any>()
    var effectConfig = [String: Any]()
}

//: extension TalkingGiftAnimatModel {
extension BlockAnimatModel {
    //: func setAnimatModek(dic: NSDictionary) -> TalkingGiftAnimatModel {
    func modekInstance(dic: NSDictionary) -> BlockAnimatModel {
        //: var model =  TalkingGiftAnimatModel.init()
        var model = BlockAnimatModel()
        //: model.className = dic["className"] as? String ?? ""
        model.className = dic[(String(data_sizeOfTimeMsg) + String(app_errorContainerValue.prefix(8)))] as? String ?? ""
        //: model.nativeClassName = dic["nativeClassName"] as? String ?? ""
        model.nativeClassName = dic[(String(show_withKey.suffix(7)) + String(notiPopTitle.prefix(8)))] as? String ?? ""
        //: model.effectType = dic["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
        model.effectType = dic[(main_managerCreateMessage.lowercased() + String(main_saveToMsg))] as? SupernumeraryOutputStreamable ?? SupernumeraryOutputStreamable.Gif

        //: if model.effectType == .Gif {
        if model.effectType == .Gif {
            //: model.mainFile = dic["gifFile"] as? String ?? ""
            model.mainFile = dic[(String(notiQuantityFormat.suffix(7)))] as? String ?? ""
            //: } else {
        } else {
            //: model.mainFile = dic[TalkingGiftAnimatType.Chat.rawValue] as? String ?? ""
            model.mainFile = dic[SupernumeraryOutputStreamable.Chat.rawValue] as? String ?? ""
        }
        //: let versions: Array = dic["versions"] as! Array<Dictionary<String, Any>>
        let versions: Array = dic[(constResponseFormat.replacingOccurrences(of: "container", with: "ve"))] as! [[String: Any]]
        //: if versions.count <= 0 {
        if versions.count <= 0 {
            //: return model
            return model
        }
        //: let match = true
        let match = true
        /*!
         * 遍历versions数组，匹配应用版本，匹配到则使用config数据
         */
        //: for item in versions {
        for item in versions {
            //: model.effectConfig = item["config"] as! [String: Any]
            model.effectConfig = item[(String(user_quoteStr))] as! [String: Any]
        }
        //: if (match) {
        if match {
            //: model.className       = model.effectConfig["className"] as? String ?? ""
            model.className = model.effectConfig[(String(data_sizeOfTimeMsg) + String(app_errorContainerValue.prefix(8)))] as? String ?? ""
            //: model.nativeClassName = model.effectConfig["nativeClassName"] as? String ?? ""
            model.nativeClassName = model.effectConfig[(String(show_withKey.suffix(7)) + String(notiPopTitle.prefix(8)))] as? String ?? ""
            //: model.effectType      = model.effectConfig["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
            model.effectType = model.effectConfig[(main_managerCreateMessage.lowercased() + String(main_saveToMsg))] as? SupernumeraryOutputStreamable ?? SupernumeraryOutputStreamable.Gif
            //: model.mainFile        = model.effectConfig["mainFile"] as? String ?? ""
            model.mainFile = model.effectConfig[(String(appRequestName) + String(notiPageKey))] as? String ?? ""
        }
        //: return model
        return model
    }
}
