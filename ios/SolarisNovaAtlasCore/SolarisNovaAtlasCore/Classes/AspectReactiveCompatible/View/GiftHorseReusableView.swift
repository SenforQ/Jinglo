
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_interruptTitle:[UInt8] = [0xb9,0xbe,0xb9,0xa4,0xf8,0xb3,0xbf,0xb4,0xb5,0xa2,0xea,0xf9,0xf0,0xb8,0xb1,0xa3,0xf0,0xbe,0xbf,0xa4,0xf0,0xb2,0xb5,0xb5,0xbe,0xf0,0xb9,0xbd,0xa0,0xbc,0xb5,0xbd,0xb5,0xbe,0xa4,0xb5,0xb4]

/*: "btn_daily_todayBg_nor" :*/
fileprivate let showViewKey:String = "make display local equalbtn_da"
fileprivate let kGroupAllViewPath:[Character] = ["d","a","y","B"]
fileprivate let mainLoadTitle:[Character] = ["g","_","n","o","r"]

/*: "btn_daily_style1_nor" :*/
fileprivate let showMessageThoughtContent:String = "patht"
fileprivate let show_norTitle:[Character] = ["n","_","d","a","i","l","y","_","s","t","y","l","e","1","_","n","o","r"]

/*: "btn_daily_todayLight_nor" :*/
fileprivate let noti_emptyName:String = "equal"
fileprivate let main_bottomMakePath:String = "tn_damax to"
fileprivate let kShareStr:String = "dayLiif content return share"

/*: "btn_daily_notSignIn_nor" :*/
fileprivate let user_alongUrl:String = "string whole makebtn_"
fileprivate let showPathStr:String = "_notSigndeadline return"
fileprivate let show_scaleName:String = "In_norview place return"

/*: "btn_daily_signIn_nor" :*/
fileprivate let show_textToolName:String = "btn_dstatus make"
fileprivate let k_modelValueMsg:String = "end true image label to_sig"
fileprivate let dataListMessage:String = "noround"

/*: "btn_daily_today_nor" :*/
fileprivate let constModeName:String = "btn_daheight west"
fileprivate let k_planKey:String = "oday_norlet value image let"

