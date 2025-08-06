
//: Declare String Begin

/*: "mf/business/list" :*/
fileprivate let notiCountPathMakeValue:[Character] = ["m","f","/","b","u","s","i","n","e","s","s","/","l","i","s","t"]

/*: "Any" :*/
fileprivate let dataPopularUrl:String = "self in result user makeAny"

/*: "58+" :*/
fileprivate let kOffPath:[Character] = ["5","8","+"]

/*: "Yes" :*/
fileprivate let appIconPathName:[Character] = ["Y","e","s"]

/*: "tab" :*/
fileprivate let userHalfText:[UInt8] = [0x2a,0x3f,0x3c]

private func cosmicDust(click num: UInt8) -> UInt8 {
    return num ^ 94
}

/*: "page" :*/
fileprivate let constUserText:[UInt8] = [0x55,0x44,0x42,0x40]

private func pushHidden(image num: UInt8) -> UInt8 {
    return num ^ 37
}

/*: "minAge" :*/
fileprivate let notiGestureUrl:[UInt8] = [0x7f,0x7b,0x7c,0x53,0x75,0x77]

private func equalKey(app num: UInt8) -> UInt8 {
    return num ^ 18
}

/*: "maxAge" :*/
fileprivate let user_viewPath:[UInt8] = [0x59,0x55,0x4c,0x75,0x53,0x51]

private func giftStop(kit num: UInt8) -> UInt8 {
    return num ^ 52
}

/*: "datingVideo" :*/
fileprivate let notiModelStr:[UInt8] = [0xa8,0xa5,0xb8,0xad,0xb2,0xab,0x9a,0xad,0xa8,0xa9,0xb3]

