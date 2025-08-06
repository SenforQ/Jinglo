
//: Declare String Begin

/*: "APPLE_IAP_PAY_SUCCEED_NOTIFICATION" :*/
fileprivate let constPlayFromMsg:[UInt8] = [0x51,0x60,0x60,0x5c,0x55,0x6f,0x59,0x51,0x60,0x6f,0x60,0x51,0x69,0x6f,0x63,0x65,0x53,0x53,0x55,0x55,0x54,0x6f,0x5e,0x5f,0x64,0x59,0x56,0x59,0x53,0x51,0x64,0x59,0x5f,0x5e]

fileprivate func periodicTable(transform num: UInt8) -> UInt8 {
    let value = Int(num) + 240
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION" :*/
fileprivate let k_styleKey:[UInt8] = [0x1d,0x2c,0x2c,0x28,0x21,0x3b,0x25,0x1d,0x2c,0x3b,0x2f,0x31,0x1e,0x2f,0x1f,0x2e,0x25,0x1e,0x21,0x3b,0x2f,0x31,0x1f,0x1f,0x21,0x21,0x20,0x3b,0x2a,0x2b,0x30,0x25,0x22,0x25,0x1f,0x1d,0x30,0x25,0x2b,0x2a]

fileprivate func effectiveBlack(hidden num: UInt8) -> UInt8 {
    let value = Int(num) - 220
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/recharge/createApplePay" :*/
fileprivate let mainBelowGiftVarFormat:[Character] = ["m","f","/","r","e","c","h","a","r","g","e","/","c","r","e","a","t","e"]
fileprivate let k_atPath:[Character] = ["A","p","p"]
fileprivate let show_layerTableMsg:[Character] = ["l","e","P","a","y"]

/*: "productId" :*/
fileprivate let appArrayMatchMakeUrl:String = "prodviewct"
fileprivate let k_nameImageRangeStr:String = "make auto viewId"

/*: "source" :*/
fileprivate let constAwakeTitle:[Character] = ["s","o","u","r","c"]
fileprivate let appFormatTitle:[Character] = ["e"]

/*: "IAP充值创建订单失败: :*/
fileprivate let notiImageMsg:String = "IAP\u{5145}值创建订"
fileprivate let mainArrayStr:String = "interval失败:"

/*: , 参数: :*/
fileprivate let show_sizeValue:String = ", \u{53c2}\u{6570}:"

/*: ." :*/
fileprivate let data_infoMessage:String = "to"

/*: "orderNum" :*/
fileprivate let main_itemValue:String = "corner"
fileprivate let appStatusMediumEmptyValue:[Character] = ["r","d","e","r","N","u","m"]

/*: "mf/recharge/applePayNotify" :*/
fileprivate let k_languageTitle:String = "object let imagemf/rech"
fileprivate let dataBottomTitle:String = "arge/for self"
fileprivate let main_equalFormat:String = "PayNotifytext video self"

/*: "IAP充值校验失败: :*/
fileprivate let user_renderName:[Character] = ["I","A","P","充","\u{503c}","校"]
fileprivate let notiRemarkContent:String = "验失show:"

/*: "transactionId" :*/
fileprivate let kSizeData:[Character] = ["t","r","a","n","s","a","c","t","i","o"]
fileprivate let notiStatusPath:[Character] = ["n","I","d"]

/*: "reportMoney" :*/
fileprivate let dataAppBubbleLeadingId:String = "list"
fileprivate let constPureViewTrueValue:String = "eportMerror aspect path equal"

/*: "mf/AutoSub/AppleCreateOrder" :*/
fileprivate let k_contentFormat:[Character] = ["m","f","/","A","u","t","o","S","u","b","/","A","p","p","l","e","C","r","e"]
fileprivate let main_errorName:String = "amore"
fileprivate let k_equalAtFormat:[Character] = ["O","r","d","e","r"]

/*: "IAP订阅创建订单失败: :*/
fileprivate let show_tagLiveListName:[Character] = ["I","A","P","订","\u{9605}","创","建","订"]
fileprivate let showStatusMessage:String = "单失败:"

/*: "orderId" :*/
fileprivate let notiEqualMsg:[UInt8] = [0xca,0xd7,0xc1,0xc0,0xd7,0xec,0xc1]

/*: "mf/AutoSub/ApplePaySuccess" :*/
fileprivate let dataModelMsg:String = "stage formf/A"
fileprivate let user_textContent:String = "area in clear large lineub/Ap"
fileprivate let showAddId:String = "filless"

/*: "IAP订阅校验失败: :*/
fileprivate let app_mainMessage:[Character] = ["I","A"]
fileprivate let main_seatId:String = "P\u{8ba2}阅校验失败:"

/*: "App" :*/
fileprivate let user_errKey:String = "Appfatal with if group in"

/*: "OrderTransactionInfo_ :*/
fileprivate let show_fileTitleActionMsg:String = "back cell targetOrde"
fileprivate let constAddFormat:String = "NSAC"
fileprivate let data_appearSectionKey:String = "Info_add re view"

/*: "OrderTransactionInfo_Subscribe_ :*/
fileprivate let appManagerName:[UInt8] = [0xeb,0xd6,0xc0,0xc1,0xd6,0xf0,0xd6,0xc5,0xca,0xd7,0xc5,0xc7,0xd0,0xcd,0xcb,0xca,0xed,0xca,0xc2,0xcb,0xfb,0xf7,0xd1,0xc6,0xd7,0xc7,0xd6,0xcd,0xc6,0xc1,0xfb]

/*: "verifyData" :*/
fileprivate let user_tempPath:[UInt8] = [0xbb,0xaa,0xb7,0xae,0xab,0xbe,0x89,0xa6,0xb9,0xa6]

fileprivate func contentVideoParty(value num: UInt8) -> UInt8 {
    let value = Int(num) - 69
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "IAP查询内购商品失败, productId: :*/
fileprivate let kTouchMessage:String = "IAP\u{67e5}询\u{5185}"
fileprivate let app_ownerUrl:String = ", proelse total self"
fileprivate let k_voiceMsg:[Character] = ["d","u","c","t","I","d",":"]

/*: "IAP查询内购商品失败, products.count为0." :*/
fileprivate let user_sharedTitle:String = "IAP查\u{8be2}"
fileprivate let appLabelMsg:String = "moment any lock lab value, prod"
fileprivate let appDataText:String = ".coulab equal self color equal"
fileprivate let mainStageFormat:String = "self makent为0."

/*: "IAP查询内购商品失败, Error: :*/
fileprivate let user_maximumStr:[Character] = ["I","A","P","查","询","内","购","商","品","失","败",","," ","E","r","r","o","r"]
fileprivate let show_buttonData:[Character] = [":"]

/*: "IAP-purchased: :*/
fileprivate let main_sharePath:String = "IAP-padd if"

/*: , 订单号: :*/
fileprivate let appUserMsg:[Character] = [","," ","订","单","号",":"]

/*: , 商品Id: :*/
fileprivate let show_insertPath:String = ", \u{5546}品Id:"

/*: , 苹果transId: :*/
fileprivate let kObserverLabValue:String = "direction label model, 苹果t"
fileprivate let user_successMsg:[Character] = ["d",":"]

/*: "IAP-failed: :*/
fileprivate let showMidKey:String = "lab bad will labIAP-"
fileprivate let notiMakeName:String = "failed:button in index if"

/*: "IAP-deferred: :*/
fileprivate let show_textPath:String = "export row inner cell centerIAP-def"
fileprivate let show_languageTitle:[Character] = ["e"]
fileprivate let main_logId:[Character] = ["r","r","e","d",":"]

/*: "IAP未知交易类型: :*/
fileprivate let const_nextText:[Character] = ["I","A","P","未","知"]
fileprivate let app_imageMakeModelKey:[Character] = ["\u{4ea4}","易","类","\u{578b}",":"]

/*: " 未知的交易类型" :*/
fileprivate let appStyleAddImageTitle:[Character] = [""," ","未","知","的","交","易"]
fileprivate let main_draftLengthPath:[Character] = ["类","型"]

/*: "IAP获取本地收据数据失败, transactionId: :*/
fileprivate let appCornerClickInMsg:String = "IAP获取本tool to height"
fileprivate let noti_jumpName:[Character] = ["失","败",","," ","t","r","a","n","s","a","c","t","i","o","n","I","d",":"]

/*: , orderId: :*/
fileprivate let showVisibleMakeMsg:[Character] = [","," "]
fileprivate let data_equalLogFormat:String = "orderId:left name"

/*: , payType: :*/
fileprivate let userImageFormat:String = ", payTyself height hide"
fileprivate let showByValue:String = "pe:let player text"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VoiceReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/9/2.
//

//: import StoreKit
import StoreKit
//: import SwiftyJSON
import SwiftyJSON
//: import UIKit
import UIKit

// 苹果支付成功通知
//: public let APPLE_IAP_PAY_SUCCEED_NOTIFICATION = NSNotification.Name(rawValue: "APPLE_IAP_PAY_SUCCEED_NOTIFICATION")
public let constButtonMeetingId = NSNotification.Name(rawValue: String(bytes: constPlayFromMsg.map{periodicTable(transform: $0)}, encoding: .utf8)!)
// 苹果订阅成功通知
//: public let APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION = NSNotification.Name(rawValue: "APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION")
public let show_detailKeyMsg = NSNotification.Name(rawValue: String(bytes: k_styleKey.map{effectiveBlack(hidden: $0)}, encoding: .utf8)!)
// 最大失败重试次数
//: let APPLE_IAP_MAX_RETRY_COUNT = 9
let dataShowStr = 9

/// 支付类型
//: enum ApplePayType {
enum FourthType {
    //: case Pay
    case Pay // 支付
    //: case Subscribe
    case Subscribe // 订阅
}

/// 支付状态
//: enum AppleIAPStatus: String {
enum DebaserOutputStream: String {
    //: case unknow            = "未知类型"
    case unknow = "未知类型"
    //: case createOrderFail   = "创建订单失败"
    case createOrderFail = "创建订单失败"
    //: case notArrow          = "设备不允许"
    case notArrow = "设备不允许"
    //: case noProductId       = "缺少产品Id"
    case noProductId = "缺少产品Id"
    //: case failed            = "交易失败/取消"
    case failed = "交易失败/取消"
    //: case restored          = "已购买过该商品"
    case restored = "已购买过该商品"
    //: case deferred          = "交易延期"
    case deferred = "交易延期"
    //: case verityFail        = "服务器验证失败"
    case verityFail = "服务器验证失败"
    //: case veritySucceed     = "服务器验证成功"
    case veritySucceed = "服务器验证成功"
    //: case renewSucceed      = "自动续订成功"
    case renewSucceed = "自动续订成功"
}

//: typealias IAPcompletionHandle = (AppleIAPStatus, Double, ApplePayType) -> Void
typealias IAPcompletionHandle = (DebaserOutputStream, Double, FourthType) -> Void

//: class AppleIAPManager: NSObject {
class VoiceReactiveCompatible: NSObject {
    //: var completionHandle: IAPcompletionHandle?
    var completionHandle: IAPcompletionHandle?
    //: private var productInfoReq: SKProductsRequest?
    private var productInfoReq: SKProductsRequest?
    //: private var reqRetryCountDict = [String: Int]()
    private var reqRetryCountDict = [String: Int]() // 记录每个交易请求重试次数
    //: private var payCacheList = [[String: String]]()
    private var payCacheList = [[String: String]]() // 【购买】缓存数据
    //: private var subscribeCacheList = [[String: String]]()
    private var subscribeCacheList = [[String: String]]() // 【订阅】缓存数据
    //: private var createOrderId: String?
    private var createOrderId: String? // 当前支付服务端创建的订单id
    //: private var currentPayType: ApplePayType = .Pay
    private var currentPayType: FourthType = .Pay // 当前支付类型

    // singleton
    //: static let shared = AppleIAPManager()
    static let shared = VoiceReactiveCompatible()
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: SKPaymentQueue.default().add(self as SKPaymentTransactionObserver)
        SKPaymentQueue.default().add(self as SKPaymentTransactionObserver)
        // 监听应用将要销毁
        //: NotificationCenter.default.addObserver(self, selector: #selector(appWillTerminate),
        NotificationCenter.default.addObserver(self, selector: #selector(technique),
                                               //: name: UIApplication.willTerminateNotification,
                                               name: UIApplication.willTerminateNotification,
                                               //: object: nil)
                                               object: nil)
    }

    // MARK: - NotificationCenter

    //: @objc func appWillTerminate() {
    @objc func technique() {
        //: SKPaymentQueue.default().remove(self as SKPaymentTransactionObserver)
        SKPaymentQueue.default().remove(self as SKPaymentTransactionObserver)
    }
}

// MARK: - 【苹果购买】业务接口

//: extension AppleIAPManager {
private extension VoiceReactiveCompatible {
    /// 【购买】创建业务订单
    /// - Parameters:
    ///   - productId: 产品Id
    ///   - block: 回调
    //: fileprivate func req_pay_createAppleOrder(productId: String, source: Int, handle: @escaping (String?, Bool) -> Void) {
    func adjustmentOn(productId: String, source: Int, handle: @escaping (String?, Bool) -> Void) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/recharge/createApplePay"
        reqModel.requestPath = (String(mainBelowGiftVarFormat) + String(k_atPath) + String(show_layerTableMsg))
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["productId"] = productId
        dict[(appArrayMatchMakeUrl.replacingOccurrences(of: "view", with: "u") + String(k_nameImageRangeStr.suffix(2)))] = productId
        //: dict["source"] = source
        dict[(String(constAwakeTitle) + String(appFormatTitle))] = source
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: UploadLogTool.writeLog(msg: "IAP充值创建订单失败:\(String(describing: errorModel?.errorMsg)), 参数:\(dict).")
                GestureLogTool.playChangeImage(msg: (notiImageMsg + mainArrayStr.replacingOccurrences(of: "interval", with: "单")) + "\(String(describing: errorModel?.errorMsg)), 参数:\(dict).")
                //: handle(nil, succeed)
                handle(nil, succeed)
                //: return
                return
            }

            //: let json = JSON(result!)
            let json = JSON(result!)
            //: let orderId = json["orderNum"].string
            let orderId = json[(main_itemValue.replacingOccurrences(of: "corner", with: "o") + String(appStatusMediumEmptyValue))].string
            //: handle(orderId, succeed)
            handle(orderId, succeed)
        }
    }

    /// 【购买】上传支付信息到服务器验证
    /// - Parameters:
    ///   - transaction: 交易信息
    ///   - params: 接口参数
    //: fileprivate func req_pay_uploadAppletransaction(_ transactionId: String, params: [String: String]) {
    func conductParams(_ transactionId: String, params: [String: String]) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/recharge/applePayNotify"
        reqModel.requestPath = (String(k_languageTitle.suffix(7)) + String(dataBottomTitle.prefix(5)) + "apple" + String(main_equalFormat.prefix(9)))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true || errorModel?.errorCode == 405 else {
            guard succeed == true || errorModel?.errorCode == 405 else { // 验证接口失败，重试接口
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                    //: UploadLogTool.writeLog(msg: "IAP充值校验失败:\(String(describing: errorModel?.errorCode)), 参数:\(params).")
                    GestureLogTool.playChangeImage(msg: (String(user_renderName) + notiRemarkContent.replacingOccurrences(of: "show", with: "败")) + "\(String(describing: errorModel?.errorCode)), 参数:\(params).")
                    //: self.transcationPurchasedToCheck(transactionId, .Pay)
                    self.queryDownSelect(transactionId, .Pay)
                }
                //: return
                return
            }

            //: let result = JSON(result ?? [:])
            let result = JSON(result ?? [:])

            // 过滤已验证成功的订单数据
            //: let newPayCacheList = self.payCacheList.filter({$0["transactionId"] != transactionId})
            let newPayCacheList = self.payCacheList.filter { $0[(String(kSizeData) + String(notiStatusPath))] != transactionId }
            //: let diskPath = self.getPayCachePath()
            let diskPath = self.cache()
            //: NSKeyedArchiver.archiveRootObject(newPayCacheList, toFile: diskPath)
            NSKeyedArchiver.archiveRootObject(newPayCacheList, toFile: diskPath)

            // 成功通知
            //: NotificationCenter.default.post(name: APPLE_IAP_PAY_SUCCEED_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: constButtonMeetingId, object: nil)
            // 成功回调
            //: self.completionHandle?(.veritySucceed, result["reportMoney"].doubleValue, .Pay)
            self.completionHandle?(.veritySucceed, result[(dataAppBubbleLeadingId.replacingOccurrences(of: "list", with: "r") + String(constPureViewTrueValue.prefix(6)) + "oney")].doubleValue, .Pay)
        }
    }
}

