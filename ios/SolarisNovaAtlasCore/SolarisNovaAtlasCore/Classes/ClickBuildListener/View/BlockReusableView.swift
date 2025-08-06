
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_textName:[UInt8] = [0x8c,0x8b,0x8c,0x91,0xcd,0x86,0x8a,0x81,0x80,0x97,0xdf,0xcc,0xc5,0x8d,0x84,0x96,0xc5,0x8b,0x8a,0x91,0xc5,0x87,0x80,0x80,0x8b,0xc5,0x8c,0x88,0x95,0x89,0x80,0x88,0x80,0x8b,0x91,0x80,0x81]

private func countimateRow(point num: UInt8) -> UInt8 {
    return num ^ 229
}

/*: "free_photo_deleteBtn" :*/
fileprivate let noti_toName:String = "with size false textfree_"
fileprivate let appTitleId:String = "dtape"

/*: "btn_dynamic_stop_nor" :*/
fileprivate let const_partyMsg:[Character] = ["b","t","n","_","d","y","n"]
fileprivate let app_skipPathFormat:String = "listeni"
fileprivate let constAtMomentText:String = "c_stpath to true string self"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlockReusableView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

//: let FreeCollectionViewCell_width = 90.0
let const_useVersionFormat = 90.0

//: class FreeCollectionViewCell: UICollectionViewCell {
class BlockReusableView: UICollectionViewCell {
    // 删除按钮
    //: var deleteBlock: (() -> Void)?
    var deleteBlock: (() -> Void)?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_textName.map{countimateRow(point: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        columnSubviews()
        //: setupSubViewsConstraint()
        exitConstraint()
    }

    // MARK: - Setter

    //: var isMoving: Bool {
    var isMoving: Bool {
        //: get {
        get {
            //: return self.isMoving
            return self.isMoving
        }
        //: set {
        set {
            //: self.isMoving = newValue
            self.isMoving = newValue
            //: self.releaseImageView.isHidden = self.isMoving
            self.releaseImageView.isHidden = self.isMoving
        }
    }

    // MARK: - Lazy load

    //: lazy var releaseImageView: UIImageView = {
    lazy var releaseImageView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.cornerRadius = 4.0
        v.layer.cornerRadius = 4.0
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: return v
        return v
        //: }()
    }()

    //: lazy var deleteBtn: UIButton = {
    lazy var deleteBtn: UIButton = {
        //: let b = UIButton()
        let b = UIButton()
        //: b.setImage(UIImage.BundleImageNamed(name: "free_photo_deleteBtn"), for: .normal)
        b.setImage(UIImage.thoughtImageBundleSizeText(name: (String(noti_toName.suffix(5)) + "photo_" + appTitleId.replacingOccurrences(of: "tap", with: "el") + "teBtn")), for: .normal)
        //: b.addTarget(self, action: #selector(deleteButtonClick), for: .touchUpInside)
        b.addTarget(self, action: #selector(executeClick), for: .touchUpInside)
        //: return b
        return b
        //: }()
    }()

    //: lazy var playimageView: UIImageView = {
    lazy var playimageView: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "btn_dynamic_stop_nor")
        imag.image = UIImage.thoughtImageBundleSizeText(name: (String(const_partyMsg) + app_skipPathFormat.replacingOccurrences(of: "listen", with: "am") + String(constAtMomentText.prefix(4)) + "op_nor"))
        //: return imag
        return imag
        //: }()
    }()
}

// MARK: - Event

//: extension FreeCollectionViewCell {
extension BlockReusableView {
    // MARK: - Event

    //: @objc func deleteButtonClick() {
    @objc func executeClick() {
        //: if self.deleteBlock != nil {
        if self.deleteBlock != nil {
            //: self.deleteBlock!()
            self.deleteBlock!()
        }
    }
}

// MARK: - LayoutUI

//: extension FreeCollectionViewCell {
extension BlockReusableView {
    // 添加视图
    //: private func setupSubviews() {
    private func columnSubviews() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(releaseImageView)
        self.addSubview(releaseImageView)
        //: self.addSubview(deleteBtn)
        self.addSubview(deleteBtn)
        //: self.addSubview(playimageView)
        self.addSubview(playimageView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func exitConstraint() {
        //: releaseImageView.snp.makeConstraints { make in
        releaseImageView.snp.makeConstraints { make in
            //: make.top.leading.size.equalToSuperview()
            make.top.leading.size.equalToSuperview()
        }
        //: deleteBtn.snp.makeConstraints { make in
        deleteBtn.snp.makeConstraints { make in
            //: make.top.trailing.equalToSuperview()
            make.top.trailing.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
        //: playimageView.snp.makeConstraints { make in
        playimageView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
    }
}