fileprivate func leadingColor(temp num: UInt8) -> UInt8 {
    let value = Int(num) - 68
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "uid" :*/
fileprivate let userCellFormat:[Character] = ["u","i","d"]

/*: "mf/premiumStar/list" :*/
fileprivate let notiLocalKey:String = "bottom bottom size amf/pr"
fileprivate let data_managerMessage:[Character] = ["S","t","a"]
fileprivate let k_mText:String = "var varr/list"

/*: "mf/business/adBanner" :*/
fileprivate let k_makeModelKey:[Character] = ["m","f","/","b","u","s","i","n","e","s","s","/","a","d","B","a","n","n","e","r"]

/*: "position" :*/
fileprivate let notiTextShowFormat:[UInt8] = [0x37,0x36,0x3a,0x30,0x3b,0x30,0x36,0x35]

fileprivate func addFrame(to num: UInt8) -> UInt8 {
    let value = Int(num) - 199
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "bannerList" :*/
fileprivate let kUserMsg:[Character] = ["b","a","n","n","e","r","L","i","s","t"]

/*: "mf/rank/list" :*/
fileprivate let mainGiftData:[Character] = ["m","f","/","r","a","n","k","/","l","i","s","t"]

/*: "name" :*/
fileprivate let notiErrorMsg:[UInt8] = [0x65,0x6d,0x61,0x6e]

/*: "period" :*/
fileprivate let userEqualPath:[UInt8] = [0x4e,0x43,0x50,0x47,0x4d,0x42]

fileprivate func nameYesterday(make num: UInt8) -> UInt8 {
    let value = Int(num) + 34
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "user/position" :*/
fileprivate let showSuiteData:String = "useobject"
fileprivate let k_postId:String = "iticell"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AvailableRequestManager.swift
//  AbroadTalking
//
//  Created by young on 2022/9/8.
//

//: import UIKit
import UIKit

//: enum SocialTab: Int {
enum TagComparable: Int {
    //: case hot = 1
    case hot = 1 // 活跃
    //: case nearby  = 2
    case nearby = 2 // 附近
    //: case new  = 3
    case new = 3 // 新用户
}

//: class SocialRequestManager {
class AvailableRequestManager {
    // 列表分页
    //: var listPage = 0
    var listPage = 0
    // 巨星计划分页
    //: var premiumStarPage = 0
    var premiumStarPage = 0
    // 防止重复请求
    //: var premiumStarIsLoading = false
    var premiumStarIsLoading = false
    // 巨星计划是否有更多数据
    //: var premiumStarCanLoadMore = true
    var premiumStarCanLoadMore = true
    // 最大请求次数
    //: let maxReq = 3
    let maxReq = 3
    // 当前已请求次数
    //: var haveReq = 0
    var haveReq = 0
    /// 请求首页列表数据
    /// - Parameters:
    ///   - tab: 1-活跃 2-附近 3-新人 4-同省 5-同城 6-高级用户
    ///   - page: 分页
    ///   - completion: 回调
    //: func req_socialList(tab: SocialTab, completion: @escaping FinishBlock) {
    func computerMenu(tab: TagComparable, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "mf/business/list"
        reqModel.requestPath = (String(notiCountPathMakeValue))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET

        // 筛选条件
        //: var minAge = 0
        var minAge = 0
        //: var maxAge = 0
        var maxAge = 0
        //: var datingVideo = 0
        var datingVideo = 0
        //: if SEARCH_AGE == "Any".localized {
        if kSuccessPath == (String(dataPopularUrl.suffix(3))).localized {
            //: minAge = 18
            minAge = 18
            //: maxAge = 80
            maxAge = 80
            //: } else if SEARCH_AGE == "58+" {
        } else if kSuccessPath == "58+" {
            //: minAge = 58
            minAge = 58
            //: maxAge = 80
            maxAge = 80
            //: } else {
        } else {
            //: let arr = SEARCH_AGE.split(separator: "-")
            let arr = kSuccessPath.split(separator: "-")
            //: if arr.count > 1 {
            if arr.count > 1 {
                //: minAge = Int(arr[0]) ?? 0
                minAge = Int(arr[0]) ?? 0
                //: maxAge = Int(arr[1]) ?? 0
                maxAge = Int(arr[1]) ?? 0
            }
        }
        //: if SEARCH_VIDEOCOVER == "Yes".localized {
        if k_tableName == (String(appIconPathName)).localized {
            //: datingVideo = 1
            datingVideo = 1
        }

        //: reqModel.params = ["tab": tab.rawValue,
        reqModel.params = [String(bytes: userHalfText.map{cosmicDust(click: $0)}, encoding: .utf8)!: tab.rawValue,
                           //: "page": listPage,
                           String(bytes: constUserText.map{pushHidden(image: $0)}, encoding: .utf8)!: listPage,
                           //: "minAge": minAge,
                           String(bytes: notiGestureUrl.map{equalKey(app: $0)}, encoding: .utf8)!: minAge,
                           //: "maxAge": maxAge,
                           String(bytes: user_viewPath.map{giftStop(kit: $0)}, encoding: .utf8)!: maxAge,
                           //: "datingVideo": datingVideo]
                           String(bytes: notiModelStr.map{leadingColor(temp: $0)}, encoding: .utf8)!: datingVideo]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: var resultArr = result as! [Dictionary<String, Any>]
            var resultArr = result as! [[String: Any]]

            //: if self.listPage == 0 {
            if self.listPage == 0 {
                //: self.section0Data.removeAll()
                self.section0Data.removeAll()
                //: self.section1Data.removeAll()
                self.section1Data.removeAll()
                //: self.bolckRepetData.removeAll()
                self.bolckRepetData.removeAll()
            }

            /// 后台拉黑向上补齐返回数据，客户端拉取下页有重复数据过滤
            //: for uid in self.bolckRepetData {
            for uid in self.bolckRepetData {
                //: for (index, dict) in resultArr.enumerated() {
                for (index, dict) in resultArr.enumerated() {
                    //: let uidstr = dict["uid"] as? Int
                    let uidstr = dict[(String(userCellFormat))] as? Int
                    //: if uid == String(uidstr ?? 0) {
                    if uid == String(uidstr ?? 0) {
                        //: resultArr.remove(at: index)
                        resultArr.remove(at: index)
                    }
                }
            }

            //: for dict in resultArr {
            for dict in resultArr {
                //: if let model = SocialUserListModel.deserialize(from: dict as? Dictionary) {
                if let model = RefListModel.deserialize(from: dict as? Dictionary) {
                    //: if self.section0Data.count < 4 {
                    if self.section0Data.count < 4 {
                        //: self.section0Data.append(model)
                        self.section0Data.append(model)
                        //: } else {
                    } else {
                        //: self.section1Data.append(model)
                        self.section1Data.append(model)
                    }
                    //: self.bolckRepetData.insert("\(model.uid)")
                    self.bolckRepetData.insert("\(model.uid)")
                }
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 请求巨星计划列表
    /// - Parameter completion: 回调
    //: func req_premiumStarList(completion: @escaping FinishBlock) {
    func domainName(completion: @escaping FinishBlock) {
        //: if premiumStarIsLoading { return }
        if premiumStarIsLoading { return }

        //: premiumStarIsLoading = true
        premiumStarIsLoading = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "mf/premiumStar/list"
        reqModel.requestPath = (String(notiLocalKey.suffix(5)) + "emium" + String(data_managerMessage) + String(k_mText.suffix(6)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["page": premiumStarPage]
        reqModel.params = [String(bytes: constUserText.map{pushHidden(image: $0)}, encoding: .utf8)!: premiumStarPage]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: self.premiumStarIsLoading = false
            self.premiumStarIsLoading = false
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if self.premiumStarPage == 0 {
            if self.premiumStarPage == 0 {
                //: self.premiumStarListData.removeAll()
                self.premiumStarListData.removeAll()
            }

            //: let arr = result as! [Dictionary<String, Any>]
            let arr = result as! [[String: Any]]
            //: for dict in arr {
            for dict in arr {
                //: if let model = PremiumStarListModel.deserialize(from: dict as? Dictionary) {
                if let model = FaceHandyJSON.deserialize(from: dict as? Dictionary) {
                    //: self.premiumStarListData.append(model)
                    self.premiumStarListData.append(model)
                }
            }

            //: if arr.count < 20 {
            if arr.count < 20 {
                //: self.premiumStarCanLoadMore = false
                self.premiumStarCanLoadMore = false
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取广告位banner
    /// - Parameters:
    ///   - position: 广告位标识，1=首页，2=me,3:私聊
    ///   - completion: 回调
    //: func req_adBanner(position: Int, completion: @escaping FinishBlock) {
    func toCompletion(position: Int, completion: @escaping FinishBlock) {
        //: premiumStarIsLoading = true
        premiumStarIsLoading = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "mf/business/adBanner"
        reqModel.requestPath = (String(k_makeModelKey))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["position": position]
        reqModel.params = [String(bytes: notiTextShowFormat.map{addFrame(to: $0)}, encoding: .utf8)!: position]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if position == 2 {
            if position == 2 {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(String(kUserMsg))] ?? []).arrayValue
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = MakeSingleBannerModel.deserialize(from: dict.dictionaryObject) {
                    //: self.adBannerListData.append(model)
                    self.adBannerListData.append(model)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 首页榜单

    //: class func getRankListRequest(topName: String?, periodName: String?, completion: @escaping FinishBlock) {
    class func mailingList(topName: String?, periodName: String?, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "mf/rank/list"
        reqModel.requestPath = (String(mainGiftData))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["name": topName ?? "", "period": periodName ?? ""]
        reqModel.params = [String(bytes: notiErrorMsg.reversed(), encoding: .utf8)!: topName ?? "", String(bytes: userEqualPath.map{nameYesterday(make: $0)}, encoding: .utf8)!: periodName ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 上传定位

    //: class func req_uploadPosition(params: [String: Any], completion: @escaping FinishBlock) {
    class func uploadAndSay(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "user/position"
        reqModel.requestPath = (showSuiteData.replacingOccurrences(of: "object", with: "r") + "/pos" + k_postId.replacingOccurrences(of: "cell", with: "on"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - Lazy load

    //: lazy var section0Data: [SocialUserListModel] = {
    lazy var section0Data: [RefListModel] = //: return Array<RefListModel>()
        .init()
    //: }()

    //: lazy var section1Data: [SocialUserListModel] = {
    lazy var section1Data: [RefListModel] = //: return Array<RefListModel>()
        .init()
    //: }()

    //: lazy var bolckRepetData = Set<String>()
    lazy var bolckRepetData = Set<String>()

    //: lazy var premiumStarListData: [PremiumStarListModel] = {
    lazy var premiumStarListData: [FaceHandyJSON] = //: return Array<FaceHandyJSON>()
        .init()
    //: }()

    //: lazy var adBannerListData: [SocialAdBannerModel] = {
    lazy var adBannerListData: [MakeSingleBannerModel] = //: return Array<MakeSingleBannerModel>()
        .init()
    //: }()
}
