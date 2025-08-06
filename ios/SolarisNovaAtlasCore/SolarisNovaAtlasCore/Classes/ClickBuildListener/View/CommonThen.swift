
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let dataMakeMsg:[UInt8] = [0xc,0xb,0xc,0x11,0x4d,0x6,0xa,0x1,0x0,0x17,0x5f,0x4c,0x45,0xd,0x4,0x16,0x45,0xb,0xa,0x11,0x45,0x7,0x0,0x0,0xb,0x45,0xc,0x8,0x15,0x9,0x0,0x8,0x0,0xb,0x11,0x0,0x1]

private func downTitle(list num: UInt8) -> UInt8 {
    return num ^ 101
}

/*: "#F0F0F0" :*/
fileprivate let constDayName:[Character] = ["#","F","0","F","0","F","0"]

/*: "icon_fbmoments_notice" :*/
fileprivate let const_bagHeadMsg:String = "ICON"
fileprivate let const_timePath:String = "obackgroundnts"

/*: "Don’t post content that induces others to send gifts or other money-related cintent." :*/
fileprivate let appMakeId:[UInt8] = [0x93,0xb8,0xb9,0x35,0x57,0x4e,0xa3,0xf7,0xa7,0xb8,0xa4,0xa3,0xf7,0xb4,0xb8,0xb9,0xa3,0xb2,0xb9,0xa3,0xf7,0xa3,0xbf,0xb6,0xa3,0xf7,0xbe,0xb9,0xb3,0xa2,0xb4,0xb2,0xa4,0xf7,0xb8,0xa3,0xbf,0xb2,0xa5,0xa4,0xf7,0xa3,0xb8,0xf7,0xa4,0xb2,0xb9,0xb3,0xf7,0xb0,0xbe,0xb1,0xa3,0xa4,0xf7,0xb8,0xa5,0xf7,0xb8,0xa3,0xbf,0xb2,0xa5,0xf7,0xba,0xb8,0xb9,0xb2,0xae,0xfa,0xa5,0xb2,0xbb,0xb6,0xa3,0xb2,0xb3,0xf7,0xb4,0xbe,0xb9,0xa3,0xb2,0xb9,0xa3,0xf9]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CommonThen.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

//: class FreeCollectionFooterView: UICollectionReusableView {
class CommonThen: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dataMakeMsg.map{downTitle(list: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        showSubviews()
        //: setupSubViewsConstraint()
        nearGesture()
    }

    // MARK: - Lazy load

    //: private lazy var noticeView: UIView = {
    private lazy var noticeView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#F0F0F0")
        v.backgroundColor = UIColor(hex: (String(constDayName)))
        //: v.layer.cornerRadius = 6
        v.layer.cornerRadius = 6
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var iconImgView: UIImageView = {
    private lazy var iconImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.BundleImageNamed(name: "icon_fbmoments_notice"))
        let imgV = UIImageView(image: UIImage.thoughtImageBundleSizeText(name: (const_bagHeadMsg.lowercased() + "_fbm" + const_timePath.replacingOccurrences(of: "background", with: "me") + "_notice")))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var tipLabel: UILabel = {
    private lazy var tipLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Don’t post content that induces others to send gifts or other money-related cintent.".localized
        lab.text = String(bytes: appMakeId.map{$0^215}, encoding: .utf8)!.localized
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 13)
        lab.font = UIFont.clickLarge(type: .Regular, fontSize: 13)
        //: lab.textColor = UIColor.appValueColor()
        lab.textColor = UIColor.imageColor()
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - LayoutUI

//: extension FreeCollectionFooterView {
extension CommonThen {
    // 添加视图
    //: private func setupSubviews() {
    private func showSubviews() {
        //: self.addSubview(noticeView)
        self.addSubview(noticeView)
        //: noticeView.addSubview(iconImgView)
        noticeView.addSubview(iconImgView)
        //: noticeView.addSubview(tipLabel)
        noticeView.addSubview(tipLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func nearGesture() {
        //: noticeView.snp.makeConstraints { make in
        noticeView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue ||
            if LayerAddrTool.share.interfaceLang == TrademarkVoiceMixedBagTextConvertible.es.rawValue ||
                //: TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                LayerAddrTool.share.interfaceLang == TrademarkVoiceMixedBagTextConvertible.pt.rawValue
            {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 56))
                make.size.equalTo(CGSize(width: kQueryValue - 30, height: 56))
                //: } else {
            } else {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 46))
                make.size.equalTo(CGSize(width: kQueryValue - 30, height: 46))
            }
        }
        //: iconImgView.snp.makeConstraints { make in
        iconImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(9)
            make.leading.equalTo(9)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.size.equalTo(CGSize(width: 15, height: 15))
            make.size.equalTo(CGSize(width: 15, height: 15))
        }
        //: tipLabel.snp.makeConstraints { make in
        tipLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