// MARK: - 【苹果订阅】业务接口

//: extension AppleIAPManager {
private extension VoiceReactiveCompatible {
    /// 【订阅】创建业务订单
    /// - Parameters:
    ///   - productId: 产品Id
    ///   - block: 回调
    //: fileprivate func req_subscribe_createAppleOrder(productId: String, source: Int, handle: @escaping (String?, Bool) -> Void) {
    func disposeOfRecord(productId: String, source: Int, handle: @escaping (String?, Bool) -> Void) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/AutoSub/AppleCreateOrder"
        reqModel.requestPath = (String(k_contentFormat) + main_errorName.replacingOccurrences(of: "more", with: "te") + String(k_equalAtFormat))
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["productId"] = productId
        dict[(appArrayMatchMakeUrl.replacingOccurrences(of: "view", with: "u") + String(k_nameImageRangeStr.suffix(2)))] = productId
        //: dict["source"] = source
        dict[(String(constAwakeTitle) + String(appFormatTitle))] = source
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: UploadLogTool.writeLog(msg: "IAP订阅创建订单失败:\(String(describing: errorModel?.errorMsg)), 参数:\(dict).")
                GestureLogTool.playChangeImage(msg: (String(show_tagLiveListName) + showStatusMessage.capitalized) + "\(String(describing: errorModel?.errorMsg)), 参数:\(dict).")
                //: handle(nil, succeed)
                handle(nil, succeed)
                //: return
                return
            }

            //: let json = JSON(result!)
            let json = JSON(result!)
            //: let orderId = json["orderId"].string
            let orderId = json[String(bytes: notiEqualMsg.map{$0^165}, encoding: .utf8)!].string
            //: handle(orderId, succeed)
            handle(orderId, succeed)
        }
    }

    /// 【订阅】上传支付信息到服务器验证
    /// - Parameters:
    ///   - transaction: 交易信息
    ///   - params: 接口参数
    //: fileprivate func req_subscribe_uploadAppletransaction(_ transactionId: String, params: [String: String]) {
    func telecastingRequest(_ transactionId: String, params: [String: String]) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/AutoSub/ApplePaySuccess"
        reqModel.requestPath = (String(dataModelMsg.suffix(4)) + "utoS" + String(user_textContent.suffix(5)) + "plePaySuc" + showAddId.replacingOccurrences(of: "fill", with: "c"))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true || errorModel?.errorCode == 405 else {
            guard succeed == true || errorModel?.errorCode == 405 else { // 验证接口失败，重试接口
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
                    //: UploadLogTool.writeLog(msg: "IAP订阅校验失败:\(String(describing: errorModel?.errorCode)), 参数:\(params).")
                    GestureLogTool.playChangeImage(msg: (String(app_mainMessage) + main_seatId) + "\(String(describing: errorModel?.errorCode)), 参数:\(params).")
                    //: self.transcationPurchasedToCheck(transactionId, .Subscribe)
                    self.queryDownSelect(transactionId, .Subscribe)
                }
                //: return
                return
            }

            //: let result = JSON(result ?? [:])
            let result = JSON(result ?? [:])

            // 过滤已验证成功的订单数据
            //: let newSubscribeCacheList = self.subscribeCacheList.filter({$0["transactionId"] != transactionId})
            let newSubscribeCacheList = self.subscribeCacheList.filter { $0[(String(kSizeData) + String(notiStatusPath))] != transactionId }
            //: let diskPath = self.getSubscribeCachePath()
            let diskPath = self.topImage()
            //: NSKeyedArchiver.archiveRootObject(newSubscribeCacheList, toFile: diskPath)
            NSKeyedArchiver.archiveRootObject(newSubscribeCacheList, toFile: diskPath)

            // 成功通知
            //: NotificationCenter.default.post(name: APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: show_detailKeyMsg, object: nil)
            // 成功回调
            //: self.completionHandle?(.veritySucceed, result["reportMoney"].doubleValue, .Subscribe)
            self.completionHandle?(.veritySucceed, result[(dataAppBubbleLeadingId.replacingOccurrences(of: "list", with: "r") + String(constPureViewTrueValue.prefix(6)) + "oney")].doubleValue, .Subscribe)
        }
    }
}

