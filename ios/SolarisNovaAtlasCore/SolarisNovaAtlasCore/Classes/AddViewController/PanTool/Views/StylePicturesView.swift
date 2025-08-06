
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_messageAddStr:[UInt8] = [0x7b,0x7c,0x7b,0x66,0x3a,0x71,0x7d,0x76,0x77,0x60,0x28,0x3b,0x32,0x7a,0x73,0x61,0x32,0x7c,0x7d,0x66,0x32,0x70,0x77,0x77,0x7c,0x32,0x7b,0x7f,0x62,0x7e,0x77,0x7f,0x77,0x7c,0x66,0x77,0x76]

private func aLimit(root num: UInt8) -> UInt8 {
    return num ^ 18
}

/*: "img_match_shadow" :*/
fileprivate let userObjectPath:String = "img_macurrent video party"
fileprivate let dataFieldContent:[Character] = ["t","c","h","_","s","h","a","d","o","w"]

/*: "icon_home_girl" :*/
fileprivate let constUnlessGiftAirMessage:[Character] = ["i","c","o","n","_","h","o","m"]
fileprivate let const_blockName:String = "e_girlitem lab try result"

/*: "icon_home_v" :*/
fileprivate let showViewName:[Character] = ["i","c","o","n","_","h","o","m"]
fileprivate let notiAddFormat:String = "e_vservice if height let leading"

/*: "btn_dynamic_stop_nor" :*/
fileprivate let notiResumeStr:[Character] = ["b","t","n","_","d","y","n","a"]
fileprivate let app_makeId:[Character] = ["m","i","c","_","s","t"]
fileprivate let user_topMsg:String = "op_norequal mini"

/*: "#2DF2FF" :*/
fileprivate let userDeadlineUrl:String = "false over manager make male#2DF2FF"

/*: "· :*/
fileprivate let user_warningText:[Character] = ["·"]

/*: "img_home_shadow" :*/
fileprivate let constManagerId:[Character] = ["i","m","g","_","h"]
fileprivate let appTitleMakeName:String = "view equalome_s"
fileprivate let user_controlTableFrameUrl:[Character] = ["h","a","d","o","w"]

/*: "icon_home_boy" :*/
fileprivate let notiColorFormat:String = "text click else gesture toolicon_ho"
fileprivate let k_equalMessage:[Character] = ["m","e","_","b","o","y"]

/*: "SizeView" :*/
fileprivate let appModelFormat:[Character] = ["T","U","s","e","r","D","e"]
fileprivate let constLengthStr:String = "tdatail"
fileprivate let noti_buttonId:String = "rIteview text user model title"

