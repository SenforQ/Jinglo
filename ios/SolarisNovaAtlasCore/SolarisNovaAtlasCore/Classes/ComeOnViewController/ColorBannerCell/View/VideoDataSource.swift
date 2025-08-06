
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let appSelectedId:[UInt8] = [0x39,0x3e,0x39,0x24,0x78,0x33,0x3f,0x34,0x35,0x22,0x6a,0x79,0x70,0x38,0x31,0x23,0x70,0x3e,0x3f,0x24,0x70,0x32,0x35,0x35,0x3e,0x70,0x39,0x3d,0x20,0x3c,0x35,0x3d,0x35,0x3e,0x24,0x35,0x34]

private func dataQuantityeraction(with num: UInt8) -> UInt8 {
    return num ^ 80
}

/*: "icon_me_wallet" :*/
fileprivate let data_hiddenTopColorId:[Character] = ["i","c","o","n","_","m","e","_","w","a","l","l","e","t"]

/*: "icon_me_dgc" :*/
fileprivate let user_drawName:String = "ICON"

/*: "icon_me_friends" :*/
fileprivate let noti_arrayPath:String = "icogift"
fileprivate let mainViewBackMessage:String = "dplayer"

/*: "xicon_me_posts" :*/
fileprivate let user_onTitle:String = "contentco"
fileprivate let app_viewData:String = "_postsfalse text view"

/*: "icon_me_Service" :*/
fileprivate let show_fillData:[Character] = ["i","c","o","n","_","m","e","_","S","e","r","v","i"]
fileprivate let user_voiceUrl:[Character] = ["c","e"]

/*: "icon_me_game" :*/
fileprivate let k_photoName:[Character] = ["i","c","o","n","_","m","e","_","g","a","m","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VideoDataSource.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeThreeColumnsCell: UITableViewCell {
class VideoDataSource: UITableViewCell {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(RefDataDefaultsSerializable, String)]()
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        blockMessage()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appSelectedId.map{dataQuantityeraction(with: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 0
        layout.minimumLineSpacing = 0
        //: layout.minimumInteritemSpacing = 0
        layout.minimumInteritemSpacing = 0
        //: layout.scrollDirection = .vertical
        layout.scrollDirection = .vertical
        //: let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        //: collectionView.backgroundColor = .white
        collectionView.backgroundColor = .white
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        //: collectionView.layer.cornerRadius = 6
        collectionView.layer.cornerRadius = 6
        //: collectionView.layer.masksToBounds = true
        collectionView.layer.masksToBounds = true
        //: collectionView.register(TalkingMeItemCell.self, forCellWithReuseIdentifier: TalkingMeItemCell.className())
        collectionView.register(StartViewCell.self, forCellWithReuseIdentifier: StartViewCell.className())
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: collectionView.contentInsetAdjustmentBehavior = .never
            collectionView.contentInsetAdjustmentBehavior = .never
        }
        //: return collectionView
        return collectionView
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeThreeColumnsCell {
extension VideoDataSource {
    //: func setViewData() {
    func viewSend() {
        //: if PunctuateThen.share.appStatus == AppSkinStatus.normal.rawValue {
        if PunctuateThen.share.appStatus == HiddenHashableRepresentation.normal.rawValue { // 默认模式
            //: if PunctuateThen.share.loginUserMode.sex == Gender.female.rawValue {
            if PunctuateThen.share.loginUserMode.sex == TopComparable.female.rawValue { // 女性
                //: tupleData = [(.My_Wallet, "icon_me_wallet"),
                tupleData = [(.My_Wallet, (String(data_hiddenTopColorId))),
                             //: (.Daily_Gold_Coins, "icon_me_dgc"),
                             (.Daily_Gold_Coins, (user_drawName.lowercased() + "_me_dgc")),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (noti_arrayPath.replacingOccurrences(of: "gift", with: "n") + "_me_frien" + mainViewBackMessage.replacingOccurrences(of: "player", with: "s"))),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (user_onTitle.replacingOccurrences(of: "content", with: "xi") + "n_me" + String(app_viewData.prefix(6)))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(show_fillData) + String(user_voiceUrl)))]

                //: } else {
            } else {
                //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
                tupleData = [(.Daily_Gold_Coins, (user_drawName.lowercased() + "_me_dgc")),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (noti_arrayPath.replacingOccurrences(of: "gift", with: "n") + "_me_frien" + mainViewBackMessage.replacingOccurrences(of: "player", with: "s"))),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (user_onTitle.replacingOccurrences(of: "content", with: "xi") + "n_me" + String(app_viewData.prefix(6)))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(show_fillData) + String(user_voiceUrl)))]
            }
            // 游戏入口
            //: if PunctuateThen.share.appUserConfigMode.gameShowBit == 1 ||
            if PunctuateThen.share.appUserConfigMode.gameShowBit == 1 ||
                //: PunctuateThen.share.appUserConfigMode.gameShowBit == 3 {
                PunctuateThen.share.appUserConfigMode.gameShowBit == 3
            {
                //: tupleData.append((.My_Slots, "icon_me_game"))
                tupleData.append((.My_Slots, (String(k_photoName))))
            }

            //: } else {
        } else { // 审核模式
            //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
            tupleData = [(.Daily_Gold_Coins, (user_drawName.lowercased() + "_me_dgc")),
                         //: (.My_Posts, "xicon_me_posts"),
                         (.My_Posts, (user_onTitle.replacingOccurrences(of: "content", with: "xi") + "n_me" + String(app_viewData.prefix(6)))),
                         //: (.My_Assistant, "icon_me_Service")]
                         (.My_Assistant, (String(show_fillData) + String(user_voiceUrl)))]
        }

        //: self.collectionView.reloadData()
        self.collectionView.reloadData()
        //: setupSubViewsConstraint()
        textStack()
    }
}

