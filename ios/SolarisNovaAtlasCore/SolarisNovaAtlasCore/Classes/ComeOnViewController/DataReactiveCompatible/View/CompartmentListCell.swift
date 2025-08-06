
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_spaceLeadingText:[UInt8] = [0x1,0x6,0x1,0x1c,0x40,0xb,0x7,0xc,0xd,0x1a,0x52,0x41,0x48,0x0,0x9,0x1b,0x48,0x6,0x7,0x1c,0x48,0xa,0xd,0xd,0x6,0x48,0x1,0x5,0x18,0x4,0xd,0x5,0xd,0x6,0x1c,0xd,0xc]

private func whiteColor(frame num: UInt8) -> UInt8 {
    return num ^ 104
}

/*: "Welcome to my room" :*/
fileprivate let k_viewPath:String = "Welcmodel equal bottom can"
fileprivate let const_fitId:String = "else colorto m"
fileprivate let constSucceedId:String = "y roommodel component"

/*: "%@'s room" :*/
fileprivate let mainPageId:String = "%@\'s"

/*: "CCCCCC" :*/
fileprivate let data_popStr:String = "ccccc"
fileprivate let user_infoStr:[Character] = ["C"]

/*: "#E1D0FC" :*/
fileprivate let kTouchUrl:String = "eye type price menu#E1D0F"
fileprivate let dataTopTitle:String = "c"

/*: "#FFE3E5" :*/
fileprivate let mainCenterMessage:String = "#FFE3E5if show application"

/*: "get json error" :*/
fileprivate let const_selectPath:String = "model name center managerget "
fileprivate let user_objectRefData:String = "modelor"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CompartmentListCell.swift
//  SolarisNovaAtlasCore
//
//  Created by Hemming on 2024/9/24.
//

//: import UIKit
import UIKit

