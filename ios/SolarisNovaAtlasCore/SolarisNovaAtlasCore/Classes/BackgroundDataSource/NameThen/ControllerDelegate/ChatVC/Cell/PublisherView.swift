
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let appColorKey:[UInt8] = [0xd8,0xdd,0xd8,0xe3,0x97,0xd2,0xde,0xd3,0xd4,0xe1,0xa9,0x98,0x8f,0xd7,0xd0,0xe2,0x8f,0xdd,0xde,0xe3,0x8f,0xd1,0xd4,0xd4,0xdd,0x8f,0xd8,0xdc,0xdf,0xdb,0xd4,0xdc,0xd4,0xdd,0xe3,0xd4,0xd3]

fileprivate func toEmpty(beauty num: UInt8) -> UInt8 {
    let value = Int(num) - 111
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_intimate_send_bg_nor" :*/
fileprivate let user_selectedMsg:String = "btn_inself actual margin"
fileprivate let showThoughtStatusMessage:String = "te_sesound player self block"
fileprivate let data_sizeMessage:[Character] = ["r"]

/*: "Send" :*/
fileprivate let const_willPath:String = "reply return index back classSend"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PublisherView.swift
//  SolarisNovaAtlasCore
//
//  Created by Charlotte on 2024/7/29.
//

//: import UIKit
import UIKit

//: class TalkingChatAskForGiftMsgCell: TalkingChatBaseMsgCell {
class PublisherView: CommonViewCell {
    //: typealias SendBlock = () -> Void
    typealias SendBlock = () -> Void
    //: var sendBlock: SendBlock?
    var sendBlock: SendBlock?
    //: var giftData: DataFileReactiveCompatible?
    var giftData: DataFileReactiveCompatible?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.isUserInteractionEnabled = true
        self.bubbleImgView.isUserInteractionEnabled = true
        //: self.bubbleImgView.addSubview(giftContentLab)
        self.bubbleImgView.addSubview(giftContentLab)
        //: self.bubbleImgView.addSubview(sendBtn)
        self.bubbleImgView.addSubview(sendBtn)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appColorKey.map{toEmpty(beauty: $0)}, encoding: .utf8)!)
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    //: private lazy var giftContentLab: YYLabel = {
    private lazy var giftContentLab: YYLabel = {
        //: let label = YYLabel.init()
        let label = YYLabel()
        //: label.textColor = UIColor.appTitleColor()
        label.textColor = UIColor.toEvent()
        //: label.font = UIFont.pingfangRugularFont(fontSize: 17)
        label.font = UIFont.recoverOf(fontSize: 17)
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    /// 送礼
    //: private lazy var sendBtn: TalkingButton = {
    private lazy var sendBtn: StartImageButton = {
        //: let btn = TalkingButton.init()
        let btn = StartImageButton()
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "btn_intimate_send_bg_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.thoughtImageBundleSizeText(name: (String(user_selectedMsg.prefix(6)) + "tima" + String(showThoughtStatusMessage.prefix(5)) + "nd_bg_no" + String(data_sizeMessage))), for: .normal)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(const_willPath.suffix(4))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.atomic(fontSize: 14)
        btn.titleLabel?.font = UIFont.atomic(fontSize: 14)
        //: btn.addTarget(self, action: #selector(sendBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(societal), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingChatAskForGiftMsgCell {
extension PublisherView {
    //: @objc func sendBtnClick() {
    @objc func societal() {
        //: self.sendBlock?()
        self.sendBlock?()
    }
}

//: extension TalkingChatAskForGiftMsgCell {
extension PublisherView {
    //: override func fill(with data: TCommonCellData) {
    override func ladenInfo(with data: DetailCellData) {
        //: super.fill(with: data)
        super.ladenInfo(with: data)
        //: self.indicator.stopAnimating()
        self.indicator.stopAnimating()
        //: self.giftData = data as? DataFileReactiveCompatible
        self.giftData = data as? DataFileReactiveCompatible
        //: guard let giftData = self.giftData else { return }
        guard let giftData = self.giftData else { return }
        //: self.giftContentLab.attributedText =  giftData.attributedString
        self.giftContentLab.attributedText = giftData.attributedString
        //: self.sendBtn.isHidden = (self.giftData?.msgModel.msgInfo.wantGift.sendStatus == 1 || self.giftData?.direction == .MsgDirectionOutgoing)
        self.sendBtn.isHidden = (self.giftData?.msgModel.msgInfo.wantGift.sendStatus == 1 || self.giftData?.direction == .MsgDirectionOutgoing)
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: guard let giftData = self.giftData else { return }
        guard let giftData = self.giftData else { return }
        //: self.giftContentLab.snp.remakeConstraints { make in
        self.giftContentLab.snp.remakeConstraints { make in
            //: make.leading.equalTo(giftData.textOrigin.x)
            make.leading.equalTo(giftData.textOrigin.x)
            //: make.top.equalTo(giftData.textOrigin.y)
            make.top.equalTo(giftData.textOrigin.y)
            //: make.size.equalTo(giftData.textSize)
            make.size.equalTo(giftData.textSize)
        }
        //: self.sendBtn.snp.remakeConstraints { make in
        self.sendBtn.snp.remakeConstraints { make in
            //: make.trailing.equalTo(-18)
            make.trailing.equalTo(-18)
            //: make.bottom.equalTo(-14)
            make.bottom.equalTo(-14)
            //: make.size.equalTo(CGSize.init(width: 58, height: 28))
            make.size.equalTo(CGSize(width: 58, height: 28))
        }
    }
}
