
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let constBottomPath:[UInt8] = [0x5b,0x5c,0x5b,0x46,0x1a,0x51,0x5d,0x56,0x57,0x40,0x8,0x1b,0x12,0x5a,0x53,0x41,0x12,0x5c,0x5d,0x46,0x12,0x50,0x57,0x57,0x5c,0x12,0x5b,0x5f,0x42,0x5e,0x57,0x5f,0x57,0x5c,0x46,0x57,0x56]

private func fromStyle(tap num: UInt8) -> UInt8 {
    return num ^ 50
}

/*: "#FFD13A" :*/
fileprivate let appConversationUrl:String = "to constraint var intimate#FFD13A"

/*: "gift_gb_umnad_1" :*/
fileprivate let k_identityMsg:[Character] = ["g","i"]
fileprivate let userDeleteMessage:[Character] = ["f","t","_","g","b","_","u","m","n","a","d","_","1"]

/*: "icon_circle_pic_default" :*/
fileprivate let noti_positionTitle:String = "iccolorn"
fileprivate let data_kindPath:String = "center view engine return truee_pic_def"
fileprivate let notiReadLabMessage:String = "aumoon"

/*: "Open lucky blind-box" :*/
fileprivate let dataFieldSharedStr:String = "Open self view"
fileprivate let notiGiftData:String = "cookie"
fileprivate let main_toFormat:[Character] = ["u","c","k","y"," ","b","l","i","n","d","-","b","o","x"]

/*: "Sent " :*/
fileprivate let mainCardValue:[Character] = ["S","e","n","t"," "]

/*: "PingFangSC-Semibold" :*/
fileprivate let constTaskAllData:String = "PingFopen color current location"
fileprivate let const_recoverMessage:String = "valueibold"

/*: "%d" :*/
fileprivate let noti_equalData:String = "%dcomment make var remind"

/*: "Bombard" :*/
fileprivate let k_playerStatusId:String = "Bombardcolor string"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DirectToReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/16.
//

//: import UIKit
import UIKit

//: class TalkingGiftTrackItemView: UIView {
class DirectToReactiveCompatible: UIView {
    //: var giftMsgModel = TalkingGiftMsgAnimatModel()
    var giftMsgModel = ListHandyJSON()
    //: var giftSendItem = [TalkingGiftNumArrModel()]
    var giftSendItem = [SubMeasurable()]
    //: var showAnimationDone = false
    var showAnimationDone = false

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.tertiary()
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeThen.shared.direction == .rightToLeft {
            //: let transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            let transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            //: self.layer.transform = transform
            self.layer.transform = transform
            //: avatarImage.transform = CGAffineTransform(scaleX: -1, y: 1)
            avatarImage.transform = CGAffineTransform(scaleX: -1, y: 1)
            //: nickLb.transform = CGAffineTransform(scaleX: -1, y: 1)
            nickLb.transform = CGAffineTransform(scaleX: -1, y: 1)
            //: giftName.transform = CGAffineTransform(scaleX: -1, y: 1)
            giftName.transform = CGAffineTransform(scaleX: -1, y: 1)
            //: giftImage.transform = CGAffineTransform(scaleX: -1, y: 1)
            giftImage.transform = CGAffineTransform(scaleX: -1, y: 1)
            //: giftNum.transform = CGAffineTransform(scaleX: -1, y: 1)
            giftNum.transform = CGAffineTransform(scaleX: -1, y: 1)
            //: pluralTip.transform = CGAffineTransform(scaleX: -1, y: 1)
            pluralTip.transform = CGAffineTransform(scaleX: -1, y: 1)
            //: countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
            countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: constBottomPath.map{fromStyle(tap: $0)}, encoding: .utf8)!)
    }

    //: init(frame: CGRect, giftMsgDic: Dictionary<String, Any?>) {
    init(frame: CGRect, giftMsgDic _: [String: Any?]) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: private lazy var bgImage: UIImageView = {
    private lazy var bgImage: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .left
        img.contentMode = .left
        //: return img
        return img
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: view.alpha = 0
        view.alpha = 0
        //: return view
        return view
        //: }()
    }()

    ///  赠送者头像
    //: lazy var avatarImage: UIImageView = {
    lazy var avatarImage: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.layer.borderColor      = UIColor.white.cgColor
        img.layer.borderColor = UIColor.white.cgColor
        //: img.layer.borderWidth      = 2
        img.layer.borderWidth = 2
        //: img.clipsToBounds          = true
        img.clipsToBounds = true
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    /// 赠送者昵称
    //: private lazy var nickLb: UILabel = {
    private lazy var nickLb: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.numberOfLines = 1
        lb.numberOfLines = 1
        //: lb.font = .pingfangRugularFont(fontSize: 14)
        lb.font = .recoverOf(fontSize: 14)
        //: lb.lineBreakMode = .byTruncatingTail
        lb.lineBreakMode = .byTruncatingTail
        //: lb.textColor = UIColor.white
        lb.textColor = UIColor.white
        //: return lb
        return lb
        //: }()
    }()

    /// 礼物名称
    //: private lazy var giftName: UILabel = {
    private lazy var giftName: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
