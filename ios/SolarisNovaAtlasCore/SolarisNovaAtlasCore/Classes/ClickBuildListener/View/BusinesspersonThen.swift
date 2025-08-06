
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let showLiveMsg:[UInt8] = [0xb9,0xbe,0xb9,0xc4,0x78,0xb3,0xbf,0xb4,0xb5,0xc2,0x8a,0x79,0x70,0xb8,0xb1,0xc3,0x70,0xbe,0xbf,0xc4,0x70,0xb2,0xb5,0xb5,0xbe,0x70,0xb9,0xbd,0xc0,0xbc,0xb5,0xbd,0xb5,0xbe,0xc4,0xb5,0xb4]

fileprivate func effectTemp(filter num: UInt8) -> UInt8 {
    let value = Int(num) + 176
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Video processing" :*/
fileprivate let data_thanTitle:String = "Videoat block center text"
fileprivate let const_viewHostResultKey:[Character] = ["s","i","n","g"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BusinesspersonThen.swift
//  AbroadTalking
//
//  Created by young on 2022/10/31.
//

//: import UIKit
import UIKit

//: class TalkingMomentCircleProgressView: UIView {
class BusinesspersonThen: UIView {
    //: var progress: CGFloat = 0.0 {
    var progress: CGFloat = 0.0 {
        //: willSet {
        willSet {
            //: self.progressView.updatePercent(percent: newValue)
            self.progressView.popRow(percent: newValue)
        }
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.RGBA(0, 0, 0, 0.5)
        self.backgroundColor = UIColor.loadRgba(0, 0, 0, 0.5)
        //: self.layer.cornerRadius = 12
        self.layer.cornerRadius = 12
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true

        //: setupSubviews()
        setupWith()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showLiveMsg.map{effectTemp(filter: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: private lazy var label: UILabel = {
    private lazy var label: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.recoverOf(fontSize: 14)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.text = "Video processing".localized
        lab.text = (String(data_thanTitle.prefix(5)) + " proces" + String(const_viewHostResultKey)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var progressView: TalkingCircleProgressView = {
    private lazy var progressView: ForkThen = {
        //: let v = TalkingCircleProgressView()
        let v = ForkThen()
        //: v.backgroundColor = .clear
        v.backgroundColor = .clear
        //: v.strokeColor = UIColor.RGBA(255, 255, 255, 1.0)
        v.strokeColor = UIColor.loadRgba(255, 255, 255, 1.0)
        //: v.circleBgColor = UIColor.RGBA(255, 255, 255, 0.2)
        v.circleBgColor = UIColor.loadRgba(255, 255, 255, 0.2)
        //: v.strokeWidth = 4.0
        v.strokeWidth = 4.0
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMomentCircleProgressView {
extension BusinesspersonThen {
    /// 展示视图
    //: func show(superView: UIView?) {
    func outWithView(superView: UIView?) {
        //: var view = superView
        var view = superView
        //: if view == nil {
        if view == nil {
            //: view = PublisherReactiveCompatible.getWindow()
            view = PublisherReactiveCompatible.exceptAction()
        }
        //: guard view != nil else { return }
        guard view != nil else { return }
        //: self.center = view!.center
        self.center = view!.center
        //: view!.addSubview(self)
        view!.addSubview(self)
        //: setupSubViewsConstraint()
        everyDetail()
    }
}

// MARK: - Layout

//: extension TalkingMomentCircleProgressView {
extension BusinesspersonThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupWith() {
        //: self.addSubview(label)
        self.addSubview(label)
        //: self.addSubview(progressView)
        self.addSubview(progressView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func everyDetail() {
        //: progressView.snp.makeConstraints { make in
        progressView.snp.makeConstraints { make in
            //: make.center.equalTo(self)
            make.center.equalTo(self)
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }

        //: label.snp.makeConstraints { make in
        label.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.bottom.equalTo(-6)
            make.bottom.equalTo(-6)
        }
    }
}