// MARK: - Event

//: extension AppleIAPManager {
extension VoiceReactiveCompatible {
    /// 初始化数据
    //: private func iap_initData() {
    private func listData() {
        //: self.payCacheList = getLocalPayCacheList(payType: .Pay)
        self.payCacheList = voiceTalk(payType: .Pay)
        //: self.subscribeCacheList = getLocalPayCacheList(payType: .Subscribe)
        self.subscribeCacheList = voiceTalk(payType: .Subscribe)
        //: self.createOrderId = nil
        self.createOrderId = nil
    }

    /// 获取缓存列表
    /// - Parameter payType: 支付类型
    /// - Returns: 缓存列表
    //: private func getLocalPayCacheList(payType: ApplePayType) -> [[String: String]] {
    private func voiceTalk(payType: FourthType) -> [[String: String]] {
        //: var list: [[String: String]]?
        var list: [[String: String]]?
        //: var diskPath = ""
        var diskPath = ""
        //: if payType == .Pay {
        if payType == .Pay {
            //: diskPath = getPayCachePath()
            diskPath = cache()
            //: } else {
        } else {
            //: diskPath = getSubscribeCachePath()
            diskPath = topImage()
        }

        //: if FileManager.default.fileExists(atPath: diskPath) {
        if FileManager.default.fileExists(atPath: diskPath) {
            //: list = NSKeyedUnarchiver.unarchiveObject(withFile: diskPath) as? [[String: String]]
            list = NSKeyedUnarchiver.unarchiveObject(withFile: diskPath) as? [[String: String]]
            //: if list == nil {
            if list == nil {
                //: try? FileManager.default.removeItem(atPath: diskPath)
                try? FileManager.default.removeItem(atPath: diskPath)
            }
        }
        //: if list == nil {
        if list == nil {
            //: list = [[String: String]]()
            list = [[String: String]]()
        }
        //: return list!
        return list!
    }