// MARK: - Delegate

//: extension TalkingMeThreeColumnsCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension VideoDataSource: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return self.tupleData.count
        return self.tupleData.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingMeItemCell.className(), for: indexPath) as! TalkingMeItemCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StartViewCell.className(), for: indexPath) as! StartViewCell
        //: cell.refreshItem(tupleData[indexPath.row])
        cell.lineMake(tupleData[indexPath.row])
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Wallet:
        case .My_Wallet:
            //: RangePushManager.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            RangePushManager.share.barOn(webViewType: .RechargeFullPage)

        //: case .Daily_Gold_Coins:
        case .Daily_Gold_Coins:
            //: RangePushManager.share.pushOn()
            RangePushManager.share.pushOn()

        //: case .Invite_Friends:
        case .Invite_Friends:
            //: RangePushManager.share.func__pushToWebVC(webViewType: .InviteFriends)
            RangePushManager.share.barOn(webViewType: .InviteFriends)

        //: case .My_Posts:
        case .My_Posts:
            //: let vc = TalkingUserMomentVC.init(uid: PunctuateThen.share.loginUserMode.userID)
            let vc = RecordRecognizerDelegate(uid: PunctuateThen.share.loginUserMode.userID)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.occurrentWith()?.navigationController?.pushViewController(vc, animated: true)

        //: case .My_Assistant:
        case .My_Assistant:
            //: RangePushManager.share.func__pushToWebVC(webViewType: .FAQ)
            RangePushManager.share.barOn(webViewType: .FAQ)

        //: case .My_Slots:
        case .My_Slots:
            //: let vc = TalkingGameListViewController()
            let vc = StraddleViewController()
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.occurrentWith()?.navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: return CGSize(width: (ScreenWidth-30)/3, height: 84.0)
        return CGSize(width: (kQueryValue - 30) / 3, height: 84.0)
    }
}

// MARK: - Layout

//: extension TalkingMeThreeColumnsCell {
extension VideoDataSource {
    /// 添加视图
    //: private func setupSubviews() {
    private func blockMessage() {
        //: self.contentView.addSubview(collectionView)
        self.contentView.addSubview(collectionView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func textStack() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalToSuperview().offset(15)
            make.leading.equalToSuperview().offset(15)
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
            //: let height = ceil(Double(self.tupleData.count)/Double(3))*84+15
            let height = ceil(Double(self.tupleData.count) / Double(3)) * 84 + 15
            //: make.height.equalTo(height)
            make.height.equalTo(height)
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
    }
}

// MARK: - StartViewCell

//: class TalkingMeItemCell: UICollectionViewCell {
class StartViewCell: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appSelectedId.map{dataQuantityeraction(with: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.contentView.addSubview(icon)
        self.contentView.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(18)
            make.top.equalToSuperview().offset(18)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 38, height: 38))
            make.size.equalTo(CGSize(width: 38, height: 38))
        }

        //: self.contentView.addSubview(nameLab)
        self.contentView.addSubview(nameLab)
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(8)
            make.top.equalTo(icon.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalToSuperview()
            make.width.equalToSuperview()
        }
    }

    /// 刷新
    //: func refreshItem(_ data: (CenterItemType, String)) {
    func lineMake(_ data: (RefDataDefaultsSerializable, String)) {
        //: nameLab.text = data.0.rawValue.localized
        nameLab.text = data.0.rawValue.localized
        //: icon.image = UIImage.BundleImageNamed(name: data.1)
        icon.image = UIImage.thoughtImageBundleSizeText(name: data.1)
    }

    // MARK: - Lazy Laod

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: return icon
        return icon
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.toEvent()
        //: lab.font = .pingfangFont(type: .Regular, fontSize: 14)
        lab.font = .clickLarge(type: .Regular, fontSize: 14)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}
