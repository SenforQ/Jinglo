
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_awardData:[UInt8] = [0x5c,0x5b,0x5c,0x41,0x1d,0x56,0x5a,0x51,0x50,0x47,0xf,0x1c,0x15,0x5d,0x54,0x46,0x15,0x5b,0x5a,0x41,0x15,0x57,0x50,0x50,0x5b,0x15,0x5c,0x58,0x45,0x59,0x50,0x58,0x50,0x5b,0x41,0x50,0x51]

/*: "pic" :*/
fileprivate let data_kitImageMsg:[Character] = ["p","i","c"]

/*: "url" :*/
fileprivate let constAppMessage:String = "URL"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SocialView.swift
//  SolarisNovaAtlasCore
//
//  Created by Charlotte on 2024/4/7.
//

//: import UIKit
import UIKit

//: class SocialHeaderView: UICollectionReusableView {
class SocialView: UICollectionReusableView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = CGRectMake(0, 0, ScreenWidth, SocialHeaderView.getSelfHeight())
        self.frame = CGRectMake(0, 0, kQueryValue, SocialView.bankCharter())
        //: basicUI()
        toUi()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_awardData.map{$0^53}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var hostBtn: UIButton = {
    private lazy var hostBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = PunctuateThen.share.appConfigMode.homeOpAds.first
        let dic = PunctuateThen.share.appConfigMode.homeOpAds.first
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.blockHalf(urlStr: dic?[(String(data_kitImageMsg))] ?? "")
        //: btn.addTarget(self, action: #selector(hostBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(month), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var centerBtn: UIButton = {
    private lazy var centerBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = PunctuateThen.share.appConfigMode.homeOpAds.last
        let dic = PunctuateThen.share.appConfigMode.homeOpAds.last
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.blockHalf(urlStr: dic?[(String(data_kitImageMsg))] ?? "")
        //: btn.addTarget(self, action: #selector(centerBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(cardCell), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension SocialHeaderView {
extension SocialView {
    //: @objc private func hostBtnClick() {
    @objc private func month() {
        //: let dic = PunctuateThen.share.appConfigMode.homeOpAds.first
        let dic = PunctuateThen.share.appConfigMode.homeOpAds.first
        //: RangePushManager.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        RangePushManager.share.userBlade(urlStr: dic?[(constAppMessage.lowercased())] ?? "")
    }

    //: @objc private func centerBtnClick() {
    @objc private func cardCell() {
        //: let dic = PunctuateThen.share.appConfigMode.homeOpAds.last
        let dic = PunctuateThen.share.appConfigMode.homeOpAds.last
        //: RangePushManager.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        RangePushManager.share.userBlade(urlStr: dic?[(constAppMessage.lowercased())] ?? "")
    }
}

// MARK: - Layout

//: extension SocialHeaderView {
extension SocialView {
    //: class func getSelfHeight() -> CGFloat {
    class func bankCharter() -> CGFloat {
        //: var sheight = 0.0
        var sheight = 0.0
        //: if PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue && PunctuateThen.share.appConfigMode.homeOpAds.count > 1 {
        if PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue && PunctuateThen.share.appConfigMode.homeOpAds.count > 1 {
            //: sheight += 76.0
            sheight += 76.0
        }
        //: return sheight
        return sheight
    }

    //: private func basicUI() {
    private func toUi() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: if PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue, PunctuateThen.share.appConfigMode.homeOpAds.count > 0 {
        if PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue, PunctuateThen.share.appConfigMode.homeOpAds.count > 0 {
            //: self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width-26-8)/2, height: 64)
            self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
            //: self.centerBtn.frame = CGRect(x: self.width/2 + 4, y: 12, width: (self.width-26-8)/2, height: 64)
            self.centerBtn.frame = CGRect(x: self.width / 2 + 4, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
        }
    }
}
