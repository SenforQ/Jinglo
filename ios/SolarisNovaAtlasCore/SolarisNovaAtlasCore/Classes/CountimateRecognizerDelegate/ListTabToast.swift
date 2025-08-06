
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kIconFormat:[UInt8] = [0xb3,0xb4,0xb3,0xae,0xf2,0xb9,0xb5,0xbe,0xbf,0xa8,0xe0,0xf3,0xfa,0xb2,0xbb,0xa9,0xfa,0xb4,0xb5,0xae,0xfa,0xb8,0xbf,0xbf,0xb4,0xfa,0xb3,0xb7,0xaa,0xb6,0xbf,0xb7,0xbf,0xb4,0xae,0xbf,0xbe]

private func afterView(request num: UInt8) -> UInt8 {
    return num ^ 218
}

/*: "btn_live_toast_bg" :*/
fileprivate let main_opUpTableFormat:[Character] = ["b","t","n","_","l","i","v","e","_","t","o","a","s","t"]
fileprivate let dataFrameUrl:[Character] = ["_","b","g"]

/*: "btn_live_toast_arrow" :*/
fileprivate let userGiftStr:String = "center background in view viewbtn_l"
fileprivate let show_requestMessage:[Character] = ["i","v","e","_","t","o","a","s","t"]
fileprivate let appScaleData:String = "date icon_arrow"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ListTabToast.swift
//  AbroadTalking
//
//  Created by young on 2023/6/15.
//

//: import UIKit
import UIKit

/// （内存保存）记录此次运行是否展示过女性直播提示
//: var LIVETABTOASTISSHOW = false
var k_pageId = false

//: class TalkingLiveTabToast: UIView {
class ListTabToast: UIView {
    // 气泡间距
    //: private let bubbleInsets = UIEdgeInsets(top: 6, left: 11, bottom: 6, right: 11)
    private let bubbleInsets = UIEdgeInsets(top: 6, left: 11, bottom: 6, right: 11)

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        isPriceSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kIconFormat.map{afterView(request: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bubbleImgView: UIImageView = {
    private lazy var bubbleImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: var img = UIImage.BundleImageNamed(name: "btn_live_toast_bg").resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch)
        var img = UIImage.thoughtImageBundleSizeText(name: (String(main_opUpTableFormat) + String(dataFrameUrl))).resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch)
        //: imgV.image = img
        imgV.image = img
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var arrowImgView: UIImageView = {
    private lazy var arrowImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.BundleImageNamed(name: "btn_live_toast_arrow")
        imgV.image = UIImage.thoughtImageBundleSizeText(name: (String(userGiftStr.suffix(5)) + String(show_requestMessage) + String(appScaleData.suffix(6))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var textLab: UILabel = {
    private lazy var textLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.atomic(fontSize: 15)
        lab.font = UIFont.atomic(fontSize: 15)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveTabToast {
extension ListTabToast {
    /// 展示视图，5s后自动移除
    //: func show(superView: UIView) {
    func notModel(superView: UIView) {
        //: guard LIVETABTOASTISSHOW == false else { return }
        guard k_pageId == false else { return }
        //: guard PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue else { return }
        //: guard PunctuateThen.share.appUserConfigMode.liveTabTips.count > 0 else { return }
        guard PunctuateThen.share.appUserConfigMode.liveTabTips.count > 0 else { return }
        //: LIVETABTOASTISSHOW = true
        k_pageId = true

        //: textLab.text = PunctuateThen.share.appUserConfigMode.liveTabTips
        textLab.text = PunctuateThen.share.appUserConfigMode.liveTabTips
        //: let maxWidth = ScreenWidth - 48
        let maxWidth = kQueryValue - 48
        //: let maxSize = CGSize(width: maxWidth, height: CGFloat.greatestFiniteMagnitude)
        let maxSize = CGSize(width: maxWidth, height: CGFloat.greatestFiniteMagnitude)
        //: let contentSize = textLab.sizeThatFits(maxSize)
        let contentSize = textLab.sizeThatFits(maxSize)
        //: let bubble_w = max(contentSize.width+bubbleInsets.left+bubbleInsets.right, 67)
        let bubble_w = max(contentSize.width + bubbleInsets.left + bubbleInsets.right, 67)
        //: let bubble_h = max(contentSize.height+bubbleInsets.top+bubbleInsets.bottom, 35)
        let bubble_h = max(contentSize.height + bubbleInsets.top + bubbleInsets.bottom, 35)
        //: let bubbleSize = CGSize(width: bubble_w, height: bubble_h)
        let bubbleSize = CGSize(width: bubble_w, height: bubble_h)

        //: superView.addSubview(self)
        superView.addSubview(self)
        //: self.snp.remakeConstraints { make in
        self.snp.remakeConstraints { make in
            //: make.bottom.equalTo(superView.snp.top).offset(-14)
            make.bottom.equalTo(superView.snp.top).offset(-14)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(bubbleSize.width)
            make.width.equalTo(bubbleSize.width)
            //: make.height.equalTo(bubbleSize.height+5)
            make.height.equalTo(bubbleSize.height + 5)
        }
        //: self.arrowImgView.snp.remakeConstraints { make in
        self.arrowImgView.snp.remakeConstraints { make in
            //: make.bottom.centerX.equalToSuperview()
            make.bottom.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 11, height: 5))
            make.size.equalTo(CGSize(width: 11, height: 5))
        }
        //: self.bubbleImgView.snp.remakeConstraints { make in
        self.bubbleImgView.snp.remakeConstraints { make in
            //: make.bottom.equalTo(arrowImgView.snp.top)
            make.bottom.equalTo(arrowImgView.snp.top)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(bubbleSize)
            make.size.equalTo(bubbleSize)
        }
        //: self.textLab.snp.remakeConstraints { make in
        self.textLab.snp.remakeConstraints { make in
            //: make.leading.equalTo(bubbleInsets.left)
            make.leading.equalTo(bubbleInsets.left)
            //: make.top.equalTo(bubbleInsets.top)
            make.top.equalTo(bubbleInsets.top)
            //: make.size.equalTo(contentSize)
            make.size.equalTo(contentSize)
        }

        // 5s后自动移除
        //: DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            //: self.isHidden = true
            self.isHidden = true
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveTabToast {
extension ListTabToast {
    /// 添加视图
    //: private func setupSubviews() {
    private func isPriceSubviews() {
        //: self.addSubview(bubbleImgView)
        self.addSubview(bubbleImgView)
        //: self.addSubview(arrowImgView)
        self.addSubview(arrowImgView)
        //: bubbleImgView.addSubview(textLab)
        bubbleImgView.addSubview(textLab)
    }
}
