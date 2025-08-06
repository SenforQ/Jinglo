
//: Declare String Begin

/*: "allowList" :*/
fileprivate let const_rowMsg:String = "allowLiwith user tag"
fileprivate let notiCustomContent:[Character] = ["s","t"]

/*: "denyList" :*/
fileprivate let app_shadowUrl:String = "label load trackdenyList"

/*: "America" :*/
fileprivate let noti_pushShareUrl:String = "var burn manager white letAmeric"
fileprivate let dataAddModeFormat:[Character] = ["a"]

/*: "US" :*/
fileprivate let const_backgroundValue:[Character] = ["U","S"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DirectionThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingLocationTool: NSObject {
class DirectionThen: NSObject {
    //: var areaArr = [TalkingAreaModel]()
    var areaArr = [RecordTopMeasurable]() /// 注册允许国家列表（白名单）
    //: var blackListAreaArr = [TalkingAreaModel]()
    var blackListAreaArr = [RecordTopMeasurable]() /// 注册不允许国家列表（黑名单）

    //: static let share = TalkingLocationTool()
    static let share = DirectionThen()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: func__loadAreaCodeData()
        assemblageCard()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: extension TalkingLocationTool {
extension DirectionThen {
    //: private func func__loadAreaCodeData() {
    private func assemblageCard() {
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: TalkingLoginRequestTool.req_countryList {succeed, result, errorModel in
        ComponentRequestTool.angle { succeed, result, _ in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: if succeed {
            if succeed {
                //: let dict: Dictionary =  result as! Dictionary<String, Any>
                let dict: Dictionary = result as! [String: Any]
                //: let allowArray: Array =  dict["allowList"] as! Array<Any>
                let allowArray: Array = dict[(String(const_rowMsg.prefix(7)) + String(notiCustomContent))] as! [Any]
                //: let denyListArray: Array =  dict["denyList"] as! Array<Any>
                let denyListArray: Array = dict[(String(app_shadowUrl.suffix(8)))] as! [Any]

                //: if let datas = Array<TalkingAreaModel>.deserialize(from: allowArray as? Array) {
                if let datas = Array<RecordTopMeasurable>.deserialize(from: allowArray as? Array) {
                    //: self.areaArr.append(contentsOf: (datas as? [TalkingAreaModel])!)
                    self.areaArr.append(contentsOf: (datas as? [RecordTopMeasurable])!)
                }
                //: if let blackdatas = Array<TalkingAreaModel>.deserialize(from: denyListArray as? Array) {
                if let blackdatas = Array<RecordTopMeasurable>.deserialize(from: denyListArray as? Array) {
                    //: self.blackListAreaArr.append(contentsOf: (blackdatas as? [TalkingAreaModel])!)
                    self.blackListAreaArr.append(contentsOf: (blackdatas as? [RecordTopMeasurable])!)
                }
            }
        }
    }

    /// （注册风控使用）是否包含当前国家，包含则禁止注册
    /// - Returns: false: 不包含，true: 包含
    //: static func isIncludeBlackListCountry() -> Bool {
    static func deadlineGesture() -> Bool {
        //: var include = false
        var include = false
        //: let simInfo = UIDevice.getDeviceSimInfo()
        let simInfo = UIDevice.infoLine()
        //: let arr = TalkingLocationTool.share.blackListAreaArr
        let arr = DirectionThen.share.blackListAreaArr
        //: for model in arr {
        for model in arr {
            //: if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
            if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
                //: include = true
                include = true
                //: break
                break
            }
        }

        //: return include
        return include
    }

    /// （注册流程选择）选择国家编号使用，白名单
    //: func getDefaltCountry() -> TalkingAreaModel {
    func analogDigitalConverterTotalry() -> RecordTopMeasurable {
        //: let simInfo = UIDevice.getDeviceSimInfo()
        let simInfo = UIDevice.infoLine()
        //: let arr = TalkingLocationTool.share.areaArr
        let arr = DirectionThen.share.areaArr
        //: for model in arr {
        for model in arr {
            //: if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
            if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
                //: return model
                return model
            }
        }
        //: return TalkingAreaModel.init(areaCode: "1", areaName: "America", countryCode: "US", url: "")
        return RecordTopMeasurable(areaCode: "1", areaName: (String(noti_pushShareUrl.suffix(6)) + String(dataAddModeFormat)), countryCode: "US", url: "")
    }
}

//: class TalkingAreaModel: HandyJSON {
class RecordTopMeasurable: HandyJSON {
    //: var areaCode = ""
    var areaCode = ""
    //: var countryCode = ""
    var countryCode = ""
    //: @objc var areaName = ""
    @objc var areaName = ""
    //: var url = ""
    var url = ""
    //: required init() {}
    required init() {}
    //: init(areaCode: String, areaName: String, countryCode: String, url:String) {
    init(areaCode: String, areaName: String, countryCode: String, url: String) {
        //: self.areaCode = areaCode
        self.areaCode = areaCode
        //: self.areaName = areaName
        self.areaName = areaName
        //: self.countryCode = countryCode
        self.countryCode = countryCode
        //: self.url = url
        self.url = url
    }
}
