
//: Declare String Begin

/*: "nav_back_black_nor" :*/
fileprivate let kSharedMsg:[Character] = ["n","a","v","_","b","a"]
fileprivate let appLeadingText:String = "ck_in make template path moment"
fileprivate let kRetId:[Character] = ["b","l","a","c","k","_","n","o","r"]

/*: "live_explain" :*/
fileprivate let k_inputContent:String = "time true tiplive_"
fileprivate let mainLabListKey:[Character] = ["a","i","n"]

/*: "Live" :*/
fileprivate let const_exitUrl:String = "data border modelLive"

/*: "#FAF6FF" :*/
fileprivate let k_firstText:String = "view view#FAF6FF"

/*: "icon_live_certification" :*/
fileprivate let userSendId:String = "itemon"
fileprivate let show_listMsg:String = "cerlive"
fileprivate let show_picMessage:[Character] = ["i","o","n"]

/*: "Turn on live certification" :*/
fileprivate let showSizeText:String = "net viewTurn "
fileprivate let appImageFormat:String = "ve certype var true as self"
fileprivate let appTextValue:String = "atiobject"

/*: "will increase the chances of receiving calls to earn more points." :*/
fileprivate let user_deviceValueId:[UInt8] = [0x2e,0x73,0x74,0x6e,0x69,0x6f,0x70,0x20,0x65,0x72,0x6f,0x6d,0x20,0x6e,0x72,0x61,0x65,0x20,0x6f,0x74,0x20,0x73,0x6c,0x6c,0x61,0x63,0x20,0x67,0x6e,0x69,0x76,0x69,0x65,0x63,0x65,0x72,0x20,0x66,0x6f,0x20,0x73,0x65,0x63,0x6e,0x61,0x68,0x63,0x20,0x65,0x68,0x74,0x20,0x65,0x73,0x61,0x65,0x72,0x63,0x6e,0x69,0x20,0x6c,0x6c,0x69,0x77]

/*: "icon_live_publicly" :*/
fileprivate let show_styleMessage:String = "icon_lfatal inside"
fileprivate let show_viewUrl:[Character] = ["i","v","e","_","p","u","b","l","i","c","l","y"]

/*: "Your live will be publicly displayed to others" :*/
fileprivate let showFatalData:[UInt8] = [0x73,0x72,0x65,0x68,0x74,0x6f,0x20,0x6f,0x74,0x20,0x64,0x65,0x79,0x61,0x6c,0x70,0x73,0x69,0x64,0x20,0x79,0x6c,0x63,0x69,0x6c,0x62,0x75,0x70,0x20,0x65,0x62,0x20,0x6c,0x6c,0x69,0x77,0x20,0x65,0x76,0x69,0x6c,0x20,0x72,0x75,0x6f,0x59]

/*: "its content must comply with current laws and regulations and platform requirements." :*/
fileprivate let app_makeTitle:[UInt8] = [0x4d,0x58,0x57,0x4,0x47,0x53,0x52,0x58,0x49,0x52,0x58,0x4,0x51,0x59,0x57,0x58,0x4,0x47,0x53,0x51,0x54,0x50,0x5d,0x4,0x5b,0x4d,0x58,0x4c,0x4,0x47,0x59,0x56,0x56,0x49,0x52,0x58,0x4,0x50,0x45,0x5b,0x57,0x4,0x45,0x52,0x48,0x4,0x56,0x49,0x4b,0x59,0x50,0x45,0x58,0x4d,0x53,0x52,0x57,0x4,0x45,0x52,0x48,0x4,0x54,0x50,0x45,0x58,0x4a,0x53,0x56,0x51,0x4,0x56,0x49,0x55,0x59,0x4d,0x56,0x49,0x51,0x49,0x52,0x58,0x57,0x12]