//: class PartyListCell: UITableViewCell {
class CompartmentListCell: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        levelPush()
        //: setupSubViewsConstraint()
        popConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_spaceLeadingText.map{whiteColor(frame: $0)}, encoding: .utf8)!)
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

    //: var listModel: PartyListModel? {
    var listModel: AvailableHandyJSON? {
        //: didSet {
        didSet {
            //: guard let listModel else { return }
            guard let listModel else { return }

            //: if String(listModel.uid) == PunctuateThen.share.loginUid {
            if String(listModel.uid) == PunctuateThen.share.loginUid {
                //: bgvlayer.isHidden = false
                bgvlayer.isHidden = false
                //: countryImgView.isHidden = true
                countryImgView.isHidden = true
                //: countryLab.text = "Welcome to my room".localized
                countryLab.text = (String(k_viewPath.prefix(4)) + "ome " + String(const_fitId.suffix(4)) + String(constSucceedId.prefix(6))).localized
                //: countryLab.textColor = .appValueColor()
                countryLab.textColor = .imageColor()
                //: countryLab.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
                countryLab.font = UIFont.clickLarge(type: .Medium, fontSize: 15)
                //: countryLab.snp.updateConstraints { make in
                countryLab.snp.updateConstraints { make in
                    //: make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
                    make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
                }
                //: }else{
            } else {
                //: bgvlayer.isHidden = true
                bgvlayer.isHidden = true
                //: countryImgView.isHidden = false
                countryImgView.isHidden = false
                //: countryLab.text = "\(listModel.country)"
                countryLab.text = "\(listModel.country)"
                //: countryLab.textColor = .appValueDetailColor()
                countryLab.textColor = .hockeyPlayer()
                //: countryLab.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
                countryLab.font = UIFont.clickLarge(type: .Regular, fontSize: 15)
                //: countryLab.snp.updateConstraints { make in
                countryLab.snp.updateConstraints { make in
                    //: make.leading.equalTo(headPicImgV.snp.trailing).offset(32)
                    make.leading.equalTo(headPicImgV.snp.trailing).offset(32)
                }
            }
            //: headPicImgV.setUrlImage(urlStr: listModel.pic)
            headPicImgV.putBackThroughFinish(urlStr: listModel.pic)
            //: nameLab.text = "%@'s room".localizedArguments(listModel.name)
            nameLab.text = (mainPageId + " room").viewfinder(listModel.name)
            //: countryImgView.setUrlImage(urlStr: listModel.flag)
            countryImgView.putBackThroughFinish(urlStr: listModel.flag)
            //: hotLab.text = "\(listModel.score)"
            hotLab.text = "\(listModel.score)"

            //: let hotWidth  = hotLab.sizeThatFits(CGSize(width: ScreenWidth, height: 20)).width
            let hotWidth = hotLab.sizeThatFits(CGSize(width: kQueryValue, height: 20)).width

            //: hotLab.snp.updateConstraints { make in
            hotLab.snp.updateConstraints { make in
                //: make.width.equalTo(hotWidth)
                make.width.equalTo(hotWidth)
            }
        }
    }

    // MARK: - Lazy load

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor.white
        v.backgroundColor = UIColor.white
        //: v.layer.cornerRadius = 9
        v.layer.cornerRadius = 9
        //: v.layer.shadowColor = UIColor(hex: "CCCCCC")?.withAlphaComponent(0.5).cgColor
        v.layer.shadowColor = UIColor(hex: (data_popStr.uppercased() + String(user_infoStr)))?.withAlphaComponent(0.5).cgColor
        //: v.layer.shadowOffset = CGSize(width: 0, height: 1)
        v.layer.shadowOffset = CGSize(width: 0, height: 1)
        //: v.layer.shadowOpacity = 1
        v.layer.shadowOpacity = 1
        //: v.layer.shadowRadius = 4
        v.layer.shadowRadius = 4
        //: return v
        return v
        //: }()
    }()

    //: private lazy var bgvlayer: CAGradientLayer = {
    private lazy var bgvlayer: CAGradientLayer = {
        // 渐变色
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth - 24, height: 76)
        layer.frame = CGRect(x: 0, y: 0, width: kQueryValue - 24, height: 76)
        //: layer.startPoint = CGPoint(x: 0, y: 0)
        layer.startPoint = CGPoint(x: 0, y: 0)
        //: layer.endPoint = CGPoint(x: 1, y: 0.5)
        layer.endPoint = CGPoint(x: 1, y: 0.5)
        //: layer.colors = [UIColor(hex: "#E1D0FC")?.cgColor, UIColor(hex: "#FFE3E5")?.cgColor]
        layer.colors = [UIColor(hex: (String(kTouchUrl.suffix(6)) + dataTopTitle.uppercased()))?.cgColor, UIColor(hex: (String(mainCenterMessage.prefix(7))))?.cgColor]
        //: layer.cornerRadius = 9
        layer.cornerRadius = 9
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    //: private lazy var headPicImgV: UIImageView = {
    private lazy var headPicImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.layer.cornerRadius = 60/2
        img.layer.cornerRadius = 60 / 2
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.image = .placeImgSquare()
        img.image = .brother()
        //: return img
        return img
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.clickLarge(type: .Medium, fontSize: 18)
        //: lab.textColor = .appTitleColor()
        lab.textColor = .toEvent()
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeThen.shared.direction == .rightToLeft {
            //: lab.textAlignment = .right
            lab.textAlignment = .right
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var countryImgView: UIImageView = {
    private lazy var countryImgView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var countryLab: UILabel = {
    private lazy var countryLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lab.font = UIFont.clickLarge(type: .Regular, fontSize: 15)
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .hockeyPlayer()

        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeThen.shared.direction == .rightToLeft {
            //: lab.textAlignment = .right
            lab.textAlignment = .right
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var liveSvga: SVGAPlayer = {
    private lazy var liveSvga: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Party_List)
            let url = SkullSessionReactiveCompatible.default.region(type: .Party_List)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(const_selectPath.suffix(4)) + "json e" + user_objectRefData.replacingOccurrences(of: "model", with: "rr")))
        }

        //: return player
        return player
        //: }()
    }()

    //: private lazy var hotLab: UILabel = {
    private lazy var hotLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 13)
        lab.font = UIFont.clickLarge(type: .Medium, fontSize: 13)
        //: lab.textColor = .appValueColor()
        lab.textColor = .imageColor()
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeThen.shared.direction == .rightToLeft {
            //: lab.textAlignment = .left
            lab.textAlignment = .left
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
            //: }else{
        } else {
            //: lab.textAlignment = .right
            lab.textAlignment = .right
        }
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Layout

