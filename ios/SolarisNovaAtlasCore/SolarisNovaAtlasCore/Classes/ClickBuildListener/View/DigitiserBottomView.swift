
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_indexData:[UInt8] = [0xbf,0xb8,0xbf,0xa2,0xfe,0xb5,0xb9,0xb2,0xb3,0xa4,0xec,0xff,0xf6,0xbe,0xb7,0xa5,0xf6,0xb8,0xb9,0xa2,0xf6,0xb4,0xb3,0xb3,0xb8,0xf6,0xbf,0xbb,0xa6,0xba,0xb3,0xbb,0xb3,0xb8,0xa2,0xb3,0xb2]

/*: "btn_dongtai_dianzan_nor" :*/
fileprivate let mainReasonData:String = "text stackbtn_do"
fileprivate let showCompleteLabMakeStr:String = "voice model row returni_dian"
fileprivate let appPathMsg:String = "equala"
fileprivate let data_transformMainId:String = "n_norproposal self info fail make"

/*: "btn_dongtai_dianzan_nor1" :*/
fileprivate let showMessageData:String = "server the top list atbtn_"
fileprivate let userToStr:String = "tai_diacurrent main make"
fileprivate let dataSelectedUrl:String = "nzan_nor1text present"

/*: "btn_dongtai_pinglun_nor" :*/
fileprivate let app_liveStr:[Character] = ["b","t","n","_","d"]
fileprivate let data_mmValue:String = "self makeongtai_p"
fileprivate let k_touchLabData:[Character] = ["i","n","g","l","u","n","_","n","o","r"]

/*: "btn_dynamic_chat_nor" :*/
fileprivate let userManagerKey:String = "tag"
fileprivate let constFromNameData:[Character] = ["n","_","d","y","n","a","m","i","c","_","c","h","a","t","_","n","o","r"]

/*: "icon_dynamic_heart_default" :*/
fileprivate let mainColorClearValue:[Character] = ["i","c","o","n","_","d","y","n","a","m","i","c","_","h","e"]
fileprivate let mainCellId:String = "art_dtap for"

/*: "Chat" :*/
fileprivate let mainSharedKey:String = "Chatmodel view direction"

/*: "#752FE9" :*/
fileprivate let mainFilterUrl:String = "#752FE9cell type"

/*: "99+" :*/
fileprivate let main_shareUrl:[UInt8] = [0xb5,0xb5,0xa7]

private func rawData(page num: UInt8) -> UInt8 {
    return num ^ 140
}

/*: "%d" :*/
fileprivate let const_selectedStr:String = "%dadd with"

/*: "Comment" :*/
fileprivate let const_tagFormat:String = "Commenttype in total"

/*: "momentId" :*/
fileprivate let showViewFormat:String = "addme"

/*: "type" :*/
fileprivate let mainEraseFormat:String = "teventpe"

/*: "like" :*/
fileprivate let const_writeValue:String = "LIKE"

/*: "model" :*/
fileprivate let mainCornerWrapMessage:[UInt8] = [0xcd,0xcf,0xc4,0xc5,0xcc]