    /// 获取【购买】缓存路径【和uid关联】
    /// - Returns: 缓存路径
    //: private func getPayCachePath() -> String {
    private func cache() -> String {
        //: let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appDirectoryPath = (documentDirectoryPath as NSString).appendingPathComponent("App")
        let appDirectoryPath = (documentDirectoryPath as NSString).appendingPathComponent((String(user_errKey.prefix(3))))

        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: if fileManager.fileExists(atPath: appDirectoryPath) == false {
        if fileManager.fileExists(atPath: appDirectoryPath) == false {
            //: try? fileManager.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
            try? fileManager.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
        }

        //: let uid = Defaults.string(forKey: TalkingLoginUidCacheKey) ?? ""
        let uid = constDevicePath.string(forKey: mainErrMessage) ?? ""
        //: let filePath = (appDirectoryPath as NSString).appendingPathComponent("OrderTransactionInfo_\(uid)")
        let filePath = (appDirectoryPath as NSString).appendingPathComponent((String(show_fileTitleActionMsg.suffix(4)) + "rTra" + constAddFormat.lowercased() + "tion" + String(data_appearSectionKey.prefix(5))) + "\(uid)")
        //: return filePath
        return filePath
    }

    /// 获取【订阅】缓存路径【和uid关联】
    /// - Returns: 缓存路径
    //: private func getSubscribeCachePath() -> String {
    private func topImage() -> String {
        //: let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appDirectoryPath = (documentDirectoryPath as NSString).appendingPathComponent("App")
        let appDirectoryPath = (documentDirectoryPath as NSString).appendingPathComponent((String(user_errKey.prefix(3))))

        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: if fileManager.fileExists(atPath: appDirectoryPath) == false {
        if fileManager.fileExists(atPath: appDirectoryPath) == false {
            //: try? fileManager.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
            try? fileManager.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
        }

        //: let uid = Defaults.string(forKey: TalkingLoginUidCacheKey) ?? ""
        let uid = constDevicePath.string(forKey: mainErrMessage) ?? ""
        //: let filePath = (appDirectoryPath as NSString).appendingPathComponent("OrderTransactionInfo_Subscribe_\(uid)")
        let filePath = (appDirectoryPath as NSString).appendingPathComponent(String(bytes: appManagerName.map{$0^164}, encoding: .utf8)! + "\(uid)")
        //: return filePath
        return filePath
    }

    /// 获取本地收据数据
    /// - Parameters:
    ///   - transactionId: 收据标识符
    ///   - payType: 支付类型
    /// - Returns: 收据数据
    //: fileprivate func getVerifyData(_ transactionId: String, _ payType: ApplePayType) -> String? {
    fileprivate func blockPan(_ transactionId: String, _ payType: FourthType) -> String? {
        // 有未完成的订单，先取缓存
        //: var paramsArr = [[String: String]]()
        var paramsArr = [[String: String]]()
        //: switch(payType) {
        switch payType {
        //: case .Pay:
        case .Pay:
            //: paramsArr = self.payCacheList.filter({$0["transactionId"] == transactionId})
            paramsArr = self.payCacheList.filter { $0[(String(kSizeData) + String(notiStatusPath))] == transactionId }
        //: case .Subscribe:
        case .Subscribe:
            //: paramsArr = self.subscribeCacheList.filter({$0["transactionId"] == transactionId})
            paramsArr = self.subscribeCacheList.filter { $0[(String(kSizeData) + String(notiStatusPath))] == transactionId }
        }
        //: if paramsArr.count > 0 && paramsArr.first!["verifyData"] != nil {
        if paramsArr.count > 0, paramsArr.first![String(bytes: user_tempPath.map{contentVideoParty(value: $0)}, encoding: .utf8)!] != nil {
            //: return paramsArr.first!["verifyData"]
            return paramsArr.first![String(bytes: user_tempPath.map{contentVideoParty(value: $0)}, encoding: .utf8)!]
        }

        // 取本地
        //: guard let receiptUrl = Bundle.main.appStoreReceiptURL else { return nil }
        guard let receiptUrl = Bundle.main.appStoreReceiptURL else { return nil }
        //: let data = NSData(contentsOf: receiptUrl)
        let data = NSData(contentsOf: receiptUrl)
        //: let receiptStr = data?.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
        let receiptStr = data?.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
        //: return receiptStr
        return receiptStr
    }
}

// MARK: - 失败重试流程

//: extension AppleIAPManager {
extension VoiceReactiveCompatible {
    /// 检测未完成的苹果支付【只会重试当前登录用户】
    //: func iap_checkUnfinishedTransactions() {
    func spring() {
        //: iap_initData()
        listData()

        // 【购买】失败重试
        //: for dict in self.payCacheList {
        for dict in self.payCacheList {
            //: iap_failedRetry(dict["transactionId"], .Pay)
            rowFile(dict[(String(kSizeData) + String(notiStatusPath))], .Pay)
        }

        // 【订阅】失败重试
        //: for dict in self.subscribeCacheList {
        for dict in self.subscribeCacheList {
            //: iap_failedRetry(dict["transactionId"], .Subscribe)
            rowFile(dict[(String(kSizeData) + String(notiStatusPath))], .Subscribe)
        }
    }

    /// 失败重试
    /// - Parameters:
    ///   - transactionId: Id
    ///   - payType: 支付类型
    //: private func iap_failedRetry(_ transactionId: String?, _ payType: ApplePayType) {
    private func rowFile(_ transactionId: String?, _ payType: FourthType) {
        //: guard let transactionId = transactionId else { return }
        guard let transactionId = transactionId else { return }
        // 初始化每个交易请求次数
        //: reqRetryCountDict[transactionId] = 0
        reqRetryCountDict[transactionId] = 0
        // 3. 服务端校验流程
        //: transcationPurchasedToCheck(transactionId, payType)
        queryDownSelect(transactionId, payType)
    }
}

// MARK: - 苹果正常支付流程

//: extension AppleIAPManager {
extension VoiceReactiveCompatible {
    /// 发起苹果支付【1.创建订单； 2.发起苹果支付； 3.服务端校验】
    /// - Parameters:
    ///   - purchID: 产品ID
    ///   - payType: 支付类型
    ///   - handle: 回调
    ///   - source: 0 常规充值 1 观看视频后充值或订阅
    //: func iap_startPurchase(productId: String, payType: ApplePayType, source: Int = 0, handle: @escaping IAPcompletionHandle) {
    func titleEnterHandle(productId: String, payType: FourthType, source: Int = 0, handle: @escaping IAPcompletionHandle) {
        //: iap_initData()
        listData()
        //: self.completionHandle = handle
        self.completionHandle = handle
        //: self.currentPayType = payType
        self.currentPayType = payType

        // 1. 根据类型创建订单
        //: switch(payType) {
        switch payType {
        //: case .Pay:
        case .Pay:
            //: req_pay_createAppleOrder(productId: productId, source: source) { [weak self] orderId, succeed in
            adjustmentOn(productId: productId, source: source) { [weak self] orderId, succeed in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard succeed == true && orderId != nil else {
                guard succeed == true && orderId != nil else { // 订单创建失败
                    //: self.completionHandle?(.createOrderFail, 0, .Pay)
                    self.completionHandle?(.createOrderFail, 0, .Pay)
                    //: return
                    return
                }

                //: self.createOrderId = orderId
                self.createOrderId = orderId
                //: self.requestProductInfo(productId)
                self.discovery(productId)
            }

        //: case .Subscribe:
        case .Subscribe:
            //: req_subscribe_createAppleOrder(productId: productId, source: source) { [weak self] orderId, succeed in
            disposeOfRecord(productId: productId, source: source) { [weak self] orderId, succeed in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard succeed == true && orderId != nil else {
                guard succeed == true && orderId != nil else { // 订单创建失败
                    //: self.completionHandle?(.createOrderFail, 0, .Subscribe)
                    self.completionHandle?(.createOrderFail, 0, .Subscribe)
                    //: return
                    return
                }

                //: self.createOrderId = orderId
                self.createOrderId = orderId
                //: self.requestProductInfo(productId)
                self.discovery(productId)
            }
        }
    }

    // 2 发起苹果支付，查询apple内购商品
    //: fileprivate func requestProductInfo(_ productId: String) {
    fileprivate func discovery(_ productId: String) {
        //: guard SKPaymentQueue.canMakePayments() else {
        guard SKPaymentQueue.canMakePayments() else {
            //: UploadLogTool.writeLog(msg: "IAP查询内购商品失败, productId:\(productId).")
            GestureLogTool.playChangeImage(msg: (kTouchMessage + "\u{8d2d}商品失败" + String(app_ownerUrl.prefix(5)) + String(k_voiceMsg)) + "\(productId).")
            //: self.completionHandle?(.notArrow, 0, currentPayType)
            self.completionHandle?(.notArrow, 0, currentPayType)
            //: return
            return
        }

        // 销毁当前请求
        //: self.clearProductInfoRequest()
        self.clearFit()
        // 查询apple内购商品
        //: let identifiers: Set<String> = [productId]
        let identifiers: Set<String> = [productId]
        //: productInfoReq = SKProductsRequest(productIdentifiers: identifiers)
        productInfoReq = SKProductsRequest(productIdentifiers: identifiers)
        //: productInfoReq?.delegate = self
        productInfoReq?.delegate = self
        //: productInfoReq?.start()
        productInfoReq?.start()
    }

    // 销毁当前请求
    //: fileprivate func clearProductInfoRequest() {
    fileprivate func clearFit() {
        //: guard productInfoReq != nil else { return }
        guard productInfoReq != nil else { return }
        //: productInfoReq?.delegate = nil
        productInfoReq?.delegate = nil
        //: productInfoReq?.cancel()
        productInfoReq?.cancel()
        //: productInfoReq = nil
        productInfoReq = nil
    }
}

// MARK: - SKProductsRequestDelegate【商品查询】

//: extension AppleIAPManager: SKProductsRequestDelegate {
extension VoiceReactiveCompatible: SKProductsRequestDelegate {
    // 查询apple内购商品成功回调
    //: func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
    func productsRequest(_: SKProductsRequest, didReceive response: SKProductsResponse) {
        //: guard response.products.count > 0 else {
        guard response.products.count > 0 else {
            //: UploadLogTool.writeLog(msg: "IAP查询内购商品失败, products.count为0.")
            GestureLogTool.playChangeImage(msg: (user_sharedTitle + "内购\u{5546}品失败" + String(appLabelMsg.suffix(6)) + "ucts" + String(appDataText.prefix(4)) + String(mainStageFormat.suffix(5))))
            //: self.completionHandle?( .noProductId, 0, currentPayType)
            self.completionHandle?(.noProductId, 0, currentPayType)
            //: return
            return
        }

        //: let payment = SKPayment(product: response.products.first!)
        let payment = SKPayment(product: response.products.first!)
        //: SKPaymentQueue.default().add(payment)
        SKPaymentQueue.default().add(payment)
    }

    // 查询apple内购商品失败
    //: func request(_ request: SKRequest, didFailWithError error: Error) {
    func request(_: SKRequest, didFailWithError error: Error) {
        //: UploadLogTool.writeLog(msg: "IAP查询内购商品失败, Error:\(error).")
        GestureLogTool.playChangeImage(msg: (String(user_maximumStr) + String(show_buttonData)) + "\(error).")
        //: self.completionHandle?( .noProductId, 0, currentPayType)
        self.completionHandle?(.noProductId, 0, currentPayType)
    }

    // 查询apple内购商品完成
    //: func requestDidFinish(_ request: SKRequest) {
    func requestDidFinish(_: SKRequest) {}
}

// MARK: - SKPaymentTransactionObserver【支付回调】

//: extension AppleIAPManager: SKPaymentTransactionObserver {
extension VoiceReactiveCompatible: SKPaymentTransactionObserver {
    /// 2.2 apple内购完成回调
    //: func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
    func paymentQueue(_: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        //: for transaction in transactions {
        for transaction in transactions {
            //: switch transaction.transactionState {
            switch transaction.transactionState {
            //: case .purchasing:
            case .purchasing: // 交易中
                //: break
                break
            //: case .purchased:
            case .purchased: // 交易成功
                /**
                 original.transactionIdentifier 首次订阅时为nil，transaction.transactionIdentifier有值；
                 后续自动订阅、续订时，original.transactionIdentifier为首次订阅时生成的transaction.transactionIdentifier，值固定不变；
                 每次订阅transaction.transactionIdentifier都不一样，为当前交易的标识；
                 */
                //: if transaction.original != nil && createOrderId == nil {
                if transaction.original != nil && createOrderId == nil { // 启动自动续订时，不需要调用服务端验证接口
                    //: self.completionHandle?(.renewSucceed, 0, currentPayType)
                    self.completionHandle?(.renewSucceed, 0, currentPayType)
                    //: } else {
                } else { // 普通购买和订阅
                    //: UploadLogTool.writeLog(msg: "IAP-purchased:\(currentPayType), 订单号:\(String(describing: createOrderId)), 商品Id:\(transaction.payment.productIdentifier), 苹果transId:\(String(describing: transaction.transactionIdentifier)).")
                    GestureLogTool.playChangeImage(msg: (String(main_sharePath.prefix(5)) + "urchased:") + "\(currentPayType)" + (String(appUserMsg)) + "\(String(describing: createOrderId))" + (show_insertPath) + "\(transaction.payment.productIdentifier)" + (String(kObserverLabValue.suffix(5)) + "ransI" + String(user_successMsg)) + "\(String(describing: transaction.transactionIdentifier)).")
                    // 初始化每个交易请求次数
                    //: reqRetryCountDict[transaction.transactionIdentifier!] = 0
                    reqRetryCountDict[transaction.transactionIdentifier!] = 0
                    // 3. 服务端校验流程
                    //: transcationPurchasedToCheck(transaction.transactionIdentifier!, self.currentPayType)
                    queryDownSelect(transaction.transactionIdentifier!, self.currentPayType)
                }
                // 移除苹果支付系统缓存
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: createOrderId = nil
                createOrderId = nil
            //: case .failed:
            case .failed: // 交易失败/取消
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: UploadLogTool.writeLog(msg: "IAP-failed:\(currentPayType), 订单号:\(String(describing: createOrderId)), 商品Id:\(transaction.payment.productIdentifier), 苹果transId:\(String(describing: transaction.transactionIdentifier)).")
                GestureLogTool.playChangeImage(msg: (String(showMidKey.suffix(4)) + String(notiMakeName.prefix(7))) + "\(currentPayType)" + (String(appUserMsg)) + "\(String(describing: createOrderId))" + (show_insertPath) + "\(transaction.payment.productIdentifier)" + (String(kObserverLabValue.suffix(5)) + "ransI" + String(user_successMsg)) + "\(String(describing: transaction.transactionIdentifier)).")
                //: self.completionHandle?(.failed, 0, currentPayType)
                self.completionHandle?(.failed, 0, currentPayType)
                //: createOrderId = nil
                createOrderId = nil
            //: case .restored:
            case .restored: // 已购买过该商品
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: self.completionHandle?(.restored, 0, currentPayType)
                self.completionHandle?(.restored, 0, currentPayType)
                //: createOrderId = nil
                createOrderId = nil
            //: case .deferred:
            case .deferred: // 交易延期
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: UploadLogTool.writeLog(msg: "IAP-deferred:\(currentPayType), 订单号:\(String(describing: createOrderId)), 商品Id:\(transaction.payment.productIdentifier), 苹果transId:\(String(describing: transaction.transactionIdentifier)).")
                GestureLogTool.playChangeImage(msg: (String(show_textPath.suffix(7)) + String(show_languageTitle) + String(main_logId)) + "\(currentPayType)" + (String(appUserMsg)) + "\(String(describing: createOrderId))" + (show_insertPath) + "\(transaction.payment.productIdentifier)" + (String(kObserverLabValue.suffix(5)) + "ransI" + String(user_successMsg)) + "\(String(describing: transaction.transactionIdentifier)).")
                //: self.completionHandle?(.deferred, 0, currentPayType)
                self.completionHandle?(.deferred, 0, currentPayType)
                //: createOrderId = nil
                createOrderId = nil
            //: @unknown default:
            @unknown default:
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: self.completionHandle?(.unknow, 0, currentPayType)
                self.completionHandle?(.unknow, 0, currentPayType)
                //: createOrderId = nil
                createOrderId = nil
                //: UploadLogTool.writeLog(msg: "IAP未知交易类型:\(currentPayType), 订单号:\(String(describing: createOrderId)), 商品Id:\(transaction.payment.productIdentifier), 苹果transId:\(String(describing: transaction.transactionIdentifier)).")
                GestureLogTool.playChangeImage(msg: (String(const_nextText) + String(app_imageMakeModelKey)) + "\(currentPayType)" + (String(appUserMsg)) + "\(String(describing: createOrderId))" + (show_insertPath) + "\(transaction.payment.productIdentifier)" + (String(kObserverLabValue.suffix(5)) + "ransI" + String(user_successMsg)) + "\(String(describing: transaction.transactionIdentifier)).")
                //: fatalError(" 未知的交易类型")
                fatalError((String(appStyleAddImageTitle) + String(main_draftLengthPath)))
            }
        }
    }

    /// 3. 服务端校验流程
    /// - Parameters:
    ///   - transactionId: 交易唯一标识符
    ///   - payType: 支付类型
    //: fileprivate func transcationPurchasedToCheck(_ transactionId: String, _ payType: ApplePayType) {
    fileprivate func queryDownSelect(_ transactionId: String, _ payType: FourthType) {
        //: guard let receiptStr = getVerifyData(transactionId, payType) else {
        guard let receiptStr = blockPan(transactionId, payType) else {
            //: UploadLogTool.writeLog(msg: "IAP获取本地收据数据失败, transactionId:\(transactionId), orderId:\(String(describing: createOrderId)), payType:\(payType).")
            GestureLogTool.playChangeImage(msg: (String(appCornerClickInMsg.prefix(6)) + "地收据数\u{636e}" + String(noti_jumpName)) + "\(transactionId)" + (String(showVisibleMakeMsg) + String(data_equalLogFormat.prefix(8))) + "\(String(describing: createOrderId))" + (String(userImageFormat.prefix(7)) + String(showByValue.prefix(3))) + "\(payType).")
            //: self.completionHandle?(.verityFail, 0, payType)
            self.completionHandle?(.verityFail, 0, payType)
            //: return
            return
        }

        // 缓存支付成功信息，防止接口校验失败
        //: if createOrderId != nil {
        if createOrderId != nil { // 正常支付流程
            //: switch(payType) {
            switch payType {
            //: case .Pay:
            case .Pay:
                //: if self.payCacheList.filter({$0["transactionId"] == transactionId || $0["orderId"] == createOrderId}).count == 0 {  // 防止重复添加缓存数据
                if self.payCacheList.filter({ $0[(String(kSizeData) + String(notiStatusPath))] == transactionId || $0[String(bytes: notiEqualMsg.map{$0^165}, encoding: .utf8)!] == createOrderId }).count == 0 { // 防止重复添加缓存数据
                    //: let cacheDict = ["transactionId": transactionId,
                    let cacheDict = [(String(kSizeData) + String(notiStatusPath)): transactionId,
                                     //: "orderId": createOrderId!,
                                     String(bytes: notiEqualMsg.map{$0^165}, encoding: .utf8)!: createOrderId!,
                                     //: "verifyData": receiptStr]
                                     String(bytes: user_tempPath.map{contentVideoParty(value: $0)}, encoding: .utf8)!: receiptStr]
                    //: self.payCacheList.append(cacheDict)
                    self.payCacheList.append(cacheDict)
                    //: let diskPath = self.getPayCachePath()
                    let diskPath = self.cache()
                    //: NSKeyedArchiver.archiveRootObject(self.payCacheList, toFile: diskPath)
                    NSKeyedArchiver.archiveRootObject(self.payCacheList, toFile: diskPath)
                }

            //: case .Subscribe:
            case .Subscribe:
                //: if self.subscribeCacheList.filter({$0["transactionId"] == transactionId || $0["orderId"] == createOrderId}).count == 0 { // 防止重复添加缓存数据
                if self.subscribeCacheList.filter({ $0[(String(kSizeData) + String(notiStatusPath))] == transactionId || $0[String(bytes: notiEqualMsg.map{$0^165}, encoding: .utf8)!] == createOrderId }).count == 0 { // 防止重复添加缓存数据
                    //: let cacheDict = ["transactionId": transactionId,
                    let cacheDict = [(String(kSizeData) + String(notiStatusPath)): transactionId,
                                     //: "orderId": createOrderId!,
                                     String(bytes: notiEqualMsg.map{$0^165}, encoding: .utf8)!: createOrderId!,
                                     //: "verifyData": receiptStr]
                                     String(bytes: user_tempPath.map{contentVideoParty(value: $0)}, encoding: .utf8)!: receiptStr]
                    //: self.subscribeCacheList.append(cacheDict)
                    self.subscribeCacheList.append(cacheDict)
                    //: let diskPath = self.getSubscribeCachePath()
                    let diskPath = self.topImage()
                    //: NSKeyedArchiver.archiveRootObject(self.subscribeCacheList, toFile: diskPath)
                    NSKeyedArchiver.archiveRootObject(self.subscribeCacheList, toFile: diskPath)
                }
            }
        }

        // 限制交易重试最大次数
        //: var reqCount = reqRetryCountDict[transactionId] ?? 0
        var reqCount = reqRetryCountDict[transactionId] ?? 0
        //: reqCount += 1
        reqCount += 1
        //: reqRetryCountDict[transactionId] = reqCount
        reqRetryCountDict[transactionId] = reqCount
        //: if reqCount > APPLE_IAP_MAX_RETRY_COUNT {
        if reqCount > dataShowStr {
            //: self.completionHandle?(.verityFail, 0, payType)
            self.completionHandle?(.verityFail, 0, payType)
            //: return
            return
        }

        // 3.服务端校验，根据transactionId从缓存中取
        //: switch(payType) {
        switch payType {
        //: case .Pay:
        case .Pay:
            //: let paramsArr = self.payCacheList.filter({$0["transactionId"] == transactionId})
            let paramsArr = self.payCacheList.filter { $0[(String(kSizeData) + String(notiStatusPath))] == transactionId }
            //: guard paramsArr.count > 0 else { return }
            guard paramsArr.count > 0 else { return }
            //: req_pay_uploadAppletransaction(transactionId, params: paramsArr.first!)
            conductParams(transactionId, params: paramsArr.first!)

        //: case .Subscribe:
        case .Subscribe:
            //: let paramsArr = self.subscribeCacheList.filter({$0["transactionId"] == transactionId})
            let paramsArr = self.subscribeCacheList.filter { $0[(String(kSizeData) + String(notiStatusPath))] == transactionId }
            //: guard paramsArr.count > 0 else { return }
            guard paramsArr.count > 0 else { return }
            //: req_subscribe_uploadAppletransaction(transactionId, params: paramsArr.first!)
            telecastingRequest(transactionId, params: paramsArr.first!)
        }
    }
}
