
//: Declare String Begin

/*: "toUserInfo" :*/
fileprivate let notiUserValue:[Character] = ["t","o","U","s","e","r","I","n","f","o"]

/*: "toUid" :*/
fileprivate let userNameId:String = "lab let view block gesturetoUid"

/*: "nickname" :*/
fileprivate let noti_pointData:String = "niappearkna"
fileprivate let user_statusMessage:[Character] = ["m","e"]

/*: "headPic" :*/
fileprivate let constMomentPopFormat:[Character] = ["h","e","a","d","P","i","c"]

/*: "sex" :*/
fileprivate let dataAppModelKey:String = "sobject"

/*: "age" :*/
fileprivate let main_kindQuoteVideoFormat:String = "alabe"

/*: "tpAuth" :*/
fileprivate let main_bottomLargePath:String = "tpAuthreading title greet self value"

/*: "interest" :*/
fileprivate let data_netMessage:String = "INTERE"
fileprivate let k_ofFormat:[Character] = ["s","t"]

/*: "picture" :*/
fileprivate let const_greetData:[Character] = ["p","i"]
fileprivate let dataNameTouchCustomKey:String = "cblockre"

/*: "loungePlus" :*/
fileprivate let app_saveKey:String = "loungePluuser not age to"
fileprivate let constTitleMessage:[Character] = ["s"]

/*: "vipSkinId" :*/
fileprivate let show_withPath:String = "lab make height count labvipS"
fileprivate let mainCenterLargeMessage:String = "kinIdstatus view manager add"

/*: "voicePrice" :*/
fileprivate let main_picMatchId:[Character] = ["v"]
fileprivate let kEngineScreenText:[Character] = ["o","i","c","e","P","r","i","c","e"]

/*: "videoPrice" :*/
fileprivate let dataMaxOfId:String = "vmanagere"
fileprivate let data_titleCurrentClickValue:String = "model"

/*: "voiceVIPPrice" :*/
fileprivate let main_barId:String = "voiceVleading to"
fileprivate let appThroughValue:String = "E"

/*: "videoVIPPrice" :*/
fileprivate let constLocationStr:String = "videoVlet true deadline var"
fileprivate let show_makeLabelKey:[Character] = ["I","P","P","r","i","c","e"]

/*: "version" :*/
fileprivate let user_nowValue:[Character] = ["v","e","r","s","i","o","n"]

/*: "headPicFrame" :*/
fileprivate let k_willBlockForUrl:String = "headPichange sex"

/*: "signature" :*/
fileprivate let data_hiddenMsg:[Character] = ["s","i","g","n","a"]
fileprivate let constBorderData:String = "pathre"

/*: "constellation" :*/
fileprivate let noti_skinName:String = "consapp"
fileprivate let notiMinLargeKey:[Character] = ["l","l","a","t","i","o","n"]

/*: "onlineStatus" :*/
fileprivate let app_dataId:String = "omorein"
fileprivate let main_makeUrl:String = "view"

/*: "isNewUser" :*/
fileprivate let app_badValue:[Character] = ["i","s","N","e","w","U","s"]
fileprivate let data_nameUrl:String = "empty"

/*: "isOfficial" :*/
fileprivate let app_valuePath:String = "ito"
fileprivate let dataKitKey:String = "hidden view type equalOfficial"

/*: "userStatus" :*/
fileprivate let show_labMakeFrameStr:[Character] = ["u","s","e","r","S"]
fileprivate let appHalfContent:String = "tatudate"

/*: "remarkInfo" :*/
fileprivate let user_canUrl:String = "if user event toremarkIn"
fileprivate let noti_logValue:[Character] = ["f","o"]

/*: "content" :*/
fileprivate let notiAssetMsg:String = "contloadt"

/*: "top" :*/
fileprivate let mainInputItemFormat:String = "tostyle"

/*: "enableVideoCall" :*/
fileprivate let showYourId:String = "enservicel"
fileprivate let k_sessionTitle:String = "eVideoto section phase remark view"

/*: "voiceBean" :*/
fileprivate let app_arrayId:String = "VOIC"

/*: "videoBean" :*/
fileprivate let show_detailMsg:[Character] = ["v","i","d","e","o","B","e","a","n"]

/*: "prompt" :*/
fileprivate let k_equalName:String = "PROMPT"

/*: "matchRate" :*/
fileprivate let main_rangeAddKey:[Character] = ["m","a","t","c","h","R","a","t"]
fileprivate let userShowManagerMsg:String = "text"