fileprivate func visualAspect(back num: UInt8) -> UInt8 {
    let value = Int(num) - 96
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "get json error" :*/
fileprivate let constNoId:String = "get jlet model"
fileprivate let show_bringFormat:[Character] = ["s","o","n"," ","e","r","r","o","r"]

/*: "comment" :*/
fileprivate let main_contentTitle:String = "commeindext"

/*: "number" :*/
fileprivate let constRequestMessage:[Character] = ["n","u","m","b","e","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DigitiserBottomView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import UIKit
import UIKit

//: class TalkingMomentItemBottomView: UIView {
class DigitiserBottomView: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var cunrrenModel = TalkingMomentModel()
    var cunrrenModel = ViewMeasurable()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        nameTool()
        //: setupSubViewsConstraint()
        capacityTable()
        //: bindInteraction()
        language()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_indexData.map{$0^214}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var infoLB: UILabel = {
    lazy var infoLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 14)
        label.font = .clickLarge(type: .Regular, fontSize: 14)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .hockeyPlayer()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var likePlayer: SVGAPlayer = {
    lazy var likePlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.delegate = self
        player.delegate = self
        //: self.addSubview(player)
        self.addSubview(player)
        //: return player
        return player
        //: }()
    }()

    //: lazy var likeBtn: UIButton = {
    lazy var likeBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_dongtai_dianzan_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(mainReasonData.suffix(6)) + "ngta" + String(showCompleteLabMakeStr.suffix(6)) + appPathMsg.replacingOccurrences(of: "equal", with: "z") + String(data_transformMainId.prefix(5)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_dongtai_dianzan_nor1"), for: .selected)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(showMessageData.suffix(4)) + "dong" + String(userToStr.prefix(7)) + String(dataSelectedUrl.prefix(9)))), for: .selected)
        //: btn.adjustsImageWhenHighlighted = false
        btn.adjustsImageWhenHighlighted = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var likeNumberLB: UILabel = {
    lazy var likeNumberLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .clickLarge(type: .Regular, fontSize: 16)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .hockeyPlayer()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var commentBtn: UIButton = {
    lazy var commentBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_dongtai_pinglun_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(app_liveStr) + String(data_mmValue.suffix(8)) + String(k_touchLabData))), for: .normal)
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var commentNumberLB: UILabel = {
    lazy var commentNumberLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .clickLarge(type: .Regular, fontSize: 16)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .hockeyPlayer()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var greetBtn: TalkingButton = {
    lazy var greetBtn: StartImageButton = {
        //: let btn = TalkingButton.init()
        let btn = StartImageButton()
        //: let bubbleInsets = UIEdgeInsets(top: 4, left: 11, bottom: 4, right: 11)
        let bubbleInsets = UIEdgeInsets(top: 4, left: 11, bottom: 4, right: 11)
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "btn_dynamic_chat_nor").resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch), for: .normal)
        btn.setBackgroundImage(UIImage.thoughtImageBundleSizeText(name: (userManagerKey.replacingOccurrences(of: "tag", with: "bt") + String(constFromNameData))).resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_dynamic_heart_default"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(mainColorClearValue) + String(mainCellId.prefix(5)) + "efault")), for: .normal)
        //: btn.setTitle("Chat".localized, for: .normal)
        btn.setTitle((String(mainSharedKey.prefix(4))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.atomic(fontSize: 14)
        btn.titleLabel?.font = UIFont.atomic(fontSize: 14)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMomentItemBottomView {
extension DigitiserBottomView {
    //: func configModel(model: TalkingMomentModel) {
    func statusClick(model: ViewMeasurable) {
        //: cunrrenModel = model
        cunrrenModel = model
        //: likeBtn.isHidden = false
        likeBtn.isHidden = false
        //: likeNumberLB.isHidden = false
        likeNumberLB.isHidden = false
        //: commentBtn.isHidden = false
        commentBtn.isHidden = false
        //: commentNumberLB.isHidden = false
        commentNumberLB.isHidden = false
        //: greetBtn.isHidden = PunctuateThen.share.loginUserMode.sex == model.sex ||  PunctuateThen.share.loginUserMode.userID == model.uid
        greetBtn.isHidden = PunctuateThen.share.loginUserMode.sex == model.sex || PunctuateThen.share.loginUserMode.userID == model.uid

        //: infoLB.text = model.addTime
        infoLB.text = model.addTime
        //: likeBtn.isSelected = model.isLike!
        likeBtn.isSelected = model.isLike!
        //: likeNumberLB.textColor = model.isLike! ? UIColor.init(hex: "#752FE9") :.appValueDetailColor()
        likeNumberLB.textColor = model.isLike! ? UIColor(hex: (String(mainFilterUrl.prefix(7)))) : .hockeyPlayer()
        //: likeNumberLB.text = model.likeNum! > 99 ? "99+" : String(format: "%d", model.likeNum! )
        likeNumberLB.text = model.likeNum! > 99 ? "99+" : String(format: "%d", model.likeNum!)
        //: commentNumberLB.text = model.replyNum! > 99 ? "99+" :  model.replyNum! > 0 ? String(format: "%d", model.replyNum!) : "Comment".localized
        commentNumberLB.text = model.replyNum! > 99 ? "99+" : model.replyNum! > 0 ? String(format: "%d", model.replyNum!) : (String(const_tagFormat.prefix(7))).localized
    }

    //: func likeBtnClik() {
    func agendaItem() {
        //: if !likeBtn.isSelected {
        if !likeBtn.isSelected {
            //: self.req_MomentLike(type: 1)
            self.brute(type: 1)
            //: self.likeplayer()
            self.sharedTo()
            //: }else {
        } else {
            //: req_MomentLike(type: 2)
            brute(type: 2)
        }
    }

    //: func req_MomentLike(type: Int) {
    func brute(type: Int) {
        //: likeBtn.isUserInteractionEnabled = false
        likeBtn.isUserInteractionEnabled = false
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = cunrrenModel.mid
        dict[(showViewFormat.replacingOccurrences(of: "add", with: "mo") + "ntId")] = cunrrenModel.mid
        //: dict["type"] = type
        dict[(mainEraseFormat.replacingOccurrences(of: "event", with: "y"))] = type

        //: TalkingMomentRequestTool.req_MomentLike(params: dict) { succeed, result, errorModel in
        StartReactiveCompatible.deadlineCompletion(params: dict) { succeed, _, errorModel in
            //: self.likeBtn.isUserInteractionEnabled = true
            self.likeBtn.isUserInteractionEnabled = true
            //: if succeed {
            if succeed {
                //: let isLike  =  type==1 ? true:false
                let isLike = type == 1 ? true : false
                //: var number = isLike ?  self.cunrrenModel.likeNum!+1 : self.cunrrenModel.likeNum!-1
                var number = isLike ? self.cunrrenModel.likeNum! + 1 : self.cunrrenModel.likeNum! - 1
                //: if number < 0 {
                if number < 0 {
                    //: number = 0
                    number = 0
                }
                //: self.likeBtn.isSelected = isLike
                self.likeBtn.isSelected = isLike
                //: self.cunrrenModel.isLike = isLike
                self.cunrrenModel.isLike = isLike
                //: self.cunrrenModel.likeNum = number
                self.cunrrenModel.likeNum = number
                //: self.likeNumberLB.text = String(format: "%d", number)
                self.likeNumberLB.text = String(format: "%d", number)
                //: self.likeNumberLB.textColor = isLike ? UIColor.init(hex: "#752FE9") :.appValueDetailColor()
                self.likeNumberLB.textColor = isLike ? UIColor(hex: (String(mainFilterUrl.prefix(7)))) : .hockeyPlayer()
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: NotificationCenter.default.post(name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: self, userInfo: ["type": "like", "model": self.cunrrenModel])
                    NotificationCenter.default.post(name: data_countMsg, object: self, userInfo: [(mainEraseFormat.replacingOccurrences(of: "event", with: "y")): (const_writeValue.lowercased()), String(bytes: mainCornerWrapMessage.map{visualAspect(back: $0)}, encoding: .utf8)!: self.cunrrenModel])
                }
                //: }else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.drawObserver(showMsg: errorModel!.errorMsg)
            }
        }
    }

    //: func greetBtnClick() {
    func greetAndClick() {
        //: RangePushManager.share.func__pushToPriveteChatVC(chatID: cunrrenModel.uid ?? "")
        RangePushManager.share.liveInsideCompletion(chatID: cunrrenModel.uid ?? "")
    }

    //: func likeplayer() {
    func sharedTo() {
        //: var url = SVGAEffectTool.default.getZipEffectPath(type: .Moment_like)
        var url = SkullSessionReactiveCompatible.default.region(type: .Moment_like)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeThen.shared.direction == .rightToLeft {
            //: url = SVGAEffectTool.default.getZipEffectPath(type: .Moment_likeRight)
            url = SkullSessionReactiveCompatible.default.region(type: .Moment_likeRight)
        }
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.likePlayer.videoItem = videoItem
                self.likePlayer.videoItem = videoItem
                //: self.likePlayer.startAnimation()
                self.likePlayer.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(constNoId.prefix(5)) + String(show_bringFormat)))
        }
    }

    //: @objc func updateCommentNumber(notification: NSNotification) -> Void {
    @objc func someViewNotification(notification: NSNotification) {
        //: let userinfo = notification.userInfo as! [String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]

        //: if userinfo["momentId"] as? Int != self.cunrrenModel.mid {
        if userinfo[(showViewFormat.replacingOccurrences(of: "add", with: "mo") + "ntId")] as? Int != self.cunrrenModel.mid {
            //: return
            return
                //: } else if userinfo["type"] as! String == "comment".localized {
        } else if userinfo[(mainEraseFormat.replacingOccurrences(of: "event", with: "y"))] as! String == (main_contentTitle.replacingOccurrences(of: "index", with: "n")).localized {
            //: self.cunrrenModel.replyNum = userinfo["number"] as? Int
            self.cunrrenModel.replyNum = userinfo[(String(constRequestMessage))] as? Int
            //: commentNumberLB.text = String(format: "%d", self.cunrrenModel.replyNum!)
            commentNumberLB.text = String(format: "%d", self.cunrrenModel.replyNum!)
        }
    }
}

//: extension TalkingMomentItemBottomView: SVGAPlayerDelegate {
extension DigitiserBottomView: SVGAPlayerDelegate {
    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {}
}

// MARK: - LayoutUI

//: extension TalkingMomentItemBottomView {
extension DigitiserBottomView {
    // 添加视图
    //: private func setupSubviews() {
    private func nameTool() {
        //: backgroundColor = .clear
        backgroundColor = .clear
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func capacityTable() {
        //: infoLB.snp.makeConstraints { make in
        infoLB.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
        }

        //: likeBtn.snp.makeConstraints { make in
        likeBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(infoLB.snp.bottom).offset(16)
            make.top.equalTo(infoLB.snp.bottom).offset(16)
            //: make.size.equalTo(CGSize.init(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: likePlayer.snp.makeConstraints { make in
        likePlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(-5)
            make.leading.equalTo(-5)
            //: make.bottom.equalTo(likeBtn.snp.bottom).offset(2)
            make.bottom.equalTo(likeBtn.snp.bottom).offset(2)
            //: make.size.equalTo(CGSize.init(width: 40, height: 60))
            make.size.equalTo(CGSize(width: 40, height: 60))
        }

        //: likeNumberLB.snp.makeConstraints { make in
        likeNumberLB.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(likeBtn.snp.trailing).offset(10)
            make.leading.equalTo(likeBtn.snp.trailing).offset(10)
            //: make.size.equalTo(CGSize.init(width: 52, height: 22))
            make.size.equalTo(CGSize(width: 52, height: 22))
        }

        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(likeNumberLB.snp.trailing)
            make.leading.equalTo(likeNumberLB.snp.trailing)
            //: make.size.equalTo(CGSize.init(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: commentNumberLB.snp.makeConstraints { make in
        commentNumberLB.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(commentBtn.snp.trailing).offset(10)
            make.leading.equalTo(commentBtn.snp.trailing).offset(10)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }

        //: let str = greetBtn.titleLabel?.text ?? ""
        let str = greetBtn.titleLabel?.text ?? ""
        //: let size = (str as NSString).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: UIFont.atomic(fontSize: 14)], context: nil)
        let size = (str as NSString).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: UIFont.atomic(fontSize: 14)], context: nil)

        //: greetBtn.snp.makeConstraints { make in
        greetBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.bottom.equalTo(-15)
            make.bottom.equalTo(-15)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
            //: make.width.equalTo(size.width+40)
            make.width.equalTo(size.width + 40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func language() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateCommentNumber(notification:)), name: UPDATE_COMMENTNUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(someViewNotification(notification:)), name: notiScreenStr, object: nil)
        //: likeBtn.rx.tap.subscribe(onNext: { [weak self] in
        likeBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.likeBtnClik()
            self.agendaItem()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: commentBtn.rx.tap.subscribe(onNext: {
        commentBtn.rx.tap.subscribe(onNext: {
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: greetBtn.rx.tap.subscribe(onNext: { [weak self] in
        greetBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.greetBtnClick()
            self.greetAndClick()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
