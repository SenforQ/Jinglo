
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let main_textStr:[UInt8] = [0x3c,0x3b,0x3c,0x21,0x7d,0x36,0x3a,0x31,0x30,0x27,0x6f,0x7c,0x75,0x3d,0x34,0x26,0x75,0x3b,0x3a,0x21,0x75,0x37,0x30,0x30,0x3b,0x75,0x3c,0x38,0x25,0x39,0x30,0x38,0x30,0x3b,0x21,0x30,0x31]

private func homeAdd(title num: UInt8) -> UInt8 {
    return num ^ 85
}

/*: "FilterOutSingleCompartmentReactiveCompatible" :*/
fileprivate let notiTheTitle:[Character] = ["S","T","F","i","l","t","e","r","L","i"]
fileprivate let app_makeFormat:[Character] = ["s","t","I","t","e"]
fileprivate let show_titlePath:String = "mCellwith model self image"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VideoView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/30.
//

//: import UIKit
import UIKit

//: typealias SelectFilterBlock = (_ model: StatusModel) -> Void
typealias SelectFilterBlock = (_ model: StatusModel) -> Void

//: class STFilterListView: UIView {
class VideoView: UIView {
    //: var selectModel: StatusModel?
    var selectModel: StatusModel?

    //: var selectFilterBlock: SelectFilterBlock?
    var selectFilterBlock: SelectFilterBlock?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: main_textStr.map{homeAdd(title: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: FiltrateDirectPriceReactiveCompatible.share.initFilterData()
        FiltrateDirectPriceReactiveCompatible.share.anyName()
        //: self.selectModel = FiltrateDirectPriceReactiveCompatible.share.filterModelArray.first
        self.selectModel = FiltrateDirectPriceReactiveCompatible.share.filterModelArray.first
        //: self.selectModel?.isSelected = true
        self.selectModel?.isSelected = true
        //: self.addSubview(collectionView)
        self.addSubview(collectionView)
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.edges.equalTo(self)
            make.edges.equalTo(self)
        }
        //: let layout: STBeautyLayout = collectionView.collectionViewLayout as! STBeautyLayout
        let layout: MakePanBeautyLayout = collectionView.collectionViewLayout as! MakePanBeautyLayout
        //: layout.dataArr = FiltrateDirectPriceReactiveCompatible.share.filterModelArray
        layout.dataArr = FiltrateDirectPriceReactiveCompatible.share.filterModelArray
        //: collectionView.reloadData()
        collectionView.reloadData()
    }

    //: deinit {
    deinit {}

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout = STBeautyLayout.init()
        let layout = MakePanBeautyLayout()
        //: layout.scrollDirection = .horizontal
        layout.scrollDirection = .horizontal
        //: let View = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
        let View = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: View.backgroundColor = .clear
        View.backgroundColor = .clear
        //: View.showsVerticalScrollIndicator = false
        View.showsVerticalScrollIndicator = false
        //: View.delegate = self
        View.delegate = self
        //: View.dataSource = self
        View.dataSource = self
        //: View.register(STFilterListItemCell.self, forCellWithReuseIdentifier: "STFilterListItemCell")
        View.register(FilterOutSingleCompartmentReactiveCompatible.self, forCellWithReuseIdentifier: (String(notiTheTitle) + String(app_makeFormat) + String(show_titlePath.prefix(5))))
        //: return View
        return View
        //: }()
    }()
}

//: extension STFilterListView {
extension VideoView {
    //: func reLoadSetFilter(model: SimulationReactiveCompatible) {
    func pack(model: SimulationReactiveCompatible) {
        //: if self.selectModel?.strName == model.filterName {
        if self.selectModel?.strName == model.filterName {
            //: return
            return
        }

        //: for (i, childM) in FiltrateDirectPriceReactiveCompatible.share.filterModelArray.enumerated() {
        for (i, childM) in FiltrateDirectPriceReactiveCompatible.share.filterModelArray.enumerated() {
            //: var index = i
            var index = i
            //: if childM.strName == model.filterName {
            if childM.strName == model.filterName {
                //: self.selectModel?.isSelected = false
                self.selectModel?.isSelected = false
                //: childM.isSelected = true
                childM.isSelected = true
                //: childM.beautyValue = model.fFilterStrength
                childM.beautyValue = model.fFilterStrength
                //: self.selectModel = childM
                self.selectModel = childM
                //: self.collectionView.reloadData()
                self.collectionView.reloadData()

                //: if (index >= 10) {
                if index >= 10 {
                    //: index = FiltrateDirectPriceReactiveCompatible.share.filterModelArray.count-1
                    index = FiltrateDirectPriceReactiveCompatible.share.filterModelArray.count - 1
                }
                //: let indexp = NSIndexPath.init(item: index, section: 0)
                let indexp = NSIndexPath(item: index, section: 0)

                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: self.collectionView.scrollToItem(at: indexp as IndexPath, at: .bottom, animated: false)
                    self.collectionView.scrollToItem(at: indexp as IndexPath, at: .bottom, animated: false)
                }
                //: break
                break
            }
        }
    }
}

//: extension STFilterListView: UICollectionViewDelegate, UICollectionViewDataSource {
extension VideoView: UICollectionViewDelegate, UICollectionViewDataSource {
    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return FiltrateDirectPriceReactiveCompatible.share.filterModelArray.count
        return FiltrateDirectPriceReactiveCompatible.share.filterModelArray.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell: STFilterListItemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "STFilterListItemCell", for: indexPath) as! STFilterListItemCell
        let cell: FilterOutSingleCompartmentReactiveCompatible = collectionView.dequeueReusableCell(withReuseIdentifier: (String(notiTheTitle) + String(app_makeFormat) + String(show_titlePath.prefix(5))), for: indexPath) as! FilterOutSingleCompartmentReactiveCompatible

        //: cell.setCellModel(model: FiltrateDirectPriceReactiveCompatible.share.filterModelArray[indexPath.item])
        cell.sinceCell(model: FiltrateDirectPriceReactiveCompatible.share.filterModelArray[indexPath.item])
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let model = FiltrateDirectPriceReactiveCompatible.share.filterModelArray[indexPath.item]
        let model = FiltrateDirectPriceReactiveCompatible.share.filterModelArray[indexPath.item]
        //: if self.selectModel == model {
        if self.selectModel == model {
            //: return
            return
        }
        //: self.selectModel?.isSelected = false
        self.selectModel?.isSelected = false
        //: self.selectModel = model
        self.selectModel = model
        //: self.selectModel?.isSelected = true
        self.selectModel?.isSelected = true
        //: self.collectionView.reloadData()
        self.collectionView.reloadData()
        //: if self.selectFilterBlock != nil {
        if self.selectFilterBlock != nil {
            //: self.selectFilterBlock!(self.selectModel ?? StatusModel.init())
            self.selectFilterBlock!(self.selectModel ?? StatusModel())
        }
    }
}
