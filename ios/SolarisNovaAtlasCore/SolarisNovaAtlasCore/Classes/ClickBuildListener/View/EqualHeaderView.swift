
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_infoArrayStr:[UInt8] = [0x2b,0x30,0x2b,0x36,0xea,0x25,0x31,0x26,0x27,0x34,0xfc,0xeb,0xe2,0x2a,0x23,0x35,0xe2,0x30,0x31,0x36,0xe2,0x24,0x27,0x27,0x30,0xe2,0x2b,0x2f,0x32,0x2e,0x27,0x2f,0x27,0x30,0x36,0x27,0x26]

fileprivate func doFile(status num: UInt8) -> UInt8 {
    let value = Int(num) + 62
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "What would you like to share with others? (Free)" :*/
fileprivate let userTopName:[UInt8] = [0xfd,0xc2,0xcb,0xde,0x8a,0xdd,0xc5,0xdf,0xc6,0xce,0x8a,0xd3,0xc5,0xdf,0x8a,0xc6,0xc3,0xc1,0xcf,0x8a,0xde,0xc5,0x8a,0xd9,0xc2,0xcb,0xd8,0xcf,0x8a,0xdd,0xc3,0xde,0xc2,0x8a,0xc5,0xde,0xc2,0xcf,0xd8,0xd9,0x95,0x8a,0x82,0xec,0xd8,0xcf,0xcf,0x83]

private func leadingIndex(table num: UInt8) -> UInt8 {
    return num ^ 170
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EqualHeaderView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

// 限制长度
//: let kFreeTextLengthLimit = 300
let kKeyBottomText = 300

//: class FreeCollectionHeaderView: UICollectionReusableView {
class EqualHeaderView: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_infoArrayStr.map{doFile(status: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        userContent()
        //: setupSubViewsConstraint()
        restriction()
    }

    // MARK: - Lazy load

    //: lazy var textView: YYTextView = {
    lazy var textView: YYTextView = {
        //: let tv = YYTextView()
        let tv = YYTextView()
        //: tv.textColor = UIColor.appTitleColor()
        tv.textColor = UIColor.toEvent()
        //: tv.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        tv.font = UIFont.clickLarge(type: .Regular, fontSize: 16)
        //: tv.placeholderText = "What would you like to share with others? (Free)".localized
        tv.placeholderText = String(bytes: userTopName.map{leadingIndex(table: $0)}, encoding: .utf8)!.localized
        //: tv.placeholderFont = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        tv.placeholderFont = UIFont.clickLarge(type: .Regular, fontSize: 15)
        //: tv.placeholderTextColor = UIColor.appValueDetailColor()
        tv.placeholderTextColor = UIColor.hockeyPlayer()
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeThen.shared.direction == .rightToLeft {
            //: tv.textAlignment = .right
            tv.textAlignment = .right
        }
        //: tv.delegate = self
        tv.delegate = self
        //: return tv
        return tv
        //: }()
    }()

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - YYTextViewDelegate

//: extension FreeCollectionHeaderView: YYTextViewDelegate {
extension EqualHeaderView: YYTextViewDelegate {
    //: func textView(_ textView: YYTextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    func textView(_ textView: YYTextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: let string = textView.text + text
        let string = textView.text + text
        //: guard string.count < kFreeTextLengthLimit else {
        guard string.count < kKeyBottomText else {
            //: return false
            return false
        }

        //: return true
        return true
    }
}

// MARK: - LayoutUI

//: extension FreeCollectionHeaderView {
extension EqualHeaderView {
    // 添加视图
    //: private func setupSubviews() {
    private func userContent() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(textView)
        backView.addSubview(textView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func restriction() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalTo(6)
            make.top.equalTo(6)
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
        }
        //: textView.snp.makeConstraints { make in
        textView.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(20)
            make.top.equalTo(20)
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
        }
    }
}
