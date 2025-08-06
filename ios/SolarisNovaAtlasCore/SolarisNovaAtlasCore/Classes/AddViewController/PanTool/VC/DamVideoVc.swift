
//: Declare String Begin

/*: "#33005B" :*/
fileprivate let main_statusData:String = "#33005Bself type new block"

/*: "get json error" :*/
fileprivate let notiSectionUrl:String = "get as status bottom"
fileprivate let main_micUrl:String = " errorsub top data hidden image"

/*: "btn_live_mini_nor" :*/
fileprivate let k_liveKey:String = "btn_size false self"
fileprivate let appProgressBarSelectedTitle:String = "ini_norlive equal version skin"

/*: "icon_views_number" :*/
fileprivate let mainToMessage:String = "erroron"
fileprivate let noti_willModelAppUrl:String = "s_numbermanager color cell"

/*: "Random Video" :*/
fileprivate let const_failData:[Character] = ["R","a","n","d","o","m"," ","V","i","d"]
fileprivate let app_effectMessage:[Character] = ["e","o"]

/*: "Accept Video Match Call" :*/
fileprivate let showEnvironmentMessage:String = "Acceptslide view event to"
fileprivate let app_pickClickStr:String = " Viduser model text"
fileprivate let noti_videoScriptName:[Character] = ["h"," ","C","a","l","l"]

/*: "%@ chatting" :*/
fileprivate let kBlockUrl:String = "self equal height to%@ chatti"
fileprivate let showJumpId:String = "nmodel"

/*: "chattingNum" :*/
fileprivate let kRequestStatusText:String = "welcome"
fileprivate let notiPackageMsg:[Character] = ["h","a","t","t","i","n","g","N","u","m"]

/*: "type" :*/
fileprivate let data_modelLikeTillFormat:[UInt8] = [0xaf,0xa2,0xab,0xbe]

private func resultState(conversation num: UInt8) -> UInt8 {
    return num ^ 219
}

/*: "randomVideo" :*/
fileprivate let app_countTitle:[Character] = ["r","a","n","d","o","m","V","i","d"]
fileprivate let notiNameTitle:String = "EO"

/*: "-1" :*/
fileprivate let show_equalTitle:String = "-succeed"