/*: "#FFFFFF" :*/
fileprivate let constUserStr:[Character] = ["#","F","F","F","F","F","F"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StylePicturesView.swift
//  AbroadTalking
//
//  Created by young on 2022/11/15.
//

//: import JXBanner
import JXBanner
//: import JXPageControl
import JXPageControl
//: import UIKit
import UIKit

//: class TalkingMatchResultPicturesView: UIView {
class StylePicturesView: UIView {
    /// 视频速配总秒数（以0.1秒为单位，动画更流畅）
    //: let MatchResultProgress_Timer = 590
    let MatchResultProgress_Timer = 590

    //: var matchPlayVideoBlock: ((_ videorUrl: String) -> Void)?
    var matchPlayVideoBlock: ((_ videorUrl: String) -> Void)?
    //: var matchBackBlock: (() -> Void)?
    var matchBackBlock: (() -> Void)?

    /// 数据模型
    //: private var model = TalkingMatchResultModel()
    private var model = TitleMeasurable()
    //: private var countdownTimer: Timer?
    private var countdownTimer: Timer? // 倒计时

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        subviewsGift()
        //: setupSubViewsConstraint()
        artCollection()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_messageAddStr.map{aLimit(root: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: destroyTimer()
        sawLog()
    }

    // MARK: - Lazy Load

    //: private lazy var bannerView: JXBanner = {
    private lazy var bannerView: JXBanner = {
        //: let view = JXBanner.init(frame: .zero)
        let view = JXBanner(frame: .zero)
        //: view.dataSource = self
        view.dataSource = self
        //: view.delegate = self
        view.delegate = self
        //: view.placeholderImgView.image = UIImage.placeImgBanner()
        view.placeholderImgView.image = UIImage.standingDelete()
        //: view.placeholderImgView.contentMode = .scaleAspectFill
        view.placeholderImgView.contentMode = .scaleAspectFill
        //: return view
        return view
        //: }()
    }()

    //: lazy var gradientShadowImageView: UIImageView = {
    lazy var gradientShadowImageView: UIImageView = {
        //: let imageView = UIImageView.init()
        let imageView = UIImageView()
        //: imageView.image = UIImage.BundleImageNamed(name: "img_match_shadow")
        imageView.image = UIImage.thoughtImageBundleSizeText(name: (String(userObjectPath.prefix(6)) + String(dataFieldContent)))
        //: return imageView
        return imageView
        //: }()
    }()

    //: private lazy var sexImgV: UIImageView = {
    private lazy var sexImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_home_girl")
        img.image = UIImage.thoughtImageBundleSizeText(name: (String(constUnlessGiftAirMessage) + String(const_blockName.prefix(6))))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var authImgV: UIImageView = {
    private lazy var authImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_home_v")
        img.image = UIImage.thoughtImageBundleSizeText(name: (String(showViewName) + String(notiAddFormat.prefix(3))))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.clickLarge(type: .Medium, fontSize: 18)
        //: lab.textColor = .white
        lab.textColor = .white
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var ageLab: UILabel = {
    private lazy var ageLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 11)
        lab.font = UIFont.clickLarge(type: .Medium, fontSize: 11)
        //: lab.textColor = .white
        lab.textColor = .white
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var playImageView: UIImageView = {
    lazy var playImageView: UIImageView = {
        //: let  imag = UIImageView.init(image: UIImage.BundleImageNamed(name: "btn_dynamic_stop_nor"))
        let imag = UIImageView(image: UIImage.thoughtImageBundleSizeText(name: (String(notiResumeStr) + String(app_makeId) + String(user_topMsg.prefix(6)))))
        //: imag.isHidden = true
        imag.isHidden = true
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var userImg: UIImageView = {
    lazy var userImg: UIImageView = {
        //: let  imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.layer.cornerRadius = 52/2
        imag.layer.cornerRadius = 52 / 2
        //: imag.layer.masksToBounds = true
        imag.layer.masksToBounds = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var progressView: CircleCountdownView = {
    private lazy var progressView: SubCountdownView = {
        //: let frame = CGRect(x: 15, y: self.frame.height-47-58, width: 58, height: 58)
        let frame = CGRect(x: 15, y: self.frame.height - 47 - 58, width: 58, height: 58)
        //: let v = CircleCountdownView(frame: frame)
        let v = SubCountdownView(frame: frame)
//        v.roundBgColor = UIColor.white
        //: v.progressColor = UIColor.init(hex: "#2DF2FF")!
        v.progressColor = UIColor(hex: (String(userDeadlineUrl.suffix(7))))!
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMatchResultPicturesView {
extension StylePicturesView {
    /// 更新视图UI
    /// - Parameter model: 数据模型
    //: func updatePicturesView(model: TalkingMatchResultModel) {
    func naturalProcess(model: TitleMeasurable) {
        //: self.model = model
        self.model = model

        //: nameLab.text = model.nickname
        nameLab.text = model.nickname
        //: authImgV.isHidden = model.isTPAuth == true ? false:true
        authImgV.isHidden = model.isTPAuth == true ? false : true
        //: ageLab.text = "·\(model.age)"
        ageLab.text = "·\(model.age)"
        //: userImg.setUrlImage(urlStr: model.headPic, placeImg: UIImage.BundleImageNamed(name: "img_home_shadow"))
        userImg.beforeRender(urlStr: model.headPic, placeImg: UIImage.thoughtImageBundleSizeText(name: (String(constManagerId) + String(appTitleMakeName.suffix(5)) + String(user_controlTableFrameUrl))))
        //: if model.sex == Gender.male.rawValue {
        if model.sex == TopComparable.male.rawValue {
            //: sexImgV.image = UIImage.BundleImageNamed(name: "icon_home_boy")
            sexImgV.image = UIImage.thoughtImageBundleSizeText(name: (String(notiColorFormat.suffix(7)) + String(k_equalMessage)))
            //: } else {
        } else {
            //: sexImgV.image = UIImage.BundleImageNamed(name: "icon_home_girl")
            sexImgV.image = UIImage.thoughtImageBundleSizeText(name: (String(constUnlessGiftAirMessage) + String(const_blockName.prefix(6))))
        }

        //: if authImgV.isHidden {
        if authImgV.isHidden {
            //: sexImgV.snp.updateConstraints { make in
            sexImgV.snp.updateConstraints { make in
                //: make.leading.equalTo(nameLab.snp.trailing).offset(4)
                make.leading.equalTo(nameLab.snp.trailing).offset(4)
            }
        }

        //: bannerView.reloadView()
        bannerView.reloadView()

        //: var time = MatchResultProgress_Timer
        var time = MatchResultProgress_Timer
        //: self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 0.1, block: { [weak self] timer in
        self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 0.1, block: { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard time > 0 else {
            guard time > 0 else { // 结束倒计时，刷新视图
                //: if self.matchBackBlock != nil {
                if self.matchBackBlock != nil {
                    //: self.matchBackBlock!()
                    self.matchBackBlock!()
                }
                //: self.destroyTimer()
                self.sawLog()
                //: return
                return
            }
            //: self.progressView.updateProgress(totalTime: self.MatchResultProgress_Timer, currTime: time)
            self.progressView.curr(totalTime: self.MatchResultProgress_Timer, currTime: time)
            //: time -= 1
            time -= 1
            //: }, repeats: true)
        }, repeats: true)
        //: self.countdownTimer?.fire()
        self.countdownTimer?.fire()
        //: RunLoop.current.add(self.countdownTimer!, forMode: .common)
        RunLoop.current.add(self.countdownTimer!, forMode: .common)
    }

    /// 销毁倒计时
    //: func destroyTimer() {
    func sawLog() {
        //: if countdownTimer != nil {
        if countdownTimer != nil {
            //: countdownTimer?.invalidate()
            countdownTimer?.invalidate()
            //: countdownTimer = nil
            countdownTimer = nil
        }
    }
}

// MARK: - JXBannerDataSource

//: extension TalkingMatchResultPicturesView: JXBannerDataSource {
extension StylePicturesView: JXBannerDataSource {
    //: func jxBanner(numberOfItems banner: JXBannerType) -> Int {
    func jxBanner(numberOfItems _: JXBannerType) -> Int {
        //: return self.model.photos.count
        return self.model.photos.count
    }

    //: func jxBanner(_ banner: JXBannerType, params: JXBannerParams) -> JXBannerParams {
    func jxBanner(_: JXBannerType, params: JXBannerParams) -> JXBannerParams {
        //: return params.isAutoPlay(false)
        return params.isAutoPlay(false)
    }

    //: func jxBanner(_ banner: JXBannerType) -> (JXBannerCellRegister) {
    func jxBanner(_: JXBannerType) -> (JXBannerCellRegister) {
        //: return JXBannerCellRegister(type: TUserDetailHeaderItemCell.self, reuseIdentifier: "TUserDetailHeaderItemCell")
        return JXBannerCellRegister(type: SizeView.self, reuseIdentifier: (String(appModelFormat) + constLengthStr.replacingOccurrences(of: "data", with: "a") + "Heade" + String(noti_buttonId.prefix(4)) + "mCell"))
    }

    //: func jxBanner(_ banner: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
    func jxBanner(_: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
        //: let bannerCell = cell as! TUserDetailHeaderItemCell
        let bannerCell = cell as! SizeView
        //: let str = self.model.photos[index]
        let str = self.model.photos[index]

        //: if index == 0 && self.model.videoUrl.count > 1 {
        if index == 0 && self.model.videoUrl.count > 1 { // 视频
            //: bannerCell.setVideoView()
            bannerCell.sectionBy()
            //: bannerCell.configModel(videoUrl: self.model.videoUrl, imgUrl: self.model.cover)
            bannerCell.response(videoUrl: self.model.videoUrl, imgUrl: self.model.cover)
            /// 自动播放完视频后滑动到下一个
//                bannerCell.setupPlayer()
//                bannerCell.playFinishBlock = { [weak self] in
//                    guard let self = self else { return }
//
//                    if self.model.photos.count > 1 {
//                        self.bannerView.scrollToIndex(1, animated: true)
//                    }
//                }

            //: } else {
        } else { // 图片
            //: bannerCell.setImageView()
            bannerCell.standIn()
            //: bannerCell.bgImgView.setUrlImage(urlStr: str, placeImg: UIImage.placeSquareBigImgBanner())
            bannerCell.bgImgView.beforeRender(urlStr: str, placeImg: UIImage.two())
        }
        //: bannerCell.layer.masksToBounds = true
        bannerCell.layer.masksToBounds = true
        //: return bannerCell
        return bannerCell
    }

    //: func jxBanner(pageControl banner: JXBannerType, numberOfPages: Int, coverView: UIView, builder: JXBannerPageControlBuilder) -> JXBannerPageControlBuilder {
    func jxBanner(pageControl _: JXBannerType, numberOfPages _: Int, coverView: UIView, builder: JXBannerPageControlBuilder) -> JXBannerPageControlBuilder {
        //: let pageControl = JXPageControlJump()
        let pageControl = JXPageControlJump()
        //: pageControl.contentMode = .bottom
        pageControl.contentMode = .bottom
        //: pageControl.activeColor = UIColor(hex: "#FFFFFF")!.withAlphaComponent(1.0)
        pageControl.activeColor = UIColor(hex: (String(constUserStr)))!.withAlphaComponent(1.0)
        //: pageControl.inactiveColor = UIColor(hex: "#FFFFFF")!.withAlphaComponent(0.6)
        pageControl.inactiveColor = UIColor(hex: (String(constUserStr)))!.withAlphaComponent(0.6)
        //: pageControl.activeSize = CGSize(width: 11, height: 7)
        pageControl.activeSize = CGSize(width: 11, height: 7)
        //: pageControl.inactiveSize = CGSize(width: 7, height: 7)
        pageControl.inactiveSize = CGSize(width: 7, height: 7)
        //: pageControl.columnSpacing = 2
        pageControl.columnSpacing = 2
        //: builder.pageControl = pageControl
        builder.pageControl = pageControl
        //: builder.layout = {
        builder.layout = {
            //: pageControl.snp.makeConstraints { (maker) in
            pageControl.snp.makeConstraints { maker in
                //: maker.leading.trailing.equalTo(coverView)
                maker.leading.trailing.equalTo(coverView)
                //: maker.top.equalTo(coverView.snp.top).offset(12)
                maker.top.equalTo(coverView.snp.top).offset(12)
                //: maker.height.equalTo(12)
                maker.height.equalTo(12)
            }
        }
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeThen.shared.direction == .rightToLeft {
            //: pageControl.transform = CGAffineTransform(scaleX: -1, y: 1)
            pageControl.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return builder
        return builder
    }
}

// MARK: - JXBannerDelegate

//: extension TalkingMatchResultPicturesView: JXBannerDelegate {
extension StylePicturesView: JXBannerDelegate {
    //: public func jxBanner(_ banner: JXBannerType, didSelectItemAt index: Int) {
    public func jxBanner(_: JXBannerType, didSelectItemAt index: Int) {
        //: if index == 0 && self.model.videoUrl.count > 0 {
        if index == 0 && self.model.videoUrl.count > 0 {
            //: if matchPlayVideoBlock != nil {
            if matchPlayVideoBlock != nil {
                //: matchPlayVideoBlock!(model.videoUrl)
                matchPlayVideoBlock!(model.videoUrl)
            }
        }
    }

    //: func jxBanner(_ banner: JXBannerType, center index: Int) {
    func jxBanner(_: JXBannerType, center _: Int) {}
}

// MARK: - Layout

//: extension TalkingMatchResultPicturesView {
extension StylePicturesView {
    /// 添加视图
    //: private func setupSubviews() {
    private func subviewsGift() {
        //: self.layer.cornerRadius = 10
        self.layer.cornerRadius = 10
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true

        //: self.addSubview(bannerView)
        self.addSubview(bannerView)
        //: self.addSubview(gradientShadowImageView)
        self.addSubview(gradientShadowImageView)
        //: self.addSubview(nameLab)
        self.addSubview(nameLab)
        //: self.addSubview(authImgV)
        self.addSubview(authImgV)
        //: self.addSubview(sexImgV)
        self.addSubview(sexImgV)
        //: sexImgV.addSubview(ageLab)
        sexImgV.addSubview(ageLab)
        //: self.addSubview(progressView)
        self.addSubview(progressView)
        //: self.addSubview(userImg)
        self.addSubview(userImg)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func artCollection() {
        //: bannerView.snp.makeConstraints { make in
        bannerView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: gradientShadowImageView.snp.makeConstraints { make in
        gradientShadowImageView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(174)
            make.height.equalTo(174)
        }

        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.bottom.equalTo(-15)
            make.bottom.equalTo(-15)
            //: make.trailing.lessThanOrEqualToSuperview().offset(-100)
            make.trailing.lessThanOrEqualToSuperview().offset(-100)
        }
        //: authImgV.snp.makeConstraints { make in
        authImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLab.snp.trailing).offset(4)
            make.leading.equalTo(nameLab.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLab)
            make.centerY.equalTo(nameLab)
            //: make.size.equalTo(CGSize(width: 16, height: 16))
            make.size.equalTo(CGSize(width: 16, height: 16))
        }
        //: sexImgV.snp.makeConstraints { make in
        sexImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLab.snp.trailing).offset(25)
            make.leading.equalTo(nameLab.snp.trailing).offset(25)
            //: make.centerY.equalTo(nameLab)
            make.centerY.equalTo(nameLab)
            //: make.size.equalTo(CGSize(width: 37, height: 18))
            make.size.equalTo(CGSize(width: 37, height: 18))
        }
        //: ageLab.snp.makeConstraints { make in
        ageLab.snp.makeConstraints { make in
            //: make.leading.equalTo(14)
            make.leading.equalTo(14)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: progressView.snp.makeConstraints { make in
        progressView.snp.makeConstraints { make in
            //: make.bottom.equalTo(nameLab.snp.top).offset(-12)
            make.bottom.equalTo(nameLab.snp.top).offset(-12)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.width.height.equalTo(58)
            make.width.height.equalTo(58)
        }
        //: userImg.snp.makeConstraints { make in
        userImg.snp.makeConstraints { make in
            //: make.bottom.equalTo(nameLab.snp.top).offset(-15)
            make.bottom.equalTo(nameLab.snp.top).offset(-15)
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
            //: make.width.height.equalTo(52)
            make.width.height.equalTo(52)
        }
    }
}
