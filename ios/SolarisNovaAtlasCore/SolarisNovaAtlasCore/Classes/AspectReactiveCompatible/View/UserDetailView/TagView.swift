
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainUserQueryContent:[UInt8] = [0x67,0x6c,0x67,0x72,0x26,0x61,0x6d,0x62,0x63,0x70,0x38,0x27,0x1e,0x66,0x5f,0x71,0x1e,0x6c,0x6d,0x72,0x1e,0x60,0x63,0x63,0x6c,0x1e,0x67,0x6b,0x6e,0x6a,0x63,0x6b,0x63,0x6c,0x72,0x63,0x62]

fileprivate func stochasticProcessNo(be num: UInt8) -> UInt8 {
    let value = Int(num) + 2
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Not reaching the required level" :*/
fileprivate let main_makeData:[UInt8] = [0xd8,0xf9,0xfe,0xaa,0xfc,0xef,0xeb,0xed,0xf2,0xf3,0xf8,0xf1,0xaa,0xfe,0xf2,0xef,0xaa,0xfc,0xef,0xfb,0xff,0xf3,0xfc,0xef,0xee,0xaa,0xf6,0xef,0x0,0xef,0xf6]

fileprivate func finishUp(image num: UInt8) -> UInt8 {
    let value = Int(num) - 138
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "text_fee" :*/
fileprivate let notiRecoverUrl:String = "task modeltext_fee"

/*: "video_fee" :*/
fileprivate let app_mKey:String = "video_felse every"
fileprivate let data_wrapFormat:String = "message"

/*: "voice_fee" :*/
fileprivate let const_lessCellStr:String = "vcountice"

/*: "value" :*/
fileprivate let k_makeMessage:[Character] = ["v","a","l","u","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TagView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/1.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TalkingFemaleChatSetView: UIView {
class TagView: UIView {
    //: lazy var dataArray: [ChatPriceModel] = []
    lazy var dataArray: [StartTransformable] = []
    //: var price: Int = -1
    var price: Int = -1
    //: var popView = TalkingPopView()
    var popView = UserModelReactiveCompatible()
    //: var contentHeight = kDeviceSafeBottomHeight
    var contentHeight = k_netId
    //: var showType: Int = -1
    var showType: Int = -1

    //: var seletePriceBlock: ((_ model: ChatPriceModel) -> Void)?
    var seletePriceBlock: ((_ model: StartTransformable) -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.subviewsSetup()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainUserQueryContent.map{stochasticProcessNo(be: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

    // MARK: - Lazy load

    //: lazy var mainTableView = UITableView.init(frame: .zero, style: .plain).then {
    lazy var mainTableView = UITableView(frame: .zero, style: .plain).then {
        //: $0.backgroundColor = UIColor.appBgColor()
        $0.backgroundColor = UIColor.sizeColor()
        //: $0.separatorStyle = .none
        $0.separatorStyle = .none
        //: $0.delegate = self
        $0.delegate = self
        //: $0.dataSource = self
        $0.dataSource = self
        //: $0.register(TalkingFemaleChatSetCell.self, forCellReuseIdentifier: TalkingFemaleChatSetCell.className())
        $0.register(LadeReactiveCompatible.self, forCellReuseIdentifier: LadeReactiveCompatible.className())
        //: self.addSubview($0)
        self.addSubview($0)
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingFemaleChatSetView: UITableViewDelegate, UITableViewDataSource {
extension TagView: UITableViewDelegate, UITableViewDataSource {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArray.count
        return dataArray.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 54
        return 54
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingFemaleChatSetCell.className(), for: indexPath) as! TalkingFemaleChatSetCell
        let cell = tableView.dequeueReusableCell(withIdentifier: LadeReactiveCompatible.className(), for: indexPath) as! LadeReactiveCompatible
        //: let model: ChatPriceModel = self.dataArray[indexPath.row]
        let model: StartTransformable = self.dataArray[indexPath.row]
        //: cell.updateCellModel(cellModel: model, index: self.showType)
        cell.theoreticalAccount(cellModel: model, index: self.showType)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let curModel: ChatPriceModel = self.dataArray[indexPath.row]
        let curModel: StartTransformable = self.dataArray[indexPath.row]
        //: if curModel.levelLimit > (Int(PunctuateThen.share.loginUserMode.level) ?? 1) {
        if curModel.levelLimit > (Int(PunctuateThen.share.loginUserMode.level) ?? 1) {
            //: self.func__showStatusBarErrorMsg(showMsg: "Not reaching the required level".localized)
            self.drawObserver(showMsg: String(bytes: main_makeData.map{finishUp(image: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }
        //: EditPrice(model: curModel)
        incrementalCost(model: curModel)
    }

    //: func  EditPrice(model: ChatPriceModel) {
    func incrementalCost(model: StartTransformable) {
        //: if price == model.price {
        if price == model.price {
            //: return
            return
        }
        //: ProgressHUD.show()
        DirectThen.levelHandle()

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: switch self.showType {
        switch self.showType {
        //: case 0:
        case 0:
            //: dict["key"] = "text_fee"
            dict["key"] = (String(notiRecoverUrl.suffix(8)))
        //: break
        //: case 1:
        case 1:
            //: dict["key"] = "video_fee"
            dict["key"] = (String(app_mKey.prefix(7)) + data_wrapFormat.replacingOccurrences(of: "message", with: "ee"))
        //: break
        //: case 2:
        case 2:
            //: dict["key"] = "voice_fee"
            dict["key"] = (const_lessCellStr.replacingOccurrences(of: "count", with: "o") + "_fee")
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: dict["value"] = model.price
        dict[(String(k_makeMessage))] = model.price

        //: TalkingMeRequestTool.req_EditInfo(params: dict) { succeed, result, errorModel in
        TampReactiveCompatible.windowImage(params: dict) { succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            DirectThen.cutWith()

            //: if succeed {
            if succeed {
                //: for model in self.dataArray {
                for model in self.dataArray {
                    //: model.isSelected = false
                    model.isSelected = false
                }
                //: model.isSelected = true
                model.isSelected = true
                //: self.price = model.price
                self.price = model.price
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: if self.seletePriceBlock != nil {
                if self.seletePriceBlock != nil {
                    //: self.seletePriceBlock!(model)
                    self.seletePriceBlock!(model)
                }
                //: self.dismissView()
                self.betweenView()

                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.drawObserver(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

//: extension TalkingFemaleChatSetView {
extension TagView {
    // 添加视图
    //: private func setupSubviews() {
    private func subviewsSetup() {
        //: self.mainTableView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: self.contentHeight)
        self.mainTableView.frame = CGRect(x: 0, y: notiKeyTitle, width: kQueryValue, height: self.contentHeight)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: self.mainTableView.layer.maskedCorners = CACornerMask(rawValue: CACornerMask.layerMinXMinYCorner.rawValue | CACornerMask.layerMaxXMinYCorner.rawValue)
            self.mainTableView.layer.maskedCorners = CACornerMask(rawValue: CACornerMask.layerMinXMinYCorner.rawValue | CACornerMask.layerMaxXMinYCorner.rawValue)
            //: self.mainTableView.layer.cornerRadius = 15
            self.mainTableView.layer.cornerRadius = 15
            //: } else {
        } else {
            // Fallback on earlier versions
        }

        //: popView.frame = UIScreen.main.bounds
        popView.frame = UIScreen.main.bounds
        //: popView.initWithView(view: self)
        popView.style(view: self)
        //: popView.showInView(view: PublisherReactiveCompatible.getWindow())
        popView.hadith(view: PublisherReactiveCompatible.exceptAction())
    }

    //: @objc func dismissView() {
    @objc func betweenView() {
        //: UIView.animate(withDuration: 0.3) {[weak self ] in
        UIView.animate(withDuration: 0.3) { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.alpha = 0
            self.alpha = 0
            //: self.mainTableView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: self.contentHeight)
            self.mainTableView.frame = CGRect(x: 0, y: notiKeyTitle, width: kQueryValue, height: self.contentHeight)
            //: } completion: { _ in
        } completion: { _ in

            //: self.removeFromSuperview()
            self.removeFromSuperview()
            //: self.popView.dismissView()
            self.popView.conversation()
        }
    }

    //: func showView() {
    func attention() {
        //: UIView.animate(withDuration: 0.3, animations: { [weak self ] in
        UIView.animate(withDuration: 0.3, animations: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.alpha = 1.0
            self.alpha = 1.0
            //: switch self.showType {
            switch self.showType {
            //: case 0:
            case 0:
                //: self.contentHeight += actualHeight(h: 500)
                self.contentHeight += actualHeight(h: 500)
            //: break
            //: case 1, 2:
            case 1, 2:
                //: self.contentHeight += actualHeight(h: 350)
                self.contentHeight += actualHeight(h: 350)
            //: break
            //: default:
            default:
                //: break
                break
            }
            //: self.mainTableView.frame = CGRect(x: 0, y: ScreenHeight-self.contentHeight, width: ScreenWidth, height: self.contentHeight)
            self.mainTableView.frame = CGRect(x: 0, y: notiKeyTitle - self.contentHeight, width: kQueryValue, height: self.contentHeight)

            //: }, completion: nil)
        }, completion: nil)
    }
}
