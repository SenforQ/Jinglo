
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let userEqualText:[UInt8] = [0x72,0x77,0x72,0x7d,0x31,0x6c,0x78,0x6d,0x6e,0x7b,0x43,0x32,0x29,0x71,0x6a,0x7c,0x29,0x77,0x78,0x7d,0x29,0x6b,0x6e,0x6e,0x77,0x29,0x72,0x76,0x79,0x75,0x6e,0x76,0x6e,0x77,0x7d,0x6e,0x6d]

fileprivate func labelName(image num: UInt8) -> UInt8 {
    let value = Int(num) - 9
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "group_someoneatme" :*/
fileprivate let k_thoughtUserUrl:String = "gmessageu"
fileprivate let showColorReloadStr:String = "nesmallme"

/*: "Someone@ me" :*/
fileprivate let noti_pushValue:[Character] = ["S","o","m","e","o","n","e","@"," ","m"]
fileprivate let constModelName:String = "content"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextView.swift
//  AbroadTalking
//
//  Created by young on 2023/4/11.
//

//: import UIKit
import UIKit

//: class TalkingSomeoneAtMeView: UIView {
class TextView: UIView {
    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        upScript()
        //: setupSubViewsConstraint()
        enableConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userEqualText.map{labelName(image: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var mentionBtn: UIButton = {
    lazy var mentionBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.clickLarge(type: .Medium, fontSize: 15)
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "group_someoneatme"), for: .normal)
        btn.setBackgroundImage(UIImage.thoughtImageBundleSizeText(name: (k_thoughtUserUrl.replacingOccurrences(of: "message", with: "ro") + "p_someo" + showColorReloadStr.replacingOccurrences(of: "small", with: "at"))), for: .normal)
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "group_someoneatme"), for: .highlighted)
        btn.setBackgroundImage(UIImage.thoughtImageBundleSizeText(name: (k_thoughtUserUrl.replacingOccurrences(of: "message", with: "ro") + "p_someo" + showColorReloadStr.replacingOccurrences(of: "small", with: "at"))), for: .highlighted)
        //: btn.setTitle("Someone@ me".localized, for: .normal)
        btn.setTitle((String(noti_pushValue) + constModelName.replacingOccurrences(of: "content", with: "e")).localized, for: .normal)
        //: btn.setTitleColor(UIColor.msgTipsColor(), for: .normal)
        btn.setTitleColor(UIColor.satisfy(), for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingSomeoneAtMeView {
extension TextView {
    /// 添加视图
    //: private func setupSubviews() {
    private func upScript() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(mentionBtn)
        self.addSubview(mentionBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func enableConstraint() {
        //: mentionBtn.snp.makeConstraints { make in
        mentionBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