/*: "#FF8F1A" :*/
fileprivate let noti_viewValue:String = "full make button#FF8F1"
fileprivate let notiTitleContent:[Character] = ["A"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GiftHorseReusableView.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyItemCell: UICollectionViewCell {
class GiftHorseReusableView: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_interruptTitle.map{$0^208}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.contentView.backgroundColor = .white
        self.contentView.backgroundColor = .white
        //: self.setupSubviews()
        self.save()
        //: self.setupSubViewsConstraint()
        self.textObserver()
    }

    // MARK: - Lazy Load

    //: private lazy var iconImgBgV: UIImageView = {
    private lazy var iconImgBgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "btn_daily_todayBg_nor")
        img.image = UIImage.thoughtImageBundleSizeText(name: (String(showViewKey.suffix(6)) + "ily_to" + String(kGroupAllViewPath) + String(mainLoadTitle)))
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconImgV: UIImageView = {
    private lazy var iconImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "btn_daily_style1_nor")
        img.image = UIImage.thoughtImageBundleSizeText(name: (showMessageThoughtContent.replacingOccurrences(of: "path", with: "b") + String(show_norTitle)))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconLightV: UIImageView = {
    private lazy var iconLightV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "btn_daily_todayLight_nor")
        img.image = UIImage.thoughtImageBundleSizeText(name: (noti_emptyName.replacingOccurrences(of: "equal", with: "b") + String(main_bottomMakePath.prefix(5)) + "ily_to" + String(kShareStr.prefix(5)) + "ght_nor"))
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var dayLab: UILabel = {
    private lazy var dayLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var addIconLab: UILabel = {
    private lazy var addIconLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.atomic(fontSize: 14)
        lab.font = UIFont.atomic(fontSize: 14)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingDailyItemCell {
extension GiftHorseReusableView {
    /// 刷新cell
    /// - Parameter model: 数据模型
    //: func refreshDailyItemCell(model: TalkingDailyItemModel) {
    func cellApp(model: CustomTheoreticalAccountItemModel) {
        //: iconImgBgV.isHidden = true
        iconImgBgV.isHidden = true
        //: addIconLab.isHidden = true
        addIconLab.isHidden = true
        //: iconLightV.isHidden = true
        iconLightV.isHidden = true

        //: addIconLab.text = model.addIcon
        addIconLab.text = model.addIcon
        //: dayLab.font = UIFont.pingfangRugularFont(fontSize: 17)
        dayLab.font = UIFont.recoverOf(fontSize: 17)
        //: dayLab.text = model.day
        dayLab.text = model.day

        //: switch(model.type) {
        switch model.type {
        //: case .Overdue_NotSignIn:
        case .Overdue_NotSignIn:
            //: iconImgV.image = UIImage.BundleImageNamed(name: "btn_daily_notSignIn_nor")
            iconImgV.image = UIImage.thoughtImageBundleSizeText(name: (String(user_alongUrl.suffix(4)) + "daily" + String(showPathStr.prefix(8)) + String(show_scaleName.prefix(6))))
            //: dayLab.textColor = UIColor.appValueDetailColor()
            dayLab.textColor = UIColor.hockeyPlayer()

        //: case .Overdue_SignIn:
        case .Overdue_SignIn:
            //: iconImgV.image = UIImage.BundleImageNamed(name: "btn_daily_signIn_nor")
            iconImgV.image = UIImage.thoughtImageBundleSizeText(name: (String(show_textToolName.prefix(5)) + "aily" + String(k_modelValueMsg.suffix(4)) + "nIn_" + dataListMessage.replacingOccurrences(of: "round", with: "r")))
            //: dayLab.textColor = UIColor.appValueDetailColor()
            dayLab.textColor = UIColor.hockeyPlayer()

        //: case .Today:
        case .Today:
            //: iconImgBgV.isHidden = false
            iconImgBgV.isHidden = false
            //: addIconLab.isHidden = false
            addIconLab.isHidden = false
            //: iconLightV.isHidden = false
            iconLightV.isHidden = false

            //: iconImgV.image = UIImage.BundleImageNamed(name: "btn_daily_today_nor")
            iconImgV.image = UIImage.thoughtImageBundleSizeText(name: (String(constModeName.prefix(6)) + "ily_t" + String(k_planKey.prefix(8))))
            //: dayLab.font = UIFont.atomic(fontSize: 17)
            dayLab.font = UIFont.atomic(fontSize: 17)
            //: dayLab.textColor = UIColor(hex: "#FF8F1A")
            dayLab.textColor = UIColor(hex: (String(noti_viewValue.suffix(6)) + String(notiTitleContent)))

        //: case .Future:
        case .Future:
            //: addIconLab.isHidden = false
            addIconLab.isHidden = false
            //: iconImgV.image = UIImage.BundleImageNamed(name: "btn_daily_today_nor")
            iconImgV.image = UIImage.thoughtImageBundleSizeText(name: (String(constModeName.prefix(6)) + "ily_t" + String(k_planKey.prefix(8))))
            //: dayLab.textColor = UIColor.appValueColor()
            dayLab.textColor = UIColor.imageColor()
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyItemCell {
extension GiftHorseReusableView {
    // 添加视图
    //: private func setupSubviews() {
    private func save() {
        //: contentView.addSubview(iconImgBgV)
        contentView.addSubview(iconImgBgV)
        //: contentView.addSubview(iconImgV)
        contentView.addSubview(iconImgV)
        //: contentView.addSubview(addIconLab)
        contentView.addSubview(addIconLab)
        //: contentView.addSubview(iconLightV)
        contentView.addSubview(iconLightV)
        //: contentView.addSubview(dayLab)
        contentView.addSubview(dayLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func textObserver() {
        //: iconImgBgV.snp.makeConstraints { make in
        iconImgBgV.snp.makeConstraints { make in
            //: make.top.centerX.equalToSuperview()
            make.top.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 65, height: 65))
            make.size.equalTo(CGSize(width: 65, height: 65))
        }
        //: iconImgV.snp.makeConstraints { make in
        iconImgV.snp.makeConstraints { make in
            //: make.center.equalTo(iconImgBgV)
            make.center.equalTo(iconImgBgV)
            //: make.size.equalTo(CGSize(width: 42, height: 42))
            make.size.equalTo(CGSize(width: 42, height: 42))
        }
        //: addIconLab.snp.makeConstraints { make in
        addIconLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(iconImgV)
            make.centerX.equalTo(iconImgV)
            //: make.centerY.equalTo(iconImgV).offset(-2)
            make.centerY.equalTo(iconImgV).offset(-2)
        }
        //: iconLightV.snp.makeConstraints { make in
        iconLightV.snp.makeConstraints { make in
            //: make.top.equalTo(1)
            make.top.equalTo(1)
            //: make.trailing.equalToSuperview().offset(-4)
            make.trailing.equalToSuperview().offset(-4)
        }
        //: dayLab.snp.makeConstraints { make in
        dayLab.snp.makeConstraints { make in
            //: make.top.equalTo(53)
            make.top.equalTo(53)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
