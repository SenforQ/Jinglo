
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let showSizeUrl:[UInt8] = [0x9c,0xa1,0x9c,0xa7,0x5b,0x96,0xa2,0x97,0x98,0xa5,0x6d,0x5c,0x53,0x9b,0x94,0xa6,0x53,0xa1,0xa2,0xa7,0x53,0x95,0x98,0x98,0xa1,0x53,0x9c,0xa0,0xa3,0x9f,0x98,0xa0,0x98,0xa1,0xa7,0x98,0x97]

fileprivate func nameSmall(action num: UInt8) -> UInt8 {
    let value = Int(num) - 51
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "#F5F5F5" :*/
fileprivate let show_labelCustomKey:String = "add color filter play destination#F5F5F5"

/*: "icon_Topping_bg" :*/
fileprivate let show_directionLengthUrl:String = "leadingco"
fileprivate let data_pathMsg:[Character] = ["n","_","T","o","p","p","i","n","g","_","b","g"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CountoKeyViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosCell: UICollectionViewCell {
class CountoKeyViewCell: UICollectionViewCell {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: customUI()
        birdSEyeViewUi()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showSizeUrl.map{nameSmall(action: $0)}, encoding: .utf8)!)
    }

    //: func customUI() {
    func birdSEyeViewUi() {
        //: self.contentView.backgroundColor = UIColor.init(hex: "#F5F5F5")
        self.contentView.backgroundColor = UIColor(hex: (String(show_labelCustomKey.suffix(7))))
        //: self.contentView.layer.cornerRadius = 6
        self.contentView.layer.cornerRadius = 6
        //: self.contentView.layer.masksToBounds = true
        self.contentView.layer.masksToBounds = true

        //: photoView.snp.makeConstraints { make in
        photoView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.contentView)
            make.edges.equalTo(self.contentView)
        }
        //: photoView.addSubview(topImage)
        photoView.addSubview(topImage)
        //: topImage.snp.makeConstraints { make in
        topImage.snp.makeConstraints { make in
            //: make.top.equalTo(6)
            make.top.equalTo(6)
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.size.equalTo(CGSize(width: 50, height: 20))
            make.size.equalTo(CGSize(width: 50, height: 20))
        }
    }

    //: func configUrl(url: String) {
    func makeTo(url: String) {
        //: photoView.setUrlImage(urlStr: url)
        photoView.putBackThroughFinish(urlStr: url)
        //: topImage.isHidden = true
        topImage.isHidden = true
    }

    //: func setTopImage() {
    func magnitudeernalRepresentationSetCapital() {
        //: topImage.isHidden = false
        topImage.isHidden = false
    }

    //: lazy var photoView: UIImageView = {
    lazy var photoView: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: self.contentView.addSubview(img)
        self.contentView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: lazy var enterIcon: UIImageView = {
    lazy var enterIcon: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: self.contentView.addSubview(img)
        self.contentView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: lazy var topImage: UIImageView = {
    lazy var topImage: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.image = UIImage.BundleImageNamed(name: "icon_Topping_bg")
        img.image = UIImage.thoughtImageBundleSizeText(name: (show_directionLengthUrl.replacingOccurrences(of: "leading", with: "i") + String(data_pathMsg)))
        //: return img
        return img
        //: }()
    }()
}