/*: "existSess" :*/
fileprivate let const_downStr:[Character] = ["e","x","i","s","t","S","e","s"]
fileprivate let constTargetValue:[Character] = ["s"]

/*: "totalIntimate" :*/
fileprivate let mainCellName:String = "totaon"
fileprivate let const_makeData:String = "Intimatecustom false make"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RequestHandyJSON.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/16.
//

//: import UIKit
import UIKit

//: @objcMembers
@objcMembers
//: public class RequestHandyJSON: NSObject, HandyJSON {
public class RequestHandyJSON: NSObject, HandyJSON {
    //: public var uid: String = ""
    public var uid: String = ""
    //: public var nickname: String = ""
    public var nickname: String = ""
    //: public var age: String = "0"
    public var age: String = "0"
    //: public var headPic: String = ""
    public var headPic: String = ""
    //: public var sex: String = "0"                   // 1 男性 2 女性
    public var sex: String = "0" // 1 男性 2 女性
    //: public var version: String = "0"               // 当前用户版本
    public var version: String = "0" // 当前用户版本

    //: var interest: Array<String> = []
    var interest: [String] = []
    //: var picture: Array<String> = []
    var picture: [String] = []
    //: public var tpAuth: Bool = false
    public var tpAuth: Bool = false // 是否认证
    //: var enableVideoCall = false
    var enableVideoCall = false // 是否展示视频通话按钮，默认否
    //: public var loungePlus: Bool = false
    public var loungePlus: Bool = false // 是否订阅
    //: var vipSkinId = 0
    var vipSkinId = 0 // vip皮肤id
    //: var voicePrice: String = ""             // 语音通话价格
    var voicePrice: String = "" // 语音通话价格
    //: var videoPrice: String = ""             // 视频通话价格
    var videoPrice: String = "" // 视频通话价格
    //: var videoVIPPrice: String = ""          // 视频通话VIP价格
    var videoVIPPrice: String = "" // 视频通话VIP价格
    //: var voiceVIPPrice: String = ""          // 语音通话VIP价格
    var voiceVIPPrice: String = "" // 语音通话VIP价格
    //: var videoBean: String = ""              // 视频通话获取积分（限女性）
    var videoBean: String = "" // 视频通话获取积分（限女性）
    //: var voiceBean: String = ""              // 语音通话获取积分（限女性）
    var voiceBean: String = "" // 语音通话获取积分（限女性）
    //: var prompt: String = ""                 // VIP折扣提醒（限女性）
    var prompt: String = "" // VIP折扣提醒（限女性）
    //: public var headPicFrame: String = ""    // 头像框
    public var headPicFrame: String = "" // 头像框
    //: var matchRate = 0
    var matchRate = 0 // 匹配度
    //: var signature: String = ""              // 签名
    var signature: String = "" // 签名
    //: var constellation: String = ""          // 星座
    var constellation: String = "" // 星座
    //: var existSess: Bool = false
    var existSess: Bool = false // false表示未建立会话
    //: var onlineStatus = 0
    var onlineStatus = 0 // 用户在线状态 1=在线 0=不在线
    //: var isNewUser = false
    var isNewUser = false // 是否新用户
    //: var isHaveSession = false
    var isHaveSession = false // 是否建立会话
    //: public var isOfficial = false
    public var isOfficial = false // 是否官方账号
    //: var intimate = 0
    var intimate = 0 // 亲密度
    //: var intimateTime = 0
    var intimateTime = 0 // 亲密度保存时间
    //: var readReceiptTime = 0
    var readReceiptTime = 0 // 对方已读消息回执时间戳
    //: var userStatus = 1
    var userStatus = 1 // 用户状态 1正常2被禁言3被封号5被拉黑
    //: var content = ""                        // 置顶内容
    var content = "" // 置顶内容
    //: var top = 2
    var top = 2 // 是否置顶 1：置顶，2：否

    //: public required override init() {}
    override public required init() {}

    //: public class func func__transformedChatinfo(userDic: Dictionary<String, Any>) -> RequestHandyJSON {
    public class func ofDic(userDic: [String: Any]) -> RequestHandyJSON {
        //: let wrap = RequestHandyJSON.init()
        let wrap = RequestHandyJSON()