//        lb.numberOfLines = 1
        //: lb.textColor = UIColor.init(hex: "#FFD13A")
        lb.textColor = UIColor(hex: (String(appConversationUrl.suffix(7))))
        //: lb.font = UIFont.pingfangRugularFont(fontSize: 13)
        lb.font = UIFont.recoverOf(fontSize: 13)
        //: return lb
        return lb
        //: }()
    }()

    /// 礼物图片
    //: private lazy var giftImage: UIImageView = {
    private lazy var giftImage: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: return imag
        return imag
        //: }()
    }()

    ///  连送
    //: private lazy var pluralTip: TalkingGiftTrackItemLabel = {
    private lazy var pluralTip: KeyItemLabel = {
        //: let lab = TalkingGiftTrackItemLabel()
        let lab = KeyItemLabel()
        //: lab.isHidden = true
        lab.isHidden = true

        //: return lab
        return lab
        //: }()
    }()

    ///  礼物数量
    //: private lazy var countLb: TalkingGiftTrackItemLabel = {
    private lazy var countLb: KeyItemLabel = {
        //: let lab = TalkingGiftTrackItemLabel()
        let lab = KeyItemLabel()
        //: lab.backgroundColor = .clear
        lab.backgroundColor = .clear

        //: return lab
        return lab
        //: }()
    }()

    ///
    //: private lazy var giftNum: UILabel = {
    private lazy var giftNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.isHidden = true
        lab.isHidden = true

        //: return lab
        return lab
        //: }()
    }()
}

