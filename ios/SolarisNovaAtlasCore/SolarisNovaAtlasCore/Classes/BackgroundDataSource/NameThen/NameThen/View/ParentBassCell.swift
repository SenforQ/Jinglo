
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let showAppMessageKey:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "MF:LiveChatWelMsg" :*/
fileprivate let kRefreshMessage:[Character] = ["M","F",":","L","i","v","e","C"]
fileprivate let dataGiftValue:String = "hatWapp if view layer"
fileprivate let kRankValue:[Character] = ["e","l","M","s","g"]

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let k_meetingBlockMsg:String = "button image image true otherMF:Li"
fileprivate let notiDayInfoColorName:String = "Prizeview for cell"
fileprivate let userItemName:String = "Msgapp model let cell to"

/*: "MF:LiveChatAttentionMsg" :*/
fileprivate let notiPhotoPath:String = "MF:Lview info else self"
fileprivate let user_buttonMsg:String = "raw height in scale totAtt"
fileprivate let showHiddenName:String = "onMsgself view guard to"

/*: "MF:PartyChatWelMsg" :*/
fileprivate let k_viewListText:String = "bottom regular face guardMF:P"
fileprivate let main_areaId:[Character] = ["h","a","t"]
fileprivate let kTimeData:String = "top timeWelMsg"

/*: "MF:PartyChatPrizeMsg" :*/
fileprivate let const_dataStr:String = "text send image gift guardMF:P"
fileprivate let k_skinUrl:String = "type up to cell giftPrizeMsg"

/*: "MF:PartyChatAttentionMsg" :*/
fileprivate let showUpTitle:[Character] = ["M","F",":","P","a","r"]
fileprivate let dataStyleUrl:String = "tyChato block model video"
fileprivate let dataBlockKey:String = "encamerao"

/*: _ :*/
fileprivate let data_containerStr:[Character] = ["_"]

/*: "UITableViewCell" :*/
fileprivate let appDeleteMessage:String = "UITabadd target self close"
fileprivate let mainComputeStr:String = "ewCellcamera click"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ParentBassCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingDanmuMsgBassCell: UITableViewCell {
class ParentBassCell: UITableViewCell {
    //: var msgModel = TalkingLiveRoomDanmuModel.init()
    var msgModel = PublisherTransformable()

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

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        //: self.accessoryType = .none
        self.accessoryType = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle  = .none
        self.selectionStyle = .none

        //: self.contentView.addSubview(bgLb)
        self.contentView.addSubview(bgLb)
        //: self.contentView.addSubview(msgLabel)
        self.contentView.addSubview(msgLabel)

        //: self.msgLabel.snp.makeConstraints { make in
        self.msgLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.top.equalTo(cellLineSpeing+2)
            make.top.equalTo(dataBarInfoRecordTitle + 2)
            //: make.bottom.equalTo(-2)
            make.bottom.equalTo(-2)
//            make.trailing.lessThanOrEqualTo(-6)
            //: make.width.equalTo(10)
            make.width.equalTo(10)
        }
        //: self.bgLb.snp.makeConstraints { make in
        self.bgLb.snp.makeConstraints { make in
            //: make.top.equalTo(cellLineSpeing)
            make.top.equalTo(dataBarInfoRecordTitle)
            //: make.leading.bottom.equalTo(0)
            make.leading.bottom.equalTo(0)
            //: make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
            make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showAppMessageKey.reversed(), encoding: .utf8)!)
    }

    //: lazy var bgLb: UIImageView = {
    lazy var bgLb: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.layer.cornerRadius = 13
        view.layer.cornerRadius = 13
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var msgLabel: YYLabel = {
    lazy var msgLabel: YYLabel = {
        //: let lb = YYLabel.init()
        let lb = YYLabel()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.clipsToBounds = true
        lb.clipsToBounds = true
        //: lb.textVerticalAlignment = .center
        lb.textVerticalAlignment = .center
        //: lb.isUserInteractionEnabled = true
        lb.isUserInteractionEnabled = true
        //: lb.semanticContentAttribute = .forceLeftToRight
        lb.semanticContentAttribute = .forceLeftToRight
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeThen.shared.direction == .rightToLeft {
            //: lb.semanticContentAttribute = .forceRightToLeft
            lb.semanticContentAttribute = .forceRightToLeft
        }
        //: return lb
        return lb
        //: }()
    }()
}

