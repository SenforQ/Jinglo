
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainManagerDoingTitle:[UInt8] = [0x90,0x97,0x90,0x8d,0xd1,0x9a,0x96,0x9d,0x9c,0x8b,0xc3,0xd0,0xd9,0x91,0x98,0x8a,0xd9,0x97,0x96,0x8d,0xd9,0x9b,0x9c,0x9c,0x97,0xd9,0x90,0x94,0x89,0x95,0x9c,0x94,0x9c,0x97,0x8d,0x9c,0x9d]

private func intervalercalateBag(gift num: UInt8) -> UInt8 {
    return num ^ 249
}

/*: "#EDEDED" :*/
fileprivate let const_modelIconId:[Character] = ["#","E","D","E","D","E"]
fileprivate let showDataFormat:String = "male"

/*: "Click for details" :*/
fileprivate let userBeginFormat:String = "Clictop label on shared model"
fileprivate let main_managerUrl:String = "from enter details"

/*: "#128CFF" :*/
fileprivate let notiRankName:[Character] = ["#","1","2","8","C","F"]
fileprivate let appMemberData:String = "array"

/*: "system_notif_click_go" :*/
fileprivate let const_broadName:String = "indexstem"
fileprivate let appObserverPath:String = "content color from else inlick_go"

/*: "img" :*/
fileprivate let constReportShareId:[Character] = ["i","m","g"]

/*: "jumpKey" :*/
fileprivate let show_statusMsg:String = "add"
fileprivate let userCenterTitle:[Character] = ["u","m","p","K","e","y"]

/*: "url" :*/
fileprivate let constToUrl:String = "ureffect"

/*: "mfChat" :*/
fileprivate let userModelKey:[UInt8] = [0x2a,0x21,0x4,0x2f,0x26,0x33]

private func touchReload(me num: UInt8) -> UInt8 {
    return num ^ 71
}

/*: "jumpUid" :*/
fileprivate let kLoadKey:String = "cell index playerjumpUid"

/*: "mfChatGift" :*/
fileprivate let userModelMsg:[UInt8] = [0x40,0x39,0x16,0x3b,0x34,0x47,0x1a,0x3c,0x39,0x47]