//: extension TalkingGiftTrackItemView {
extension DirectToReactiveCompatible {
    //: func setGiftMsgModel(model: TalkingGiftMsgAnimatModel) {
    func isImage(model: ListHandyJSON) {
        //: self.giftMsgModel = model
        self.giftMsgModel = model
        //: let fromNickname = giftMsgModel.fromNickname
        let fromNickname = giftMsgModel.fromNickname
        //: self.bgImage.image = UIImage.BundleImageNamed(name: "gift_gb_umnad_1")
        self.bgImage.image = UIImage.thoughtImageBundleSizeText(name: (String(k_identityMsg) + String(userDeleteMessage)))

        //: let placeholder = UIImage.BundleImageNamed(name: "icon_circle_pic_default")
        let placeholder = UIImage.thoughtImageBundleSizeText(name: (noti_positionTitle.replacingOccurrences(of: "color", with: "o") + "_circl" + String(data_kindPath.suffix(9)) + notiReadLabMessage.replacingOccurrences(of: "moon", with: "lt")))

        //: if (model.showType == ChatGiftAnimatType.myStery.rawValue ) {
        if model.showType == DogTagEquatable.myStery.rawValue {
            //: self.nickLb.text = "Open lucky blind-box".localized
            self.nickLb.text = (String(dataFieldSharedStr.prefix(5)) + notiGiftData.replacingOccurrences(of: "cookie", with: "l") + String(main_toFormat)).localized
            //: }else {
        } else {
            //: self.nickLb.text = fromNickname
            self.nickLb.text = fromNickname
        }

        //: self.avatarImage.setUrlImage(urlStr: giftMsgModel.fromHeadPic, placeImg: placeholder)
        self.avatarImage.beforeRender(urlStr: giftMsgModel.fromHeadPic, placeImg: placeholder)
        //: self.giftImage.setUrlImage(urlStr: giftMsgModel.giftPic, placeImg: placeholder)
        self.giftImage.beforeRender(urlStr: giftMsgModel.giftPic, placeImg: placeholder)

        //: self.giftName.text = "Sent ".localized + giftMsgModel.pname
        self.giftName.text = (String(mainCardValue)).localized + giftMsgModel.pname

        //: self.countLb.layer.anchorPoint = CGPoint.init(x: 0.5, y: 0.5)
        self.countLb.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        //: var sendNumber = giftMsgModel.num
        var sendNumber = giftMsgModel.num
        //: if giftMsgModel.sendNum > 0 {
        if giftMsgModel.sendNum > 0 {
            //: sendNumber = sendNumber*giftMsgModel.sendNum
            sendNumber = sendNumber * giftMsgModel.sendNum
        }
        //: if (sendNumber > 1) {
        if sendNumber > 1 {
            //: var font1 = UIFont(name: "PingFangSC-Semibold", size: 22)
            var font1 = UIFont(name: (String(constTaskAllData.prefix(5)) + "angSC-S" + const_recoverMessage.replacingOccurrences(of: "value", with: "em")), size: 22)
            //: font1 = italicFontWith(angle: 15, fontSize: 18, fontName: font1!.fontName)
            font1 = alongBar(angle: 15, fontSize: 18, fontName: font1!.fontName)
            //: var font2 = UIFont(name: "PingFangSC-Semibold", size: 26)
            var font2 = UIFont(name: (String(constTaskAllData.prefix(5)) + "angSC-S" + const_recoverMessage.replacingOccurrences(of: "value", with: "em")), size: 26)
            //: font2 = italicFontWith(angle: 15, fontSize: 22, fontName: font2!.fontName)
            font2 = alongBar(angle: 15, fontSize: 22, fontName: font2!.fontName)

            //: if (font1 == nil) {
            if font1 == nil {
                //: font1 = UIFont.systemFont(ofSize: 18, weight: .medium)
                font1 = UIFont.systemFont(ofSize: 18, weight: .medium)
                //: font2 = UIFont.systemFont(ofSize: 22, weight: .medium)
                font2 = UIFont.systemFont(ofSize: 22, weight: .medium)
            }

            //: let strs   = ["X", String.init(format: "%d", sendNumber)]
            let strs = ["X", String(format: "%d", sendNumber)]
            //: let colors = [UIColor.white, UIColor.white]
            let colors = [UIColor.white, UIColor.white]
            //: let fonts = [font1!, font2!]
            let fonts = [font1!, font2!]
            //: var numText = NSMutableAttributedString.init()
            var numText = NSMutableAttributedString()
            //: numText = numText.mutilpartAttributedStringWith(texts: strs, colors: colors, fonts: fonts)
            numText = numText.valueOn(texts: strs, colors: colors, fonts: fonts)

            //: numText.yy_strokeWidth     = (-1)
            numText.yy_strokeWidth = -1
            //: numText.yy_strokeColor     = UIColor.black
            numText.yy_strokeColor = UIColor.black
            //: giftNum.attributedText = numText
            giftNum.attributedText = numText
            //: giftNum.isHidden         = false
            giftNum.isHidden = false
            //: pluralTip.isHidden       = false
            pluralTip.isHidden = false
            //: countLb.left           = pluralTip.right - 5
            countLb.left = pluralTip.right - 5

            //: } else {
        } else {
            //: giftNum.isHidden         = true
            giftNum.isHidden = true
            //: pluralTip.isHidden       = true
            pluralTip.isHidden = true
            //: countLb.left           = giftImage.right - 5
            countLb.left = giftImage.right - 5
        }

        //: refreshGiftCount(giftCount: giftMsgModel.comboNum)
        encompassing(giftCount: giftMsgModel.comboNum)
    }

