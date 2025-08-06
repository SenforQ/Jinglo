
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let data_rowName:[UInt8] = [0x14,0x19,0x14,0x1f,0xd3,0xe,0x1a,0xf,0x10,0x1d,0xe5,0xd4,0xcb,0x13,0xc,0x1e,0xcb,0x19,0x1a,0x1f,0xcb,0xd,0x10,0x10,0x19,0xcb,0x14,0x18,0x1b,0x17,0x10,0x18,0x10,0x19,0x1f,0x10,0xf]

fileprivate func viewConversation(to num: UInt8) -> UInt8 {
    let value = Int(num) + 85
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "171615" :*/
fileprivate let const_contactUrl:String = "birthday7birthday6birthday5"

/*: "st_slider_thumb" :*/
fileprivate let user_viewValue:String = "st_slivar view"
fileprivate let k_directionMsg:[Character] = ["h","u","m","b"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StatusView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

//: import UIKit
import UIKit

//: class STBeautyAdjustView: UIView {
class StatusView: UIView {
    //: var currentItemType = BeautyItemType.Face
    var currentItemType = ViewKeyRepresentable.Face
    //: var popView: TalkingPopView?
    var popView: UserModelReactiveCompatible?

    //: var curFeatureItem: StatusModel?
    var curFeatureItem: StatusModel?

    //: var faceItem: StatusModel?
    var faceItem: StatusModel?

    //: var eyesItem: StatusModel?
    var eyesItem: StatusModel?

    //: var noseItem: StatusModel?
    var noseItem: StatusModel?

    //: var lipItem: StatusModel?
    var lipItem: StatusModel?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: data_rowName.map{viewConversation(to: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        objectSubviews()
        //: changeTopItem(senderTag: BeautyItemType.Face.rawValue)
        ticket(senderTag: ViewKeyRepresentable.Face.rawValue)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: private lazy var beautyContainerView: UIScrollView = {
    private lazy var beautyContainerView: UIScrollView = {
        //: let sview = UIScrollView()
        let sview = UIScrollView()
        //: sview.backgroundColor = UIColor(hex: "171615")?.withAlphaComponent(0.9)
        sview.backgroundColor = UIColor(hex: (const_contactUrl.replacingOccurrences(of: "birthday", with: "1")))?.withAlphaComponent(0.9)
        //: return sview
        return sview
        //: }()
    }()

    //: private lazy var topItemView: STBeautyTopItemView = {
    private lazy var topItemView: HeadingItemView = {
        //: let view = STBeautyTopItemView()
        let view = HeadingItemView()
        //: view.frame = CGRect.init(x: 0, y: 50, width: ScreenWidth, height: 50)
        view.frame = CGRect(x: 0, y: 50, width: kQueryValue, height: 50)
        //: view.delegate = self
        view.delegate = self
        //: return view
        return view
        //: }()
    }()

    //: private lazy var itemCollectionView: STBeautyCollectionView = {
    private lazy var itemCollectionView: RefDataSource = {
        //: let view = STBeautyCollectionView.init(frame: CGRect.init(x: 0, y: 50+18, width: ScreenWidth, height: beautyContainerView.height-50-18-kDeviceSafeBottomHeight), collectionViewLayout: UICollectionViewLayout())
        let view = RefDataSource(frame: CGRect(x: 0, y: 50 + 18, width: kQueryValue, height: beautyContainerView.height - 50 - 18 - k_netId), collectionViewLayout: UICollectionViewLayout())
        //: return view
        return view
        //: }()
    }()

    ///  滤镜列表
    //: private lazy var filterListView: STFilterListView = {
    private lazy var filterListView: VideoView = {
        //: let view = STFilterListView.init(frame: CGRect.init(x: ScreenWidth, y: 50+18, width: ScreenWidth, height: beautyContainerView.height-50-18-kDeviceSafeBottomHeight))
        let view = VideoView(frame: CGRect(x: kQueryValue, y: 50 + 18, width: kQueryValue, height: beautyContainerView.height - 50 - 18 - k_netId))
        //: return view
        return view
        //: }()
    }()

    //: private lazy var beautySlider: STBeautySlider = {
    private lazy var beautySlider: ViewControl = {
        //: let view = STBeautySlider.init(frame: CGRect.init(x: 22, y: 0, width: ScreenWidth-44, height: 40))
        let view = ViewControl(frame: CGRect(x: 22, y: 0, width: kQueryValue - 44, height: 40))
        //: view.minimumTrackTintColor = UIColor.appThemeColor()
        view.minimumTrackTintColor = UIColor.readRemove()
        //: view.maximumTrackTintColor = .white
        view.maximumTrackTintColor = .white
        //: view.minimumValue = 0
        view.minimumValue = 0
        //: view.maximumValue = 1.0
        view.maximumValue = 1.0
        //: view.value  = 0
        view.value = 0
        //: view.addTarget(self, action: #selector(beautySliderValueChanged(sender:)), for: .valueChanged)
        view.addTarget(self, action: #selector(mobile(sender:)), for: .valueChanged)
        //: view.setThumbImage(UIImage.BundleImageNamed(name: "st_slider_thumb"), for: .normal)
        view.setThumbImage(UIImage.thoughtImageBundleSizeText(name: (String(user_viewValue.prefix(6)) + "der_t" + String(k_directionMsg))), for: .normal)

        //: return view
        return view
        //: }()
    }()
}

//: extension STBeautyAdjustView: STBeautyTopItemViewDelegate {
extension StatusView: TopForefrontPortionBeautyObjectProtocol {
    //: func show() {
    func viewIn() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = UserModelReactiveCompatible(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.style(view: self)
        //: popView?.showInView(view: PublisherReactiveCompatible.getWindow())
        popView?.hadith(view: PublisherReactiveCompatible.exceptAction())
    }

    /// 重置
    //: func ResetBeauty() {
    func cannulate() {
        //: self.faceItem = nil
        self.faceItem = nil
        //: self.eyesItem = nil
        self.eyesItem = nil
        //: self.noseItem = nil
        self.noseItem = nil
        //: self.lipItem = nil
        self.lipItem = nil

        //: FiltrateDirectPriceReactiveCompatible.share.resetCustomDefSuite()
        FiltrateDirectPriceReactiveCompatible.share.videoError()
        //: self.itemCollectionView.resetDefaultBeautySuite()
        self.itemCollectionView.sumimate()
        //: if (self.currentItemType == .Filter) {
        if self.currentItemType == .Filter {
            //: self.beautySlider.isHidden = true
            self.beautySlider.isHidden = true
        }

        //: FiltrateDirectPriceReactiveCompatible.share.initFilterData()
        FiltrateDirectPriceReactiveCompatible.share.anyName()
        //: FiltrateDirectPriceReactiveCompatible.share.reloadFilterData(model: FiltrateDirectPriceReactiveCompatible.share.filterModelArray.first!)
        FiltrateDirectPriceReactiveCompatible.share.passDoing(model: FiltrateDirectPriceReactiveCompatible.share.filterModelArray.first!)
        //: filterListView.reLoadSetFilter(model: FiltrateDirectPriceReactiveCompatible.share.filterSuite ?? SimulationReactiveCompatible.init())
        filterListView.pack(model: FiltrateDirectPriceReactiveCompatible.share.filterSuite ?? SimulationReactiveCompatible())
        //: NotificationCenter.default.post(name: kNotificationSelectBeautyFilter, object: FiltrateDirectPriceReactiveCompatible.share.filterModelArray.first, userInfo: nil)
        NotificationCenter.default.post(name: user_errorValue, object: FiltrateDirectPriceReactiveCompatible.share.filterModelArray.first, userInfo: nil)

        //: let value = Float(FiltrateDirectPriceReactiveCompatible.share.customSuite.fWhitenStrength/0.9)
        let value = Float(FiltrateDirectPriceReactiveCompatible.share.customSuite.fWhitenStrength / 0.9)
        //: self.beautySlider.value = value
        self.beautySlider.value = value
        //: self.beautySlider.configShowValue(value: Float(FiltrateDirectPriceReactiveCompatible.share.customSuite.fWhitenStrength*100))
        self.beautySlider.pullAccount(value: Float(FiltrateDirectPriceReactiveCompatible.share.customSuite.fWhitenStrength * 100))
    }

    //: func setBeautySetSuiteType(afterSuiteType: Int) {
    func beautyEqual(afterSuiteType: Int) {
        //: let type = BeautyItemType(rawValue: afterSuiteType) ?? .Face
        let type = ViewKeyRepresentable(rawValue: afterSuiteType) ?? .Face

        //: FiltrateDirectPriceReactiveCompatible.share.curBeautySuite = type
        FiltrateDirectPriceReactiveCompatible.share.curBeautySuite = type

        //: self.itemCollectionView.setCurSuiteType(curSuiteType: type)
        self.itemCollectionView.weightPost(curSuiteType: type)
    }

    //: func handleSelectFeatureItem(featureItem: StatusModel, category: STBeautyCategory) {
    func familyAddCategory(featureItem: StatusModel, category _: GestureExpressionConvertible) {
        //: self.curFeatureItem = featureItem
        self.curFeatureItem = featureItem
        //: if featureItem.canEdit() {
        if featureItem.fromBecome() {
            //: self.beautySlider.isEnabled = true
            self.beautySlider.isEnabled = true
            //: self.beautySlider.halfMode = !featureItem.isOnlyPositiveValue()
            self.beautySlider.halfMode = !featureItem.theToValue()
            //: if featureItem.isLimitMaxNightValue() {
            if featureItem.network() {
                //: self.beautySlider.value = Float(featureItem.beautyValue/0.9)
                self.beautySlider.value = Float(featureItem.beautyValue / 0.9)
                //: }else {
            } else {
                //: self.beautySlider.value = Float(featureItem.beautyValue)
                self.beautySlider.value = Float(featureItem.beautyValue)
            }
            //: self.beautySlider.configShowValue(value: self.curFeatureItem?.showBeautyValue() ?? 0.0)
            self.beautySlider.pullAccount(value: self.curFeatureItem?.sumernalRepresentation() ?? 0.0)

            //: self.beautySlider.isHidden = false
            self.beautySlider.isHidden = false
            //: } else {
        } else {
            //: self.beautySlider.isHidden = true
            self.beautySlider.isHidden = true
        }
    }

    //: @objc func beautySliderValueChanged(sender: STBeautySlider) {
    @objc func mobile(sender: ViewControl) {
        //: if (self.currentItemType == .Filter) {
        if self.currentItemType == .Filter {
            // 滤镜
            //: self.filterListView.selectModel?.beautyValue = Double(sender.value)
            self.filterListView.selectModel?.beautyValue = Double(sender.value)
            //: self.beautySlider.configShowValue(value: self.filterListView.selectModel?.showBeautyValue() ?? 0.0)
            self.beautySlider.pullAccount(value: self.filterListView.selectModel?.sumernalRepresentation() ?? 0.0)

            //: NotificationCenter.default.post(name: kNotificationBeautyFilterValueChange, object: self.filterListView.selectModel, userInfo: nil)
            NotificationCenter.default.post(name: const_partyLengthValue, object: self.filterListView.selectModel, userInfo: nil)

            //: FiltrateDirectPriceReactiveCompatible.share.reloadFilterData(model: self.filterListView.selectModel ?? StatusModel.init())
            FiltrateDirectPriceReactiveCompatible.share.passDoing(model: self.filterListView.selectModel ?? StatusModel())
            //: }else {
        } else {
            //: if self.curFeatureItem != nil {
            if self.curFeatureItem != nil {
                //: if self.curFeatureItem?.isLimitMaxNightValue() == true {
                if self.curFeatureItem?.network() == true {
                    //: self.curFeatureItem?.beautyValue = Double(sender.value*0.9)
                    self.curFeatureItem?.beautyValue = Double(sender.value * 0.9)
                    //: }else {
                } else {
                    //: self.curFeatureItem?.beautyValue = Double(sender.value)
                    self.curFeatureItem?.beautyValue = Double(sender.value)
                }
                //: self.beautySlider.configShowValue(value: self.curFeatureItem?.showBeautyValue() ?? 0.0)
                self.beautySlider.pullAccount(value: self.curFeatureItem?.sumernalRepresentation() ?? 0.0)

                //: NotificationCenter.default.post(name: kNotificationBeautyFeatureModity, object: self.curFeatureItem, userInfo: nil)
                NotificationCenter.default.post(name: mainClickFormat, object: self.curFeatureItem, userInfo: nil)

                //: } else {
            } else {
                //: sender.isEnabled = false
                sender.isEnabled = false
                //: sender.isHidden  = true
                sender.isHidden = true
            }
        }
    }

    /// 切换item
    /// @param itemType

    //: func changeTopItem(senderTag: Int) {
    func ticket(senderTag: Int) {
        //: let itemType = BeautyItemType(rawValue: senderTag) ?? .Face
        let itemType = ViewKeyRepresentable(rawValue: senderTag) ?? .Face
        //: self.currentItemType = itemType
        self.currentItemType = itemType

        //: if itemType == .Filter {
        if itemType == .Filter {
            //: self.beautyContainerView.setContentOffset(CGPoint.init(x: ScreenWidth, y: 0), animated: true)
            self.beautyContainerView.setContentOffset(CGPoint(x: kQueryValue, y: 0), animated: true)
            //: if self.filterListView.selectModel?.strPath.count == 0 {
            if self.filterListView.selectModel?.strPath.count == 0 {
                //: self.beautySlider.isHidden = true
                self.beautySlider.isHidden = true
                //: }else {
            } else {
                //: self.beautySlider.isHidden = false
                self.beautySlider.isHidden = false
                //: self.beautySlider.isEnabled = true
                self.beautySlider.isEnabled = true
                //: self.beautySlider.halfMode = false
                self.beautySlider.halfMode = false
                //: self.beautySlider.configShowValue(value: self.filterListView.selectModel?.showBeautyValue() ?? 0.0)
                self.beautySlider.pullAccount(value: self.filterListView.selectModel?.sumernalRepresentation() ?? 0.0)
                //: self.beautySlider.value = Float(self.filterListView.selectModel?.beautyValue ?? 0.0)
                self.beautySlider.value = Float(self.filterListView.selectModel?.beautyValue ?? 0.0)
            }
            //: }else {
        } else {
            //: itemCollectionView.setCurSuiteType(curSuiteType: itemType)
            itemCollectionView.weightPost(curSuiteType: itemType)
            //: self.beautySlider.isHidden = false
            self.beautySlider.isHidden = false
            //: self.beautyContainerView.setContentOffset(CGPoint.init(x: 0, y: 0), animated: true)
            self.beautyContainerView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)

            //: var  model = itemCollectionView.featureItems.first as? StatusModel
            var model = itemCollectionView.featureItems.first as? StatusModel
            //: switch itemType {
            switch itemType {
            //: case .Face:
            case .Face:
                //: if self.faceItem != nil {
                if self.faceItem != nil {
                    //: model = self.faceItem
                    model = self.faceItem
                }
            //: case .Eyes:
            case .Eyes:
                //: if self.eyesItem != nil {
                if self.eyesItem != nil {
                    //: model = self.eyesItem
                    model = self.eyesItem
                }
            //: case .Nose:
            case .Nose:
                //: if self.noseItem != nil {
                if self.noseItem != nil {
                    //: model = self.noseItem
                    model = self.noseItem
                }
            //: case .Lip:
            case .Lip:
                //: if self.lipItem != nil {
                if self.lipItem != nil {
                    //: model = self.lipItem
                    model = self.lipItem
                }
            //: default:
            default:
                //: break
                break
            }

            //: handleSelectFeatureItem(featureItem: model ?? StatusModel.init(), category: self.curFeatureItem?.category ?? .Base)
            familyAddCategory(featureItem: model ?? StatusModel(), category: self.curFeatureItem?.category ?? .Base)
            //: self.itemCollectionView.curItem = model
            self.itemCollectionView.curItem = model
            //: self.itemCollectionView.reloadData()
            self.itemCollectionView.reloadData()
        }
    }

    /// 选择滤镜
    /// @param featureModel _
    //: func selectFilter(featureModel: StatusModel) {
    func modelDismiss(featureModel _: StatusModel) {
        //: if self.filterListView.selectModel?.strPath.count == 0 {
        if self.filterListView.selectModel?.strPath.count == 0 {
            //: self.beautySlider.isHidden = true
            self.beautySlider.isHidden = true
            //: }else {
        } else {
            //: self.beautySlider.isHidden = false
            self.beautySlider.isHidden = false
            //: self.beautySlider.isEnabled = true
            self.beautySlider.isEnabled = true
            //: self.beautySlider.halfMode = false
            self.beautySlider.halfMode = false
            //: self.beautySlider.configShowValue(value: self.filterListView.selectModel?.showBeautyValue() ?? 0.0)
            self.beautySlider.pullAccount(value: self.filterListView.selectModel?.sumernalRepresentation() ?? 0.0)
            //: self.beautySlider.value = Float(self.filterListView.selectModel?.beautyValue ?? 0.0)
            self.beautySlider.value = Float(self.filterListView.selectModel?.beautyValue ?? 0.0)
        }
        //: FiltrateDirectPriceReactiveCompatible.share.reloadFilterData(model: self.filterListView.selectModel ?? StatusModel.init())
        FiltrateDirectPriceReactiveCompatible.share.passDoing(model: self.filterListView.selectModel ?? StatusModel())
        //: NotificationCenter.default.post(name: kNotificationSelectBeautyFilter, object: self.filterListView.selectModel, userInfo: nil)
        NotificationCenter.default.post(name: user_errorValue, object: self.filterListView.selectModel, userInfo: nil)
    }

    //: func selectBeauty(model: StatusModel) {
    func excerptOnModel(model: StatusModel) {
        //: if itemCollectionView.curItem == nil {
        if itemCollectionView.curItem == nil {
            //: self.beautySlider.isHidden = true
            self.beautySlider.isHidden = true
            //: }else {
        } else {
            //: self.beautySlider.isHidden = false
            self.beautySlider.isHidden = false
            //: self.beautySlider.isEnabled = true
            self.beautySlider.isEnabled = true
            //: self.beautySlider.halfMode = false
            self.beautySlider.halfMode = false
            //: self.beautySlider.configShowValue(value: itemCollectionView.curItem?.showBeautyValue() ?? 0.0)
            self.beautySlider.pullAccount(value: itemCollectionView.curItem?.sumernalRepresentation() ?? 0.0)
            //: self.beautySlider.value = Float(itemCollectionView.curItem?.beautyValue ?? 0.0)
            self.beautySlider.value = Float(itemCollectionView.curItem?.beautyValue ?? 0.0)
            //: self.curFeatureItem = model
            self.curFeatureItem = model
            //: switch self.currentItemType {
            switch self.currentItemType {
            //: case .Face:
            case .Face:
                //: self.faceItem = model
                self.faceItem = model
            //: case .Eyes:
            case .Eyes:
                //: self.eyesItem = model
                self.eyesItem = model
            //: case .Nose:
            case .Nose:
                //: self.noseItem = model
                self.noseItem = model
            //: case .Lip:
            case .Lip:
                //: self.lipItem = model
                self.lipItem = model
            //: default:
            default:
                //: break
                break
            }
        }
    }
}

//: extension STBeautyAdjustView {
extension StatusView {
    //: func setupSubviews() {
    func objectSubviews() {
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: self.currentItemType = .Face
        self.currentItemType = .Face
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear

        //: beautyContainerView.frame = CGRect.init(x: 0, y: 50, width: ScreenWidth, height: self.height - 50)
        beautyContainerView.frame = CGRect(x: 0, y: 50, width: kQueryValue, height: self.height - 50)
        //: self.addSubview(beautyContainerView)
        self.addSubview(beautyContainerView)
        //: self.addSubview(topItemView)
        self.addSubview(topItemView)
        //: self.addSubview(beautySlider)
        self.addSubview(beautySlider)
        //: beautyContainerView.addSubview(itemCollectionView)
        beautyContainerView.addSubview(itemCollectionView)

        //: itemCollectionView.setCurSuiteType(curSuiteType: FiltrateDirectPriceReactiveCompatible.share.curBeautySuite ?? .Face)
        itemCollectionView.weightPost(curSuiteType: FiltrateDirectPriceReactiveCompatible.share.curBeautySuite ?? .Face)
        //: itemCollectionView.selectBeautyBlock = {[weak self] bmodel in
        itemCollectionView.selectBeautyBlock = { [weak self] bmodel in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.selectBeauty(model: bmodel)
            self.excerptOnModel(model: bmodel)
        }
        // 添加滤镜
        //: beautyContainerView.addSubview(filterListView)
        beautyContainerView.addSubview(filterListView)
        //: filterListView.selectFilterBlock = { [weak self] featureItem in
        filterListView.selectFilterBlock = { [weak self] featureItem in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.selectFilter(featureModel: featureItem)
            self.modelDismiss(featureModel: featureItem)
        }
        //: filterListView.reLoadSetFilter(model: FiltrateDirectPriceReactiveCompatible.share.filterSuite ?? SimulationReactiveCompatible.init())
        filterListView.pack(model: FiltrateDirectPriceReactiveCompatible.share.filterSuite ?? SimulationReactiveCompatible())
    }
}