        //: if userDic.keys.contains("toUserInfo") {
        if userDic.keys.contains((String(notiUserValue))) {
            //: let userInfoDic = userDic["toUserInfo"] as! Dictionary<String, Any>
            let userInfoDic = userDic[(String(notiUserValue))] as! [String: Any]
            //: if userInfoDic.keys.contains("toUid") {
            if userInfoDic.keys.contains((String(userNameId.suffix(5)))) {
                //: wrap.uid = "\(userInfoDic["toUid"] as! NSNumber)"
                wrap.uid = "\(userInfoDic[(String(userNameId.suffix(5)))] as! NSNumber)"
            }
            //: wrap.nickname = userInfoDic["nickname"] as? String ?? ""
            wrap.nickname = userInfoDic[(noti_pointData.replacingOccurrences(of: "appear", with: "c") + String(user_statusMessage))] as? String ?? ""
            //: wrap.headPic = userInfoDic["headPic"] as? String ?? ""
            wrap.headPic = userInfoDic[(String(constMomentPopFormat))] as? String ?? ""
            //: wrap.sex = userInfoDic["sex"] as? String ?? ""
            wrap.sex = userInfoDic[(dataAppModelKey.replacingOccurrences(of: "object", with: "ex"))] as? String ?? ""
            //: wrap.age = "\(userInfoDic["age"] as? NSNumber ?? NSNumber.init())"
            wrap.age = "\(userInfoDic[(main_kindQuoteVideoFormat.replacingOccurrences(of: "lab", with: "g"))] as? NSNumber ?? NSNumber())"
            //: wrap.tpAuth = userInfoDic["tpAuth"] as? Bool ?? false
            wrap.tpAuth = userInfoDic[(String(main_bottomLargePath.prefix(6)))] as? Bool ?? false
            //: wrap.interest = userInfoDic["interest"] as? Array<String> ?? [""]
            wrap.interest = userInfoDic[(data_netMessage.lowercased() + String(k_ofFormat))] as? [String] ?? [""]
            //: wrap.picture = userInfoDic["picture"] as? Array<String> ?? [""]
            wrap.picture = userInfoDic[(String(const_greetData) + dataNameTouchCustomKey.replacingOccurrences(of: "block", with: "tu"))] as? [String] ?? [""]
            //: wrap.loungePlus = userInfoDic["loungePlus"] as? Bool ?? false
            wrap.loungePlus = userInfoDic[(String(app_saveKey.prefix(9)) + String(constTitleMessage))] as? Bool ?? false
            //: wrap.vipSkinId = userInfoDic["vipSkinId"] as? Int ?? 0
            wrap.vipSkinId = userInfoDic[(String(show_withPath.suffix(4)) + String(mainCenterLargeMessage.prefix(5)))] as? Int ?? 0
            //: wrap.voicePrice = userInfoDic["voicePrice"] as? String ?? ""
            wrap.voicePrice = userInfoDic[(String(main_picMatchId) + String(kEngineScreenText))] as? String ?? ""
            //: wrap.videoPrice = userInfoDic["videoPrice"] as? String ?? ""
            wrap.videoPrice = userInfoDic[(dataMaxOfId.replacingOccurrences(of: "manager", with: "id") + "oPri" + data_titleCurrentClickValue.replacingOccurrences(of: "model", with: "ce"))] as? String ?? ""
            //: wrap.voiceVIPPrice = userInfoDic["voiceVIPPrice"] as? String ?? ""
            wrap.voiceVIPPrice = userInfoDic[(String(main_barId.prefix(6)) + "IPPric" + appThroughValue.lowercased())] as? String ?? ""
            //: wrap.videoVIPPrice = userInfoDic["videoVIPPrice"] as? String ?? ""
            wrap.videoVIPPrice = userInfoDic[(String(constLocationStr.prefix(6)) + String(show_makeLabelKey))] as? String ?? ""
            //: wrap.version = userInfoDic["version"] as? String ?? ""
            wrap.version = userInfoDic[(String(user_nowValue))] as? String ?? ""
            //: wrap.headPicFrame = userInfoDic["headPicFrame"] as? String ?? ""
            wrap.headPicFrame = userInfoDic[(String(k_willBlockForUrl.prefix(6)) + "cFrame")] as? String ?? ""
            //: wrap.signature = userInfoDic["signature"] as? String ?? ""
            wrap.signature = userInfoDic[(String(data_hiddenMsg) + constBorderData.replacingOccurrences(of: "path", with: "tu"))] as? String ?? ""
            //: wrap.constellation = userInfoDic["constellation"] as? String ?? ""
            wrap.constellation = userInfoDic[(noti_skinName.replacingOccurrences(of: "app", with: "te") + String(notiMinLargeKey))] as? String ?? ""
            //: wrap.onlineStatus = userInfoDic["onlineStatus"] as! Int
            wrap.onlineStatus = userInfoDic[(app_dataId.replacingOccurrences(of: "more", with: "nl") + "eStat" + main_makeUrl.replacingOccurrences(of: "view", with: "us"))] as! Int
            //: wrap.isNewUser = userInfoDic["isNewUser"] as? Bool ?? false
            wrap.isNewUser = userInfoDic[(String(app_badValue) + data_nameUrl.replacingOccurrences(of: "empty", with: "er"))] as? Bool ?? false
            //: wrap.isOfficial = userInfoDic["isOfficial"] as? Bool ?? false
            wrap.isOfficial = userInfoDic[(app_valuePath.replacingOccurrences(of: "to", with: "s") + String(dataKitKey.suffix(8)))] as? Bool ?? false
            //: wrap.userStatus = userInfoDic["userStatus"] as? Int ?? 1
            wrap.userStatus = userInfoDic[(String(show_labMakeFrameStr) + appHalfContent.replacingOccurrences(of: "date", with: "s"))] as? Int ?? 1
        }
        //: if userDic.keys.contains("remarkInfo") { // 备注相关
        if userDic.keys.contains((String(user_canUrl.suffix(8)) + String(noti_logValue))) { // 备注相关
            //: let remarkDict = userDic["remarkInfo"] as! [String: Any]
            let remarkDict = userDic[(String(user_canUrl.suffix(8)) + String(noti_logValue))] as! [String: Any]
            //: wrap.content = remarkDict["content"] as? String ?? ""
            wrap.content = remarkDict[(notiAssetMsg.replacingOccurrences(of: "load", with: "en"))] as? String ?? ""
            //: wrap.top = remarkDict["top"] as? Int ?? 2
            wrap.top = remarkDict[(mainInputItemFormat.replacingOccurrences(of: "style", with: "p"))] as? Int ?? 2
        }
        //: if userDic.keys.contains("enableVideoCall") {
        if userDic.keys.contains((showYourId.replacingOccurrences(of: "service", with: "ab") + String(k_sessionTitle.prefix(6)) + "Call")) {
            //: wrap.enableVideoCall = userDic["enableVideoCall"] as! Bool
            wrap.enableVideoCall = userDic[(showYourId.replacingOccurrences(of: "service", with: "ab") + String(k_sessionTitle.prefix(6)) + "Call")] as! Bool
        }
        //: if userDic.keys.contains("voiceBean") {
        if userDic.keys.contains((app_arrayId.lowercased() + "eBean")) {
            //: wrap.voiceBean = userDic["voiceBean"] as! String
            wrap.voiceBean = userDic[(app_arrayId.lowercased() + "eBean")] as! String
        }
        //: if userDic.keys.contains("videoBean") {
        if userDic.keys.contains((String(show_detailMsg))) {
            //: wrap.videoBean =  userDic["videoBean"] as! String
            wrap.videoBean = userDic[(String(show_detailMsg))] as! String
        }
        //: if userDic.keys.contains("prompt") {
        if userDic.keys.contains((k_equalName.lowercased())) {
            //: wrap.prompt = userDic["prompt"] as! String
            wrap.prompt = userDic[(k_equalName.lowercased())] as! String
        }
        //: if userDic.keys.contains("matchRate") {
        if userDic.keys.contains((String(main_rangeAddKey) + userShowManagerMsg.replacingOccurrences(of: "text", with: "e"))) {
            //: wrap.matchRate =  userDic["matchRate"] as! Int
            wrap.matchRate = userDic[(String(main_rangeAddKey) + userShowManagerMsg.replacingOccurrences(of: "text", with: "e"))] as! Int
        }
        //: if userDic.keys.contains("existSess") {
        if userDic.keys.contains((String(const_downStr) + String(constTargetValue))) {
            //: wrap.existSess = userDic["existSess"] as? Bool ?? false
            wrap.existSess = userDic[(String(const_downStr) + String(constTargetValue))] as? Bool ?? false
        }
        //: if userDic.keys.contains("totalIntimate") {
        if userDic.keys.contains((mainCellName.replacingOccurrences(of: "on", with: "l") + String(const_makeData.prefix(8)))) {
            //: wrap.intimate = userDic["totalIntimate"] as? Int ?? 0
            wrap.intimate = userDic[(mainCellName.replacingOccurrences(of: "on", with: "l") + String(const_makeData.prefix(8)))] as? Int ?? 0
        }
        //: return wrap
        return wrap
    }
}
