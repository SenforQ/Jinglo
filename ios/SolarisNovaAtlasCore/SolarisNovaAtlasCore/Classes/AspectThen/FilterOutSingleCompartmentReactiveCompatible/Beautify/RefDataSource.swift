
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let appValueMessage:[UInt8] = [0xf7,0xf0,0xf7,0xea,0xb6,0xfd,0xf1,0xfa,0xfb,0xec,0xa4,0xb7,0xbe,0xf6,0xff,0xed,0xbe,0xf0,0xf1,0xea,0xbe,0xfc,0xfb,0xfb,0xf0,0xbe,0xf7,0xf3,0xee,0xf2,0xfb,0xf3,0xfb,0xf0,0xea,0xfb,0xfa]

/*: "featureCell" :*/
fileprivate let showCenterData:[Character] = ["f","e","a","t","u","r"]
fileprivate let mainManagerMessage:String = "eCellequal case data var"

/*: "placeholder" :*/
fileprivate let showTableFormat:String = "placevideoo"
fileprivate let userPhoneStr:[Character] = ["l","d","e","r"]

/*: "suiteCell" :*/
fileprivate let kMessageFormat:[Character] = ["s","u","i","t","e","C"]
fileprivate let dataModelMessage:[Character] = ["e","l","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RefDataSource.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

//: import UIKit
import UIKit

//: typealias DidSelectHandler = (_ featureItem: StatusModel) -> Void
typealias DidSelectHandler = (_ featureItem: StatusModel) -> Void

//: class STBeautyCollectionView: UICollectionView {
class RefDataSource: UICollectionView {
    //: var curSuiteType = BeautyItemType.Face
    var curSuiteType = ViewKeyRepresentable.Face
    //: var featureItems = Array<Any>()
    var featureItems = [Any]()
    //: var curItem: StatusModel?
    var curItem: StatusModel?
    //: var selectBeautyBlock: SelectFilterBlock?
    var selectBeautyBlock: SelectFilterBlock?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appValueMessage.map{$0^158}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
    override init(frame: CGRect, collectionViewLayout _: UICollectionViewLayout) {
        //: let layout = STBeautyLayout.init()
        let layout = MakePanBeautyLayout()
        //: layout.scrollDirection = .horizontal
        layout.scrollDirection = .horizontal

        //: super.init(frame: frame, collectionViewLayout: layout)
        super.init(frame: frame, collectionViewLayout: layout)

        //: setupSubviews()
        constraintTotal()
    }

    //: deinit {
    deinit {}
}

//: extension STBeautyCollectionView {
extension RefDataSource {
    //: func setupData() {
    func thrustOut() {
        //: let tmp = NSMutableArray.init()
        let tmp = NSMutableArray()
        //: switch (self.curSuiteType) {
        switch self.curSuiteType {
        //: case .Face:
        case .Face:
            //: let faceArr  = StatusModel.init().arrayOfFeatureModelWith(categoryType: .Base)
            let faceArr = StatusModel().caseType(categoryType: .Base)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: case .Eyes:
        case .Eyes:
            //: let faceArr  = StatusModel.init().arrayOfFeatureModelWith(categoryType: .Shape)
            let faceArr = StatusModel().caseType(categoryType: .Shape)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: case .Nose:
        case .Nose:
            //: let faceArr  = StatusModel.init().arrayOfFeatureModelWith(categoryType: .MicroSurgery)
            let faceArr = StatusModel().caseType(categoryType: .MicroSurgery)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: case .Lip:
        case .Lip:
            //: let faceArr  = StatusModel.init().arrayOfFeatureModelWith(categoryType: .MakeUp)
            let faceArr = StatusModel().caseType(categoryType: .MakeUp)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: default:
        default:
            //: featureItems = Array()
            featureItems = Array()
            //: break
        }

        //: featureItems = tmp as! [Any]
        featureItems = tmp as! [Any]
        //: configDefaultSelectItem()
        selectDetail()

        //: let layout: STBeautyLayout = self.collectionViewLayout as! STBeautyLayout
        let layout: MakePanBeautyLayout = self.collectionViewLayout as! MakePanBeautyLayout
        //: layout.dataArr = featureItems
        layout.dataArr = featureItems
        //: self.reloadData()
        self.reloadData()
    }

    //: func configDefaultSelectItem() {
    func selectDetail() {
        /*!
         * 1、找到当前featureType对应的item
         * 2、没有找到，就使用数组firstObject
         */
        //: var curFeature = FiltrateDirectPriceReactiveCompatible.share.curFeature
        var curFeature = FiltrateDirectPriceReactiveCompatible.share.curFeature
        //: self.curItem?.isSelected = false
        self.curItem?.isSelected = false
        //: curFeature = self.curItem?.featureType
        curFeature = self.curItem?.featureType

        // 1
        //: for aFeature in featureItems {
        for aFeature in featureItems {
            //: let tfeature = aFeature as! StatusModel
            let tfeature = aFeature as! StatusModel
            //: if (curFeature == tfeature.featureType) {
            if curFeature == tfeature.featureType {
                //: tfeature.isSelected = true
                tfeature.isSelected = true
                //: self.curItem = tfeature
                self.curItem = tfeature
                //: break
                break
            }
        }

        // 2
        //: if (self.curItem == nil) {
        if self.curItem == nil {
            //: let aFeature: StatusModel = featureItems.first as! StatusModel
            let aFeature: StatusModel = featureItems.first as! StatusModel
            //: aFeature.isSelected = true
            aFeature.isSelected = true
            //: self.curItem = aFeature
            self.curItem = aFeature
        }
    }

    //: func setCurSuiteType(curSuiteType: BeautyItemType) {
    func weightPost(curSuiteType: ViewKeyRepresentable) {
        //: self.curSuiteType = curSuiteType
        self.curSuiteType = curSuiteType
        //: setupData()
        thrustOut()
    }

    //: func resetDefaultBeautySuite() {
    func sumimate() {
        //: self.curSuiteType = .Face
        self.curSuiteType = .Face
        //: setupData()
        thrustOut()
        //: let aFeature: StatusModel = featureItems.first as! StatusModel
        let aFeature: StatusModel = featureItems.first as! StatusModel
        //: aFeature.isSelected = true
        aFeature.isSelected = true
        //: self.curItem = aFeature
        self.curItem = aFeature
    }
}

//: extension STBeautyCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
extension RefDataSource: UICollectionViewDelegate, UICollectionViewDataSource {
    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return featureItems.count
        return featureItems.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell: STBeautyIconTitleCell = collectionView.dequeueReusableCell(withReuseIdentifier: "featureCell", for: indexPath) as! STBeautyIconTitleCell
        let cell: NameReactiveCompatible = collectionView.dequeueReusableCell(withReuseIdentifier: (String(showCenterData) + String(mainManagerMessage.prefix(5))), for: indexPath) as! NameReactiveCompatible

        //: let item: StatusModel = featureItems[indexPath.row] as! StatusModel
        let item: StatusModel = featureItems[indexPath.row] as! StatusModel
        //: item.isSelected  = (item.featureType == self.curItem?.featureType)
        item.isSelected = (item.featureType == self.curItem?.featureType)
        //: cell.setFeatureItem(featureItem: item)
        cell.cart(featureItem: item)
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: if (indexPath.row < featureItems.count) {
        if indexPath.row < featureItems.count {
            //: let item: StatusModel = featureItems[indexPath.row] as! StatusModel
            let item: StatusModel = featureItems[indexPath.row] as! StatusModel
            //: self.curItem?.isSelected = false
            self.curItem?.isSelected = false
            //: item.isSelected = true
            item.isSelected = true

            //: self.curItem = item
            self.curItem = item // setter
            //: if self.selectBeautyBlock != nil {
            if self.selectBeautyBlock != nil {
                //: self.selectBeautyBlock!(self.curItem ?? StatusModel.init())
                self.selectBeautyBlock!(self.curItem ?? StatusModel())
            }
            //: self.reloadData()
            self.reloadData()
        }
    }
}

//: extension STBeautyCollectionView {
extension RefDataSource {
    //: func setupSubviews() {
    func constraintTotal() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.isPagingEnabled = true
        self.isPagingEnabled = true
        //: self.showsHorizontalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false
        //: self.showsVerticalScrollIndicator = false
        self.showsVerticalScrollIndicator = false
        //: self.delegate = self
        self.delegate = self
        //: self.dataSource = self
        self.dataSource = self
//        self.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0)
        //: self.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "placeholder")
        self.register(UICollectionViewCell.self, forCellWithReuseIdentifier: (showTableFormat.replacingOccurrences(of: "video", with: "h") + String(userPhoneStr)))
        //: self.register(STBeautyIconTitleCell.self, forCellWithReuseIdentifier: "featureCell")
        self.register(NameReactiveCompatible.self, forCellWithReuseIdentifier: (String(showCenterData) + String(mainManagerMessage.prefix(5))))
        //: self.register(STBeautyIconTitleCell.self, forCellWithReuseIdentifier: "suiteCell")
        self.register(NameReactiveCompatible.self, forCellWithReuseIdentifier: (String(kMessageFormat) + String(dataModelMessage)))
    }
}