    //: func refreshGiftCount(giftCount: Int) {
    func encompassing(giftCount: Int) {
        //: var font1 = UIFont(name: "PingFangSC-Semibold", size: 45)
        var font1 = UIFont(name: (String(constTaskAllData.prefix(5)) + "angSC-S" + const_recoverMessage.replacingOccurrences(of: "value", with: "em")), size: 45)
        //: font1 = italicFontWith(angle: 15, fontSize: 26, fontName: font1!.fontName)
        font1 = alongBar(angle: 15, fontSize: 26, fontName: font1!.fontName)
        //: var font2 = UIFont(name: "PingFangSC-Semibold", size: 45)
        var font2 = UIFont(name: (String(constTaskAllData.prefix(5)) + "angSC-S" + const_recoverMessage.replacingOccurrences(of: "value", with: "em")), size: 45)
        //: font2 = italicFontWith(angle: 15, fontSize: 38, fontName: font2!.fontName)
        font2 = alongBar(angle: 15, fontSize: 38, fontName: font2!.fontName)

        //: if (font1 == nil) {
        if font1 == nil {
            //: font1 = UIFont.systemFont(ofSize: 26, weight: .medium)
            font1 = UIFont.systemFont(ofSize: 26, weight: .medium)
            //: font2 = UIFont.systemFont(ofSize: 38, weight: .medium)
            font2 = UIFont.systemFont(ofSize: 38, weight: .medium)
        }

        //: let strs   = ["X", " ", String.init(format: "%d", giftCount)]
        let strs = ["X", " ", String(format: "%d", giftCount)]
        //: let colors = [UIColor.RGBA(150, 77, 20, 1), UIColor.white, UIColor.RGBA(150, 77, 20, 1)]
        let colors = [UIColor.loadRgba(150, 77, 20, 1), UIColor.white, UIColor.loadRgba(150, 77, 20, 1)]
        //: let fonts = [font1!, UIFont.systemFont(ofSize: 4), font2!]
        let fonts = [font1!, UIFont.systemFont(ofSize: 4), font2!]
        //: var attText = NSMutableAttributedString.init()
        var attText = NSMutableAttributedString()
        //: attText = attText.mutilpartAttributedStringWith(texts: strs, colors: colors, fonts: fonts)
        attText = attText.valueOn(texts: strs, colors: colors, fonts: fonts)

        //: let paragraphStyle = NSMutableParagraphStyle.init()
        let paragraphStyle = NSMutableParagraphStyle()
        //: paragraphStyle.lineBreakMode            = .byWordWrapping
        paragraphStyle.lineBreakMode = .byWordWrapping
        //: paragraphStyle.alignment                = .center
        paragraphStyle.alignment = .center

        //: attText.yy_setParagraphStyle(paragraphStyle, range: NSRange.init(location: 0, length: attText.length))
        attText.yy_setParagraphStyle(paragraphStyle, range: NSRange(location: 0, length: attText.length))

        //: countLb.setAttributedText(attributedText: attText)
        countLb.rangeAttributedContent(attributedText: attText)

        //: let width   = (attText.size().width) * 1.5 + 10
        let width = (attText.size().width) * 1.5 + 10 // 1.5 仿射变换的值
        //: var x = pluralTip.isHidden == false ? (pluralTip.right - 6.0):(giftImage.right - 6.0)
        var x = pluralTip.isHidden == false ? (pluralTip.right - 6.0) : (giftImage.right - 6.0)
        //: countLb.setFrame(frame: CGRect(x: x, y: countLb.origin.y, width: width, height: countLb.size.height))
        countLb.emphasizing(frame: CGRect(x: x, y: countLb.origin.y, width: width, height: countLb.size.height))
    }

