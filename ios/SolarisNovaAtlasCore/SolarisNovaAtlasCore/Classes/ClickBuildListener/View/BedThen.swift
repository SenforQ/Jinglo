
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let noti_iconHiddenContent:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_ziliao_nandi_default" :*/
fileprivate let mainActionTitle:String = "toon"
fileprivate let main_observeValue:String = "iao_nanduser layer content clear true"
fileprivate let app_sendUrl:String = "i_defmake view view raw app"

/*: "iv_crush" :*/
fileprivate let main_momentData:String = "large leading intervaliv_cr"
fileprivate let main_nameEnableFormat:String = "usremove"

/*: "Crush" :*/
fileprivate let constDownUrl:String = "Crushlive aspect"

/*: "get json error" :*/
fileprivate let user_featurePerMsg:String = "get jsolength self case view app"
fileprivate let k_toMessage:[Character] = ["n"," ","e","r","r","o","r"]

/*: "targetUid" :*/
fileprivate let main_inputMsg:String = "targetUpath view in if load"
fileprivate let userBackgroundPath:[Character] = ["i","d"]

/*: "The other party has received your crush" :*/
fileprivate let noti_makeStr:[UInt8] = [0x68,0x73,0x75,0x72,0x63,0x20,0x72,0x75,0x6f,0x79,0x20,0x64,0x65,0x76,0x69,0x65,0x63,0x65,0x72,0x20,0x73,0x61,0x68,0x20,0x79,0x74,0x72,0x61,0x70,0x20,0x72,0x65,0x68,0x74,0x6f,0x20,0x65,0x68,0x54]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BedThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/21.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosBottomView: UIView {
class BedThen: UIView {
    //: var modelUid = ""
    var modelUid = ""
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: customUI()
        audience()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: noti_iconHiddenContent.reversed(), encoding: .utf8)!)
    }

    //: func customUI() {
    func audience() {
        //: self.backgroundColor = UIColor.RGBA(51, 51, 51, 0.8)
        self.backgroundColor = UIColor.loadRgba(51, 51, 51, 0.8)

        //: guard PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue else {
            // 审核模式隐藏
            //: self.crushBtn.isHidden = true
            self.crushBtn.isHidden = true
            //: return
            return
        }

        //: crushBtn.snp.makeConstraints { make in
        crushBtn.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.size.equalTo(CGSize.init(width: 164, height: 40))
            make.size.equalTo(CGSize(width: 164, height: 40))
        }

        //: self.addSubview(crushPlayer)
        self.addSubview(crushPlayer)
        //: crushPlayer.snp.makeConstraints { make in
        crushPlayer.snp.makeConstraints { make in
            //: make.centerX.equalTo(crushBtn)
            make.centerX.equalTo(crushBtn)
            //: make.bottom.equalTo(crushBtn.snp.bottom)
            make.bottom.equalTo(crushBtn.snp.bottom)
            //: make.size.equalTo(CGSize(width: 70, height: 100))
            make.size.equalTo(CGSize(width: 70, height: 100))
        }
    }

    //: lazy var crushBtn: TalkingButton = {
    lazy var crushBtn: StartImageButton = {
        //: let btn = TalkingButton.init()
        let btn = StartImageButton()
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "icon_ziliao_nandi_default"), for: .normal)
        btn.setBackgroundImage(UIImage.thoughtImageBundleSizeText(name: (mainActionTitle.replacingOccurrences(of: "to", with: "ic") + "_zil" + String(main_observeValue.prefix(8)) + String(app_sendUrl.prefix(5)) + "ault")), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "iv_crush"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(main_momentData.suffix(5)) + main_nameEnableFormat.replacingOccurrences(of: "remove", with: "h"))), for: .normal)
        //: btn.setTitle("Crush".localized, for: .normal)
        btn.setTitle((String(constDownUrl.prefix(5))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.atomic(fontSize: 18)
        btn.titleLabel?.font = UIFont.atomic(fontSize: 18)
        //: btn.addTarget(self, action: #selector(crushBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(exceptSnap), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var crushPlayer: SVGAPlayer = {
    lazy var crushPlayer: SVGAPlayer = {
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
        //: return player
        return player
        //: }()
    }()
}

//: extension TalkingMomentPhotosBottomView: SVGAPlayerDelegate {
extension BedThen: SVGAPlayerDelegate {
    //: @objc func crushBtnClick () {
    @objc func exceptSnap() {
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Crush)
        let url = SkullSessionReactiveCompatible.default.region(type: .Crush)
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
                //: self.crushPlayer.videoItem = videoItem
                self.crushPlayer.videoItem = videoItem
                //: self.crushPlayer.startAnimation()
                self.crushPlayer.startAnimation()
                //: self.crushBtn.isHidden = true
                self.crushBtn.isHidden = true
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(user_featurePerMsg.prefix(7)) + String(k_toMessage)))
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = modelUid
        dict[(String(main_inputMsg.prefix(7)) + String(userBackgroundPath))] = modelUid

        //: TalkingMomentRequestTool.req_CrushSend(params: dict) { succeed, result, errorModel in
        StartReactiveCompatible.pinLog(params: dict) { succeed, _, errorModel in
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarNormrlMsg(showMsg: "The other party has received your crush".localized)
                self.getResidence(showMsg: String(bytes: noti_makeStr.reversed(), encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.drawObserver(showMsg: errorModel!.errorMsg)
            }
        }
    }

    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {
        //: self.crushPlayer.isHidden = true
        self.crushPlayer.isHidden = true
    }
}
