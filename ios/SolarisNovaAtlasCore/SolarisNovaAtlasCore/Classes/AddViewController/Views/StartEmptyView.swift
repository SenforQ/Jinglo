
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let user_titleKey:[UInt8] = [0x7b,0x7c,0x7b,0x66,0x3a,0x71,0x7d,0x76,0x77,0x60,0x28,0x3b,0x32,0x7a,0x73,0x61,0x32,0x7c,0x7d,0x66,0x32,0x70,0x77,0x77,0x7c,0x32,0x7b,0x7f,0x62,0x7e,0x77,0x7f,0x77,0x7c,0x66,0x77,0x76]

private func dataMethod(view num: UInt8) -> UInt8 {
    return num ^ 18
}

/*: "icon_kong_kong_default" :*/
fileprivate let appNameData:[Character] = ["i","c","o","n","_","k","o","n","g"]
fileprivate let userLabelStr:String = "_kong_share define theme return"

/*: "You've got no list yet." :*/
fileprivate let app_actionText:String = "You\'v"
fileprivate let constRankId:String = "t noleading selected extension make"
fileprivate let dataLabelTitle:String = " lisformat equal"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StartEmptyView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/12.
//

//: import UIKit
import UIKit

//: class SocialEmptyView: UIView {
class StartEmptyView: UIView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: user_titleKey.map{dataMethod(view: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.betweenClickShared()
        //: self.setupSubViewsConstraint()
        self.addColor()
    }

    // MARK: - Lazy load

    //: lazy var imgV: UIImageView = {
    lazy var imgV: UIImageView = {
        //: let v = UIImageView(image: UIImage.BundleImageNamed(name: "icon_kong_kong_default"))
        let v = UIImageView(image: UIImage.thoughtImageBundleSizeText(name: (String(appNameData) + String(userLabelStr.prefix(6)) + "default")))
        //: return v
        return v
        //: }()
    }()

    //: lazy var desLab: UILabel = {
    lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appValueDetailColor()
        lab.textColor = UIColor.hockeyPlayer()
        //: lab.font = .pingfangFont(type: .Regular, fontSize: 16)
        lab.font = .clickLarge(type: .Regular, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "You've got no list yet.".localized
        lab.text = (app_actionText + "e go" + String(constRankId.prefix(4)) + String(dataLabelTitle.prefix(4)) + "t yet.").localized
        //: return lab
        return lab
        //: }()
    }()
}

//: extension SocialEmptyView {
extension StartEmptyView {
    // 添加视图
    //: private func setupSubviews() {
    private func betweenClickShared() {
        //: self.addSubview(imgV)
        self.addSubview(imgV)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func addColor() {
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalToSuperview().offset(NavigationBarHeight)
            make.top.equalToSuperview().offset(constGameData)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(imgV.snp.bottom).offset(20)
            make.top.equalTo(imgV.snp.bottom).offset(20)
            //: make.leading.equalToSuperview().offset(30)
            make.leading.equalToSuperview().offset(30)
            //: make.trailing.equalToSuperview().offset(-30)
            make.trailing.equalToSuperview().offset(-30)
        }
    }
}
