
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_sizeValue:[UInt8] = [0x90,0x95,0x90,0x9b,0x4f,0x8a,0x96,0x8b,0x8c,0x99,0x61,0x50,0x47,0x8f,0x88,0x9a,0x47,0x95,0x96,0x9b,0x47,0x89,0x8c,0x8c,0x95,0x47,0x90,0x94,0x97,0x93,0x8c,0x94,0x8c,0x95,0x9b,0x8c,0x8b]

fileprivate func trackPlayer(of num: UInt8) -> UInt8 {
    let value = Int(num) + 217
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "nav_back_black_nor" :*/
fileprivate let notiTargetKey:String = "nav_bin chin"
fileprivate let mainRawKey:String = "lashow"
fileprivate let notiVideoPath:[Character] = ["_","n","o","r"]

/*: "btn_fbmoments_photo_more_delete" :*/
fileprivate let mainErrorCountroMessage:[UInt8] = [0xed,0xff,0xf9,0xea,0xf1,0xed,0xf8,0xfa,0xf8,0xf0,0xf9,0xff,0xfe,0xea,0xfb,0xf3,0xfa,0xff,0xfa,0xea,0xf8,0xfa,0xfd,0xf0,0xea,0xef,0xf0,0xf7,0xf0,0xff,0xf0]

fileprivate func lackRequest(main num: UInt8) -> UInt8 {
    let value = Int(num) - 139
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Retake" :*/
fileprivate let const_facePath:String = "Retakeview return image true if"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosTopView: UIView {
class MessageView: UIView {
    //: var cunrrenModel = TalkingMomentModel()
    var cunrrenModel = ViewMeasurable()
    //: var type: MomentPhotoType?
    var type: MessageFieldPhotoType?

    //: init(frame: CGRect, type: MomentPhotoType) {
    init(frame: CGRect, type: MessageFieldPhotoType) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: self.type = type
        self.type = type
        //: setupSubviews()
        labFirst()
        //: setupSubViewsConstraint()
        ribbon()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_sizeValue.map{trackPlayer(of: $0)}, encoding: .utf8)!)
    }

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: let img = UIImage.BundleImageNamed(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.thoughtImageBundleSizeText(name: (String(notiTargetKey.prefix(5)) + "ack_b" + mainRawKey.replacingOccurrences(of: "show", with: "ck") + String(notiVideoPath))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var deleteBtn: UIButton = {
    lazy var deleteBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_fbmoments_photo_more_delete"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: String(bytes: mainErrorCountroMessage.map{lackRequest(main: $0)}, encoding: .utf8)!), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var rightTitleBtn: UIButton = {
    lazy var rightTitleBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.titleLabel?.font = UIFont.atomic(fontSize: 17)
        btn.titleLabel?.font = UIFont.atomic(fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Retake".localized, for: .normal)
        btn.setTitle((String(const_facePath.prefix(6))).localized, for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - LayoutUI

//: extension TalkingMomentPhotosTopView {
extension MessageView {
    // 添加视图
    //: private func setupSubviews() {
    private func labFirst() {
        //: backgroundColor = UIColor.RGBA(51, 51, 51, 0.8)
        backgroundColor = UIColor.loadRgba(51, 51, 51, 0.8)
        //: self.addSubview(backBtn)
        self.addSubview(backBtn)

        //: switch(self.type) {
        switch self.type {
        //: case .publish:
        case .publish:
            //: self.addSubview(deleteBtn)
            self.addSubview(deleteBtn)
        //: case .sendIntimatePhoto:
        case .sendIntimatePhoto:
            //: self.addSubview(rightTitleBtn)
            self.addSubview(rightTitleBtn)
        //: default:
        default:
            //: break
            break
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func ribbon() {
        //: switch(self.type) {
        switch self.type {
        //: case .normal:
        case .normal:
            //: backBtn.snp.makeConstraints { make in
            backBtn.snp.makeConstraints { make in
                //: make.leading.equalTo(0)
                make.leading.equalTo(0)
                //: make.bottom.equalTo(-14)
                make.bottom.equalTo(-14)
                //: make.size.equalTo(CGSize.init(width: 40, height: 40))
                make.size.equalTo(CGSize(width: 40, height: 40))
            }

        //: case .publish:
        case .publish:
            //: backBtn.snp.makeConstraints { make in
            backBtn.snp.makeConstraints { make in
                //: make.leading.equalTo(0)
                make.leading.equalTo(0)
                //: make.bottom.equalTo(0)
                make.bottom.equalTo(0)
                //: make.size.equalTo(CGSize.init(width: 40, height: 44))
                make.size.equalTo(CGSize(width: 40, height: 44))
            }
            //: deleteBtn.snp.makeConstraints { make in
            deleteBtn.snp.makeConstraints { make in
                //: make.centerY.equalTo(backBtn.snp.centerY)
                make.centerY.equalTo(backBtn.snp.centerY)
                //: make.trailing.equalTo(-15)
                make.trailing.equalTo(-15)
                //: make.size.equalTo(CGSize.init(width: 24, height: 24))
                make.size.equalTo(CGSize(width: 24, height: 24))
            }

        //: case .sendIntimatePhoto:
        case .sendIntimatePhoto:
            //: backBtn.snp.makeConstraints { make in
            backBtn.snp.makeConstraints { make in
                //: make.leading.equalTo(0)
                make.leading.equalTo(0)
                //: make.bottom.equalTo(-14)
                make.bottom.equalTo(-14)
                //: make.size.equalTo(CGSize.init(width: 40, height: 40))
                make.size.equalTo(CGSize(width: 40, height: 40))
            }
            //: rightTitleBtn.snp.makeConstraints { make in
            rightTitleBtn.snp.makeConstraints { make in
                //: make.centerY.equalTo(backBtn.snp.centerY)
                make.centerY.equalTo(backBtn.snp.centerY)
                //: make.trailing.equalToSuperview()
                make.trailing.equalToSuperview()
                //: make.size.equalTo(CGSize(width: 85, height: 44))
                make.size.equalTo(CGSize(width: 85, height: 44))
            }
        //: default:
        default:
            //: break
            break
        }
    }
}
