
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_attributePath:[UInt8] = [0xc3,0xc4,0xc3,0xde,0x82,0xc9,0xc5,0xce,0xcf,0xd8,0x90,0x83,0x8a,0xc2,0xcb,0xd9,0x8a,0xc4,0xc5,0xde,0x8a,0xc8,0xcf,0xcf,0xc4,0x8a,0xc3,0xc7,0xda,0xc6,0xcf,0xc7,0xcf,0xc4,0xde,0xcf,0xce]

private func labBottomPath(target num: UInt8) -> UInt8 {
    return num ^ 170
}

/*: "About me" :*/
fileprivate let notiPicWithStr:String = "About metarget view make"

/*: "My interests" :*/
fileprivate let mainImageKey:[Character] = ["M","y"," ","i","n","t","e","r","e","s","t"]
fileprivate let k_sizeStr:[Character] = ["s"]

/*: "#7166F9" :*/
fileprivate let main_greenName:String = "let target data#7166F9"

/*: "#EAE8FE" :*/
fileprivate let data_backStr:String = "#EAE8FEfor click data"

/*: "#4D94FF" :*/
fileprivate let const_titleFormat:[Character] = ["#","4","D","9","4","F","F"]

/*: "#DBEAFF" :*/
fileprivate let noti_miniUrl:[Character] = ["#","D","B","E","A","F","F"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AvailableView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailTagCell: UITableViewCell {
class AvailableView: UITableViewCell {
    //: var titleArray: [String] = []
    var titleArray: [String] = []
    //: var tagAreaHeight: CGFloat = 0
    var tagAreaHeight: CGFloat = 0
    //: var cellType: TUserDetailCellType = TUserDetailCellType.aboutMeType
    var cellType: ProviderCellType = .aboutMeType
    //: var collectionLayoutSubviewBlock: ((_ fitHeight: CGFloat) -> Void)?
    var collectionLayoutSubviewBlock: ((_ fitHeight: CGFloat) -> Void)?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear

        //: setupSubviews()
        belowWith()
        //: setupSubViewsConstraint()
        permission()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_attributePath.map{labBottomPath(target: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Medium, fontSize: 17)
        lb.font = .clickLarge(type: .Medium, fontSize: 17)
        //: lb.textColor = .appTitleColor()
        lb.textColor = .toEvent()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout: TalkingTagCollectionFlowLayout = TalkingTagCollectionFlowLayout()
        let layout = TableViewLayout()
        //: layout.delegate = self
        layout.delegate = self

        //: let collect = UICollectionView(frame: .zero, collectionViewLayout: layout)
        let collect = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: collect.backgroundColor = .clear
        collect.backgroundColor = .clear
        //: collect.delegate = self
        collect.delegate = self
        //: collect.dataSource = self
        collect.dataSource = self
        //: collect.isScrollEnabled = false
        collect.isScrollEnabled = false
        //: collect.register(TalkingUserDetailTagItemCell.self, forCellWithReuseIdentifier: TalkingUserDetailTagItemCell.className())
        collect.register(ModelView.self, forCellWithReuseIdentifier: ModelView.className())
        //: return collect
        return collect
        //: }()
    }()
}

// MARK: - update

//: extension TalkingUserDetailTagCell {
extension AvailableView {
    //: func configTagCellWithDataModel(type: TUserDetailCellType, userModel: TalkingUserInfoModel) {
    func fasteningModel(type: ProviderCellType, userModel: AuditoryImageMeasurable) {
        //: cellType = type
        cellType = type
        //: if type == .aboutMeType {
        if type == .aboutMeType {
            //: titleLab.text = "About me".localized
            titleLab.text = (String(notiPicWithStr.prefix(8))).localized
            //: titleArray = userModel.aboutMe
            titleArray = userModel.aboutMe

            //: } else if type == .intersetsType {
        } else if type == .intersetsType {
            //: titleLab.text = "My interests".localized
            titleLab.text = (String(mainImageKey) + String(k_sizeStr)).localized
            //: titleArray = userModel.interest
            titleArray = userModel.interest
        }

        //: collectionView.reloadData()
        collectionView.reloadData()
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout

//: extension TalkingUserDetailTagCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension AvailableView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //: return CGSize(width: labelWidth(titleArray[indexPath.item], 20), height: 30)
        return CGSize(width: toName(titleArray[indexPath.item], 20), height: 30)
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return self.titleArray.count
        return self.titleArray.count
    }

    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell: TalkingUserDetailTagItemCell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingUserDetailTagItemCell.className(), for: indexPath) as! TalkingUserDetailTagItemCell
        let cell: ModelView = collectionView.dequeueReusableCell(withReuseIdentifier: ModelView.className(), for: indexPath) as! ModelView
        //: cell.tagLabel.text = titleArray[indexPath.row]
        cell.tagLabel.text = titleArray[indexPath.row]
        //: if cellType == .aboutMeType {
        if cellType == .aboutMeType {
            //: cell.tagLabel.textColor = UIColor(hex: "#7166F9")
            cell.tagLabel.textColor = UIColor(hex: (String(main_greenName.suffix(7))))
            //: cell.bgView.backgroundColor = UIColor(hex: "#EAE8FE")
            cell.bgView.backgroundColor = UIColor(hex: (String(data_backStr.prefix(7))))

            //: } else if cellType == .intersetsType  {
        } else if cellType == .intersetsType {
            //: cell.tagLabel.textColor = UIColor(hex: "#4D94FF")
            cell.tagLabel.textColor = UIColor(hex: (String(const_titleFormat)))
            //: cell.bgView.backgroundColor = UIColor(hex: "#DBEAFF")
            cell.bgView.backgroundColor = UIColor(hex: (String(noti_miniUrl)))
        }
        //: return cell
        return cell
    }

    //: func labelWidth(_ text: String, _ height: CGFloat) -> CGFloat {
    func toName(_ text: String, _ height: CGFloat) -> CGFloat {
        //: let size = CGSize(width: CGFloat(MAXFLOAT), height: height)
        let size = CGSize(width: CGFloat(MAXFLOAT), height: height)
        //: let font = UIFont.systemFont(ofSize: 15)
        let font = UIFont.systemFont(ofSize: 15)
        //: let attributes = [NSAttributedString.Key.font: font]
        let attributes = [NSAttributedString.Key.font: font]
        //: let labelSize = NSString(string: text).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        let labelSize = NSString(string: text).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        //: return labelSize.width + 20
        return labelSize.width + 20
    }
}

// MARK: - LayoutDelegate

//: extension TalkingUserDetailTagCell: TalkingTagCollectionFlowLayoutDelegate {
extension AvailableView: LayoutDelegate {
    //: func getCollectuonViewHeight(layoutH: CGFloat) {
    func enterH(layoutH: CGFloat) {
        //: guard self.tagAreaHeight != layoutH else {
        guard self.tagAreaHeight != layoutH else {
            //: return
            return
        }
        //: self.tagAreaHeight = layoutH
        self.tagAreaHeight = layoutH
        //: if self.collectionLayoutSubviewBlock != nil {
        if self.collectionLayoutSubviewBlock != nil {
            //: self.collectionLayoutSubviewBlock!(layoutH)
            self.collectionLayoutSubviewBlock!(layoutH)
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailTagCell {
extension AvailableView {
    //: private func setupSubviews() {
    private func belowWith() {
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(collectionView)
        contentView.addSubview(collectionView)
    }

    //: private func setupSubViewsConstraint() {
    private func permission() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }

        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(15)
            make.top.equalTo(titleLab.snp.bottom).offset(15)
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}
