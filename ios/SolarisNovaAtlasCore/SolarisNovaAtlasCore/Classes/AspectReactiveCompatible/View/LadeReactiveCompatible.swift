
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let data_lowModelName:[UInt8] = [0x4e,0x53,0x4e,0x59,0xd,0x48,0x54,0x49,0x4a,0x57,0x1f,0xe,0x5,0x4d,0x46,0x58,0x5,0x53,0x54,0x59,0x5,0x47,0x4a,0x4a,0x53,0x5,0x4e,0x52,0x55,0x51,0x4a,0x52,0x4a,0x53,0x59,0x4a,0x49]

fileprivate func cityCenter(player num: UInt8) -> UInt8 {
    let value = Int(num) + 27
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_chatsettings_unchoice" :*/
fileprivate let constColorUrl:String = "btn_leading in hidden price bar"
fileprivate let noti_shadowLogResultMsg:String = "clear blue infoettings_"
fileprivate let kTextMessage:String = "UNCHOICE"

/*: "Free" :*/
fileprivate let mainQueryedData:String = "Freeself all"

/*: "%@ Gold coins / Message" :*/
fileprivate let dataClickMessage:[Character] = ["%","@"," ","G","o","l","d"," ","c","o"]
fileprivate let userVideoData:String = "ins / model return self"
fileprivate let mainResistanceMessage:String = "model format remove makeMessage"

/*: "%@ Gold coins / Min" :*/
fileprivate let appNorTitle:String = "%@ Golfrom self path return"
fileprivate let constToKey:String = "share self mode color modeld coins"
fileprivate let constDateWhenTitle:String = " / Minapp bottom live make"

/*: "btn_chatsettings_choiced" :*/
fileprivate let dataLifeValue:String = "btn_cformat float index path var"
fileprivate let app_logName:String = "equaltti"
fileprivate let kImageUrl:[Character] = ["n","g","s","_","c","h","o","i","c","e","d"]

/*: "LV.%d" :*/
fileprivate let notiEffectData:[Character] = ["L","V",".","%","d"]

/*: "#E9E9E9" :*/
fileprivate let k_appUrl:String = "self detail to replace#E9E9E"
fileprivate let noti_rawGiftAddTitle:[Character] = ["9"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LadeReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/1.
//

//: import UIKit
import UIKit

//: class ChatPriceModel: HandyJSON {
class StartTransformable: HandyJSON {
    //: var price: Int = 0
    var price: Int = 0
    //: var levelLimit: Int = 0
    var levelLimit: Int = 0
    //: var isSelected: Bool = false
    var isSelected: Bool = false

    //: required init() {}
    required init() {}
}

//: class TalkingFemaleChatSetCell: UITableViewCell {
class LadeReactiveCompatible: UITableViewCell {
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
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.setupSubviews()
        self.purchase()
        //: self.setupSubViewsConstraint()
        self.comeOut()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: data_lowModelName.map{cityCenter(player: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var desLabel: UILabel = {
    lazy var desLabel: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = .appTitleColor()
        lb.textColor = .toEvent()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .clickLarge(type: .Regular, fontSize: 16)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var levelView: UIView = {
    lazy var levelView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.appThemeColor()
        view.backgroundColor = UIColor.readRemove()
        //: view.layer.cornerRadius = 10
        view.layer.cornerRadius = 10
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var levelLab: UILabel = {
    lazy var levelLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = UIColor.white
        lb.textColor = UIColor.white
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 12)
        lb.font = .clickLarge(type: .Regular, fontSize: 12)
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var selectedImageView: UIImageView = {
    lazy var selectedImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.BundleImageNamed(name: "btn_chatsettings_unchoice")
        imgView.image = UIImage.thoughtImageBundleSizeText(name: (String(constColorUrl.prefix(4)) + "chats" + String(noti_shadowLogResultMsg.suffix(8)) + kTextMessage.lowercased()))
        //: return imgView
        return imgView
        //: }()
    }()
}

// MARK: - update || fitHeight

//: extension TalkingFemaleChatSetCell {
extension LadeReactiveCompatible {
    //: public func updateCellModel(cellModel: ChatPriceModel, index: Int) {
    public func theoreticalAccount(cellModel: StartTransformable, index: Int) {
        //: switch index {
        switch index {
        //: case 0:
        case 0:
            //: desLabel.text = cellModel.price == 0 ? "Free".localized : "%@ Gold coins / Message".localizedArguments(cellModel.price)
            desLabel.text = cellModel.price == 0 ? (String(mainQueryedData.prefix(4))).localized : (String(dataClickMessage) + String(userVideoData.prefix(6)) + String(mainResistanceMessage.suffix(7))).viewfinder(cellModel.price)
        //: case 1, 2:
        case 1, 2:
            //: desLabel.text = "%@ Gold coins / Min".localizedArguments(cellModel.price)
            desLabel.text = (String(appNorTitle.prefix(6)) + String(constToKey.suffix(7)) + String(constDateWhenTitle.prefix(6))).viewfinder(cellModel.price)
        //: default:
        default:
            //: break
            break
        }

        //: selectedImageView.image = cellModel.isSelected == true ? UIImage.BundleImageNamed(name: "btn_chatsettings_choiced") : UIImage.BundleImageNamed(name: "btn_chatsettings_unchoice")
        selectedImageView.image = cellModel.isSelected == true ? UIImage.thoughtImageBundleSizeText(name: (String(dataLifeValue.prefix(5)) + "hats" + app_logName.replacingOccurrences(of: "equal", with: "e") + String(kImageUrl))) : UIImage.thoughtImageBundleSizeText(name: (String(constColorUrl.prefix(4)) + "chats" + String(noti_shadowLogResultMsg.suffix(8)) + kTextMessage.lowercased()))

        //: levelLab.text = String(format: "LV.%d", cellModel.levelLimit)
        levelLab.text = String(format: "LV.%d", cellModel.levelLimit)
        //: levelView.isHidden = cellModel.levelLimit == 0
        levelView.isHidden = cellModel.levelLimit == 0
        //: levelLab.isHidden = cellModel.levelLimit == 0
        levelLab.isHidden = cellModel.levelLimit == 0

        //: contentView.backgroundColor = cellModel.levelLimit > (Int(PunctuateThen.share.loginUserMode.level) ?? 1) ? UIColor(hex: "#E9E9E9") : .white
        contentView.backgroundColor = cellModel.levelLimit > (Int(PunctuateThen.share.loginUserMode.level) ?? 1) ? UIColor(hex: (String(k_appUrl.suffix(6)) + String(noti_rawGiftAddTitle))) : .white
    }
}

// MARK: Layout

//: extension TalkingFemaleChatSetCell {
extension LadeReactiveCompatible {
    //: private func setupSubviews() {
    private func purchase() {
        //: contentView.addSubview(desLabel)
        contentView.addSubview(desLabel)
        //: contentView.addSubview(levelView)
        contentView.addSubview(levelView)
        //: contentView.addSubview(levelLab)
        contentView.addSubview(levelLab)
        //: contentView.addSubview(selectedImageView)
        contentView.addSubview(selectedImageView)
    }

    //: private func setupSubViewsConstraint() {
    private func comeOut() {
        //: desLabel.snp.makeConstraints { make in
        desLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(17)
            make.top.equalTo(17)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelView.snp.makeConstraints { make in
        levelView.snp.makeConstraints { make in
            //: make.leading.equalTo(desLabel.snp.trailing).offset(4)
            make.leading.equalTo(desLabel.snp.trailing).offset(4)
            //: make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            //: make.centerY.equalTo(desLabel.snp.centerY)
            make.centerY.equalTo(desLabel.snp.centerY)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelLab.snp.makeConstraints { make in
        levelLab.snp.makeConstraints { make in
            //: make.leading.equalTo(levelView.snp.leading).offset(7)
            make.leading.equalTo(levelView.snp.leading).offset(7)
            //: make.centerY.equalTo(levelView.snp.centerY)
            make.centerY.equalTo(levelView.snp.centerY)
            //: make.centerX.equalTo(levelView.snp.centerX)
            make.centerX.equalTo(levelView.snp.centerX)
        }
        //: selectedImageView.snp.makeConstraints { make in
        selectedImageView.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalTo(desLabel.snp.centerY)
            make.centerY.equalTo(desLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: 21.0, height: 21.0))
            make.size.equalTo(CGSize(width: 21.0, height: 21.0))
        }
    }
}