//: extension TalkingDanmuMsgBassCell {
extension ParentBassCell {
    //: class func initTableView(tableView: UITableView, msg: TalkingLiveRoomDanmuModel, indexPath: IndexPath ) -> TalkingDanmuMsgBassCell {
    class func quantityeractionTableLoad(tableView: UITableView, msg: PublisherTransformable, indexPath _: IndexPath) -> ParentBassCell {
        //: var cell: TalkingDanmuMsgBassCell?
        var cell: ParentBassCell?

        //: if msg.msgInfo?.messageType == 1 ||
        if msg.msgInfo?.messageType == 1 ||
            //: msg.msgInfo?.messageType == 2 ||
            msg.msgInfo?.messageType == 2 ||
            //: msg.msgInfo?.messageType == 3 ||
            msg.msgInfo?.messageType == 3 ||
            //: msg.MsgExtension == "MF:LiveChatWelMsg" ||
            msg.MsgExtension == (String(kRefreshMessage) + String(dataGiftValue.prefix(4)) + String(kRankValue)) ||
            //: msg.MsgExtension == "MF:LiveChatPrizeMsg" ||
            msg.MsgExtension == (String(k_meetingBlockMsg.suffix(5)) + "veChat" + String(notiDayInfoColorName.prefix(5)) + String(userItemName.prefix(3))) ||
            //: msg.MsgExtension == "MF:LiveChatAttentionMsg" ||
            msg.MsgExtension == (String(notiPhotoPath.prefix(4)) + "iveCha" + String(user_buttonMsg.suffix(4)) + "enti" + String(showHiddenName.prefix(5))) ||
            //: msg.MsgExtension == "MF:PartyChatWelMsg" ||
            msg.MsgExtension == (String(k_viewListText.suffix(4)) + "artyC" + String(main_areaId) + String(kTimeData.suffix(6))) ||
            //: msg.MsgExtension == "MF:PartyChatPrizeMsg" ||
            msg.MsgExtension == (String(const_dataStr.suffix(4)) + "artyChat" + String(k_skinUrl.suffix(8))) ||
            //: msg.MsgExtension == "MF:PartyChatAttentionMsg" {
            msg.MsgExtension == (String(showUpTitle) + String(dataStyleUrl.prefix(5)) + "tAtt" + dataBlockKey.replacingOccurrences(of: "camera", with: "ti") + "nMsg")
        {
            //: let identifier = "\(TalkingDanmuMsgTextCell.className())_\(msg.msgInfo?.messageType ?? 0)"
            let identifier = "\(VideoViewCell.className())_\(msg.msgInfo?.messageType ?? 0)"
            //: tableView.register(TalkingDanmuMsgTextCell.self, forCellReuseIdentifier: identifier)
            tableView.register(VideoViewCell.self, forCellReuseIdentifier: identifier)
            //: cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingDanmuMsgTextCell
            cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? VideoViewCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingDanmuMsgTextCell(style: .default, reuseIdentifier: identifier)
                cell = VideoViewCell(style: .default, reuseIdentifier: identifier)
            }
            //: }else {
        } else {
            //: let identifier = "UITableViewCell"
            let identifier = (String(appDeleteMessage.prefix(5)) + "leVi" + String(mainComputeStr.prefix(6)))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingDanmuMsgBassCell(style: .default, reuseIdentifier: identifier)
                cell = ParentBassCell(style: .default, reuseIdentifier: identifier)
            }
            //: return cell as! TalkingDanmuMsgBassCell
            return cell as! ParentBassCell
        }

        //: cell?.msgModel = msg
        cell?.msgModel = msg

        //: return cell!
        return cell!
    }
}
