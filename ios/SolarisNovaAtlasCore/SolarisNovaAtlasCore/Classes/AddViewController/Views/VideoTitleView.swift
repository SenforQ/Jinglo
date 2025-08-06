
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_messageId:[UInt8] = [0x84,0x83,0x84,0x99,0xc5,0x8e,0x82,0x89,0x88,0x9f,0xd7,0xc4,0xcd,0x85,0x8c,0x9e,0xcd,0x83,0x82,0x99,0xcd,0x8f,0x88,0x88,0x83,0xcd,0x84,0x80,0x9d,0x81,0x88,0x80,0x88,0x83,0x99,0x88,0x89]

/*: "nav_back_black_nor" :*/
fileprivate let data_makeTitle:String = "view leftnav_b"
fileprivate let dataAddPath:String = "blmove"
fileprivate let k_voiceFormat:String = "index infock_nor"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VideoTitleView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class SocialRankTitleView: UIView {
class VideoTitleView: UIView {
    // MARK: Life

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.dataUp()
        //: self.setupSubViewsConstraint()
        self.beautyOperation()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_messageId.map{$0^237}, encoding: .utf8)!)
    }

    // MARK: UI

    //: lazy var backButton = UIButton().then {
    lazy var backButton = UIButton().then {
        //: let img = UIImage.BundleImageNamed(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.thoughtImageBundleSizeText(name: (String(data_makeTitle.suffix(5)) + "ack_" + dataAddPath.replacingOccurrences(of: "move", with: "a") + String(k_voiceFormat.suffix(6)))).withRenderingMode(.alwaysTemplate)
        //: $0.setImage(img, for: .normal)
        $0.setImage(img, for: .normal)
        //: $0.tintColor = .white
        $0.tintColor = .white
        //: $0.addTarget(self, action: #selector(registerBackAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(viewSignature), for: .touchUpInside)
    }
}

// MARK: - Bind && Event

//: extension SocialRankTitleView {
extension VideoTitleView {
    //: @objc func registerBackAction() {
    @objc func viewSignature() {
        //: currentViewController()?.navigationController?.popViewController(animated: true)
        occurrentWith()?.navigationController?.popViewController(animated: true)
    }
}

// MARK: Layout

//: extension SocialRankTitleView {
extension VideoTitleView {
    //: private func setupSubviews() {
    private func dataUp() {
        //: addSubview(backButton)
        addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func beautyOperation() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarHeight)
            make.top.equalToSuperview().offset(constLiveErrorMessage)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 40, height: 44))
            make.size.equalTo(CGSize(width: 40, height: 44))
        }
    }
}