//: extension PartyListCell {
extension CompartmentListCell {
    // 添加视图
    //: private func setupSubviews() {
    private func levelPush() {
        //: self.contentView .addSubview(bgView)
        self.contentView.addSubview(bgView)
        //: bgView.layer.addSublayer(bgvlayer)
        bgView.layer.addSublayer(bgvlayer)
        //: bgView.addSubview(headPicImgV)
        bgView.addSubview(headPicImgV)
        //: bgView.addSubview(nameLab)
        bgView.addSubview(nameLab)
        //: bgView.addSubview(countryImgView)
        bgView.addSubview(countryImgView)
        //: bgView.addSubview(countryLab)
        bgView.addSubview(countryLab)
        //: bgView.addSubview(hotLab)
        bgView.addSubview(hotLab)
        //: bgView.addSubview(liveSvga)
        bgView.addSubview(liveSvga)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func popConstraint() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview().inset(12)
            make.leading.trailing.equalToSuperview().inset(12)
            //: make.bottom.top.equalToSuperview().inset(6)
            make.bottom.top.equalToSuperview().inset(6)
        }
        //: headPicImgV.snp.makeConstraints { make in
        headPicImgV.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.top.bottom.equalToSuperview().inset(8)
            make.leading.top.bottom.equalToSuperview().inset(8)
            //: make.width.equalTo(60)
            make.width.equalTo(60)
        }
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
            make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
            //: make.top.equalTo(headPicImgV.snp.top).offset(6)
            make.top.equalTo(headPicImgV.snp.top).offset(6)
            //: make.trailing.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(10)
        }
        //: countryImgView.snp.makeConstraints { make in
        countryImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
            make.leading.equalTo(headPicImgV.snp.trailing).offset(10)
            //: make.top.equalTo(nameLab.snp.bottom).offset(8)
            make.top.equalTo(nameLab.snp.bottom).offset(8)
            //: make.width.height.equalTo(18)
            make.width.height.equalTo(18)
        }
        //: countryLab.snp.makeConstraints { make in
        countryLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(countryImgView)
            make.centerY.equalTo(countryImgView)
            //: make.leading.equalTo(headPicImgV.snp.trailing).offset(32)
            make.leading.equalTo(headPicImgV.snp.trailing).offset(32)
            //: make.trailing.equalTo(liveSvga.snp.leading).offset(-5)
            make.trailing.equalTo(liveSvga.snp.leading).offset(-5)
        }
        //: hotLab.snp.makeConstraints { make in
        hotLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(countryImgView).offset(2)
            make.centerY.equalTo(countryImgView).offset(2)
            //: make.trailing.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(10)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
        }

        //: liveSvga.snp.makeConstraints { make in
        liveSvga.snp.makeConstraints { make in
            //: make.centerY.equalTo(countryImgView)
            make.centerY.equalTo(countryImgView)
            //: make.trailing.equalTo(hotLab.snp.leading).offset(-4)
            make.trailing.equalTo(hotLab.snp.leading).offset(-4)
            //: make.width.equalTo(17)
            make.width.equalTo(17)
            //: make.height.equalTo(15)
            make.height.equalTo(15)
        }
    }
}
