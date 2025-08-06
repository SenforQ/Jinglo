
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainShareColorName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_me_income" :*/
fileprivate let k_labMsg:String = "icon_mtable input abs"
fileprivate let showUserTitle:String = "changeme"

/*: "Income" :*/
fileprivate let constMakeFormat:String = "Incomeline view model clear file"

/*: "icon_me_male_wallet" :*/
fileprivate let main_insideGiftMaleMsg:String = "take range showicon_m"
fileprivate let appLabPath:String = "target mode let varle_wa"

/*: "Wallet" :*/
fileprivate let mainSizeValue:[Character] = ["W","a","l","l","e","t"]

/*: "#7189F7" :*/
fileprivate let appLeadingMessage:[Character] = ["#","7","1","8","9","F","7"]

/*: "Level" :*/
fileprivate let noti_blockMessage:String = "click self regular view toLevel"

/*: "icon_me_level" :*/
fileprivate let data_datePath:String = "guard self extension leticon_m"

/*: "$ :*/
fileprivate let notiMeStr:String = "bubble"

/*: "Verification needed before balance check" :*/
fileprivate let mainShowValue:[UInt8] = [0xe2,0xd1,0xc6,0xdd,0xd2,0xdd,0xd7,0xd5,0xc0,0xdd,0xdb,0xda,0x94,0xda,0xd1,0xd1,0xd0,0xd1,0xd0,0x94,0xd6,0xd1,0xd2,0xdb,0xc6,0xd1,0x94,0xd6,0xd5,0xd8,0xd5,0xda,0xd7,0xd1,0x94,0xd7,0xdc,0xd1,0xd7,0xdf]

