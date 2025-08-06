
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_coverUrl:[UInt8] = [0x41,0x46,0x41,0x5c,0x0,0x4b,0x47,0x4c,0x4d,0x5a,0x12,0x1,0x8,0x40,0x49,0x5b,0x8,0x46,0x47,0x5c,0x8,0x4a,0x4d,0x4d,0x46,0x8,0x41,0x45,0x58,0x44,0x4d,0x45,0x4d,0x46,0x5c,0x4d,0x4c]

private func freebeeMe(title num: UInt8) -> UInt8 {
    return num ^ 40
}

/*: "icon_chat_start" :*/
fileprivate let constGenderAdFormat:String = "viewcon"
fileprivate let userSendKey:String = "_statag time drop view"
fileprivate let appLiveName:String = "rmanager"

/*: "#752FE9" :*/
fileprivate let userSnapModeId:String = "#752FE9menu kit"

/*: "#F5F5F5" :*/
fileprivate let notiStyleContent:String = "#F5F5position window back info add"
fileprivate let notiLocationKey:[Character] = ["F","5"]

/*: "@ :*/
fileprivate let kLoadKey:String = "@"

/*: "btn_feed_dianzan_nor" :*/
fileprivate let const_nameStr:[UInt8] = [0x1b,0xd,0x17,0x26,0x1f,0x1c,0x1c,0x1d,0x26,0x1d,0x10,0x18,0x17,0x3,0x18,0x17,0x26,0x17,0x16,0xb]

private func colorToEqual(manager num: UInt8) -> UInt8 {
    return num ^ 121
}

