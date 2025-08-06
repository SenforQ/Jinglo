
//: Declare String Begin

/*: "SumimateView deinit" :*/
fileprivate let noti_managerName:[Character] = ["Q","u","o","t","e","D","e","t","a","i","l","P","o","p","V","i","e","w"," ","d","e","i","n","i"]
fileprivate let showHiddenData:[Character] = ["t"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let userHandleFormat:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SumimateView.swift
//
//

//: import UIKit
import UIKit

//: class QuoteDetailPopView: UIView {
class SumimateView: UIView {
    //: var popView: TalkingPopView?
    var popView: UserModelReactiveCompatible?

    //: deinit {
    deinit {
        //: printLog(message: "QuoteDetailPopView deinit")
        printLog(message: (String(noti_managerName) + String(showHiddenData)))
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.headShow()
        //: self.setupSubViewsConstraint()
        self.tool()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userHandleFormat.reversed(), encoding: .utf8)!)
    }

    //: var msgDetailText: String? {
    var msgDetailText: String? { // 提示文字
        //: didSet {
        didSet {
            //: messageView.text = msgDetailText
            messageView.text = msgDetailText
        }
    }

    //: lazy var messageView: UILabel = {
    lazy var messageView: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.clickLarge(type: .Regular, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.toEvent()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

//: extension QuoteDetailPopView {
extension SumimateView {
    //: func show() {
    func root() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = UserModelReactiveCompatible(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.style(view: self)
        //: popView?.showInView(view: PublisherReactiveCompatible.getWindow())
        popView?.hadith(view: PublisherReactiveCompatible.exceptAction())
    }

    //: @objc func dismiss() {
    @objc func appSegment() {
        //: popView?.dismissView()
        popView?.conversation()
        //: popView = nil
        popView = nil
    }
}

//: extension QuoteDetailPopView {
extension SumimateView {
    // 添加视图
    //: private func setupSubviews() {
    private func headShow() {
        //: self.backgroundColor = UIColor.appBgColor()
        self.backgroundColor = UIColor.sizeColor()
        //: self.addSubview(messageView)
        self.addSubview(messageView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func tool() {
        //: messageView.snp.makeConstraints { make in
        messageView.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
    }
}
