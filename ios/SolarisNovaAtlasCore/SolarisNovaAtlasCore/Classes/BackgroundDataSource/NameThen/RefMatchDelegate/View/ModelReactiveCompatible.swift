
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let user_modelData:[UInt8] = [0x7a,0x7d,0x7a,0x67,0x3b,0x70,0x7c,0x77,0x76,0x61,0x29,0x3a,0x33,0x7b,0x72,0x60,0x33,0x7d,0x7c,0x67,0x33,0x71,0x76,0x76,0x7d,0x33,0x7a,0x7e,0x63,0x7f,0x76,0x7e,0x76,0x7d,0x67,0x76,0x77]

private func genderAny(remove num: UInt8) -> UInt8 {
    return num ^ 19
}

/*: "icon_videoCall_translate_nor" :*/
fileprivate let appHeadColorUrl:String = "iawakeon"
fileprivate let user_priceName:String = "oCall_height if"
fileprivate let dataCurPath:[Character] = ["s","l","a"]
fileprivate let mainActionData:String = "te_norin color time var index"

/*: "icon_videoCall_translate_pre" :*/
fileprivate let main_keepMessage:String = "iusern"
fileprivate let dataObjectSessionText:[Character] = ["C","a","l","l","_","t","r","a","n","s","l","a","t","e","_","p","r","e"]

/*: "targetText" :*/
fileprivate let appNamePath:[Character] = ["t","a","r","g","e"]
fileprivate let app_videoName:String = "effect head label indextText"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingVideoDanmuMsgTextCell: TalkingVideoDanmuMsgBassCell {
class ModelReactiveCompatible: PanViewCell {
    //: override var msgModel: TalkingVideoCallDanmuModel {
    override var msgModel: TagHandyJSON {
        //: get { return super.msgModel }
        get { return super.msgModel }
        //: set {
        set {
            //: super.msgModel = newValue
            super.msgModel = newValue
            //: setCell()
            barEqual()
        }
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.contentView.addSubview(transBtn)
        self.contentView.addSubview(transBtn)
        //: self.transBtn.snp.makeConstraints { make in
        self.transBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(bgLb)
            make.centerY.equalTo(bgLb)
            //: make.leading.equalTo(bgLb.snp.trailing).offset(5)
            make.leading.equalTo(bgLb.snp.trailing).offset(5)
            //: make.size.equalTo(20)
            make.size.equalTo(20)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: user_modelData.map{genderAny(remove: $0)}, encoding: .utf8)!)
    }

    //: lazy var transBtn: UIButton = {
    lazy var transBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_videoCall_translate_nor"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (appHeadColorUrl.replacingOccurrences(of: "awake", with: "c") + "_vide" + String(user_priceName.prefix(6)) + "tran" + String(dataCurPath) + String(mainActionData.prefix(6)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_videoCall_translate_pre"), for: .selected)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (main_keepMessage.replacingOccurrences(of: "user", with: "co") + "_video" + String(dataObjectSessionText))), for: .selected)
        //: btn.addTarget(self, action: #selector(transBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(little), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingVideoDanmuMsgTextCell {
extension ModelReactiveCompatible {
    //: func setCell() {
    func barEqual() {
        //: self.msgLabel.attributedText = msgModel.msgAttribText
        self.msgLabel.attributedText = msgModel.msgAttribText
        //: self.msgLabel.snp.updateConstraints { make in
        self.msgLabel.snp.updateConstraints { make in
            //: make.width.equalTo(msgModel.msgWidth)
            make.width.equalTo(msgModel.msgWidth)
        }
        //: self.bgLb.image = nil
        self.bgLb.image = nil
        //: self.bgLb.backgroundColor = msgModel.bgColor
        self.bgLb.backgroundColor = msgModel.bgColor
        //: self.bgLb.layer.borderColor = UIColor.clear.cgColor
        self.bgLb.layer.borderColor = UIColor.clear.cgColor
        //: self.bgLb.layer.borderWidth = 0.0
        self.bgLb.layer.borderWidth = 0.0
        //: self.transBtn.isHidden = msgModel.isMySender
        self.transBtn.isHidden = msgModel.isMySender
    }

    //: @objc private func transBtnClick() {
    @objc private func little() {
        //: if !transBtn.isSelected {
        if !transBtn.isSelected {
            //: if self.msgModel.transContent.count > 0 {
            if self.msgModel.transContent.count > 0 {
                //: self.transBtn.isSelected = true
                self.transBtn.isSelected = true
                //: let celldata = TalkingVideoCallDammuCellData.init()
                let celldata = FootingCellData()
                //: self.msgModel = celldata.caculateTransMsgHeight(model: self.msgModel)
                self.msgModel = celldata.componentVideoModel(model: self.msgModel)
                //: self.setCell()
                self.barEqual()
                //: } else {
            } else {
                //: transBtn.isHidden = true
                transBtn.isHidden = true
                //: SomebodyRequestTool.req_translateMsg(msgId: msgModel.msgId, type: 3) { succeed, result, errorCode in
                SomebodyRequestTool.uniform(msgId: msgModel.msgId, type: 3) { succeed, result, _ in
                    //: self.transBtn.isHidden = false
                    self.transBtn.isHidden = false
                    //: if succeed {
                    if succeed {
                        //: let json = JSON(result )
                        let json = JSON(result)
                        //: let content = json["targetText"].stringValue
                        let content = json[(String(appNamePath) + String(app_videoName.suffix(5)))].stringValue
                        //: self.msgModel.transContent = content
                        self.msgModel.transContent = content
                        //: self.transBtn.isSelected = true
                        self.transBtn.isSelected = true
                        //: let celldata = TalkingVideoCallDammuCellData.init()
                        let celldata = FootingCellData()
                        //: self.msgModel = celldata.caculateTransMsgHeight(model: self.msgModel)
                        self.msgModel = celldata.componentVideoModel(model: self.msgModel)
                        //: self.setCell()
                        self.barEqual()
                    }
                }
            }
            //: } else {
        } else {
            //: self.transBtn.isSelected = false
            self.transBtn.isSelected = false
            //: let celldata = TalkingVideoCallDammuCellData.init()
            let celldata = FootingCellData()
            //: self.msgModel = celldata.caculateMsgHeight(model: self.msgModel)
            self.msgModel = celldata.methodOn(model: self.msgModel)
            //: self.setCell()
            self.barEqual()
        }
    }
}
