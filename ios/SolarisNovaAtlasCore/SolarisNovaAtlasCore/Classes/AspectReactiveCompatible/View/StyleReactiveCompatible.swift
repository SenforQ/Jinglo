
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiCardValue:[UInt8] = [0x2,0x5,0x2,0x1f,0x43,0x8,0x4,0xf,0xe,0x19,0x51,0x42,0x4b,0x3,0xa,0x18,0x4b,0x5,0x4,0x1f,0x4b,0x9,0xe,0xe,0x5,0x4b,0x2,0x6,0x1b,0x7,0xe,0x6,0xe,0x5,0x1f,0xe,0xf]

private func itemGift(background num: UInt8) -> UInt8 {
    return num ^ 107
}

/*: "Video Cover" :*/
fileprivate let dataObjectName:[Character] = ["V","i","d","e","o"," ","C","o","v","e"]
fileprivate let mainRecoverMessage:String = "request"

/*: "Adding a video cover to show the charm can get more good feelings." :*/
fileprivate let constRowTitle:[UInt8] = [0x53,0x76,0x76,0x7b,0x7c,0x75,0x32,0x73,0x32,0x64,0x7b,0x76,0x77,0x7d,0x32,0x71,0x7d,0x64,0x77,0x60,0x32,0x66,0x7d,0x32,0x61,0x7a,0x7d,0x65,0x32,0x66,0x7a,0x77,0x32,0x71,0x7a,0x73,0x60,0x7f,0x32,0x71,0x73,0x7c,0x32,0x75,0x77,0x66,0x32,0x7f,0x7d,0x60,0x77,0x32,0x75,0x7d,0x7d,0x76,0x32,0x74,0x77,0x77,0x7e,0x7b,0x7c,0x75,0x61,0x3c]

private func centerEqual(lab num: UInt8) -> UInt8 {
    return num ^ 18
}

/*: "img_me_edit_video_default" :*/
fileprivate let user_layerText:String = "image inside make manager normalimg_m"
fileprivate let constAppKey:String = "t_videmodel fill as system content"
fileprivate let userViewItemFormat:[Character] = ["a","u","l","t"]

/*: "btn_me_edit_photo_change" :*/
fileprivate let data_normalText:[Character] = ["b","t","n","_","m","e","_","e"]
fileprivate let noti_viewValue:[Character] = ["d","i","t","_","p","h"]
fileprivate let userPickValue:[Character] = ["o","t","o","_","c","h","a","n","g","e"]

/*: "btn_dynamic_stop_nor" :*/
fileprivate let main_lengthData:[Character] = ["b","t","n","_","d","y","n"]
fileprivate let dataKitStr:String = "amic_add center portrait"

/*: "#FF506D" :*/
fileprivate let showVerticalMessage:[Character] = ["#","F","F","5","0","6","D"]

/*: "Reviewing" :*/
fileprivate let userCellPath:[Character] = ["R","e","v","i","e","w","i"]
fileprivate let user_socialKey:[Character] = ["n","g"]