private func basicPic(total num: UInt8) -> UInt8 {
    return num ^ 180
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageColumnsCell.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTwoColumnsCell: UITableViewCell {
class ImageColumnsCell: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        cellOf()
        //: setupSubViewsConstraint()
        currentPosition()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainShareColorName.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var goldCoinsBtn: UIButton = {
    private lazy var goldCoinsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(goldCoinsButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(makePlace), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.clickLarge(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.toEvent()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 38, height: 37))
            make.size.equalTo(CGSize(width: 38, height: 37))
        }
        //: if PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue && PunctuateThen.share.appStatus != AppSkinStatus.special.rawValue {
        if PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue && PunctuateThen.share.appStatus != HiddenHashableRepresentation.special.rawValue {
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_income")
            icon.image = UIImage.thoughtImageBundleSizeText(name: (String(k_labMsg.prefix(6)) + "e_in" + showUserTitle.replacingOccurrences(of: "change", with: "co")))
            //: lab.text = "Income".localized
            lab.text = (String(constMakeFormat.prefix(6))).localized
            //: } else {
        } else {
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_male_wallet")
            icon.image = UIImage.thoughtImageBundleSizeText(name: (String(main_insideGiftMaleMsg.suffix(6)) + "e_ma" + String(appLabPath.suffix(5)) + "llet"))
            //: lab.text = "Wallet".localized
            lab.text = (String(mainSizeValue)).localized
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var goldCoinsNum: UILabel = {
    private lazy var goldCoinsNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.clickLarge(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(appLeadingMessage)))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var myLevelBtn: UIButton = {
    private lazy var myLevelBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(myLevelButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(totalernalRepresentationClick), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.clickLarge(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.toEvent()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Level".localized
        lab.text = (String(noti_blockMessage.suffix(5))).localized
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.image = UIImage.BundleImageNamed(name: "icon_me_level")
        icon.image = UIImage.thoughtImageBundleSizeText(name: (String(data_datePath.suffix(6)) + "e_level"))
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 39, height: 37))
            make.size.equalTo(CGSize(width: 39, height: 37))
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var myLevelNum: UILabel = {
    private lazy var myLevelNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.clickLarge(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(appLeadingMessage)))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeTwoColumnsCell {
extension ImageColumnsCell {
    //: func setViewData() {
    func primaryColorKind() {
        //: if PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue && PunctuateThen.share.appStatus != AppSkinStatus.special.rawValue {
        if PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue, PunctuateThen.share.appStatus != HiddenHashableRepresentation.special.rawValue {
            //: goldCoinsNum.text = "$\(PunctuateThen.share.loginUserMode.mf_income)"
            goldCoinsNum.text = "$\(PunctuateThen.share.loginUserMode.mf_income)"
            //: } else {
        } else {
            //: goldCoinsNum.text = "\(PunctuateThen.share.loginUserMode.mf_coin)"
            goldCoinsNum.text = "\(PunctuateThen.share.loginUserMode.mf_coin)"
        }
        //: myLevelNum.text = PunctuateThen.share.loginUserMode.level
        myLevelNum.text = PunctuateThen.share.loginUserMode.level
    }

    /// gold coins
    //: @objc private func goldCoinsButtonClick() {
    @objc private func makePlace() {
        //: incomeClick()
        allow()
    }

    /// my level
    //: @objc private func myLevelButtonClick() {
    @objc private func totalernalRepresentationClick() {
        //: RangePushManager.share.func__pushToWebVC(webViewType: .Level)
        RangePushManager.share.barOn(webViewType: .Level)
    }

    /// income
    //: @objc func incomeClick() {
    @objc func allow() {
        //: if PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue && PunctuateThen.share.appStatus != AppSkinStatus.special.rawValue {
        if PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue, PunctuateThen.share.appStatus != HiddenHashableRepresentation.special.rawValue {
            //: if PunctuateThen.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue || PunctuateThen.share.loginUserMode.isTPAuth == TPUserAuth.isRefused.rawValue {
            if PunctuateThen.share.loginUserMode.isTPAuth == AuthColumnConvertible.unknown.rawValue || PunctuateThen.share.loginUserMode.isTPAuth == AuthColumnConvertible.isRefused.rawValue {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Verification needed before balance check")
                self.occupant(showMsg: String(bytes: mainShowValue.map{basicPic(total: $0)}, encoding: .utf8)!)
                //: let vc = TalkingFaceVerificationVC()
                let vc = ClickViewController()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.occurrentWith()?.navigationController?.pushViewController(vc, animated: true)
                //: } else if PunctuateThen.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
            } else if PunctuateThen.share.loginUserMode.isTPAuth == AuthColumnConvertible.isOnGoing.rawValue {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Verification needed before balance check")
                self.occupant(showMsg: String(bytes: mainShowValue.map{basicPic(total: $0)}, encoding: .utf8)!)
                //: let vc = TalkingFinalVerificationVC()
                let vc = TopViewController()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.occurrentWith()?.navigationController?.pushViewController(vc, animated: true)

                //: } else {
            } else {
                //: RangePushManager.share.func__pushToWebVC(webViewType: .Balance)
                RangePushManager.share.barOn(webViewType: .Balance)
            }

            //: } else {
        } else {
            //: RangePushManager.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            RangePushManager.share.barOn(webViewType: .RechargeFullPage)
        }
    }
}

// MARK: - Layout

//: extension TalkingMeTwoColumnsCell {
extension ImageColumnsCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func cellOf() {
        //: self.contentView.addSubview(goldCoinsBtn)
        self.contentView.addSubview(goldCoinsBtn)
        //: goldCoinsBtn.addSubview(goldCoinsNum)
        goldCoinsBtn.addSubview(goldCoinsNum)
        //: self.contentView.addSubview(myLevelBtn)
        self.contentView.addSubview(myLevelBtn)
        //: myLevelBtn.addSubview(myLevelNum)
        myLevelBtn.addSubview(myLevelNum)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func currentPosition() {
        //: let btn_width = (ScreenWidth-30-8)/2
        let btn_width = (kQueryValue - 30 - 8) / 2
        //: goldCoinsBtn.snp.makeConstraints { make in
        goldCoinsBtn.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.size.equalTo(CGSize(width: btn_width, height: 70))
            make.size.equalTo(CGSize(width: btn_width, height: 70))
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
        //: goldCoinsNum.snp.makeConstraints { make in
        goldCoinsNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }

        //: myLevelBtn.snp.makeConstraints { make in
        myLevelBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.size.bottom.equalTo(goldCoinsBtn)
            make.top.size.bottom.equalTo(goldCoinsBtn)
        }
        //: myLevelNum.snp.makeConstraints { make in
        myLevelNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }
    }
}
