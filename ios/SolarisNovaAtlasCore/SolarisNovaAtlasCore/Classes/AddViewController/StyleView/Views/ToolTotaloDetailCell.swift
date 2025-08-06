
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_photoDelayUrl:[UInt8] = [0x39,0x3e,0x39,0x44,0xf8,0x33,0x3f,0x34,0x35,0x42,0xa,0xf9,0xf0,0x38,0x31,0x43,0xf0,0x3e,0x3f,0x44,0xf0,0x32,0x35,0x35,0x3e,0xf0,0x39,0x3d,0x40,0x3c,0x35,0x3d,0x35,0x3e,0x44,0x35,0x34]

fileprivate func recordShow(player num: UInt8) -> UInt8 {
    let value = Int(num) - 208
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_me_edit" :*/
fileprivate let constQuantityPath:String = "view leadingbtn_"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToolTotaloDetailCell.swift
//  AbroadTalking
//
//  Created by young on 2023/5/16.
//

//: import UIKit
import UIKit

//: class TalkingSearchDetailCell: UITableViewCell {
class ToolTotaloDetailCell: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear

        //: setupSubviews()
        roundMenuImage()
        //: setupSubViewsConstraint()
        rowMake()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_photoDelayUrl.map{recordShow(player: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Laod

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.clickLarge(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.toEvent()
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var valueLab: UILabel = {
    private lazy var valueLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lab.font = UIFont.clickLarge(type: .Regular, fontSize: 14)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.toEvent()
        //: lab.textAlignment = .right
        lab.textAlignment = .right
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var rightImgV: UIImageView = {
    private lazy var rightImgV: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.BundleImageNamed(name: "btn_me_edit"))
        let imag = UIImageView(image: UIImage.thoughtImageBundleSizeText(name: (String(constQuantityPath.suffix(4)) + "me_edit")))
        //: return imag
        return imag
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSearchDetailCell {
extension ToolTotaloDetailCell {
    /// 刷新
    //: func refreshCell(title: String, value: String) {
    func toVideo(title: String, value: String) {
        //: titleLab.text = title
        titleLab.text = title
        //: valueLab.text = value
        valueLab.text = value
    }
}

// MARK: - Layout

//: extension TalkingSearchDetailCell {
extension ToolTotaloDetailCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func roundMenuImage() {
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(valueLab)
        contentView.addSubview(valueLab)
        //: contentView.addSubview(rightImgV)
        contentView.addSubview(rightImgV)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func rowMake() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: valueLab.snp.makeConstraints { make in
        valueLab.snp.makeConstraints { make in
            //: make.trailing.equalTo(rightImgV.snp.leading).offset(-10)
            make.trailing.equalTo(rightImgV.snp.leading).offset(-10)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: rightImgV.snp.makeConstraints { make in
        rightImgV.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 6, height: 11))
            make.size.equalTo(CGSize(width: 6, height: 11))
        }
    }
}
