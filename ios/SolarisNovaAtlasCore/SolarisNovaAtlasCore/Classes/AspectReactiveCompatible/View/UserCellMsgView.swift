
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let userCellMsg:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "You can receive a gold coins bonus once a day while the " :*/
fileprivate let show_taskPath:[UInt8] = [0x33,0x49,0x4f,0xfa,0x3d,0x3b,0x48,0xfa,0x4c,0x3f,0x3d,0x3f,0x43,0x50,0x3f,0xfa,0x3b,0xfa,0x41,0x49,0x46,0x3e,0xfa,0x3d,0x49,0x43,0x48,0x4d,0xfa,0x3c,0x49,0x48,0x4f,0x4d,0xfa,0x49,0x48,0x3d,0x3f,0xfa,0x3b,0xfa,0x3e,0x3b,0x53,0xfa,0x51,0x42,0x43,0x46,0x3f,0xfa,0x4e,0x42,0x3f,0xfa]

fileprivate func eventFrame(request num: UInt8) -> UInt8 {
    let value = Int(num) + 38
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Lounge plus" :*/
fileprivate let appBottomUrl:String = "color topLo"
fileprivate let const_viewPath:[Character] = ["u","n","g","e"," ","p","l","u","s"]

/*: " subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone." :*/
fileprivate let data_giftPath:[UInt8] = [0x2e,0x65,0x6e,0x6f,0x5a,0x20,0x65,0x6d,0x69,0x54,0x20,0x6e,0x72,0x65,0x74,0x73,0x61,0x45,0x20,0x53,0x55,0x20,0x65,0x68,0x74,0x20,0x6e,0x6f,0x20,0x64,0x65,0x73,0x61,0x62,0x20,0x65,0x62,0x20,0x6c,0x6c,0x69,0x77,0x20,0x73,0x6e,0x69,0x6f,0x63,0x20,0x64,0x6c,0x6f,0x67,0x20,0x79,0x6c,0x69,0x61,0x64,0x20,0x65,0x68,0x74,0x20,0x66,0x6f,0x20,0x65,0x6d,0x69,0x74,0x20,0x65,0x68,0x54,0x2e,0x65,0x76,0x69,0x74,0x63,0x61,0x20,0x73,0x69,0x20,0x65,0x63,0x69,0x76,0x72,0x65,0x73,0x20,0x6e,0x6f,0x69,0x74,0x70,0x69,0x72,0x63,0x73,0x62,0x75,0x73,0x20]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UserCellMsgView.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyFooterView: UICollectionReusableView {
class UserCellMsgView: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userCellMsg.reversed(), encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.showEqual()
        //: self.setupSubViewsConstraint()
        self.cancel()
    }

    // MARK: - Lazy Load

    //: private lazy var cornersView: UIView = {
    private lazy var cornersView: UIView = {
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth-30, height: 20))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kQueryValue - 30, height: 20))
        //: view.Corner(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        view.areaRemoveRadiiAt(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "You can receive a gold coins bonus once a day while the \"Lounge plus\" subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone.".localized
        lab.text = getdesLabStr()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.recoverOf(fontSize: 14)
        //: lab.textColor = UIColor.appValueDetailColor()
        lab.textColor = UIColor.hockeyPlayer()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()
    
    func getdesLabStr() -> String {
        return String(bytes: show_taskPath.map{eventFrame(request: $0)}, encoding: .utf8)! + "\"" + (String(appBottomUrl.suffix(2)) + String(const_viewPath)) + "\"" + String(bytes: data_giftPath.reversed(), encoding: .utf8)!.localized
    }
}

// MARK: - Event

//: extension TalkingDailyFooterView {
extension UserCellMsgView {
    /// 获取当前视图高度
    //: static func getFooterViewHeight() -> CGFloat {
    static func compare() -> CGFloat {
        //: if PunctuateThen.share.loginUserMode.isSignIn {
        if PunctuateThen.share.loginUserMode.isSignIn {
            //: return actualWidth(w: 124)
            return actualWidth(w: 124)
            //: } else {
        } else {
            //: return actualWidth(w: 200)
            return actualWidth(w: 200)
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyFooterView {
extension UserCellMsgView {
    // 添加视图
    //: private func setupSubviews() {
    private func showEqual() {
        //: self.addSubview(cornersView)
        self.addSubview(cornersView)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func cancel() {
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            //: make.leading.width.centerX.equalToSuperview()
            make.leading.width.centerX.equalToSuperview()
        }
    }
}
