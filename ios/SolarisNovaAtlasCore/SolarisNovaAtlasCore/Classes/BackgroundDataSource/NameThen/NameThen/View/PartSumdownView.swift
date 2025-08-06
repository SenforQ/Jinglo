
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_modelName:[UInt8] = [0x2,0x7,0x2,0xd,0xc1,0xfc,0x8,0xfd,0xfe,0xb,0xd3,0xc2,0xb9,0x1,0xfa,0xc,0xb9,0x7,0x8,0xd,0xb9,0xfb,0xfe,0xfe,0x7,0xb9,0x2,0x6,0x9,0x5,0xfe,0x6,0xfe,0x7,0xd,0xfe,0xfd]

fileprivate func shareAttribute(original num: UInt8) -> UInt8 {
    let value = Int(num) + 103
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "bg_live_countdown" :*/
fileprivate let dataAddTableId:String = "for modelbg_liv"
fileprivate let data_viewMessage:String = "tvalueown"

/*: "Live will end soon" :*/
fileprivate let data_addPath:[Character] = ["L","i","v","e"," ","w","i"]
fileprivate let data_lengthMsg:[Character] = ["l","l"," ","e"]
fileprivate let userSharedStr:String = "cell hidden true addnd soon"

/*: "Make sure your face is always in the frame" :*/
fileprivate let showIconData:[UInt8] = [0xdd,0xf1,0xfb,0xf5,0xb0,0xe3,0xe5,0xe2,0xf5,0xb0,0xe9,0xff,0xe5,0xe2,0xb0,0xf6,0xf1,0xf3,0xf5,0xb0,0xf9,0xe3,0xb0,0xf1,0xfc,0xe7,0xf1,0xe9,0xe3,0xb0,0xf9,0xfe,0xb0,0xe4,0xf8,0xf5,0xb0,0xf6,0xe2,0xf1,0xfd,0xf5]

private func titleName(image num: UInt8) -> UInt8 {
    return num ^ 144
}

/*: "get json error" :*/
fileprivate let userValueMsg:String = "else player for content shadowget jso"
fileprivate let dataStatusFeeContent:String = "re show self as viewn error"

/*: "#FF2348" :*/
fileprivate let app_borderName:String = "#FF2348catch send"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PartSumdownView.swift
//  AbroadTalking
//
//  Created by young on 2023/9/26.
//

//: import UIKit
import UIKit

//: class TalkingLiveCountdownView: UIView {
class PartSumdownView: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: setupSubviews()
        project()
        //: setupSubViewsConstraint()
        anData()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_modelName.map{shareAttribute(original: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.BundleImageNamed(name: "bg_live_countdown")
        iamg.image = UIImage.thoughtImageBundleSizeText(name: (String(dataAddTableId.suffix(6)) + "e_coun" + data_viewMessage.replacingOccurrences(of: "value", with: "d")))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .toEvent()
        //: lab.font = UIFont.atomic(fontSize: 18)
        lab.font = UIFont.atomic(fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Live will end soon".localized
        lab.text = (String(data_addPath) + String(data_lengthMsg) + String(userSharedStr.suffix(7))).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .toEvent()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 16)
        lab.font = UIFont.recoverOf(fontSize: 16)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Make sure your face is always in the frame".localized
        lab.text = String(bytes: showIconData.map{titleName(image: $0)}, encoding: .utf8)!.localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill

        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Live_countdown_bg)
        let url = SkullSessionReactiveCompatible.default.region(type: .Live_countdown_bg)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(userValueMsg.suffix(7)) + String(dataStatusFeeContent.suffix(7))))
        }
        //: return player
        return player
        //: }()
    }()

    //: private lazy var svgaNumLab: UILabel = {
    private lazy var svgaNumLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.atomic(fontSize: 29)
        lab.font = UIFont.atomic(fontSize: 29)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.textColor = UIColor(hex: "#FF2348")
        lab.textColor = UIColor(hex: (String(app_borderName.prefix(7))))
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveCountdownView {
extension PartSumdownView {
    /// 刷新视图
    /// - Parameter countdown: 倒计时
    //: func refreshView(countdown: String) {
    func sass(countdown: String) {
        //: self.svgaNumLab.text = countdown
        self.svgaNumLab.text = countdown
    }
}

// MARK: - Layout

//: extension TalkingLiveCountdownView {
extension PartSumdownView {
    // 添加视图
    //: private func setupSubviews() {
    private func project() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: topIcon.addSubview(svgaPlayer)
        topIcon.addSubview(svgaPlayer)
        //: topIcon.addSubview(svgaNumLab)
        topIcon.addSubview(svgaNumLab)
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(contentLab)
        contentView.addSubview(contentLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func anData() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 250)))
            make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 250)))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(actualWidth(w: 20))
            make.top.equalTo(actualWidth(w: 20))
            //: make.size.equalTo(CGSize(width: actualWidth(w: 148), height: actualWidth(w: 120)))
            make.size.equalTo(CGSize(width: actualWidth(w: 148), height: actualWidth(w: 120)))
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 60))
            make.width.height.equalTo(actualWidth(w: 60))
        }
        //: svgaNumLab.snp.makeConstraints { make in
        svgaNumLab.snp.makeConstraints { make in
            //: make.center.width.height.equalTo(svgaPlayer)
            make.center.width.height.equalTo(svgaPlayer)
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(actualWidth(w: 17))
            make.top.equalTo(topIcon.snp.bottom).offset(actualWidth(w: 17))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(actualWidth(w: 10))
            make.top.equalTo(titleLab.snp.bottom).offset(actualWidth(w: 10))
            //: make.centerX.leading.trailing.equalTo(titleLab)
            make.centerX.leading.trailing.equalTo(titleLab)
        }
    }
}