fileprivate func hiddenEqual(action num: UInt8) -> UInt8 {
    let value = Int(num) + 28
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_live_face" :*/
fileprivate let showTabViewTaskUrl:[Character] = ["i","c","o","n"]
fileprivate let notiFrameFormat:[Character] = ["_","l","i","v","e","_","f","a","c","e"]

/*: "Please make sure" :*/
fileprivate let notiUserMessage:String = "to cell centerPlease"
fileprivate let app_makeUrl:[Character] = [" ","m","a","k","e"," ","s","u","r","e"]

/*: "your face is always in the video frame." :*/
fileprivate let user_cornerFormat:[UInt8] = [0x2e,0x65,0x6d,0x61,0x72,0x66,0x20,0x6f,0x65,0x64,0x69,0x76,0x20,0x65,0x68,0x74,0x20,0x6e,0x69,0x20,0x73,0x79,0x61,0x77,0x6c,0x61,0x20,0x73,0x69,0x20,0x65,0x63,0x61,0x66,0x20,0x72,0x75,0x6f,0x79]

/*: "Turn on" :*/
fileprivate let main_curText:String = "Turn onmake collection"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewThen.swift
//  AbroadTalking
//
//  Created by young on 2023/6/15.
//

//: import UIKit
import UIKit

//: class TalkingLiveExplainViewController: TalkingBaseViewController {
class ViewThen: SizeViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true

        //: setupSubviews()
        breakUp()
        //: setupSubViewsConstraint()
        methodConstraint()
    }

    // MARK: - Lazy Load

    //: private lazy var backButton: UIButton = {
    private lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.BundleImageNamed(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.thoughtImageBundleSizeText(name: (String(kSharedMsg) + String(appLeadingText.prefix(3)) + String(kRetId))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .black
        btn.tintColor = .black
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(holdfastPopular), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveImgView: UIImageView = {
    private lazy var liveImgView: UIImageView = {
        //: let v = UIImageView(image: UIImage.BundleImageNamed(name: "live_explain"))
        let v = UIImageView(image: UIImage.thoughtImageBundleSizeText(name: (String(k_inputContent.suffix(5)) + "expl" + String(mainLabListKey))))
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: return v
        return v
        //: }()
    }()

    //: private lazy var liveLab: UILabel = {
    private lazy var liveLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Live".localized
        lab.text = (String(const_exitUrl.suffix(4))).localized
        //: lab.textColor = .appThemeColor()
        lab.textColor = .readRemove()
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 18)
        lab.font = UIFont.clickLarge(type: .Semibold, fontSize: 18)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#FAF6FF")
        v.backgroundColor = UIColor(hex: (String(k_firstText.suffix(7))))
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var imgView1: UIImageView = {
    private lazy var imgView1: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.BundleImageNamed(name: "icon_live_certification")
        v.image = UIImage.thoughtImageBundleSizeText(name: (userSendId.replacingOccurrences(of: "item", with: "ic") + "_live_" + show_listMsg.replacingOccurrences(of: "live", with: "ti") + "ficat" + String(show_picMessage)))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab1: UILabel = {
    private lazy var titleLab1: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Turn on live certification".localized
        lab.text = (String(showSizeText.suffix(5)) + "on li" + String(appImageFormat.prefix(6)) + "tific" + appTextValue.replacingOccurrences(of: "object", with: "on")).localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .toEvent()
        //: lab.font = UIFont.atomic(fontSize: 16)
        lab.font = UIFont.atomic(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab1: UILabel = {
    private lazy var desLab1: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "will increase the chances of receiving calls to earn more points.".localized
        lab.text = String(bytes: user_deviceValueId.reversed(), encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .imageColor()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.recoverOf(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgView2: UIImageView = {
    private lazy var imgView2: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.BundleImageNamed(name: "icon_live_publicly")
        v.image = UIImage.thoughtImageBundleSizeText(name: (String(show_styleMessage.prefix(6)) + String(show_viewUrl)))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab2: UILabel = {
    private lazy var titleLab2: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Your live will be publicly displayed to others".localized
        lab.text = String(bytes: showFatalData.reversed(), encoding: .utf8)!.localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .toEvent()
        //: lab.font = UIFont.atomic(fontSize: 16)
        lab.font = UIFont.atomic(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab2: UILabel = {
    private lazy var desLab2: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "its content must comply with current laws and regulations and platform requirements.".localized
        lab.text = String(bytes: app_makeTitle.map{hiddenEqual(action: $0)}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .imageColor()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.recoverOf(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgView3: UIImageView = {
    private lazy var imgView3: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.BundleImageNamed(name: "icon_live_face")
        v.image = UIImage.thoughtImageBundleSizeText(name: (String(showTabViewTaskUrl) + String(notiFrameFormat)))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab3: UILabel = {
    private lazy var titleLab3: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Please make sure".localized
        lab.text = (String(notiUserMessage.suffix(6)) + String(app_makeUrl)).localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .toEvent()
        //: lab.font = UIFont.atomic(fontSize: 16)
        lab.font = UIFont.atomic(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab3: UILabel = {
    private lazy var desLab3: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "your face is always in the video frame.".localized
        lab.text = String(bytes: user_cornerFormat.reversed(), encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .imageColor()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.recoverOf(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var turnOnBtn: UIButton = {
    private lazy var turnOnBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.atomic(fontSize: 17)
        btn.titleLabel?.font = UIFont.atomic(fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Turn on".localized, for: .normal)
        btn.setTitle((String(main_curText.prefix(7))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 240, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.sinceNext(colors: UIColor.analogDigitalConverterColor(), size: CGSize(width: 240, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(turnOnButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(playEqual), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveExplainViewController {
extension ViewThen {
    /// 返回按钮点击事件
    //: @objc private func clickBackButtonAction() {
    @objc private func holdfastPopular() {
        //: self.dismiss(animated: true)
        self.dismiss(animated: true)
    }

    /// turn on 按钮点击事件
    //: @objc private func turnOnButtonClick() {
    @objc private func playEqual() {
        //: self.dismiss(animated: true) {
        self.dismiss(animated: true) {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            LogLiveManager.anUp().next()
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveExplainViewController {
extension ViewThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func breakUp() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(backButton)
        view.addSubview(backButton)
        //: view.addSubview(liveImgView)
        view.addSubview(liveImgView)
        //: view.addSubview(liveLab)
        view.addSubview(liveLab)
        //: view.addSubview(contentView)
        view.addSubview(contentView)
        //: contentView.addSubview(imgView1)
        contentView.addSubview(imgView1)
        //: contentView.addSubview(titleLab1)
        contentView.addSubview(titleLab1)
        //: contentView.addSubview(desLab1)
        contentView.addSubview(desLab1)
        //: contentView.addSubview(imgView2)
        contentView.addSubview(imgView2)
        //: contentView.addSubview(titleLab2)
        contentView.addSubview(titleLab2)
        //: contentView.addSubview(desLab2)
        contentView.addSubview(desLab2)
        //: contentView.addSubview(imgView3)
        contentView.addSubview(imgView3)
        //: contentView.addSubview(titleLab3)
        contentView.addSubview(titleLab3)
        //: contentView.addSubview(desLab3)
        contentView.addSubview(desLab3)
        //: view.addSubview(turnOnBtn)
        view.addSubview(turnOnBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func methodConstraint() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(constGameData)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(constLiveErrorMessage)
        }

        //: liveImgView.snp.makeConstraints { make in
        liveImgView.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+actualWidth(w: 80))
            make.top.equalTo(constLiveErrorMessage + actualWidth(w: 80))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(100)
            make.width.height.equalTo(100)
        }
        //: liveLab.snp.makeConstraints { make in
        liveLab.snp.makeConstraints { make in
            //: make.top.equalTo(liveImgView.snp.bottom)
            make.top.equalTo(liveImgView.snp.bottom)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(liveLab.snp.bottom).offset(20)
            make.top.equalTo(liveLab.snp.bottom).offset(20)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: imgView1.snp.makeConstraints { make in
        imgView1.snp.makeConstraints { make in
            //: make.top.leading.equalTo(20)
            make.top.leading.equalTo(20)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab1.snp.makeConstraints { make in
        titleLab1.snp.makeConstraints { make in
            //: make.top.equalTo(imgView1).offset(3)
            make.top.equalTo(imgView1).offset(3)
            //: make.leading.equalTo(imgView1.snp.trailing).offset(10)
            make.leading.equalTo(imgView1.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab1.snp.makeConstraints { make in
        desLab1.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab1.snp.bottom).offset(4)
            make.top.equalTo(titleLab1.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab1)
            make.leading.trailing.equalTo(titleLab1)
        }
        //: imgView2.snp.makeConstraints { make in
        imgView2.snp.makeConstraints { make in
            //: make.top.equalTo(desLab1.snp.bottom).offset(24)
            make.top.equalTo(desLab1.snp.bottom).offset(24)
            //: make.leading.equalTo(imgView1)
            make.leading.equalTo(imgView1)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab2.snp.makeConstraints { make in
        titleLab2.snp.makeConstraints { make in
            //: make.top.equalTo(imgView2).offset(3)
            make.top.equalTo(imgView2).offset(3)
            //: make.leading.equalTo(imgView2.snp.trailing).offset(10)
            make.leading.equalTo(imgView2.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab2.snp.makeConstraints { make in
        desLab2.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab2.snp.bottom).offset(4)
            make.top.equalTo(titleLab2.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab2)
            make.leading.trailing.equalTo(titleLab2)
        }
        //: imgView3.snp.makeConstraints { make in
        imgView3.snp.makeConstraints { make in
            //: make.top.equalTo(desLab2.snp.bottom).offset(24)
            make.top.equalTo(desLab2.snp.bottom).offset(24)
            //: make.leading.equalTo(imgView1)
            make.leading.equalTo(imgView1)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab3.snp.makeConstraints { make in
        titleLab3.snp.makeConstraints { make in
            //: make.top.equalTo(imgView3).offset(3)
            make.top.equalTo(imgView3).offset(3)
            //: make.leading.equalTo(imgView3.snp.trailing).offset(10)
            make.leading.equalTo(imgView3.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab3.snp.makeConstraints { make in
        desLab3.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab3.snp.bottom).offset(4)
            make.top.equalTo(titleLab3.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab3)
            make.leading.trailing.equalTo(titleLab3)
            //: make.bottom.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-20)
        }

        //: turnOnBtn.snp.makeConstraints { make in
        turnOnBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(43)
            make.top.equalTo(contentView.snp.bottom).offset(43)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 240, height: 50))
            make.size.equalTo(CGSize(width: 240, height: 50))
            //: make.bottom.lessThanOrEqualTo(view).offset(0)
            make.bottom.lessThanOrEqualTo(view).offset(0)
        }
    }
}
