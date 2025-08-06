
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_textUrl:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_me_video" :*/
fileprivate let notiMomentNameFormat:[Character] = ["i","c","o","n","_","m","e","_","v","i"]
fileprivate let show_informationMsg:String = "deplayer"

/*: "Receive video calls" :*/
fileprivate let appResultText:String = "Receiview height"
fileprivate let app_indexLabPath:String = "center self view view inve vi"
fileprivate let data_equalValue:[Character] = ["d","e","o"," ","c","a","l","l","s"]

/*: "icon_me_voice" :*/
fileprivate let userContentValue:String = "viewc"
fileprivate let app_socialTitle:[Character] = ["o","n","_","m","e","_","v","o","i","c","e"]

/*: "Receive voice calls" :*/
fileprivate let show_countUrl:String = "log languageReceiv"
fileprivate let user_viewValue:String = "e voicin make"
fileprivate let show_thoughtText:[Character] = ["e"," ","c","a","l","l","s"]

/*: "icon_me_randomvideo" :*/
fileprivate let mainMakeUrl:String = "icon_mview content time else"
fileprivate let constAttentionMsg:String = "e_randimage self user"
fileprivate let app_managerTitle:[Character] = ["o","m","v","i","d","e","o"]

/*: "Random Video" :*/
fileprivate let kShowPath:String = "of line var case sharedRandom"
fileprivate let user_contentModelStr:String = "string record Video"

/*: "-1" :*/
fileprivate let noti_userName:String = "-1"

/*: "value" :*/
fileprivate let noti_dataQuantityimateValue:String = "inputalue"

/*: "type" :*/
fileprivate let appEqualLabelValue:String = "tybeautye"

/*: "videoAuth" :*/
fileprivate let user_videoData:String = "makei"
fileprivate let noti_sizeId:[Character] = ["d","e","o","A","u","t","h"]

/*: "voiceAuth" :*/
fileprivate let mainThoughtId:String = "voiceAgift progress style"
fileprivate let mainTimeId:String = "UTH"

/*: "randomVideo" :*/
fileprivate let kPopTitle:[Character] = ["r","a","n","d","o","m","V","i","d"]
fileprivate let notiYouContent:String = "with"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IngatheringReactiveCompatible.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/24.
//

//: import UIKit
import UIKit

//: enum SettingReceiveVideoType {
enum WorkingPapersVideoType {
    //: case video
    case video
    //: case voice
    case voice
    //: case randomVideo
    case randomVideo
}

