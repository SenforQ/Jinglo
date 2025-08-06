
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainColorData:[UInt8] = [0x1f,0x18,0x1f,0x2,0x5e,0x15,0x19,0x12,0x13,0x4,0x4c,0x5f,0x56,0x1e,0x17,0x5,0x56,0x18,0x19,0x2,0x56,0x14,0x13,0x13,0x18,0x56,0x1f,0x1b,0x6,0x1a,0x13,0x1b,0x13,0x18,0x2,0x13,0x12]

private func currentSize(scale num: UInt8) -> UInt8 {
    return num ^ 118
}

/*: "nav_back_black_nor" :*/
fileprivate let noti_keyRecordSucceedMessage:String = "view addnav_"
fileprivate let userTableId:String = "black_log generate"
fileprivate let dataListTingId:String = "nindexr"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NaviReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TPreviewNaviBarView: UIView {
class NaviReactiveCompatible: UIView {
    //: var uid = ""
    var uid = ""
    //: var previewSaveBlock: (() -> Void)?
    var previewSaveBlock: (() -> Void)?
    //: var tapHeadPicBlock: (() -> Void)?
    var tapHeadPicBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.flush()
        //: self.setupSubViewsConstraint()
        self.backComment()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainColorData.map{currentSize(scale: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var backButton = UIButton().then {
    lazy var backButton = UIButton().then {
        //: let img = UIImage(named: "nav_back_black_nor")?.withRenderingMode(.alwaysTemplate)
        let img = UIImage(named: (String(noti_keyRecordSucceedMessage.suffix(4)) + "back_" + String(userTableId.prefix(6)) + dataListTingId.replacingOccurrences(of: "index", with: "o")))?.withRenderingMode(.alwaysTemplate)
        //: $0.setImage(img, for: .normal)
        $0.setImage(img, for: .normal)
        //: $0.tintColor = .white
        $0.tintColor = .white
        //: $0.addTarget(self, action: #selector(registerBackAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(torsoEnrollAction), for: .touchUpInside)
    }
}

// MARK: - Bind && Event

//: extension TPreviewNaviBarView {
extension NaviReactiveCompatible {
    //: @objc func registerBackAction() {
    @objc func torsoEnrollAction() {
        //: RangePushManager.share.func__getCurrentActivityVC()?.navigationController!.popViewController(animated: true)
        RangePushManager.share.retrieve()?.navigationController!.popViewController(animated: true)
    }

    //: @objc func registerSaveAction() {
    @objc func sumTo() {
        // 相册权限
    }

    //: @objc func tapUserHeadPic() {
    @objc func deviceEnablePic() {}
}

// MARK: Layout

//: extension TPreviewNaviBarView {
extension NaviReactiveCompatible {
    //: private func setupSubviews() {
    private func flush() {
        //: addSubview(backButton)
        addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func backComment() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(constLiveErrorMessage)
            //: make.size.equalTo(CGSize(width: 40, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 40, height: constGameData))
        }
    }
}
