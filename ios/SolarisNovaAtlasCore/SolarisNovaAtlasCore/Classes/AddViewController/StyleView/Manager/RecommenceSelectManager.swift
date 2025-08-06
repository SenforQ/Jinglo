
//: Declare String Begin

/*: "mf/user/recommendUser" :*/
fileprivate let noti_infoPath:[Character] = ["m"]
fileprivate let constShowFormat:String = "name table addf/use"
fileprivate let noti_viewLabelMsg:String = "valuevalueend"

/*: "page" :*/
fileprivate let kLevelPath:[UInt8] = [0x91,0x82,0x88,0x86]

fileprivate func analogDigitalConverter(name num: UInt8) -> UInt8 {
    let value = Int(num) + 223
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/user/singleUser" :*/
fileprivate let const_rowUrl:String = "mf/uslab color self make"
fileprivate let dataVoiceKey:[Character] = ["e","r","/","s","i","n","g","l"]
fileprivate let dataModelStr:[Character] = ["e","U","s","e","r"]

/*: "uid" :*/
fileprivate let userMatchTitle:[UInt8] = [0x10,0xc,0x1]

private func topUser(hidden num: UInt8) -> UInt8 {
    return num ^ 101
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RecommenceSelectManager.swift
//  AbroadTalking
//
//  Created by young on 2023/1/11.
//

//: import UIKit
import UIKit

//: class TalkingSearchManager: NSObject {
class RecommenceSelectManager: NSObject {
    // 列表分页
    //: var recommendListPage = 0
    var recommendListPage = 0

    /// 推荐用户列表
    /// - Parameter completion: 回调
    //: func req_recommendUser(completion: @escaping FinishBlock) {
    func proposeInSystemUp(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "mf/user/recommendUser"
        reqModel.requestPath = (String(noti_infoPath) + String(constShowFormat.suffix(5)) + "r/reco" + noti_viewLabelMsg.replacingOccurrences(of: "value", with: "m") + "User")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["page": recommendListPage]
        reqModel.params = [String(bytes: kLevelPath.map{analogDigitalConverter(name: $0)}, encoding: .utf8)!: recommendListPage]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if self.recommendListPage == 0 {
            if self.recommendListPage == 0 {
                //: self.recommendDataArr.removeAll()
                self.recommendDataArr.removeAll()
            }

            //: for dict in result as! [Dictionary<String, Any>] {
            for dict in result as! [[String: Any]] {
                //: if let model = TalkingRecommendUserModel.deserialize(from: dict as? Dictionary) {
                if let model = MoveUserModel.deserialize(from: dict as? Dictionary) {
                    //: self.recommendDataArr.append(model)
                    self.recommendDataArr.append(model)
                }
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 搜索uid
    /// - Parameters:
    ///   - uid: 用户ID
    ///   - completion: 回调
    //: func req_singleUser(uid: String, completion: @escaping FinishBlock) {
    func imageFinishInput(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SubRequestModel()
        //: reqModel.requestPath = "mf/user/singleUser"
        reqModel.requestPath = (String(const_rowUrl.prefix(5)) + String(dataVoiceKey) + String(dataModelStr))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: userMatchTitle.map{topUser(hidden: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showTopStr.toFromLabel(model: reqModel) { succeed, result, errorModel in
            //: self.searchListDataArr.removeAll()
            self.searchListDataArr.removeAll()
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

            //: if let model = TalkingRecommendUserModel.deserialize(from: result) {
            if let model = MoveUserModel.deserialize(from: result) {
                //: self.searchListDataArr.append(model)
                self.searchListDataArr.append(model)
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - Lazy Load

    //: lazy var recommendDataArr: [TalkingRecommendUserModel] = {
    lazy var recommendDataArr: [MoveUserModel] = //: return Array<MoveUserModel>()
        .init()
    //: }()

    //: lazy var searchListDataArr: [TalkingRecommendUserModel] = {
    lazy var searchListDataArr: [MoveUserModel] = //: return Array<MoveUserModel>()
        .init()
    //: }()
}
