
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let appRestoreTitle:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "More attractive photo more calls" :*/
fileprivate let const_colorName:[UInt8] = [0x76,0x54,0x49,0x5e,0x1b,0x5a,0x4f,0x4f,0x49,0x5a,0x58,0x4f,0x52,0x4d,0x5e,0x1b,0x4b,0x53,0x54,0x4f,0x54,0x1b,0x56,0x54,0x49,0x5e,0x1b,0x58,0x5a,0x57,0x57,0x48]

/*: "Upload any photo you like" :*/
fileprivate let main_valueContent:String = "Uplosize cell let left self"
fileprivate let kSucceedData:String = " phodiscovery selected push new"
fileprivate let noti_modelFormat:String = "ou likecolor video view cell"

/*: "F4F4F4" :*/
fileprivate let dataImageLengthTitle:String = "FassetFassetFasset"

/*: "btn_add_head_cover_nor" :*/
fileprivate let k_cropMessage:String = "btn_model size view max progress"
fileprivate let appLimitUrl:String = "covremove"

/*: "Please upload a clear and beautiful photo of yourself" :*/
fileprivate let noti_mTitle:[UInt8] = [0x66,0x6c,0x65,0x73,0x72,0x75,0x6f,0x79,0x20,0x66,0x6f,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x6c,0x75,0x66,0x69,0x74,0x75,0x61,0x65,0x62,0x20,0x64,0x6e,0x61,0x20,0x72,0x61,0x65,0x6c,0x63,0x20,0x61,0x20,0x64,0x61,0x6f,0x6c,0x70,0x75,0x20,0x65,0x73,0x61,0x65,0x6c,0x50]

/*: "No violence, pornography, or politics allowed" :*/
fileprivate let userPushPath:[UInt8] = [0xc,0x2d,0x62,0x34,0x2b,0x2d,0x2e,0x27,0x2c,0x21,0x27,0x6e,0x62,0x32,0x2d,0x30,0x2c,0x2d,0x25,0x30,0x23,0x32,0x2a,0x3b,0x6e,0x62,0x2d,0x30,0x62,0x32,0x2d,0x2e,0x2b,0x36,0x2b,0x21,0x31,0x62,0x23,0x2e,0x2e,0x2d,0x35,0x27,0x26]

private func orderedSeries(cell num: UInt8) -> UInt8 {
    return num ^ 66
}

/*: "Next" :*/
fileprivate let data_selectLayerUrl:String = "Nextcolor of if array"

/*: "edit_head_Image_male_ :*/
fileprivate let userArrayMsg:[Character] = ["e","d","i","t","_","h","e","a","d","_","I","m","a","g","e","_"]
fileprivate let show_statusTitle:String = "leading frame color name selfmale_"