/*: "value" :*/
fileprivate let main_panTitle:[Character] = ["v","a","l","u","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DamVideoVc.swift
//  SolarisNovaAtlasCore
//
//  Created by DouXiu on 2024/8/16.
//

//: import UIKit
import UIKit

//: class TalkingFemaleStaticRandomVideoVC: TalkingBaseViewController {
class DamVideoVc: SizeViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true
        //: setupSubviews()
        ordinal()
        //: setupSubViewsConstraint()
        swaddlingClothesViewConstraint()
        //: req_videoMatchCheck()
        remarkButton()
    }

    // MARK: - Lazy Load

    //: private lazy var renderView: UIView = {
    private lazy var renderView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#33005B")
        v.backgroundColor = UIColor(hex: (String(main_statusData.prefix(7))))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Female_Randomvideo_Bg)
        let url = SkullSessionReactiveCompatible.default.region(type: .Female_Randomvideo_Bg)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                // 刷新放在此处目的：是为了进入页面时，保证加载完svga资源再刷新
                //: self.refreshUI()
                self.colorDown()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(notiSectionUrl.prefix(4)) + "json" + String(main_micUrl.prefix(6))))
        }
        //: return player
        return player
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_mini_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(k_liveKey.prefix(4)) + "live_m" + String(appProgressBarSelectedTitle.prefix(7)))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(headDown), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chattingNumBtn: TalkingButton = {
    private lazy var chattingNumBtn: StartImageButton = {
        //: let btn = TalkingButton()
        let btn = StartImageButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_views_number"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (mainToMessage.replacingOccurrences(of: "error", with: "ic") + "_view" + String(noti_willModelAppUrl.prefix(8)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_views_number"), for: .disabled)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (mainToMessage.replacingOccurrences(of: "error", with: "ic") + "_view" + String(noti_willModelAppUrl.prefix(8)))), for: .disabled)
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        btn.titleLabel?.font = UIFont.clickLarge(type: .Regular, fontSize: 15)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var bottomView: UIView = {
    private lazy var bottomView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white.withAlphaComponent(0.15)
        v.backgroundColor = .white.withAlphaComponent(0.15)
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: let lab1 = UILabel()
        let lab1 = UILabel()
        //: lab1.text = "Random Video".localized
        lab1.text = (String(const_failData) + String(app_effectMessage)).localized
        //: lab1.textColor = .white
        lab1.textColor = .white
        //: lab1.font = UIFont.atomic(fontSize: 20)
        lab1.font = UIFont.atomic(fontSize: 20)
        //: v.addSubview(lab1)
        v.addSubview(lab1)
        //: lab1.snp.makeConstraints { make in
        lab1.snp.makeConstraints { make in
            //: make.top.equalTo(17)
            make.top.equalTo(17)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
        }
        //: let lab2 = UILabel()
        let lab2 = UILabel()
        //: lab2.text = "Accept Video Match Call".localized
        lab2.text = (String(showEnvironmentMessage.prefix(6)) + String(app_pickClickStr.prefix(4)) + "eo Matc" + String(noti_videoScriptName)).localized
        //: lab2.textColor = .white
        lab2.textColor = .white
        //: lab2.numberOfLines = 0
        lab2.numberOfLines = 0
        //: lab2.font = UIFont.pingfangRugularFont(fontSize: 15)
        lab2.font = UIFont.recoverOf(fontSize: 15)
        //: v.addSubview(lab2)
        v.addSubview(lab2)
        //: lab2.snp.makeConstraints { make in
        lab2.snp.makeConstraints { make in
            //: make.top.equalTo(lab1.snp.bottom).offset(12)
            make.top.equalTo(lab1.snp.bottom).offset(12)
            //: make.leading.equalTo(lab1)
            make.leading.equalTo(lab1)
            //: make.trailing.equalTo(-90)
            make.trailing.equalTo(-90)
            //: make.bottom.equalTo(-17)
            make.bottom.equalTo(-17)
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var switchBtn: UISwitch = {
    private lazy var switchBtn: UISwitch = {
        //: let swit = UISwitch()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.appThemeColor()
        swit.onTintColor = UIColor.readRemove()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(assemblageImage), for: .valueChanged)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingFemaleStaticRandomVideoVC {
extension DamVideoVc {
    /// 获取匹配人数
    //: private func req_videoMatchCheck() {
    private func remarkButton() {
        //: TalkingQuickVideoManager.req_videoMatchCheck { succeed, result, _ in
        QuaternaryVideoManager.colouredOn { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.chattingNumBtn.setTitle("%@ chatting".localizedArguments(json["chattingNum"].intValue), for: .normal)
            self.chattingNumBtn.setTitle((String(kBlockUrl.suffix(9)) + showJumpId.replacingOccurrences(of: "model", with: "g")).viewfinder(json[(kRequestStatusText.replacingOccurrences(of: "welcome", with: "c") + String(notiPackageMsg))].intValue), for: .normal)
        }
    }

    /// 随机视频开关请求
    //: private func req_SettingChange() {
    private func settingWhen() {
        //: var params = ["type": "randomVideo"]
        var params = [String(bytes: data_modelLikeTillFormat.map{resultState(conversation: $0)}, encoding: .utf8)!: (String(app_countTitle) + notiNameTitle.lowercased())]
        //: let value = switchBtn.isOn ? "1" : "-1"
        let value = switchBtn.isOn ? "1" : "-1"
        //: params["value"] = value
        params[(String(main_panTitle))] = value
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, _, _ in
        TampReactiveCompatible.first(params: params) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: self.switchBtn.isEnabled = true
            self.switchBtn.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchBtn.isOn = !self.switchBtn.isOn
                self.switchBtn.isOn = !self.switchBtn.isOn
                //: return
                return
            }
            //: PunctuateThen.share.appUserConfigMode.randomVideo = value
            PunctuateThen.share.appUserConfigMode.randomVideo = value
            //: self.refreshUI()
            self.colorDown()
        }
    }
}

// MARK: - Event

//: extension TalkingFemaleStaticRandomVideoVC {
extension DamVideoVc {
    /// 关闭页面按钮事件
    //: @objc private func closeButtonClick() {
    @objc private func headDown() {
        //: getNavigationController()?.popViewController(animated: false)
        fileController()?.popViewController(animated: false)
    }

    /// 随机视频开关事件
    //: @objc private func switchDidChange() {
    @objc private func assemblageImage() {
        //: switchBtn.isEnabled = false
        switchBtn.isEnabled = false
        //: req_SettingChange()
        settingWhen()
    }
}

// MARK: - Layout

//: extension TalkingFemaleStaticRandomVideoVC {
extension DamVideoVc {
    /// 添加视图
    //: private func setupSubviews() {
    private func ordinal() {
        //: view.addSubview(renderView)
        view.addSubview(renderView)
        //: view.addSubview(svgaPlayer)
        view.addSubview(svgaPlayer)
        //: view.addSubview(closeBtn)
        view.addSubview(closeBtn)
        //: view.addSubview(chattingNumBtn)
        view.addSubview(chattingNumBtn)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: bottomView.addSubview(switchBtn)
        bottomView.addSubview(switchBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func swaddlingClothesViewConstraint() {
        //: renderView.snp.makeConstraints { make in
        renderView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 435))
            make.width.height.equalTo(actualWidth(w: 435))
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight + 6)
            make.top.equalTo(constLiveErrorMessage + 6)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }
        //: chattingNumBtn.snp.makeConstraints { make in
        chattingNumBtn.snp.makeConstraints { make in
            //: make.top.equalTo(svgaPlayer.snp.bottom).offset(-35)
            make.top.equalTo(svgaPlayer.snp.bottom).offset(-35)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.top.equalTo(chattingNumBtn.snp.bottom).offset(37)
            make.top.equalTo(chattingNumBtn.snp.bottom).offset(37)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
        //: switchBtn.snp.makeConstraints { make in
        switchBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(51)
            make.width.equalTo(51)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
    }

    /// 刷新UI
    //: private func refreshUI() {
    private func colorDown() {
        //: if PunctuateThen.share.appUserConfigMode.randomVideo == "1" {
        if PunctuateThen.share.appUserConfigMode.randomVideo == "1" {
            //: svgaPlayer.startAnimation()
            svgaPlayer.startAnimation()
            //: } else {
        } else {
            //: svgaPlayer.pauseAnimation()
            svgaPlayer.pauseAnimation()
        }
        //: switchBtn.isOn = (PunctuateThen.share.appUserConfigMode.randomVideo == "1")
        switchBtn.isOn = (PunctuateThen.share.appUserConfigMode.randomVideo == "1")
    }
}
