
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kLevelStr:[UInt8] = [0x85,0x8a,0x85,0x90,0x44,0x7f,0x8b,0x80,0x81,0x8e,0x56,0x45,0x3c,0x84,0x7d,0x8f,0x3c,0x8a,0x8b,0x90,0x3c,0x7e,0x81,0x81,0x8a,0x3c,0x85,0x89,0x8c,0x88,0x81,0x89,0x81,0x8a,0x90,0x81,0x80]

fileprivate func startTop(error num: UInt8) -> UInt8 {
    let value = Int(num) - 28
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AspectToolView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import UIKit
import UIKit

//: class TPreviewBottomToolView: UIView {
class AspectToolView: UIView {
    //: var uid:String = ""
    var uid: String = ""
    //: var mid: String = ""
    var mid: String = ""
    //: var mType: String = ""
    var mType: String = ""
    //: var isLike = false
    var isLike = false
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var previewLikeBlock: (() -> Void)?
    var previewLikeBlock: (() -> Void)?
    //: var previewCommentBlock: (() -> Void)?
    var previewCommentBlock: (() -> Void)?
    //: var previewChatBlock: (() -> Void)?
    var previewChatBlock: (() -> Void)?
    //: var previewCrushBlock: (() -> Void)?
    var previewCrushBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.addSubviews()
        //: self.setupSubViewsConstraint()
        self.pause()
        //: self.bindInteraction()
        self.cleave()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kLevelStr.map{startTop(error: $0)}, encoding: .utf8)!)
    }
}

// MARK: - Bind && Event

//: extension TPreviewBottomToolView {
extension AspectToolView {
    //: private func bindInteraction() {
    private func cleave() {}

    //: @objc func registerLikeAction() {
    @objc func punish() {
        //: self.likeRequest()
        self.tipMessage()
    }

    //: @objc func registerChatAction() {
    @objc func bag() {
        //: self.chatPush()
        self.chatInsideFlick()
    }

    //: @objc func registerCrushAction() {
    @objc func motilityApp() {
        //: self.crushRequest()
        self.random()
    }

    //: @objc func registerCommentAction() {
    @objc func liveKindness() {
        //: self.commentPush()
        self.reply()
    }
}

// MARK: - update

//: extension TPreviewBottomToolView {
extension AspectToolView {
    //: func updateBottomView(model: TPreviewInfoModel) {
    func bottomSend(model: PublisherMeasurable) {
        //: uid = model.uid
        uid = model.uid
        //: mid = model.mid
        mid = model.mid
        //: mType = model.mType
        mType = model.mType
    }

    //: private func chatPush() {
    private func chatInsideFlick() {}

    //: private func commentPush() {
    private func reply() {}

    //: private func crushRequest() {
    private func random() {
        //: TalkingUserRequestManager.func__sendCrushWithUserId(targetUid: uid) { succeed, result, errorModel in
        BackgroundThen.addPathConsumer(targetUid: uid) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                // 播放动画
            }
        }
    }

    //: private func likeRequest() {
    private func tipMessage() {
        //: TalkingUserRequestManager.func__likeMoment(mid: mid, type: mType) { succeed, result, errorModel in
        BackgroundThen.completionKey(mid: mid, type: mType) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isLike = !self.isLike
                self.isLike = !self.isLike
            }
        }
    }
}

// MARK: Layout

//: extension TPreviewBottomToolView {
extension AspectToolView {
    //: private func setupSubviews() {
    private func addSubviews() {}

    //: private func setupSubViewsConstraint() {
    private func pause() {}
}