//: class TalkingSettingReceiveVideoCell: UITableViewCell {
class IngatheringReactiveCompatible: UITableViewCell {
    //: private var currType: SettingReceiveVideoType = .video
    private var currType: WorkingPapersVideoType = .video
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_textUrl.reversed(), encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(icon.snp.trailing).offset(7)
            make.leading.equalTo(icon.snp.trailing).offset(7)
            //: make.centerY.equalTo(icon)
            make.centerY.equalTo(icon)
        }

        //: switchView.snp.makeConstraints { make in
        switchView.snp.makeConstraints { make in
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

    // MARK: - Lazy load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: contentView.addSubview(view)
        contentView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: backView.addSubview(img)
        backView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleBLB: UILabel = {
    private lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.clickLarge(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.toEvent()
        //: backView.addSubview(lb)
        backView.addSubview(lb)
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var switchView: UISwitch = {
    private lazy var switchView: UISwitch = {
        //: let swit = UISwitch.init()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.appThemeColor()
        swit.onTintColor = UIColor.readRemove()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(collection), for: .valueChanged)
        //: backView.addSubview(swit)
        backView.addSubview(swit)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSettingReceiveVideoCell {
extension IngatheringReactiveCompatible {
    /// 刷新cell
    //: func refreshCell(type: SettingReceiveVideoType) {
    func outList(type: WorkingPapersVideoType) {
        //: self.currType = type
        self.currType = type
        //: switch type {
        switch type {
        //: case .video:
        case .video:
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_video")
            icon.image = UIImage.thoughtImageBundleSizeText(name: (String(notiMomentNameFormat) + show_informationMsg.replacingOccurrences(of: "player", with: "o")))
            //: titleBLB.text = "Receive video calls".localized
            titleBLB.text = (String(appResultText.prefix(5)) + String(app_indexLabPath.suffix(5)) + String(data_equalValue)).localized
            //: switchView.isOn = (PunctuateThen.share.loginUserMode.videoAuth == "1")
            switchView.isOn = (PunctuateThen.share.loginUserMode.videoAuth == "1")

        //: case .voice:
        case .voice:
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_voice")
            icon.image = UIImage.thoughtImageBundleSizeText(name: (userContentValue.replacingOccurrences(of: "view", with: "i") + String(app_socialTitle)))
            //: titleBLB.text = "Receive voice calls".localized
            titleBLB.text = (String(show_countUrl.suffix(6)) + String(user_viewValue.prefix(6)) + String(show_thoughtText)).localized
            //: switchView.isOn = (PunctuateThen.share.loginUserMode.voiceAuth == "1")
            switchView.isOn = (PunctuateThen.share.loginUserMode.voiceAuth == "1")

        //: case .randomVideo:
        case .randomVideo:
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_randomvideo")
            icon.image = UIImage.thoughtImageBundleSizeText(name: (String(mainMakeUrl.prefix(6)) + String(constAttentionMsg.prefix(6)) + String(app_managerTitle)))
            //: titleBLB.text = "Random Video".localized
            titleBLB.text = (String(kShowPath.suffix(6)) + String(user_contentModelStr.suffix(6))).localized
            //: switchView.isOn = (PunctuateThen.share.appUserConfigMode.randomVideo == "1")
            switchView.isOn = (PunctuateThen.share.appUserConfigMode.randomVideo == "1")
        }
    }

    /// 按钮开关
    //: @objc func switchDidChange() {
    @objc func collection() {
        //: self.switchView.isEnabled = false
        self.switchView.isEnabled = false
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: let value = self.switchView.isOn ? "1":"-1"
        let value = self.switchView.isOn ? "1" : "-1"
        //: params["value"] = value
        params[(noti_dataQuantityimateValue.replacingOccurrences(of: "input", with: "v"))] = value
        //: switch currType {
        switch currType {
        //: case .video:
        case .video:
            //: params["type"] = "videoAuth"
            params[(appEqualLabelValue.replacingOccurrences(of: "beauty", with: "p"))] = (user_videoData.replacingOccurrences(of: "make", with: "v") + String(noti_sizeId))
        //: case .voice:
        case .voice:
            //: params["type"] = "voiceAuth"
            params[(appEqualLabelValue.replacingOccurrences(of: "beauty", with: "p"))] = (String(mainThoughtId.prefix(6)) + mainTimeId.lowercased())
        //: case .randomVideo:
        case .randomVideo:
            //: params["type"] = "randomVideo"
            params[(appEqualLabelValue.replacingOccurrences(of: "beauty", with: "p"))] = (String(kPopTitle) + notiYouContent.replacingOccurrences(of: "with", with: "eo"))
        }
        //: ProgressHUD.show()
        DirectThen.levelHandle()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, result, errorModel in
        TampReactiveCompatible.first(params: params) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()
            //: self.switchView.isEnabled = true
            self.switchView.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchView.isOn = !self.switchView.isOn
                self.switchView.isOn = !self.switchView.isOn
                //: return
                return
            }
            //: switch self.currType {
            switch self.currType {
            //: case .video:
            case .video:
                //: PunctuateThen.share.loginUserMode.videoAuth = value
                PunctuateThen.share.loginUserMode.videoAuth = value
            //: case .voice:
            case .voice:
                //: PunctuateThen.share.loginUserMode.voiceAuth = value
                PunctuateThen.share.loginUserMode.voiceAuth = value
            //: case .randomVideo:
            case .randomVideo:
                //: PunctuateThen.share.appUserConfigMode.randomVideo = value
                PunctuateThen.share.appUserConfigMode.randomVideo = value
            }
            // 上报女性用户busy状态
            //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
            (QueryEnableReactiveCompatible.shared as! QueryEnableReactiveCompatible).dropPackage()
        }
    }
}