/*: "Shoot video at least 5 seconds" :*/
fileprivate let notiDropMessage:[Character] = ["S","h","o","o","t"," ","v","i","d","e","o"," "]
fileprivate let noti_searchUrl:[Character] = ["a","t"," ","l","e","a","s","t"]
fileprivate let appSmallViewKey:[Character] = [" ","5"," ","s","e","c","o","n","d","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StyleReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/28.
//

//: import Photos
import Photos
//: import UIKit
import UIKit

//: typealias EditSeleteVideoBlock = (_ coverPath: String, _ videoPath: String) -> Void
typealias EditSeleteVideoBlock = (_ coverPath: String, _ videoPath: String) -> Void
//: typealias DeleteVideoBlock = () -> Void
typealias DeleteVideoBlock = () -> Void

//: class TalkingEditVideoCell: UITableViewCell {
class StyleReactiveCompatible: UITableViewCell {
    //: var seleteBlock: EditSeleteVideoBlock!
    var seleteBlock: EditSeleteVideoBlock!
    //: var deleteBlock: DeleteVideoBlock!
    var deleteBlock: DeleteVideoBlock!

    //: var coverPath = ""
    var coverPath = ""
    //: var videoPath = ""
    var videoPath = ""
    //: var videoPlayPath = ""
    var videoPlayPath = ""
    //: var videoStatus = -3
    var videoStatus = -3

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

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
        //: setupSubviews()
        mpFrom()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiCardValue.map{itemGift(background: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: setupSubViewsConstraint()
        showConstraint()
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var tipsLB: UILabel = {
    lazy var tipsLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lb.font = UIFont.clickLarge(type: .Medium, fontSize: 17)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.toEvent()
        //: lb.text = "Video Cover".localized
        lb.text = (String(dataObjectName) + mainRecoverMessage.replacingOccurrences(of: "request", with: "r")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lb.font = UIFont.clickLarge(type: .Regular, fontSize: 14)
        //: lb.textColor = UIColor.appValueDetailColor()
        lb.textColor = UIColor.hockeyPlayer()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.text = "Adding a video cover to show the charm can get more good feelings.".localized
        lb.text = String(bytes: constRowTitle.map{centerEqual(lab: $0)}, encoding: .utf8)!.localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var iconBtn: UIButton = {
    lazy var iconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 4
        btn.layer.cornerRadius = 4
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setImage(UIImage.BundleImageNamed(name: "img_me_edit_video_default"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(user_layerText.suffix(5)) + "e_edi" + String(constAppKey.prefix(6)) + "o_def" + String(userViewItemFormat))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.addTarget(self, action: #selector(iconbtnclick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(makeAdd), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var changeBtn: UIButton = {
    lazy var changeBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_me_edit_photo_change"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(data_normalText) + String(noti_viewValue) + String(userPickValue))), for: .normal)
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.addTarget(self, action: #selector(changeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(heading), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var playBtn: UIImageView = {
    lazy var playBtn: UIImageView = {
        //: let icon = UIImageView.init()
        let icon = UIImageView()
        //: icon.image = UIImage.BundleImageNamed(name: "btn_dynamic_stop_nor")
        icon.image = UIImage.thoughtImageBundleSizeText(name: (String(main_lengthData) + String(dataKitStr.prefix(5)) + "stop_nor"))
        //: icon.isHidden = true
        icon.isHidden = true
        //: icon.isUserInteractionEnabled = false
        icon.isUserInteractionEnabled = false
        //: return icon
        return icon
        //: }()
    }()

    //: private lazy var statusLB: UILabel = {
    private lazy var statusLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 12)
        lb.font = UIFont.clickLarge(type: .Medium, fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.backgroundColor = UIColor.init(hex: "#FF506D")
        lb.backgroundColor = UIColor(hex: (String(showVerticalMessage)))
        //: lb.text = "Reviewing".localized
        lb.text = (String(userCellPath) + String(user_socialKey)).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.layer.cornerRadius = 8
        lb.layer.cornerRadius = 8
        //: lb.layer.masksToBounds = true
        lb.layer.masksToBounds = true
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Setting

//: extension TalkingEditVideoCell {
extension StyleReactiveCompatible {
    //: func upDateCellView(videoPlayPath: String) {
    func container(videoPlayPath: String) {
        //: self.videoPlayPath = videoPlayPath
        self.videoPlayPath = videoPlayPath
        //: playBtn.isHidden = false
        playBtn.isHidden = false
    }

    //: func setCellView(iconPath: String) {
    func viewContent(iconPath: String) {
        //: iconBtn.setUrlImage(urlStr: iconPath)
        iconBtn.blockHalf(urlStr: iconPath)
    }

    //: func setVideoStatusLB(status: Int) {
    func user(status: Int) {
        //: self.videoStatus = status
        self.videoStatus = status
        // 待审核
        //: statusLB.isHidden = status != 0
        statusLB.isHidden = status != 0
        //: changeBtn.isHidden = status != 1
        changeBtn.isHidden = status != 1
    }
}

// MARK: - Event

//: extension TalkingEditVideoCell {
extension StyleReactiveCompatible {
    //: @objc private func changeBtnClick() {
    @objc private func heading() {
        //: if !PunctuateThen.share.loginUserMode.isNaUser,
        if !PunctuateThen.share.loginUserMode.isNaUser,
           //: PunctuateThen.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           PunctuateThen.share.loginUserMode.isTPAuth != AuthColumnConvertible.isSuccessed.rawValue,
           //: PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue {
           PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            MessageThen.shared.eponym()
            //: return
            return
        }
        //: seleteVideoTool()
        demand()
    }

    //: @objc private func iconbtnclick() {
    @objc private func makeAdd() {
        //: if !PunctuateThen.share.loginUserMode.isNaUser,
        if !PunctuateThen.share.loginUserMode.isNaUser,
           //: PunctuateThen.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           PunctuateThen.share.loginUserMode.isTPAuth != AuthColumnConvertible.isSuccessed.rawValue,
           //: PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue {
           PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            MessageThen.shared.eponym()
            //: return
            return
        }

        //: if self.videoStatus == -3 && self.videoPlayPath.isEmptyString {
        if self.videoStatus == -3, self.videoPlayPath.isEmptyString {
            //: seleteVideoTool()
            demand()
            //: } else {
        } else {
            //: let vc = TalkingMomentVideoVC.init(videoPath: self.videoPlayPath)
            let vc = FailViewController(videoPath: self.videoPlayPath)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.occurrentWith()?.navigationController?.pushViewController(vc, animated: true)
        }
    }

    //: private func  seleteVideoTool() {
    private func demand() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        CustomPermissionTool.videoOf(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(maxCount: 1, allowPhoto: false, allowVideo: true)
                let vc = DirectReactiveCompatible.sizeUponTelecasting(maxCount: 1, allowPhoto: false, allowVideo: true)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: self.currentViewController()?.present(vc, animated: true)
                self.occurrentWith()?.present(vc, animated: true)
                //: vc.didFinishPickingVideoHandle = { [weak self] ( coverImage: UIImage?,
                vc.didFinishPickingVideoHandle = { [weak self] (_: UIImage?,
                                                                //: assets: PHAsset?)  in
                                                                assets: PHAsset?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: TalkingImagePickTool.getVideoPath(asset: assets) { filePath in
                        DirectReactiveCompatible.take(asset: assets) { filePath in

                            //: guard filePath != nil else { return }
                            guard filePath != nil else { return }
                            //: let asset = AVURLAsset.init(url: filePath!)
                            let asset = AVURLAsset(url: filePath!)
                            //: let time = asset.duration
                            let time = asset.duration
                            //: let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                            let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                            //: if seconds>=5 {
                            if seconds >= 5 {
                                //: self.CompressedVideo(url: filePath!)
                                self.playTimeUrl(url: filePath!)

                                //: } else {
                            } else {
                                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) { // 视频压缩取消
                                    //: self.func__showStatusBarErrorMsg(showMsg: "Shoot video at least 5 seconds".localized)
                                    self.drawObserver(showMsg: (String(notiDropMessage) + String(noti_searchUrl) + String(appSmallViewKey)).localized)
                                }
                            }
                        }
                }
            }
        }
    }

    /// 视频压缩
    //: private func CompressedVideo(url: URL) {
    private func playTimeUrl(url: URL) {
        //: let videoVC = TalkingVideoEditorController(maxDuration: 30.0, videoURL: url) { [weak self] videoInfo in
        let videoVC = TransgressionThen(maxDuration: 30.0, videoURL: url) { [weak self] videoInfo in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: guard let videoInfo = videoInfo else { return }
            guard let videoInfo = videoInfo else { return }
            //: self.videoPath = videoInfo.videoPath
            self.videoPath = videoInfo.videoPath
            //: self.coverPath = videoInfo.coverPath
            self.coverPath = videoInfo.coverPath
            // 压缩成功
            //: let img = UIImage(contentsOfFile: self.coverPath) ?? UIImage()
            let img = UIImage(contentsOfFile: self.coverPath) ?? UIImage()
            //: self.iconBtn.setImage(img, for: .normal)
            self.iconBtn.setImage(img, for: .normal)
            //: self.videoPlayPath = self.videoPath
            self.videoPlayPath = self.videoPath
            //: if self.seleteBlock != nil {
            if self.seleteBlock != nil {
                //: self.seleteBlock(self.coverPath, self.videoPath)
                self.seleteBlock(self.coverPath, self.videoPath)
            }
        }

        //: ProgressHUD.dismiss()
        DirectThen.cutWith()
        //: self.currentViewController()?.navigationController?.pushViewController(videoVC, animated: true)
        self.occurrentWith()?.navigationController?.pushViewController(videoVC, animated: true)
    }

    //: private func deleteFile() {
    private func dataFile() {
        //: if FileManager.default.fileExists(atPath: self.videoPath) {
        if FileManager.default.fileExists(atPath: self.videoPath) {
            //: try? FileManager.default.removeItem(atPath: self.videoPath)
            try? FileManager.default.removeItem(atPath: self.videoPath)
        }
    }
}

// MARK: - Layout

//: extension TalkingEditVideoCell {
extension StyleReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func mpFrom() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(tipsLB)
        backView.addSubview(tipsLB)
        //: backView.addSubview(messageLB)
        backView.addSubview(messageLB)
        //: backView.addSubview(iconBtn)
        backView.addSubview(iconBtn)
        //: iconBtn.addSubview(changeBtn)
        iconBtn.addSubview(changeBtn)
        //: iconBtn.addSubview(playBtn)
        iconBtn.addSubview(playBtn)
        //: backView.addSubview(statusLB)
        backView.addSubview(statusLB)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func showConstraint() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.bottom.equalTo(-15)
            make.trailing.bottom.equalTo(-15)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
        }
        //: tipsLB.snp.makeConstraints { make in
        tipsLB.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
            //: make.top.equalTo(18)
            make.top.equalTo(18)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.leading.equalTo(tipsLB)
            make.leading.equalTo(tipsLB)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.top.equalTo(tipsLB.snp.bottom).offset(8)
            make.top.equalTo(tipsLB.snp.bottom).offset(8)
        }
        //: iconBtn.snp.makeConstraints { make in
        iconBtn.snp.makeConstraints { make in
            //: make.top.equalTo(messageLB.snp.bottom).offset(18)
            make.top.equalTo(messageLB.snp.bottom).offset(18)
            //: make.width.height.equalTo(101)
            make.width.height.equalTo(101)
            //: make.centerX.equalTo(backView)
            make.centerX.equalTo(backView)
        }
        //: changeBtn.snp.makeConstraints { make in
        changeBtn.snp.makeConstraints { make in
            //: make.top.trailing.equalTo(iconBtn)
            make.top.trailing.equalTo(iconBtn)
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
        //: playBtn.snp.makeConstraints { make in
        playBtn.snp.makeConstraints { make in
            //: make.center.equalTo(iconBtn)
            make.center.equalTo(iconBtn)
            //: make.size.equalTo(CGSize(width: 39, height: 39))
            make.size.equalTo(CGSize(width: 39, height: 39))
        }

        //: statusLB.snp.makeConstraints { make in
        statusLB.snp.makeConstraints { make in
            //: make.leading.equalTo(iconBtn.snp.leading).offset(-10)
            make.leading.equalTo(iconBtn.snp.leading).offset(-10)
            //: make.top.equalTo(iconBtn.snp.top).offset(-9)
            make.top.equalTo(iconBtn.snp.top).offset(-9)
            //: make.size.equalTo(CGSize(width: 65, height: 16))
            make.size.equalTo(CGSize(width: 65, height: 16))
        }
    }
}