/*: "edit_head_Image_ :*/
fileprivate let k_colorErrTitle:String = "equalit"
fileprivate let main_playerSaveData:[Character] = ["m","a","g","e","_"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FourthBackgroundThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoView: UIView {
class FourthBackgroundThen: UIView {
    //: typealias InfoActionBlock = (_ type: EditInfoType) -> Void
    typealias InfoActionBlock = (_ type: ProviderInfoType) -> Void

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var btnBlock: InfoActionBlock?
    var btnBlock: InfoActionBlock?

    //: private var nameCount: Int = 20
    private var nameCount: Int = 20

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white

        //: self.setupSubviews()
        self.beauty()
        //: self.setupSubViewsConstraint()
        self.current()
        //: self.bindInteraction()
        self.titlePush()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appRestoreTitle.reversed(), encoding: .utf8)!)
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var tipsLab: UILabel = {
    lazy var tipsLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .clickLarge(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .toEvent()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: if PunctuateThen.share.userFillInfoMode.sex == Gender.female.rawValue {
        if PunctuateThen.share.userFillInfoMode.sex == TopComparable.female.rawValue {
            //: label.text = "More attractive photo more calls".localized
            label.text = String(bytes: const_colorName.map{$0^59}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Upload any photo you like".localized
            label.text = (String(main_valueContent.prefix(4)) + "ad any" + String(kSucceedData.prefix(4)) + "to y" + String(noti_modelFormat.prefix(7))).localized
        }
        //: return label
        return label
        //: }()
    }()

    //: lazy var addHeadButton: UIButton = {
    lazy var addHeadButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = UIColor(hex: "F4F4F4")
        btn.backgroundColor = UIColor(hex: (dataImageLengthTitle.replacingOccurrences(of: "asset", with: "4")))
        //: btn.layer.cornerRadius = 5
        btn.layer.cornerRadius = 5
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true

        //: let headImg = PunctuateThen.share.userFillInfoMode.headImage ?? nil
        let headImg = PunctuateThen.share.userFillInfoMode.headImage ?? nil
        //: if headImg != nil {
        if headImg != nil {
            //: btn.setImage(headImg, for: .normal)
            btn.setImage(headImg, for: .normal)
            //: } else {
        } else {
            //: btn.setImage(UIImage.BundleImageNamed(name: "btn_add_head_cover_nor"), for: .normal)
            btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(k_cropMessage.prefix(4)) + "add_head_" + appLimitUrl.replacingOccurrences(of: "remove", with: "e") + "r_nor")), for: .normal)
        }
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var msgLab: UILabel = {
    lazy var msgLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .clickLarge(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .imageColor()
        //: if PunctuateThen.share.userFillInfoMode.sex == Gender.female.rawValue {
        if PunctuateThen.share.userFillInfoMode.sex == TopComparable.female.rawValue {
            //: label.text = "Please upload a clear and beautiful photo of yourself".localized
            label.text = String(bytes: noti_mTitle.reversed(), encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "No violence, pornography, or politics allowed".localized
            label.text = String(bytes: userPushPath.map{orderedSeries(cell: $0)}, encoding: .utf8)!.localized
        }
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.clickLarge(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(data_selectLayerUrl.prefix(4))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.sinceNext(colors: UIColor.analogDigitalConverterColor(), size: CGSize(width: kQueryValue - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoView {
extension FourthBackgroundThen {
    // 添加视图
    //: private func setupSubviews() {
    private func beauty() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(tipsLab)
        contentView.addSubview(tipsLab)
        //: contentView.addSubview(addHeadButton)
        contentView.addSubview(addHeadButton)
        //: contentView.addSubview(commitButton)
        contentView.addSubview(commitButton)
        //: contentView.addSubview(msgLab)
        contentView.addSubview(msgLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func current() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: tipsLab.snp.makeConstraints { make in
        tipsLab.snp.makeConstraints { make in
            //: make.leading.equalTo(24)
            make.leading.equalTo(24)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.top.equalTo(34)
            make.top.equalTo(34)
        }

        //: addHeadButton.snp.makeConstraints { make in
        addHeadButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(159)
            make.width.height.equalTo(159)
            //: make.top.equalTo(tipsLab.snp.bottom).offset(34)
            make.top.equalTo(tipsLab.snp.bottom).offset(34)
        }

        //: let imgWidth: CGFloat = (ScreenWidth - 76) / 3.0
        let imgWidth: CGFloat = (kQueryValue - 76) / 3.0
        //: let imgHeight: CGFloat = imgWidth
        let imgHeight: CGFloat = imgWidth

        //: for i in 0 ..< 3 {
        for i in 0 ..< 3 {
            //: let imageView = UIImageView.init()
            let imageView = UIImageView()
            //: if PunctuateThen.share.userFillInfoMode.sex == "1" {
            if PunctuateThen.share.userFillInfoMode.sex == "1" {
                //: imageView.image = UIImage.BundleImageNamed(name: "edit_head_Image_male_\(i)")
                imageView.image = UIImage.thoughtImageBundleSizeText(name: (String(userArrayMsg) + String(show_statusTitle.suffix(5))) + "\(i)")
                //: } else {
            } else {
                //: imageView.image = UIImage.BundleImageNamed(name: "edit_head_Image_\(i)")
                imageView.image = UIImage.thoughtImageBundleSizeText(name: (k_colorErrTitle.replacingOccurrences(of: "equal", with: "ed") + "_head_I" + String(main_playerSaveData)) + "\(i)")
            }
            //: contentView.addSubview(imageView)
            contentView.addSubview(imageView)
            //: imageView.snp.makeConstraints { make in
            imageView.snp.makeConstraints { make in
                //: make.top.equalTo(addHeadButton.snp.bottom).offset(30)
                make.top.equalTo(addHeadButton.snp.bottom).offset(30)
                //: make.leading.equalTo(30 + (imgWidth+8)*CGFloat(i))
                make.leading.equalTo(30 + (imgWidth + 8) * CGFloat(i))
                //: make.width.equalTo(imgWidth)
                make.width.equalTo(imgWidth)
                //: make.height.equalTo(imgHeight)
                make.height.equalTo(imgHeight)
            }
        }
        //: msgLab.snp.makeConstraints { make in
        msgLab.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.top.equalTo(addHeadButton.snp.bottom).offset(146)
            make.top.equalTo(addHeadButton.snp.bottom).offset(146)
        }

        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(msgLab.snp.bottom).offset(30)
            make.top.equalTo(msgLab.snp.bottom).offset(30)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func titlePush() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.Finish)
                    self.btnBlock!(.Finish)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: addHeadButton.rx.tap
        addHeadButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.HeadPic)
                    self.btnBlock!(.HeadPic)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
