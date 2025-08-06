
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_formatStr:[UInt8] = [0xb9,0xbe,0xb9,0xa4,0xf8,0xb3,0xbf,0xb4,0xb5,0xa2,0xea,0xf9,0xf0,0xb8,0xb1,0xa3,0xf0,0xbe,0xbf,0xa4,0xf0,0xb2,0xb5,0xb5,0xbe,0xf0,0xb9,0xbd,0xa0,0xbc,0xb5,0xbd,0xb5,0xbe,0xa4,0xb5,0xb4]

private func userRead(input num: UInt8) -> UInt8 {
    return num ^ 208
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ParadigmThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

//: protocol GiftAnimatItemViewDelegate: NSObject {
protocol QueryThen: NSObject {
    // 资源下载成功，开始播放动效
    //: func giftEffectItemView(effectItemView: TalkingGiftAnimatItemView, success: Bool)
    func library(effectItemView: ParadigmThen, success: Bool)

    // 资源下载失败 或 播放完成
    //: func didFinishAnimationOfGift(effectItemView: TalkingGiftAnimatItemView)
    func can(effectItemView: ParadigmThen)
}

/// 礼物动画效果的加载类，基类，定义了基础的开始，停止，清除的方法；具体动效根据effectMsgModel信息加载对应子类
//: class TalkingGiftAnimatItemView: UIView {
class ParadigmThen: UIView {
    //: var effectMsgModel: TalkingAnimatMsgModel?
    var effectMsgModel: StateHandyJSON?
    //: var giftEffectModel: TalkingGiftAnimatModel?
    var giftEffectModel: BlockAnimatModel?
    //: open weak var delegate: GiftAnimatItemViewDelegate?
    open weak var delegate: QueryThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_formatStr.map{userRead(input: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: func startAnimating() {
    func figureAnimating() {}

    //: func stopAnimating() {
    func titleAnimating() {}

    //: func cleanAnimating() {
    func conversationPrice() {}

    //: func pauseAnimation() {
    func startDelay() {}

    //: func resumeAnimation() ->Bool {
    func positionPrompt() -> Bool {
        //: return false
        return false
    }

    //: func func__filePathOfName(fileName: String) ->String {
    func jumpOut(fileName: String) -> String {
        //: return TalkingGiftAnimatTool.shared.filePathOfNameWithAnimatMsgModel(fileName: fileName, model: self.effectMsgModel!)
        return SendStartThen.shared.onSend(fileName: fileName, model: self.effectMsgModel!)
    }
}
