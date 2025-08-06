
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_modelData:[UInt8] = [0xd5,0xd2,0xd5,0xc8,0x94,0xdf,0xd3,0xd8,0xd9,0xce,0x86,0x95,0x9c,0xd4,0xdd,0xcf,0x9c,0xd2,0xd3,0xc8,0x9c,0xde,0xd9,0xd9,0xd2,0x9c,0xd5,0xd1,0xcc,0xd0,0xd9,0xd1,0xd9,0xd2,0xc8,0xd9,0xd8]

/*: "icon_faceverification_guide_ok" :*/
fileprivate let mainClickUrl:String = "text listicon_"
fileprivate let k_minUrl:String = "rbottomi"
fileprivate let mainEqualFormat:String = "_guide_oknormal collection text left data"

/*: "Submitted successfully, please wait \n patiently for review." :*/
fileprivate let const_playerTitle:[UInt8] = [0x2e,0x77,0x65,0x69,0x76,0x65,0x72,0x20,0x72,0x6f,0x66,0x20,0x79,0x6c,0x74,0x6e,0x65,0x69,0x74,0x61,0x70,0x20,0xa,0x20,0x74,0x69,0x61,0x77,0x20,0x65,0x73,0x61,0x65,0x6c,0x70,0x20,0x2c,0x79,0x6c,0x6c,0x75,0x66,0x73,0x73,0x65,0x63,0x63,0x75,0x73,0x20,0x64,0x65,0x74,0x74,0x69,0x6d,0x62,0x75,0x53]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WeddingPictureThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFinalVerificationView: UIView {
class WeddingPictureThen: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        medium()
        //: layoutSubViewsConstraints()
        nextConstraints()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_modelData.map{$0^188}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var successIconView: UIImageView = {
    lazy var successIconView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.BundleImageNamed(name: "icon_faceverification_guide_ok")
        imgView.image = UIImage.thoughtImageBundleSizeText(name: (String(mainClickUrl.suffix(5)) + "faceve" + k_minUrl.replacingOccurrences(of: "bottom", with: "if") + "cation" + String(mainEqualFormat.prefix(9))))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var tipLab: UILabel = {
    lazy var tipLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Submitted successfully, please wait \n patiently for review.".localized
        lb.text = String(bytes: const_playerTitle.reversed(), encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .toEvent()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 18)
        lb.font = .clickLarge(type: .Regular, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - UI

//: extension TalkingFinalVerificationView {
extension WeddingPictureThen {
    //: func createSubViews() {
    func medium() {
        //: addSubview(successIconView)
        addSubview(successIconView)
        //: addSubview(tipLab)
        addSubview(tipLab)
    }

    //: func layoutSubViewsConstraints() {
    func nextConstraints() {
        //: successIconView.snp.makeConstraints { make in
        successIconView.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(actualHeight(h: 102))
            make.top.equalTo(actualHeight(h: 102))
            //: make.width.height.equalTo(actualWidth(w: 71))
            make.width.height.equalTo(actualWidth(w: 71))
        }
        //: tipLab.snp.makeConstraints { make in
        tipLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
            make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
        }
    }
}