fileprivate func accountingData(user num: UInt8) -> UInt8 {
    let value = Int(num) - 211
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "user" :*/
fileprivate let constDetailUrl:[UInt8] = [0x52,0x54,0x42,0x55]

private func valueAsk(color num: UInt8) -> UInt8 {
    return num ^ 39
}

/*: "outerUrl" :*/
fileprivate let k_contentFormat:[UInt8] = [0x21,0x3b,0x3a,0x2b,0x3c,0x1b,0x3c,0x22]

private func textOf(view num: UInt8) -> UInt8 {
    return num ^ 78
}

/*: "系统通知跳转失败：不支持  :*/
fileprivate let user_attentionPath:[Character] = ["系","统","通","知","跳","转","失"]
fileprivate let kTitleData:String = "\u{8d25}"
fileprivate let userInsideName:String = "：不支\u{6301} "

/*:  跳转类型。" :*/
fileprivate let showWithPath:String = " 跳转类\u{578b}。"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  JumpViewCell.swift
//  AbroadTalking
//
//  Created by young on 2023/11/8.
//

//: import UIKit
import UIKit

//: class TalkingChatSystemNotifJumpMsgCell: TalkingChatBaseMsgCell {
class JumpViewCell: CommonViewCell {
    //: var textData: TalkingChatSystemNotifJumpMsgCellData?
    var textData: RitualCellData?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: setupSubviews()
        tipAwakeScale()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainManagerDoingTitle.map{intervalercalateBag(gift: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bannerImgV: UIImageView = {
    private lazy var bannerImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.isHidden = true
        img.isHidden = true
        //: self.bubbleImgView.addSubview(img)
        self.bubbleImgView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleLab: YYLabel = {
    private lazy var titleLab: YYLabel = {
        //: let lab = YYLabel()
        let lab = YYLabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.isHidden = true
        lab.isHidden = true
        //: self.bubbleImgView.addSubview(lab)
        self.bubbleImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: YYLabel = {
    private lazy var contentLab: YYLabel = {
        //: let lab = YYLabel()
        let lab = YYLabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.isHidden = true
        lab.isHidden = true
        //: self.bubbleImgView.addSubview(lab)
        self.bubbleImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var jumpBtn: UIButton = {
    private lazy var jumpBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(jumpToDetailsButtonEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(selectOut), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: self.bubbleImgView.addSubview(btn)
        self.bubbleImgView.addSubview(btn)
        //: let line = UIView()
        let line = UIView()
        //: line.backgroundColor = UIColor(hex: "#EDEDED")
        line.backgroundColor = UIColor(hex: (String(const_modelIconId) + showDataFormat.replacingOccurrences(of: "male", with: "D")))
        //: btn.addSubview(line)
        btn.addSubview(line)
        //: line.snp.makeConstraints { make in
        line.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(0.5)
            make.height.equalTo(0.5)
        }
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Click for details".localized
        lab.text = (String(userBeginFormat.prefix(4)) + "k for" + String(main_managerUrl.suffix(8))).localized
        //: lab.textColor = UIColor(hex: "#128CFF")
        lab.textColor = UIColor(hex: (String(notiRankName) + appMemberData.replacingOccurrences(of: "array", with: "F")))
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lab.font = UIFont.clickLarge(type: .Regular, fontSize: 14)
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.BundleImageNamed(name: "system_notif_click_go")
        imgV.image = UIImage.thoughtImageBundleSizeText(name: (const_broadName.replacingOccurrences(of: "index", with: "sy") + "_notif_c" + String(appObserverPath.suffix(7))))
        //: btn.addSubview(imgV)
        btn.addSubview(imgV)
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 6, height: 11))
            make.size.equalTo(CGSize(width: 6, height: 11))
        }
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatSystemNotifJumpMsgCell {
extension JumpViewCell {
    /// 刷新视图
    //: override func fill(with data: TCommonCellData) {
    override func ladenInfo(with data: DetailCellData) {
        //: super.fill(with: data)
        super.ladenInfo(with: data)
        //: bannerImgV.isHidden = true
        bannerImgV.isHidden = true
        //: titleLab.isHidden = true
        titleLab.isHidden = true
        //: contentLab.isHidden = true
        contentLab.isHidden = true
        //: jumpBtn.isHidden = true
        jumpBtn.isHidden = true
        //: textData = data as? TalkingChatSystemNotifJumpMsgCellData
        textData = data as? RitualCellData
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: if textData.hasBanner {
        if textData.hasBanner {
            //: bannerImgV.setUrlImage(urlStr: textData.extraJson["img"].stringValue)
            bannerImgV.putBackThroughFinish(urlStr: textData.extraJson[(String(constReportShareId))].stringValue)
            //: bannerImgV.isHidden = false
            bannerImgV.isHidden = false
            //: bannerImgV.Corner(width: textData.bannerSize.width,
            bannerImgV.areaRemoveRadiiAt(width: textData.bannerSize.width,
                                         //: height: textData.bannerSize.height,
                                         height: textData.bannerSize.height,
                                         //: corners: [ .topRight],
                                         corners: [.topRight],
                                         //: cornerRadii: CGSize(width: 12, height: 12))
                                         cornerRadii: CGSize(width: 12, height: 12))
        }
        //: if textData.titleHeight > 0 {
        if textData.titleHeight > 0 {
            //: let width = textData.bannerSize.width-20
            let width = textData.bannerSize.width - 20
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.titleAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.titleAttrStr)
            //: titleLab.textLayout = yyLayout
            titleLab.textLayout = yyLayout
            //: titleLab.isHidden = false
            titleLab.isHidden = false
        }
        //: if textData.contentHeight > 0 {
        if textData.contentHeight > 0 {
            //: let width = textData.bannerSize.width-20
            let width = textData.bannerSize.width - 20
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.contentAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.contentAttrStr)
            //: contentLab.textLayout = yyLayout
            contentLab.textLayout = yyLayout
            //: contentLab.isHidden = false
            contentLab.isHidden = false
        }

        //: jumpBtn.isHidden = (textData.jumpHeight == 0)
        jumpBtn.isHidden = (textData.jumpHeight == 0)
    }

    /// 跳转事件
    //: @objc private func jumpToDetailsButtonEvent() {
    @objc private func selectOut() {
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: guard textData.jumpHeight > 0 else { return }
        guard textData.jumpHeight > 0 else { return }
        //: let jumpKey = textData.extraJson["jumpKey"].stringValue
        let jumpKey = textData.extraJson[(show_statusMsg.replacingOccurrences(of: "add", with: "j") + String(userCenterTitle))].stringValue
        //: switch (jumpKey) {
        switch jumpKey {
        //: case "url": // 网页
        case (constToUrl.replacingOccurrences(of: "effect", with: "l")): // 网页
            //: let url = textData.extraJson["url"].stringValue
            let url = textData.extraJson[(constToUrl.replacingOccurrences(of: "effect", with: "l"))].stringValue
            //: RangePushManager.share.func__pushToWebVC(urlStr: url)
            RangePushManager.share.userBlade(urlStr: url)

        //: case "mfChat":  // 私聊
        case String(bytes: userModelKey.map{touchReload(me: $0)}, encoding: .utf8)!: // 私聊
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(kLoadKey.suffix(7)))].stringValue
            //: RangePushManager.share.func__pushToPriveteChatVC(chatID: jumpUid)
            RangePushManager.share.liveInsideCompletion(chatID: jumpUid)

        //: case "mfChatGift":  // 私聊打开礼物面板
        case String(bytes: userModelMsg.map{accountingData(user: $0)}, encoding: .utf8)!: // 私聊打开礼物面板
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(kLoadKey.suffix(7)))].stringValue
            //: RangePushManager.share.func__pushToPriveteChatVC(chatID: jumpUid) { vc in
            RangePushManager.share.liveInsideCompletion(chatID: jumpUid) { vc in
                //: vc.msgInputView.clickgiftBtn()
                vc.msgInputView.blockChange()
            }
        //: case "user": // 用户详情
        case String(bytes: constDetailUrl.map{valueAsk(color: $0)}, encoding: .utf8)!: // 用户详情
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(kLoadKey.suffix(7)))].stringValue
            //: RangePushManager.share.func__pushToUserDetailVC(uid: jumpUid)
            RangePushManager.share.clickOfUid(uid: jumpUid)

        //: case "outerUrl": // 外链
        case String(bytes: k_contentFormat.map{textOf(view: $0)}, encoding: .utf8)!: // 外链
            //: let url = textData.extraJson["url"].stringValue
            let url = textData.extraJson[(constToUrl.replacingOccurrences(of: "effect", with: "l"))].stringValue
            //: if let url = URL(string: url) {
            if let url = URL(string: url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }

        //: default:
        default:
            //: printLog(message: "系统通知跳转失败：不支持 \(jumpKey) 跳转类型。")
            printLog(message: (String(user_attentionPath) + kTitleData + userInsideName) + "\(jumpKey)" + (showWithPath))
        }
    }
}

// MARK: - Layout

//: extension TalkingChatSystemNotifJumpMsgCell {
extension JumpViewCell {
    /// 初始化视图
    //: private func setupSubviews() {
    private func tipAwakeScale() {
        //: self.bubbleImgView.layer.cornerRadius = 2
        self.bubbleImgView.layer.cornerRadius = 2
        //: self.bubbleImgView.layer.masksToBounds = true
        self.bubbleImgView.layer.masksToBounds = true
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.isUserInteractionEnabled = true
        self.bubbleImgView.isUserInteractionEnabled = true
    }

    /// 自动更新布局
    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: let bannerH = textData.hasBanner ? textData.bannerSize.height:0
        let bannerH = textData.hasBanner ? textData.bannerSize.height : 0
        //: self.bannerImgV.snp.makeConstraints { make in
        self.bannerImgV.snp.makeConstraints { make in
            //: make.top.leading.equalToSuperview()
            make.top.leading.equalToSuperview()
            //: make.width.equalTo(textData.bannerSize.width)
            make.width.equalTo(textData.bannerSize.width)
            //: make.height.equalTo(bannerH)
            make.height.equalTo(bannerH)
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(bannerImgV.snp.bottom).offset(10)
            make.top.equalTo(bannerImgV.snp.bottom).offset(10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(textData.titleHeight)
            make.height.equalTo(textData.titleHeight)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(4)
            make.top.equalTo(titleLab.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab)
            make.leading.trailing.equalTo(titleLab)
            //: make.height.equalTo(textData.contentHeight)
            make.height.equalTo(textData.contentHeight)
        }

        //: jumpBtn.snp.makeConstraints { make in
        jumpBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentLab.snp.bottom).offset(10)
            make.top.equalTo(contentLab.snp.bottom).offset(10)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.width.equalTo(bannerImgV)
            make.width.equalTo(bannerImgV)
            //: make.height.equalTo(textData.jumpHeight)
            make.height.equalTo(textData.jumpHeight)
        }
    }
}