    /// 连击
    //: func comboHitWith(giftMsgModel: TalkingGiftMsgAnimatModel) {
    func pathReload(giftMsgModel: ListHandyJSON) {
        //: self.giftMsgModel = giftMsgModel
        self.giftMsgModel = giftMsgModel

        //: NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(animateHide), object: nil)
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(withTop), object: nil)

        //: refreshGiftCount(giftCount: giftMsgModel.comboNum)
        encompassing(giftCount: giftMsgModel.comboNum)

        //    3
        //: self.countLb.layer.anchorPoint = CGPoint.init(x: 0.5, y: 0.5)
        self.countLb.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        //: if LanguageManager.shared.direction == .leftToRight {
        if MakeThen.shared.direction == .leftToRight {
            //: self.countLb.transform = .identity
            self.countLb.transform = .identity
            //: } else {
        } else {
            //: self.countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
            self.countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: UIView.animate(withDuration: 0.15, delay: 0, options: [.curveEaseOut]) {
        UIView.animate(withDuration: 0.15, delay: 0, options: [.curveEaseOut]) {
            //: if LanguageManager.shared.direction == .leftToRight {
            if MakeThen.shared.direction == .leftToRight {
                //: self.countLb.transform = CGAffineTransformMakeScale(1.5, 1.5)
                self.countLb.transform = CGAffineTransformMakeScale(1.5, 1.5)
                //: } else {
            } else {
                //: let scaleTransform = CGAffineTransformMakeScale(1.5, 1.5)
                let scaleTransform = CGAffineTransformMakeScale(1.5, 1.5)
                //: let combinedTransform = self.countLb.transform.concatenating(scaleTransform)
                let combinedTransform = self.countLb.transform.concatenating(scaleTransform)
                //: self.countLb.transform = combinedTransform
                self.countLb.transform = combinedTransform
            }
            //: }completion: { finish in
        } completion: { _ in

            //: UIView.animate(withDuration: 0.15, delay: 0, options: [.curveEaseInOut]) {
            UIView.animate(withDuration: 0.15, delay: 0, options: [.curveEaseInOut]) {
                //: if LanguageManager.shared.direction == .leftToRight {
                if MakeThen.shared.direction == .leftToRight {
                    //: self.countLb.transform = .identity
                    self.countLb.transform = .identity
                    //: } else {
                } else {
                    //: self.countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
                    self.countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
                }

                //: }completion: { finish in
            } completion: { _ in
            }
        }

        //: self.animationSparkAndSpread()
        self.clickInfo()
        //: self.perform(#selector(animateHide), afterDelay: 3.5)
        self.perform(#selector(withTop), afterDelay: 3.5)
    }

    /// 展示
    //: func showGiftAnimate(model: TalkingGiftMsgAnimatModel, animate: Bool) {
    func timeLab(model _: ListHandyJSON, animate _: Bool) {
        //: UIView.animate(withDuration: 0.2) {
        UIView.animate(withDuration: 0.2) {
            //: self.left += 10
            self.left += 10
        }
        //: UIView.animate(withDuration: 0.1, delay: 0.1, options: [.layoutSubviews]) {
        UIView.animate(withDuration: 0.1, delay: 0.1, options: [.layoutSubviews]) {
            //: self.contentView.alpha = 1
            self.contentView.alpha = 1
            //: }completion: { finish in
        } completion: { _ in
        }
        //: if LanguageManager.shared.direction == .leftToRight {
        if MakeThen.shared.direction == .leftToRight {
            //: self.countLb.transform = .identity
            self.countLb.transform = .identity
            //: } else {
        } else {
            //: self.countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
            self.countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: UIView.animate(withDuration: 0.2, delay: 0.1, options: [.layoutSubviews]) {
        UIView.animate(withDuration: 0.2, delay: 0.1, options: [.layoutSubviews]) {
            //: if LanguageManager.shared.direction == .leftToRight {
            if MakeThen.shared.direction == .leftToRight {
                //: self.countLb.transform = CGAffineTransformMakeScale(1.5, 1.5)
                self.countLb.transform = CGAffineTransformMakeScale(1.5, 1.5)
                //: } else {
            } else {
                //: let scaleTransform = CGAffineTransformMakeScale(1.5, 1.5)
                let scaleTransform = CGAffineTransformMakeScale(1.5, 1.5)
                //: let combinedTransform = self.countLb.transform.concatenating(scaleTransform)
                let combinedTransform = self.countLb.transform.concatenating(scaleTransform)
                //: self.countLb.transform = combinedTransform
                self.countLb.transform = combinedTransform
            }

            //: } completion: { finish in
        } completion: { _ in
            //: UIView.animate(withDuration: 0.2, delay: 0.1, options: [.layoutSubviews]) {
            UIView.animate(withDuration: 0.2, delay: 0.1, options: [.layoutSubviews]) {
                //: if LanguageManager.shared.direction == .leftToRight {
                if MakeThen.shared.direction == .leftToRight {
                    //: self.countLb.transform = .identity
                    self.countLb.transform = .identity
                    //: } else {
                } else {
                    //: self.countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
                    self.countLb.transform = CGAffineTransform(scaleX: -1, y: 1)
                }

                //: }completion: { [weak self] finish in
            } completion: { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.showAnimationDone = true
                self.showAnimationDone = true
            }
        }

        //: self.animationSparkAndSpread()
        self.clickInfo()

        //: self.perform(#selector(animateHide), afterDelay: 3.5)
        self.perform(#selector(withTop), afterDelay: 3.5)
    }

    //: func animationSparkAndSpread() {
    func clickInfo() {}

    //: func animationViewToTop(frame: CGRect) {
    func endFor(frame: CGRect) {
        //: UIView.animate(withDuration: 0.2, delay: 0.1, options: [.layoutSubviews]) {
        UIView.animate(withDuration: 0.2, delay: 0.1, options: [.layoutSubviews]) {
            //: self.frame = frame
            self.frame = frame
            //: }completion: { finish in
        } completion: { _ in
        }
    }

    //: @objc func animateHide() {
    @objc func withTop() {
        //: NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(animateHide), object: nil)
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(withTop), object: nil)
        //: giftMsgModel = TalkingGiftMsgAnimatModel()
        giftMsgModel = ListHandyJSON()
        //: self.removeFromSuperview()
        self.removeFromSuperview()
    }
}

//: extension TalkingGiftTrackItemView {
extension DirectToReactiveCompatible {
    //: func italicFontWith(angle: CGFloat, fontSize: CGFloat, fontName: String) -> (UIFont) {
    func alongBar(angle: CGFloat, fontSize: CGFloat, fontName: String) -> (UIFont) {
        //: let matrix = CGAffineTransform(a: 1, b: 0, c: CGFloat(tanf(Float(angle * Double.pi) / 180)), d: 1, tx: 0, ty: 0)
        let matrix = CGAffineTransform(a: 1, b: 0, c: CGFloat(tanf(Float(angle * Double.pi) / 180)), d: 1, tx: 0, ty: 0)

        //: let desc = UIFontDescriptor.init(name: fontName, matrix: matrix)
        let desc = UIFontDescriptor(name: fontName, matrix: matrix)

        //: let ret = UIFont.init(descriptor: desc, size: fontSize)
        let ret = UIFont(descriptor: desc, size: fontSize)
        //: return ret
        return ret
    }
}

//: extension TalkingGiftTrackItemView {
extension DirectToReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func tertiary() {
        //: let height = 46.0
        let height = 46.0

        //: self.addSubview(bgImage)
        self.addSubview(bgImage)
        //: bgImage.frame = CGRect.init(x: 5, y: (self.height-height)/2, width: 240, height: height)
        bgImage.frame = CGRect(x: 5, y: (self.height - height) / 2, width: 240, height: height)

        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.frame = CGRect.init(x: 5, y: (self.height-height)/2, width: 260, height: height)
        contentView.frame = CGRect(x: 5, y: (self.height - height) / 2, width: 260, height: height)

        //: contentView.addSubview(avatarImage)
        contentView.addSubview(avatarImage)
        //: avatarImage.frame = CGRect.init(x: 0, y: 0, width: height - 2, height: height - 2)
        avatarImage.frame = CGRect(x: 0, y: 0, width: height - 2, height: height - 2)
        //: avatarImage.layer.cornerRadius     = avatarImage.height/2
        avatarImage.layer.cornerRadius = avatarImage.height / 2

        //: contentView.addSubview(nickLb)
        contentView.addSubview(nickLb)
        //: nickLb.frame = CGRect.init(x: avatarImage.right + 5, y: 4, width: 130, height: 18)
        nickLb.frame = CGRect(x: avatarImage.right + 5, y: 4, width: 130, height: 18)

        //: contentView.addSubview(giftName)
        contentView.addSubview(giftName)
        //: giftName.frame = CGRect.init(x: nickLb.left, y: nickLb.bottom, width: nickLb.width, height: 17)
        giftName.frame = CGRect(x: nickLb.left, y: nickLb.bottom, width: nickLb.width, height: 17)

        //: let imagelen = height*1.2
        let imagelen = height * 1.2
        //: contentView.addSubview(giftImage)
        contentView.addSubview(giftImage)
        //: giftImage.frame = CGRect.init(x: nickLb.right + 5, y: (height-imagelen)/2-2, width: imagelen, height: imagelen)
        giftImage.frame = CGRect(x: nickLb.right + 5, y: (height - imagelen) / 2 - 2, width: imagelen, height: imagelen)

        //: var font = UIFont.boldSystemFont(ofSize: 24)
        var font = UIFont.boldSystemFont(ofSize: 24)
        //: font = italicFontWith(angle: 15, fontSize: 20, fontName: font.fontName)
        font = alongBar(angle: 15, fontSize: 20, fontName: font.fontName)

        //: let attributedString = NSMutableAttributedString.init()
        let attributedString = NSMutableAttributedString()
        //: let attText =  attributedString.mutilpartAttributedStringWith(texts: ["Bombard".localized], colors: [UIColor.RGBA(255, 232, 72, 1)], fonts: [font])
        let attText = attributedString.valueOn(texts: [(String(k_playerStatusId.prefix(7))).localized], colors: [UIColor.loadRgba(255, 232, 72, 1)], fonts: [font])
        //: pluralTip.setFrame(frame: CGRect.init(x: giftImage.right, y: 14, width: attText.size().width + 2, height: height-20))
        pluralTip.emphasizing(frame: CGRect(x: giftImage.right, y: 14, width: attText.size().width + 2, height: height - 20))

        //: pluralTip.setAttributedText(attributedText: attText)
        pluralTip.rangeAttributedContent(attributedText: attText)
        //: contentView.addSubview(pluralTip)
        contentView.addSubview(pluralTip)

        //: countLb.setFrame(frame: CGRect.init(x: giftImage.right, y: 2, width: 70, height: height))
        countLb.emphasizing(frame: CGRect(x: giftImage.right, y: 2, width: 70, height: height))
        //: contentView.addSubview(countLb)
        contentView.addSubview(countLb)

        //: contentView.addSubview(giftNum)
        contentView.addSubview(giftNum)
        //: giftNum.snp.remakeConstraints { make in
        giftNum.snp.remakeConstraints { make in
            //: make.top.equalTo(-10)
            make.top.equalTo(-10)
            //: make.left.equalTo(giftImage.snp.right)
            make.left.equalTo(giftImage.snp.right)
            //: make.height.equalTo(26)
            make.height.equalTo(26)
        }
    }
}
