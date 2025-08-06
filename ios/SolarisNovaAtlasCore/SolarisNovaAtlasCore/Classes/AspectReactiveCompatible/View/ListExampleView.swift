
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let showViewKey:[UInt8] = [0xf9,0xfe,0xf9,0xe4,0xb8,0xf3,0xff,0xf4,0xf5,0xe2,0xaa,0xb9,0xb0,0xf8,0xf1,0xe3,0xb0,0xfe,0xff,0xe4,0xb0,0xf2,0xf5,0xf5,0xfe,0xb0,0xf9,0xfd,0xe0,0xfc,0xf5,0xfd,0xf5,0xfe,0xe4,0xf5,0xf4]

private func managerThan(need num: UInt8) -> UInt8 {
    return num ^ 144
}

/*: "img_faceverification_pose" :*/
fileprivate let const_contentId:String = "left makeimg_f"
fileprivate let mainEqualFrameUrl:String = "ificpremium"
fileprivate let main_viewReasonStr:String = "tmoden"

/*: "Strike this pose and take a photo" :*/
fileprivate let notiLabelModelTitle:[UInt8] = [0x22,0x43,0x41,0x38,0x3a,0x34,0xef,0x43,0x37,0x38,0x42,0xef,0x3f,0x3e,0x42,0x34,0xef,0x30,0x3d,0x33,0xef,0x43,0x30,0x3a,0x34,0xef,0x30,0xef,0x3f,0x37,0x3e,0x43,0x3e]

fileprivate func allowMessage(info num: UInt8) -> UInt8 {
    let value = Int(num) + 49
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Your photo will never be uploaded to your profile or shown to anyone else." :*/
fileprivate let kViewUrl:[UInt8] = [0x95,0xa3,0xb9,0xbe,0xec,0xbc,0xa4,0xa3,0xb8,0xa3,0xec,0xbb,0xa5,0xa0,0xa0,0xec,0xa2,0xa9,0xba,0xa9,0xbe,0xec,0xae,0xa9,0xec,0xb9,0xbc,0xa0,0xa3,0xad,0xa8,0xa9,0xa8,0xec,0xb8,0xa3,0xec,0xb5,0xa3,0xb9,0xbe,0xec,0xbc,0xbe,0xa3,0xaa,0xa5,0xa0,0xa9,0xec,0xa3,0xbe,0xec,0xbf,0xa4,0xa3,0xbb,0xa2,0xec,0xb8,0xa3,0xec,0xad,0xa2,0xb5,0xa3,0xa2,0xa9,0xec,0xa9,0xa0,0xbf,0xa9,0xe2]

/*: "Camera" :*/
fileprivate let userFatalName:String = "c"
fileprivate let show_progressCurrentPath:String = "amedata"

/*: "btn_me_back_continue" :*/
fileprivate let noti_frameName:String = "btn_mevar type"
fileprivate let constFromName:String = "k_conreturn half during"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ListExampleView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationExampleView: UIView {
class ListExampleView: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias CameraBtnClickBlock = () -> Void
    typealias CameraBtnClickBlock = () -> Void
    //: var btnClickBlock: CameraBtnClickBlock?
    var btnClickBlock: CameraBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        telecommunication()
        //: layoutSubViewsConstraints()
        mic()
        //: bindInteraction()
        bequest()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showViewKey.map{managerThan(need: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var faceBackImageView: UIImageView = {
    lazy var faceBackImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.BundleImageNamed(name: "img_faceverification_pose")
        imgView.image = UIImage.thoughtImageBundleSizeText(name: (String(const_contentId.suffix(5)) + "acever" + mainEqualFrameUrl.replacingOccurrences(of: "premium", with: "a") + main_viewReasonStr.replacingOccurrences(of: "mode", with: "io") + "_pose"))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var verificationTitleLab: UILabel = {
    lazy var verificationTitleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Strike this pose and take a photo".localized
        lb.text = String(bytes: notiLabelModelTitle.map{allowMessage(info: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .toEvent()
        //: lb.font = .pingfangFont(type: .Medium, fontSize: 22)
        lb.font = .clickLarge(type: .Medium, fontSize: 22)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var verificationDesLab: UILabel = {
    lazy var verificationDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Your photo will never be uploaded to your profile or shown to anyone else.".localized
        lb.text = String(bytes: kViewUrl.map{$0^204}, encoding: .utf8)!.localized
        //: lb.textColor = .appValueColor()
        lb.textColor = .imageColor()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .clickLarge(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var continueBtn: UIButton = {
    lazy var continueBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Camera".localized, for: .normal)
        btn.setTitle((userFatalName.uppercased() + show_progressCurrentPath.replacingOccurrences(of: "data", with: "ra")).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.thoughtImageBundleSizeText(name: (String(noti_frameName.prefix(6)) + "_bac" + String(constFromName.prefix(5)) + "tinue")), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .clickLarge(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVerificationExampleView {
extension ListExampleView {
    //: @objc func registerBtnAction() {
    @objc func bindHead() {
        //: if btnClickBlock != nil {
        if btnClickBlock != nil {
            //: btnClickBlock!()
            btnClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func bequest() {
        //: continueBtn.rx.controlEvent(.touchUpInside)
        continueBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerBtnAction()
                self.bindHead()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - Layout

//: extension TalkingVerificationExampleView {
extension ListExampleView {
    //: func createSubViews() {
    func telecommunication() {
        //: addSubview(faceBackImageView)
        addSubview(faceBackImageView)
        //: addSubview(verificationTitleLab)
        addSubview(verificationTitleLab)
        //: addSubview(verificationDesLab)
        addSubview(verificationDesLab)
        //: addSubview(continueBtn)
        addSubview(continueBtn)
    }

    //: func layoutSubViewsConstraints() {
    func mic() {
        //: let fitH = 686 * (ScreenWidth - actualWidth(w: 30)) / 690
        let fitH = 686 * (kQueryValue - actualWidth(w: 30)) / 690
        //: faceBackImageView.snp.makeConstraints { make in
        faceBackImageView.snp.makeConstraints { make in
            //: make.top.equalTo((actualHeight(h: 18)))
            make.top.equalTo(actualHeight(h: 18))
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.width.equalTo(ScreenWidth-actualWidth(w: 30))
            make.width.equalTo(kQueryValue - actualWidth(w: 30))
            //: make.height.equalTo(fitH)
            make.height.equalTo(fitH)
        }
        //: verificationTitleLab.snp.makeConstraints { make in
        verificationTitleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 24))
            make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 24))
        }
        //: verificationDesLab.snp.makeConstraints { make in
        verificationDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationTitleLab.snp.bottom).offset(10)
            make.top.equalTo(verificationTitleLab.snp.bottom).offset(10)
        }
        //: continueBtn.snp.makeConstraints { make in
        continueBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-actualHeight(h: 34)-kDeviceSafeBottomHeight)
            make.bottom.equalTo(-actualHeight(h: 34) - k_netId)
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