/*: "btn_feed_reply_nor" :*/
fileprivate let showUserFormat:String = "btn_feeinfo size"
fileprivate let user_labUrl:String = "d_replslide i view local size"
fileprivate let k_layerUpData:[Character] = ["y","_","n","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GroceryListFeedCell.swift
//  SolarisNovaAtlasCore
//
//  Created by DouXiu on 2024/7/25.
//

//: import UIKit
import UIKit

//: class TalkingMomentNewsFeedCell: UITableViewCell {
class GroceryListFeedCell: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: setupSubviews()
        modelSubviews()
        //: setupSubViewsConstraint()
        clickVideo()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_coverUrl.map{freebeeMe(title: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var headImgView: UIImageView = {
    private lazy var headImgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.layer.cornerRadius = 16
        img.layer.cornerRadius = 16
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconBorder: UIButton = {
    private lazy var iconBorder: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var previewImgView: UIImageView = {
    private lazy var previewImgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.layer.cornerRadius = 6
        img.layer.cornerRadius = 6
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: lazy var playView: UIImageView = {
    lazy var playView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.image = UIImage.BundleImageNamed(name: "icon_chat_start")
        img.image = UIImage.thoughtImageBundleSizeText(name: (constGenderAdFormat.replacingOccurrences(of: "view", with: "i") + "_chat" + String(userSendKey.prefix(4)) + appLiveName.replacingOccurrences(of: "manager", with: "t")))
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var nickNameLab: UILabel = {
    private lazy var nickNameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.toEvent()
        //: lab.font = UIFont.atomic(fontSize: 16)
        lab.font = UIFont.atomic(fontSize: 16)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var atNickNameLab: UILabel = {
    private lazy var atNickNameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor(hex: "#752FE9")
        lab.textColor = UIColor(hex: (String(userSnapModeId.prefix(7))))
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 16)
        lab.font = UIFont.recoverOf(fontSize: 16)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var statusIcon: UIImageView = {
    private lazy var statusIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var timeLab: UILabel = {
    private lazy var timeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appValueDetailColor()
        lab.textColor = UIColor.hockeyPlayer()
        //: lab.font = UIFont.atomic(fontSize: 12)
        lab.font = UIFont.atomic(fontSize: 12)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var replyContentLab: UILabel = {
    private lazy var replyContentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appValueColor()
        lab.textColor = UIColor.imageColor()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 16)
        lab.font = UIFont.recoverOf(fontSize: 16)
        //: lab.numberOfLines = 2
        lab.numberOfLines = 2
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var mainContentView: UIView = {
    private lazy var mainContentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "#F5F5F5")
        view.backgroundColor = UIColor(hex: (String(notiStyleContent.prefix(5)) + String(notiLocationKey)))
        //: view.layer.cornerRadius = 14
        view.layer.cornerRadius = 14
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var mainContentLab: UILabel = {
    private lazy var mainContentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appValueDetailColor()
        lab.textColor = UIColor.hockeyPlayer()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.recoverOf(fontSize: 14)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var line: UIView = {
    private lazy var line: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "#F5F5F5")
        view.backgroundColor = UIColor(hex: (String(notiStyleContent.prefix(5)) + String(notiLocationKey)))
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMomentNewsFeedCell {
extension GroceryListFeedCell {
    /// 刷新cell
    //: func refreshCell(_ model: TalkingRemindListModel) {
    func concatenate(_ model: ToHandyJSON) {
        //: headImgView.setUrlImage(urlStr: model.headPic, placeImg: UIImage.placeSquareBigImgBanner())
        headImgView.beforeRender(urlStr: model.headPic, placeImg: UIImage.two())
        //: if !model.headPicFrame.isEmpty {
        if !model.headPicFrame.isEmpty {
            //: iconBorder.isHidden = false
            iconBorder.isHidden = false
            //: iconBorder.setHeadFrameUrlImage(urlStr: model.headPicFrame)
            iconBorder.glassesByStr(urlStr: model.headPicFrame)
            //: } else {
        } else {
            //: iconBorder.isHidden = true
            iconBorder.isHidden = true
        }
        //: previewImgView.setUrlImage(urlStr: model.imageUrl)
        previewImgView.putBackThroughFinish(urlStr: model.imageUrl)
        //: playView.isHidden = (model.momentType != 2)
        playView.isHidden = (model.momentType != 2)

        //: nickNameLab.text = model.replyNickname
        nickNameLab.text = model.replyNickname
        //: atNickNameLab.isHidden = (model.type != 2)
        atNickNameLab.isHidden = (model.type != 2)
        //: atNickNameLab.text = "@\(model.nickname)"
        atNickNameLab.text = "@\(model.nickname)"
        //: let typeImgStr = (model.type == 0) ? "btn_feed_dianzan_nor":"btn_feed_reply_nor"
        let typeImgStr = (model.type == 0) ? String(bytes: const_nameStr.map{colorToEqual(manager: $0)}, encoding: .utf8)! : (String(showUserFormat.prefix(7)) + String(user_labUrl.prefix(6)) + String(k_layerUpData))
        //: statusIcon.image = UIImage.BundleImageNamed(name: typeImgStr)
        statusIcon.image = UIImage.thoughtImageBundleSizeText(name: typeImgStr)
        //: timeLab.text = model.addTime
        timeLab.text = model.addTime
        //: replyContentLab.isHidden = (model.type == 0)
        replyContentLab.isHidden = (model.type == 0)
        //: replyContentLab.text = model.replyContent
        replyContentLab.text = model.replyContent
        //: mainContentLab.text = model.content
        mainContentLab.text = model.content
        //: mainContentView.snp.remakeConstraints { make in
        mainContentView.snp.remakeConstraints { make in
            //: if model.type == 0 {
            if model.type == 0 {
                //: make.top.equalTo(statusIcon.snp.bottom).offset(10)
                make.top.equalTo(statusIcon.snp.bottom).offset(10)
                //: } else {
            } else {
                //: make.top.equalTo(replyContentLab.snp.bottom).offset(10)
                make.top.equalTo(replyContentLab.snp.bottom).offset(10)
            }
            //: make.height.equalTo(model.content.isEmptyString ? 0 : 28)
            make.height.equalTo(model.content.isEmptyString ? 0 : 28)
            //: make.leading.equalTo(nickNameLab)
            make.leading.equalTo(nickNameLab)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
    }
}

// MARK: - Layout

//: extension TalkingMomentNewsFeedCell {
extension GroceryListFeedCell {
    //: private func setupSubviews() {
    private func modelSubviews() {
        //: contentView.addSubview(headImgView)
        contentView.addSubview(headImgView)
        //: contentView.addSubview(iconBorder)
        contentView.addSubview(iconBorder)
        //: contentView.addSubview(previewImgView)
        contentView.addSubview(previewImgView)
        //: previewImgView.addSubview(playView)
        previewImgView.addSubview(playView)

        //: contentView.addSubview(nickNameLab)
        contentView.addSubview(nickNameLab)
        //: contentView.addSubview(atNickNameLab)
        contentView.addSubview(atNickNameLab)
        //: contentView.addSubview(statusIcon)
        contentView.addSubview(statusIcon)
        //: contentView.addSubview(timeLab)
        contentView.addSubview(timeLab)
        //: contentView.addSubview(replyContentLab)
        contentView.addSubview(replyContentLab)
        //: contentView.addSubview(mainContentView)
        contentView.addSubview(mainContentView)
        //: mainContentView.addSubview(mainContentLab)
        mainContentView.addSubview(mainContentLab)
        //: contentView.addSubview(line)
        contentView.addSubview(line)
    }

    //: private func setupSubViewsConstraint() {
    private func clickVideo() {
        //: headImgView.snp.makeConstraints { make in
        headImgView.snp.makeConstraints { make in
            //: make.top.equalTo(18)
            make.top.equalTo(18)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.width.height.equalTo(32)
            make.width.height.equalTo(32)
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.center.equalTo(headImgView)
            make.center.equalTo(headImgView)
            //: make.width.height.equalTo(41.5)
            make.width.height.equalTo(41.5)
        }
        //: previewImgView.snp.makeConstraints { make in
        previewImgView.snp.makeConstraints { make in
            //: make.top.equalTo(16)
            make.top.equalTo(16)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.height.equalTo(46)
            make.width.height.equalTo(46)
        }
        //: playView.snp.makeConstraints { make in
        playView.snp.makeConstraints { make in
            //: make.height.width.equalTo(18)
            make.height.width.equalTo(18)
            //: make.center.equalTo(previewImgView)
            make.center.equalTo(previewImgView)
        }
        //: nickNameLab.snp.makeConstraints { make in
        nickNameLab.snp.makeConstraints { make in
            //: make.top.equalTo(headImgView)
            make.top.equalTo(headImgView)
            //: make.leading.equalTo(headImgView.snp.trailing).offset(10)
            make.leading.equalTo(headImgView.snp.trailing).offset(10)
            //: make.width.lessThanOrEqualTo((ScreenWidth-128)/2)
            make.width.lessThanOrEqualTo((kQueryValue - 128) / 2)
        }
        //: atNickNameLab.snp.makeConstraints { make in
        atNickNameLab.snp.makeConstraints { make in
            //: make.top.equalTo(nickNameLab)
            make.top.equalTo(nickNameLab)
            //: make.leading.equalTo(nickNameLab.snp.trailing).offset(4)
            make.leading.equalTo(nickNameLab.snp.trailing).offset(4)
            //: make.width.lessThanOrEqualTo((ScreenWidth-128)/2)
            make.width.lessThanOrEqualTo((kQueryValue - 128) / 2)
        }
        //: statusIcon.snp.makeConstraints { make in
        statusIcon.snp.makeConstraints { make in
            //: make.leading.equalTo(nickNameLab)
            make.leading.equalTo(nickNameLab)
            //: make.top.equalTo(nickNameLab.snp.bottom).offset(7)
            make.top.equalTo(nickNameLab.snp.bottom).offset(7)
            //: make.width.height.equalTo(15)
            make.width.height.equalTo(15)
        }
        //: timeLab.snp.makeConstraints { make in
        timeLab.snp.makeConstraints { make in
            //: make.leading.equalTo(statusIcon.snp.trailing).offset(4)
            make.leading.equalTo(statusIcon.snp.trailing).offset(4)
            //: make.centerY.equalTo(statusIcon)
            make.centerY.equalTo(statusIcon)
        }
        //: replyContentLab.snp.makeConstraints { make in
        replyContentLab.snp.makeConstraints { make in
            //: make.top.equalTo(statusIcon.snp.bottom).offset(10)
            make.top.equalTo(statusIcon.snp.bottom).offset(10)
            //: make.leading.equalTo(nickNameLab)
            make.leading.equalTo(nickNameLab)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
        //: mainContentView.snp.makeConstraints { make in
        mainContentView.snp.makeConstraints { make in
            //: make.top.equalTo(replyContentLab.snp.bottom).offset(10)
            make.top.equalTo(replyContentLab.snp.bottom).offset(10)
            //: make.leading.equalTo(nickNameLab)
            make.leading.equalTo(nickNameLab)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
        //: mainContentLab.snp.makeConstraints { make in
        mainContentLab.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }
        //: line.snp.makeConstraints { make in
        line.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.top.equalTo(mainContentView.snp.bottom).offset(20)
            make.top.equalTo(mainContentView.snp.bottom).offset(20)
            //: make.height.equalTo(1)
            make.height.equalTo(1)
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}
