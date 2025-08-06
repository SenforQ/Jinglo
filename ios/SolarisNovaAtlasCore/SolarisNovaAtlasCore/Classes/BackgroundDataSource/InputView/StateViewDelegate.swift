
//: Declare String Begin

/*: "btn_talk_voice_nor" :*/
fileprivate let showCornerTitle:String = "outside application image sectionbtn_talk_"
fileprivate let user_femaleFormat:[Character] = ["v","o","i","c","e","_","n","o","r"]

/*: "btn_talk_voice_pre" :*/
fileprivate let data_nameValue:String = "btn_talkself at length"
fileprivate let app_indexName:String = "action self employment male_voic"
fileprivate let dataTitleKindMsg:String = "info pop equale_pre"

/*: "contentSize" :*/
fileprivate let mainModeName:String = "consizeen"

/*: "init(coder:) has not been implemented" :*/
fileprivate let showBorderTouchText:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_talk_more_photo_nor" :*/
fileprivate let k_nameStr:String = "filter view cellbtn_ta"
fileprivate let mainRefreshPath:String = "model userore_ph"

/*: "btn_news_shotVideo_nor" :*/
fileprivate let notiLoadUrl:[Character] = ["b","t","n","_","n","e"]
fileprivate let const_actualSeekTitle:String = "near make on ifws_sh"
fileprivate let showJumpMsg:String = "content indexotVid"

/*: "btn_news_video_nor" :*/
fileprivate let const_countId:String = "type searchbtn_n"
fileprivate let constMediumKey:String = "DE"
fileprivate let k_clearAttachId:String = "o_normodel size block string add"

/*: "btn_talk_gift_nor" :*/
fileprivate let kContentListenName:String = "to color string any colorbtn_"
fileprivate let app_liveRetViewId:String = "leading up title_gift"
fileprivate let kManagerViewLetId:[Character] = ["_","n","o","r"]

/*: "btn_more_game_nor" :*/
fileprivate let constFromLargeName:String = "var publisher show view languagebtn_m"
fileprivate let noti_labAddMsg:[Character] = ["g","a","m","e","_","n","o","r"]

/*: "F5F5F5" :*/
fileprivate let k_withUrl:[Character] = ["F","5","F","5","F","5"]

/*: "btn_talk_send_pre" :*/
fileprivate let dataLabelText:[Character] = ["b","t","n","_","t","a","l","k","_"]
fileprivate let appCenterKey:[Character] = ["s","e","n","d","_","p","r","e"]

/*: "btn_talk_send_nor" :*/
fileprivate let const_sourceSectionUrl:[Character] = ["b","t","n","_","t","a","l","k","_","s","e","n","d","_","n"]
fileprivate let noti_appId:String = "of"

/*: "#EBEBEB" :*/
fileprivate let app_atStr:[Character] = ["#","E","B","E","B","E","B"]

/*: "#999999" :*/
fileprivate let userSaveRangeFormat:String = "#9"
fileprivate let main_biologyKey:[Character] = ["9","9","9","9","9"]

/*: "Type a message…" :*/
fileprivate let dataUserChangeUrl:String = "Type a false item"
fileprivate let constMediumTextData:[Character] = ["m","e","s","s","a","g","e","…"]

/*: "Hold to talk" :*/
fileprivate let dataRangeTitle:[Character] = ["H","o","l","d"," ","t"]
fileprivate let const_managerTitle:[Character] = ["o"," ","t","a","l","k"]

/*: "#DDDDDD" :*/
fileprivate let kInputText:String = "type size#DDDDDD"

/*: "A maximum of 10 people can be @ one message" :*/
fileprivate let dataModelTitle:[UInt8] = [0x6f,0x4e,0x9b,0x8f,0xa6,0x97,0x9b,0xa3,0x9b,0x4e,0x9d,0x94,0x4e,0x5f,0x5e,0x4e,0x9e,0x93,0x9d,0x9e,0x9a,0x93,0x4e,0x91,0x8f,0x9c,0x4e,0x90,0x93,0x4e,0x6e,0x4e,0x9d,0x9c,0x93,0x4e,0x9b,0x93,0xa1,0xa1,0x8f,0x95,0x93]

fileprivate func screenValue(off num: UInt8) -> UInt8 {
    let value = Int(num) - 46
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "@ :*/
fileprivate let dataReadStr:[Character] = ["@"]

/*: "name" :*/
fileprivate let notiItemIndexFromKey:String = "nalabele"

/*: "length" :*/
fileprivate let show_managerKey:String = "lensizet"
fileprivate let notiVideoPath:String = "station"

/*: "<at>@ :*/
fileprivate let main_progressName:String = "<at>@text private"

/*: </at> " :*/
fileprivate let main_insideKey:String = "home else for</at>"
fileprivate let k_sessionPathValue:String = "invite"

/*: "uid" :*/
fileprivate let constPointUrl:String = "uimanager"

/*: "btn_talk_keyboard_nor" :*/
fileprivate let mainSlideCenterValue:String = "btn_tguard as message"
fileprivate let show_largePath:String = "alframe"
fileprivate let k_valueTempPath:String = "index type size_key"
fileprivate let show_productPath:String = "_norgift use back request"

/*: "btn_talk_keyboard_pre" :*/
fileprivate let notiStyleMsg:[Character] = ["b","t","n","_","t","a","l","k","_","k","e","y"]
fileprivate let main_hockeyValue:String = "bobserverrd"

/*: "wav" :*/
fileprivate let notiOpMessage:[Character] = ["w","a","v"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StateViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/5.
//

//: import StoreKit
import StoreKit
//: import UIKit
import UIKit

/// 聊天类型
//: enum InputViewType {
enum TotalernationalityViewType {
    //: case PrivateChat
    case PrivateChat // 私聊
    //: case GroupChat
    case GroupChat // 群聊
    //: case CustomerChat
    case CustomerChat // 客服
    //: case LiveRoom
    case LiveRoom // 直播间
}

//: enum MoreActionType: Int {
enum TypePriorityTarget: Int {
    //: case Photo        = 0
    case Photo = 0
    //: case VideoCall
    case VideoCall
    //: case ShortVideo
    case ShortVideo
    //: case Gift
    case Gift
    //: case Game
    case Game
}

//: protocol ChatInputViewDelegate: NSObject {
protocol IndividualisticReactiveCompatible: NSObject {
    //: func func__sendTextMsg(msgStr: String, quoteModel: AbTalkingChatMsgQuoteModel?)
    func sinceFirst(msgStr: String, quoteModel: PeregrineModel?)

    //: func func__selectMoreFunAction(actionType: MoreActionType)
    func circle(actionType: TypePriorityTarget)

    /// 发送礼物
    /// - Parameters:
    ///   - giftModel: 礼物模型
    ///   - giftNum: 礼物数量
    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String)
    func allModel(giftModel: AvailableTransformable, giftNum: String)

    /// 索要礼物
    /// - Parameters:
    ///   - giftModel: 礼物模型
    ///   - giftNum: 礼物数量
    //: func func__askforGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String)
    func afterwards(giftModel: AvailableTransformable, giftNum: String)

    /// 聊天室发送礼物
    /// - Parameters:
    ///   - giftModel: 礼物模型
    ///   - giftNum: 礼物数量
    ///   - model: 聊天室成员信息
    //: func func__sendChatRoomGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String, model: TalkingChatRoomMemberModel)
    func doTo(giftModel: AvailableTransformable, giftNum: String, model: SodalistSendMemberModel)

    //: func func__sendVoiceMsg(voicePath: String, voiceTime: Int)
    func example(voicePath: String, voiceTime: Int)

    //: func heightToBottomChanged(heightToBottom: CGFloat)
    func lowAction(heightToBottom: CGFloat)

    //: func inputViewHeightChanged(height: CGFloat)
    func alongTask(height: CGFloat)

    //: func func__starRecordBtnDown()
    func prevalence()

    /// 群聊@
    //: func func__selectMentionUser(range: NSRange)
    func ting(range: NSRange)

    /// 输入框输入内容停顿超过1秒
    //: func func_inputContentIntervalOneSecond()
    func sectionTarget()
}

//: class TalkingChatInputView: UIView {
class StateViewDelegate: UIView {
    //: open weak var delegate: ChatInputViewDelegate?
    open weak var delegate: IndividualisticReactiveCompatible?
    //: open var inputStyle: InputViewType = .PrivateChat
    open var inputStyle: TotalernationalityViewType = .PrivateChat
    //: open var recordView: TalkingChatRecordView?
    open var recordView: GestureReactiveCompatible?

    //: open var quoteModel: AbTalkingChatMsgQuoteModel? {
    open var quoteModel: PeregrineModel? {
        //: didSet {
        didSet {
            //: if let tempModel = quoteModel {
            if let tempModel = quoteModel {
                //: self.quoteView.isHidden = false
                self.quoteView.isHidden = false
                //: self.quoteView.quoteModel = tempModel
                self.quoteView.quoteModel = tempModel
                //: self.inputTextView.becomeFirstResponder()
                self.inputTextView.becomeFirstResponder()

                //: self.voiceBtn.setImage(UIImage.BundleImageNamed(name: "btn_talk_voice_nor"), for: .normal)
                self.voiceBtn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(showCornerTitle.suffix(9)) + String(user_femaleFormat))), for: .normal)
                //: self.voiceBtn.setImage(UIImage.BundleImageNamed(name: "btn_talk_voice_pre"), for: .highlighted)
                self.voiceBtn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(data_nameValue.prefix(8)) + String(app_indexName.suffix(5)) + String(dataTitleKindMsg.suffix(5)))), for: .highlighted)
                //: self.recordButton.isHidden = true
                self.recordButton.isHidden = true
                //: self.inputTextView.becomeFirstResponder()
                self.inputTextView.becomeFirstResponder()

                //: }else{
            } else {
                //: self.quoteView.isHidden = true
                self.quoteView.isHidden = true
            }
        }
    }

    /** 界面高度 */
    //: let BackViewHeight = 98 + kDeviceSafeBottomHeight
    let BackViewHeight = 98 + k_netId

    /** 输入框界面高度 */
    //: let InputViewHeight = 40
    let InputViewHeight = 40

    /** 间隙 */
    //: let InputViewPadingHeight = 10
    let InputViewPadingHeight = 10

    /** 录音最大时长 */
    //: let RecordMaxDuration = 30.0
    let RecordMaxDuration = 30.0
    // 群聊@ 消息
    //: var atArr = [String]()
    var atArr = [String]()

    //: var recorder: AVAudioRecorder?
    var recorder: AVAudioRecorder?
    //: var recordStartTime: NSDate = NSDate.init()
    var recordStartTime: NSDate = .init()
    //: var recordTimer: Timer?
    var recordTimer: Timer?
    //: var duration: Int = 0
    var duration: Int = 0

    //: var chatRoomID = ""
    var chatRoomID = ""

    //: var showOtherInputView = false
    var showOtherInputView = false

    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var inputAttr = [NSAttributedString.Key: Any]()
    private var inputAttr = [NSAttributedString.Key: Any]()
    /// 输入框文本长度限制
    //: private let chatlimitCount = 300
    private let chatlimitCount = 300

    //: init(type: InputViewType) {
    init(type: TotalernationalityViewType) {
        //: super.init(frame: .zero)
        super.init(frame: .zero)
        //: self.inputStyle = type
        self.inputStyle = type

        //: customUI()
        matchByEqual()
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(bindName(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.notification(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        //: inputTextView.rx.observeWeakly(UITextView.self, "contentSize").subscribe(onNext: { [weak self] (change) in
        inputTextView.rx.observeWeakly(UITextView.self, (mainModeName.replacingOccurrences(of: "size", with: "t") + "tSize")).subscribe(onNext: { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.func__updateInputContentView()
            self.signal()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: inputTextView.rx.text.orEmpty.subscribe(onNext: { [weak self] in
        inputTextView.rx.text.orEmpty.subscribe(onNext: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if $0.utf16.count > self.chatlimitCount {
            if $0.utf16.count > self.chatlimitCount {
                //: let selectedRange = self.inputTextView.markedTextRange
                let selectedRange = self.inputTextView.markedTextRange
                // 没有在拼写状态再判断
                //: if selectedRange == nil {
                if selectedRange == nil {
                    // 通过字符串截取实现限制100字符长度
                    //: self.inputTextView.text = ($0 as NSString).substring(to: self.chatlimitCount)
                    self.inputTextView.text = ($0 as NSString).substring(to: self.chatlimitCount)
                }
            }

            // 检测是否需要展示翻译
            //: if $0.utf16.count <= 0 {
            if $0.utf16.count <= 0 { // 当输入框为空时，立即调用
                //: self.interval_checkInputContent()
                self.alongObserverButton()
                //: self.sendBtn.isSelected = false
                self.sendBtn.isSelected = false
                //: } else {
            } else {
                //: self.interval_cancelPreviousPerformRequest()
                self.videoView()
                //: self.interval_startPerformRequest()
                self.start()
                //: self.sendBtn.isSelected = true
                self.sendBtn.isSelected = true
            }

            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: bindAction()
        stroke()
        //: initMoreBtnView()
        plan()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showBorderTouchText.reversed(), encoding: .utf8)!)
    }

    //: private func customUI () {
    private func matchByEqual() {
        //: backgroundColor = .white
        backgroundColor = .white
        //: if inputStyle == .PrivateChat {
        if inputStyle == .PrivateChat {
            //: voiceBtn.snp.makeConstraints { make in
            voiceBtn.snp.makeConstraints { make in
                //: make.leading.equalTo(self).offset(8)
                make.leading.equalTo(self).offset(8)
                //: make.centerY.equalTo(contentView)
                make.centerY.equalTo(contentView)
                //: make.width.height.equalTo(26)
                make.width.height.equalTo(26)
            }
            //: sendBtn.snp.makeConstraints { make in
            sendBtn.snp.makeConstraints { make in
                //: make.trailing.equalTo(self.snp.trailing).offset(-8)
                make.trailing.equalTo(self.snp.trailing).offset(-8)
                //: make.centerY.equalTo(contentView)
                make.centerY.equalTo(contentView)
                //: make.width.height.equalTo(26)
                make.width.height.equalTo(26)
            }

            //: quoteView.snp.makeConstraints { make in
            quoteView.snp.makeConstraints { make in
                //: make.top.equalTo(self).offset(0)
                make.top.equalTo(self).offset(0)
                //: make.leading.equalTo(8)
                make.leading.equalTo(8)
                //: make.trailing.equalTo(-8)
                make.trailing.equalTo(-8)
                //: make.height.equalTo(0)
                make.height.equalTo(0)
            }

            //: contentView.snp.makeConstraints { make in
            contentView.snp.makeConstraints { make in
                //: make.top.equalTo(quoteView.snp.bottom).offset(8)
                make.top.equalTo(quoteView.snp.bottom).offset(8)
                //: make.leading.equalTo(voiceBtn.snp.trailing).offset(8)
                make.leading.equalTo(voiceBtn.snp.trailing).offset(8)
                //: make.trailing.equalTo(sendBtn.snp.leading).offset(-8)
                make.trailing.equalTo(sendBtn.snp.leading).offset(-8)
                //: make.height.equalTo(inputTextView)
                make.height.equalTo(inputTextView)
            }

            //: inputTextView.snp.makeConstraints { make in
            inputTextView.snp.makeConstraints { make in
                //: make.top.equalTo(contentView)
                make.top.equalTo(contentView)
                //: make.leading.equalTo(contentView.snp.leading).offset(8)
                make.leading.equalTo(contentView.snp.leading).offset(8)
                //: make.width.equalTo(contentView).offset(-16)
                make.width.equalTo(contentView).offset(-16)
                //: make.height.equalTo(40)
                make.height.equalTo(40)
            }
            //: bottomView.snp.makeConstraints { make in
            bottomView.snp.makeConstraints { make in
                //: make.leading.trailing.equalToSuperview()
                make.leading.trailing.equalToSuperview()
                //: make.height.equalTo(42)
                make.height.equalTo(42)
                //: make.top.equalTo(contentView.snp.bottom).offset(8)
                make.top.equalTo(contentView.snp.bottom).offset(8)
                //: make.bottom.equalTo(-kDeviceSafeBottomHeight)
                make.bottom.equalTo(-k_netId)
            }
            //: recordButton.snp.makeConstraints { make in
            recordButton.snp.makeConstraints { make in
                //: make.edges.equalTo(contentView)
                make.edges.equalTo(contentView)
            }

            //: } else if inputStyle == .GroupChat {
        } else if inputStyle == .GroupChat {
            //: sendBtn.snp.makeConstraints { make in
            sendBtn.snp.makeConstraints { make in
                //: make.trailing.equalTo(self.snp.trailing).offset(-8)
                make.trailing.equalTo(self.snp.trailing).offset(-8)
                //: make.centerY.equalTo(contentView)
                make.centerY.equalTo(contentView)
                //: make.width.height.equalTo(26)
                make.width.height.equalTo(26)
            }
            //: contentView.snp.makeConstraints { make in
            contentView.snp.makeConstraints { make in
                //: make.leading.top.equalTo(self).offset(8)
                make.leading.top.equalTo(self).offset(8)
                //: make.trailing.equalTo(sendBtn.snp.leading).offset(-8)
                make.trailing.equalTo(sendBtn.snp.leading).offset(-8)
                //: make.height.equalTo(inputTextView)
                make.height.equalTo(inputTextView)
            }
            //: inputTextView.snp.makeConstraints { make in
            inputTextView.snp.makeConstraints { make in
                //: make.top.equalTo(contentView)
                make.top.equalTo(contentView)
                //: make.leading.equalTo(contentView.snp.leading).offset(8)
                make.leading.equalTo(contentView.snp.leading).offset(8)
                //: make.width.equalTo(contentView).offset(-16)
                make.width.equalTo(contentView).offset(-16)
                //: make.height.equalTo(40)
                make.height.equalTo(40)
            }
            //: bottomView.snp.makeConstraints { make in
            bottomView.snp.makeConstraints { make in
                //: make.leading.trailing.equalToSuperview()
                make.leading.trailing.equalToSuperview()
                //: make.height.equalTo(42)
                make.height.equalTo(42)
                //: make.top.equalTo(contentView.snp.bottom).offset(8)
                make.top.equalTo(contentView.snp.bottom).offset(8)
                //: make.bottom.equalTo(-kDeviceSafeBottomHeight)
                make.bottom.equalTo(-k_netId)
            }
            //: recordButton.snp.makeConstraints { make in
            recordButton.snp.makeConstraints { make in
                //: make.edges.equalTo(contentView)
                make.edges.equalTo(contentView)
            }
            //: } else if inputStyle == .CustomerChat {
        } else if inputStyle == .CustomerChat {
            //: sendBtn.snp.makeConstraints { make in
            sendBtn.snp.makeConstraints { make in
                //: make.trailing.equalTo(self.snp.trailing).offset(-8)
                make.trailing.equalTo(self.snp.trailing).offset(-8)
                //: make.centerY.equalTo(contentView)
                make.centerY.equalTo(contentView)
                //: make.width.height.equalTo(26)
                make.width.height.equalTo(26)
            }
            //: contentView.snp.makeConstraints { make in
            contentView.snp.makeConstraints { make in
                //: make.top.equalTo(self).offset(8)
                make.top.equalTo(self).offset(8)
                //: make.leading.equalToSuperview().offset(8)
                make.leading.equalToSuperview().offset(8)
                //: make.trailing.equalTo(sendBtn.snp.leading).offset(-16)
                make.trailing.equalTo(sendBtn.snp.leading).offset(-16)
                //: make.height.equalTo(inputTextView)
                make.height.equalTo(inputTextView)
            }
            //: inputTextView.snp.makeConstraints { make in
            inputTextView.snp.makeConstraints { make in
                //: make.top.equalTo(contentView)
                make.top.equalTo(contentView)
                //: make.leading.equalTo(contentView.snp.leading).offset(8)
                make.leading.equalTo(contentView.snp.leading).offset(8)
                //: make.width.equalTo(contentView).offset(-16)
                make.width.equalTo(contentView).offset(-16)
                //: make.height.equalTo(40)
                make.height.equalTo(40)
            }
            //: bottomView.snp.makeConstraints { make in
            bottomView.snp.makeConstraints { make in
                //: make.leading.trailing.equalToSuperview()
                make.leading.trailing.equalToSuperview()
                //: make.height.equalTo(42)
                make.height.equalTo(42)
                //: make.top.equalTo(contentView.snp.bottom).offset(8)
                make.top.equalTo(contentView.snp.bottom).offset(8)
                //: make.bottom.equalTo(-kDeviceSafeBottomHeight)
                make.bottom.equalTo(-k_netId)
            }
            //: }else if inputStyle == .LiveRoom {
        } else if inputStyle == .LiveRoom {
            //: sendBtn.snp.makeConstraints { make in
            sendBtn.snp.makeConstraints { make in
                //: make.trailing.equalTo(self.snp.trailing).offset(-8)
                make.trailing.equalTo(self.snp.trailing).offset(-8)
                //: make.centerY.equalTo(contentView)
                make.centerY.equalTo(contentView)
                //: make.width.height.equalTo(26)
                make.width.height.equalTo(26)
            }
            //: quoteView.snp.makeConstraints { make in
            quoteView.snp.makeConstraints { make in
                //: make.top.equalTo(self).offset(0)
                make.top.equalTo(self).offset(0)

                //: make.leading.equalTo(8)
                make.leading.equalTo(8)
                //: make.trailing.equalTo(-8)
                make.trailing.equalTo(-8)
                //: make.height.equalTo(0)
                make.height.equalTo(0)
            }
            //: contentView.snp.makeConstraints { make in
            contentView.snp.makeConstraints { make in
                //: make.top.equalTo(quoteView.snp.bottom).offset(8)
                make.top.equalTo(quoteView.snp.bottom).offset(8)
                //: make.leading.equalToSuperview().offset(8)
                make.leading.equalToSuperview().offset(8)
                //: make.trailing.equalTo(sendBtn.snp.leading).offset(-16)
                make.trailing.equalTo(sendBtn.snp.leading).offset(-16)
                //: make.height.equalTo(inputTextView)
                make.height.equalTo(inputTextView)
            }
            //: inputTextView.snp.makeConstraints { make in
            inputTextView.snp.makeConstraints { make in
                //: make.top.equalTo(contentView)
                make.top.equalTo(contentView)
                //: make.leading.equalTo(contentView.snp.leading).offset(8)
                make.leading.equalTo(contentView.snp.leading).offset(8)
                //: make.width.equalTo(contentView).offset(-16)
                make.width.equalTo(contentView).offset(-16)
                //: make.height.equalTo(40)
                make.height.equalTo(40)
            }
            //: bottomView.snp.makeConstraints { make in
            bottomView.snp.makeConstraints { make in
                //: make.leading.trailing.equalToSuperview()
                make.leading.trailing.equalToSuperview()
                //: make.height.equalTo(42)
                make.height.equalTo(42)
                //: make.top.equalTo(contentView.snp.bottom).offset(8)
                make.top.equalTo(contentView.snp.bottom).offset(8)
                //: make.bottom.equalTo(-kDeviceSafeBottomHeight)
                make.bottom.equalTo(-k_netId)
            }
        }
    }

    //: private func bindAction() {
    private func stroke() {
        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String)  -> Void in
        giftView.sendActionBlock = { [weak self] (_ giftModel: AvailableTransformable, _ num: String) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.delegate?.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.delegate?.allModel(giftModel: giftModel, giftNum: num)
            //: return
        }
        //: giftView.chatRoomSendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String, _ model: TalkingChatRoomMemberModel) -> Void in
        giftView.chatRoomSendActionBlock = { [weak self] (_ giftModel: AvailableTransformable, _ num: String, _ model: SodalistSendMemberModel) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.delegate?.func__sendChatRoomGiftMsg(giftModel: giftModel, giftNum: num, model: model)
            self.delegate?.doTo(giftModel: giftModel, giftNum: num, model: model)
            //: return
        }
        //: giftView.giftHideBlock = { [weak self] ()  -> Void in
        giftView.giftHideBlock = { [weak self] () in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.showOtherInputView = false
            self.showOtherInputView = false
            //: return
        }

        //: if inputStyle == .PrivateChat || inputStyle == .LiveRoom {
        if inputStyle == .PrivateChat || inputStyle == .LiveRoom {
            //: quoteView.closeBtnBlock = { [weak self] ()  -> Void in
            quoteView.closeBtnBlock = { [weak self] () in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.quoteModel = nil
                self.quoteModel = nil
            }
            //: quoteView.rx.hidden.subscribe{[weak self] (isHidden) in
            quoteView.rx.hidden.subscribe { [weak self] isHidden in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.quoteView.snp.updateConstraints { make in
                self.quoteView.snp.updateConstraints { make in
                    //: make.top.equalTo(isHidden ? 0 : 8)
                    make.top.equalTo(isHidden ? 0 : 8)
                    //: make.height.equalTo(isHidden ? 0 : 28)
                    make.height.equalTo(isHidden ? 0 : 28)
                }
                //: self.func__updateInputContentView()
                self.signal()
                //: }.disposed(by: disposeBag)
            }.disposed(by: disposeBag)

            //: if inputStyle == .PrivateChat {
            if inputStyle == .PrivateChat {
                //: giftView.askforActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String)  -> Void in
                giftView.askforActionBlock = { [weak self] (_ giftModel: AvailableTransformable, _ num: String) in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: self.delegate?.func__askforGiftMsg(giftModel: giftModel, giftNum: num)
                    self.delegate?.afterwards(giftModel: giftModel, giftNum: num)
                    //: return
                }
            }
        }
    }

    //: private func initMoreBtnView() {
    private func plan() {
        //: var arr = [MoreActionType]()
        var arr = [TypePriorityTarget]()
        //: if inputStyle == .PrivateChat {
        if inputStyle == .PrivateChat {
            //: arr = [MoreActionType.Photo,
            arr = [TypePriorityTarget.Photo,
                   //: MoreActionType.ShortVideo,
                   TypePriorityTarget.ShortVideo,
                   //: MoreActionType.VideoCall,
                   TypePriorityTarget.VideoCall,
                   //: MoreActionType.Gift,
                   TypePriorityTarget.Gift,
                   //: MoreActionType.Game]
                   TypePriorityTarget.Game]
            // 游戏入口
            //: let bit = PunctuateThen.share.appUserConfigMode.gameShowBit
            let bit = PunctuateThen.share.appUserConfigMode.gameShowBit
            //: if PunctuateThen.share.appStatus == AppSkinStatus.special.rawValue ||
            if PunctuateThen.share.appStatus == HiddenHashableRepresentation.special.rawValue ||
                //: (bit != 2 && bit != 3) {
                (bit != 2 && bit != 3)
            {
                //: arr.removeAll(where: { $0 == .Game })
                arr.removeAll(where: { $0 == .Game })
            }
            //: if PunctuateThen.share.appStatus == AppSkinStatus.special.rawValue {
            if PunctuateThen.share.appStatus == HiddenHashableRepresentation.special.rawValue {
                //: arr.removeAll(where: { $0 == .VideoCall })
                arr.removeAll(where: { $0 == .VideoCall })
            }
            //: } else if inputStyle == .GroupChat {
        } else if inputStyle == .GroupChat {
            //: arr = [MoreActionType.Photo,
            arr = [TypePriorityTarget.Photo,
                   //: MoreActionType.Gift]
                   TypePriorityTarget.Gift]
            //: } else {
        } else {
            //: arr = [MoreActionType.Photo,
            arr = [TypePriorityTarget.Photo,
                   //: MoreActionType.ShortVideo]
                   TypePriorityTarget.ShortVideo]
        }
        //: for (i, type) in arr.enumerated() {
        for (i, type) in arr.enumerated() {
            //: var str = ""
            var str = ""
            //: switch type {
            switch type {
            //: case .Photo:
            case .Photo:
                //: str = "btn_talk_more_photo_nor"
                str = (String(k_nameStr.suffix(6)) + "lk_m" + String(mainRefreshPath.suffix(6)) + "oto_nor")
            //: case .VideoCall:
            case .VideoCall:
                //: str = "btn_news_shotVideo_nor"
                str = (String(notiLoadUrl) + String(const_actualSeekTitle.suffix(5)) + String(showJumpMsg.suffix(5)) + "eo_nor")
            //: case .ShortVideo:
            case .ShortVideo:
                //: str = "btn_news_video_nor"
                str = (String(const_countId.suffix(5)) + "ews_vi" + constMediumKey.lowercased() + String(k_clearAttachId.prefix(5)))
            //: case .Gift:
            case .Gift:
                //: str = "btn_talk_gift_nor"
                str = (String(kContentListenName.suffix(4)) + "talk" + String(app_liveRetViewId.suffix(5)) + String(kManagerViewLetId))
            //: case .Game:
            case .Game:
                //: str = "btn_more_game_nor"
                str = (String(constFromLargeName.suffix(5)) + "ore_" + String(noti_labAddMsg))
            }
            //: let btn = UIButton.init()
            let btn = UIButton()
            //: btn.setImage(UIImage.BundleImageNamed(name: str), for: .normal)
            btn.setImage(UIImage.thoughtImageBundleSizeText(name: str), for: .normal)
            //: btn.setImage(UIImage.BundleImageNamed(name: str), for: .highlighted)
            btn.setImage(UIImage.thoughtImageBundleSizeText(name: str), for: .highlighted)
            //: btn.imageView?.contentMode = .scaleAspectFill
            btn.imageView?.contentMode = .scaleAspectFill
            //: btn.tag = type.rawValue
            btn.tag = type.rawValue
            //: btn.addTarget(self, action: #selector(moreAction(sender:)), for: .touchUpInside)
            btn.addTarget(self, action: #selector(insert(sender:)), for: .touchUpInside)
            //: bottomView.addSubview(btn)
            bottomView.addSubview(btn)
            //: btn.snp.makeConstraints { (make) in
            btn.snp.makeConstraints { make in
                //: make.leading.equalTo(ScreenWidth/5.0 * CGFloat(i))
                make.leading.equalTo(kQueryValue / 5.0 * CGFloat(i))
                //: make.top.height.equalToSuperview()
                make.top.height.equalToSuperview()
                //: make.width.equalTo(ScreenWidth/5)
                make.width.equalTo(kQueryValue / 5)
            }
        }
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    //: @objc func clickSendBtn(sender: UIButton) {
    @objc func clickSender(sender: UIButton) {
        //: sender.isSelected = false
        sender.isSelected = false

        //: if self.inputTextView.text.count > 0 {
        if self.inputTextView.text.count > 0 {
            //: func__sendTextStr()
            nextLanguage()
            //: } else {
        } else {
            //: inputTextView.resignFirstResponder()
            inputTextView.resignFirstResponder()
        }
    }

    //: @objc func moreAction(sender: UIButton) {
    @objc func insert(sender: UIButton) {
        //: self.inputTextView.resignFirstResponder()
        self.inputTextView.resignFirstResponder()
        //: guard let actionType = MoreActionType.init(rawValue: sender.tag) else { return }
        guard let actionType = TypePriorityTarget(rawValue: sender.tag) else { return }
        //: if actionType == .Gift {
        if actionType == .Gift {
            //: clickgiftBtn()
            blockChange()
            //: } else {
        } else {
            //: self.delegate?.func__selectMoreFunAction(actionType: actionType)
            self.delegate?.circle(actionType: actionType)
        }
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let content = UIView.init()
        let content = UIView()
        //: content.backgroundColor = UIColor(hex: "F5F5F5")
        content.backgroundColor = UIColor(hex: (String(k_withUrl)))
        //: content.layer.cornerRadius = 20
        content.layer.cornerRadius = 20
        //: content.clipsToBounds = true
        content.clipsToBounds = true
        //: self.addSubview(content)
        self.addSubview(content)
        //: return content
        return content
        //: }()
    }()

    //: lazy var voiceBtn: UIButton = {
    lazy var voiceBtn: UIButton = {
        //: let voice = UIButton.init()
        let voice = UIButton()
        //: voice.setImage(UIImage.BundleImageNamed(name: "btn_talk_voice_nor"), for: .normal)
        voice.setImage(UIImage.thoughtImageBundleSizeText(name: (String(showCornerTitle.suffix(9)) + String(user_femaleFormat))), for: .normal)
        //: voice.setImage(UIImage.BundleImageNamed(name: "btn_talk_voice_pre"), for: .highlighted)
        voice.setImage(UIImage.thoughtImageBundleSizeText(name: (String(data_nameValue.prefix(8)) + String(app_indexName.suffix(5)) + String(dataTitleKindMsg.suffix(5)))), for: .highlighted)
        //: voice.addTarget(self, action: #selector(clickVoiceBtn(sender:)), for: .touchUpInside)
        voice.addTarget(self, action: #selector(lineWith(sender:)), for: .touchUpInside)
        //: self.addSubview(voice)
        self.addSubview(voice)
        //: return voice
        return voice
        //: }()
    }()

    //: lazy var sendBtn: UIButton = {
    lazy var sendBtn: UIButton = {
        //: let sendction = UIButton.init()
        let sendction = UIButton()
        //: sendction.setImage(UIImage.BundleImageNamed(name: "btn_talk_send_pre"), for: .normal)
        sendction.setImage(UIImage.thoughtImageBundleSizeText(name: (String(dataLabelText) + String(appCenterKey))), for: .normal)
        //: sendction.setImage(UIImage.BundleImageNamed(name: "btn_talk_send_nor"), for: .selected)
        sendction.setImage(UIImage.thoughtImageBundleSizeText(name: (String(const_sourceSectionUrl) + noti_appId.replacingOccurrences(of: "of", with: "or"))), for: .selected)
        //: sendction.addTarget(self, action: #selector(clickSendBtn(sender:)), for: .touchUpInside)
        sendction.addTarget(self, action: #selector(clickSender(sender:)), for: .touchUpInside)
        //: self.addSubview(sendction)
        self.addSubview(sendction)
        //: return sendction
        return sendction
        //: }()
    }()

    //: lazy var quoteView: InputQuoteView = {
    lazy var quoteView: DirectControl = {
        //: let quoteV = InputQuoteView()
        let quoteV = DirectControl()
        //: quoteV.isHidden = true
        quoteV.isHidden = true
        //: quoteV.layer.cornerRadius = 14
        quoteV.layer.cornerRadius = 14
        //: quoteV.backgroundColor = UIColor(hex: "#EBEBEB")
        quoteV.backgroundColor = UIColor(hex: (String(app_atStr)))
        //: self.addSubview(quoteV)
        self.addSubview(quoteV)
        //: return quoteV
        return quoteV
        //: }()
    }()

    //: lazy var inputTextView: InputTextView = {
    lazy var inputTextView: NameHasDelegate = {
        //: let input = InputTextView()
        let input = NameHasDelegate()
        //: input.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        input.font = UIFont.clickLarge(type: .Regular, fontSize: 16)
        //: input.placeholderColor = .init(hex: "#999999") ?? UIColor.gray
        input.placeholderColor = .init(hex: (userSaveRangeFormat.capitalized + String(main_biologyKey))) ?? UIColor.gray
        //: input.placeholder = "Type a message…".localized
        input.placeholder = (String(dataUserChangeUrl.prefix(7)) + String(constMediumTextData)).localized
        //: input.returnKeyType = .default
        input.returnKeyType = .default
        //: input.scrollsToTop = false
        input.scrollsToTop = false
        //: input.delegate = self
        input.delegate = self
        //: input.backgroundColor = UIColor.clear
        input.backgroundColor = UIColor.clear
        //: input.textColor = UIColor.appTitleColor()
        input.textColor = UIColor.toEvent()
        //: self.inputAttr = [NSAttributedString.Key.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)]
        self.inputAttr = [NSAttributedString.Key.foregroundColor: UIColor.toEvent(), .font: UIFont.clickLarge(type: .Regular, fontSize: 16)]
        //: input.typingAttributes = self.inputAttr
        input.typingAttributes = self.inputAttr
        //: contentView.addSubview(input)
        contentView.addSubview(input)
        //: return input
        return input
        //: }()
    }()

    //: lazy var recordButton: UIButton = {
    lazy var recordButton: UIButton = {
        //: let record = UIButton.init()
        let record = UIButton()
        //: record.setTitle("Hold to talk".localized, for: .normal)
        record.setTitle((String(dataRangeTitle) + String(const_managerTitle)).localized, for: .normal)
        //: record.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 16)
        record.titleLabel?.font = .clickLarge(type: .Regular, fontSize: 16)
        //: record.setTitleColor(UIColor.appTitleColor(), for: .normal)
        record.setTitleColor(UIColor.toEvent(), for: .normal)
        //: record.setBackgroundColor(color: .white, forState: .normal)
        record.lineClick(color: .white, forState: .normal)
        //: record.setBackgroundColor(color: .white, forState: .highlighted)
        record.lineClick(color: .white, forState: .highlighted)
        //: record.addTarget(self, action: #selector(recordBtnDown), for: .touchDown)
        record.addTarget(self, action: #selector(doToDown), for: .touchDown)
        //: record.addTarget(self, action: #selector(recordBtnUp), for: .touchUpInside)
        record.addTarget(self, action: #selector(topUp), for: .touchUpInside)
        //: record.addTarget(self, action: #selector(recordBtnCancel), for: [.touchUpOutside, .touchCancel])
        record.addTarget(self, action: #selector(dataFileLikeCancel), for: [.touchUpOutside, .touchCancel])
        //: record.addTarget(self, action: #selector(recordBtnExit), for: .touchDragExit)
        record.addTarget(self, action: #selector(evidenceWhen), for: .touchDragExit)
        //: record.addTarget(self, action: #selector(recordBtnEnter), for: .touchDragEnter)
        record.addTarget(self, action: #selector(recordStart), for: .touchDragEnter)
        //: record.layer.borderWidth = 1
        record.layer.borderWidth = 1
        //: record.layer.cornerRadius = 20
        record.layer.cornerRadius = 20
        //: record.layer.borderColor = UIColor.init(hex: "#DDDDDD")?.cgColor
        record.layer.borderColor = UIColor(hex: (String(kInputText.suffix(7))))?.cgColor

        //: record.isHidden = true
        record.isHidden = true
        //: record.clipsToBounds = true
        record.clipsToBounds = true
        //: contentView.addSubview(record)
        contentView.addSubview(record)
        //: contentView.bringSubviewToFront(record)
        contentView.bringSubviewToFront(record)
        //: return record
        return record
        //: }()
    }()

    //: lazy var giftView: TalkingChatGiftView = {
    lazy var giftView: HiddenViewDelegate = {
        //: var type = GiftViewStyle.normal
        var type = RefOutputStream.normal
        //: if inputStyle == .GroupChat {
        if inputStyle == .GroupChat {
            //: type = .groupChat
            type = .groupChat
        }
        //: let giftV = TalkingChatGiftView.init(style: type)
        let giftV = HiddenViewDelegate(style: type)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle)
        //: return giftV
        return giftV
        //: }()
    }()

    //: lazy var bottomView: UIView = {
    lazy var bottomView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: self.addSubview(view)
        self.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: deinit {
    deinit {
        //: _ = stopRecord()
        _ = release()
    }
}

//: extension TalkingChatInputView: UITextViewDelegate {
extension StateViewDelegate: UITextViewDelegate {
    //: func textViewDidEndEditing(_ textView: UITextView) {
    func textViewDidEndEditing(_: UITextView) {}

    //: func textViewDidChange(_ textView: UITextView) {
    func textViewDidChange(_: UITextView) {}

    //: func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    func textView(_: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        // 群聊@
        //: if self.inputStyle == .GroupChat && text == "@" && calculateAtCount() < 10 {
        if self.inputStyle == .GroupChat && text == "@" && reasonFit() < 10 {
            //: self.delegate?.func__selectMentionUser(range: NSRange(location: range.location, length: text.utf16.count))
            self.delegate?.ting(range: NSRange(location: range.location, length: text.utf16.count))
        }

        //: self.inputTextView.typingAttributes = self.inputAttr
        self.inputTextView.typingAttributes = self.inputAttr

        //: return true
        return true
    }

    //: func func__updateInputContentView() {
    func signal() {
        //: let textSize = inputTextView.contentSize
        let textSize = inputTextView.contentSize
        //: let textHeight = max(40, min(100, textSize.height))
        let textHeight = max(40, min(100, textSize.height))
        //: inputTextView.snp.updateConstraints { make in
        inputTextView.snp.updateConstraints { make in
            //: make.height.equalTo(textHeight)
            make.height.equalTo(textHeight)
        }
        //: self.delegate?.inputViewHeightChanged(height: textHeight + kDeviceSafeBottomHeight + 58 + (self.quoteView.isHidden ? 0 : 36))
        self.delegate?.alongTask(height: textHeight + k_netId + 58 + (self.quoteView.isHidden ? 0 : 36))
    }

    //: @objc func keyboardWasShown(notification: NSNotification) {
    @objc func bindName(notification: NSNotification) {
        //: if !showOtherInputView {
        if !showOtherInputView {
            //: let info = notification.userInfo!
            let info = notification.userInfo!
            //: var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
            var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
            //: kbRect = self.convert(kbRect, from: nil)
            kbRect = self.convert(kbRect, from: nil)

            //: let height = kbRect.size.height
            let height = kbRect.size.height

            //: self.delegate?.heightToBottomChanged(heightToBottom: height)
            self.delegate?.lowAction(heightToBottom: height)
        }
    }

    //: @objc func keyboardWillBeHidden(notification: NSNotification) {
    @objc func notification(notification _: NSNotification) {
        //: self.delegate?.heightToBottomChanged(heightToBottom: 0)
        self.delegate?.lowAction(heightToBottom: 0)
    }
}

// MARK: - 发送文本

//: extension TalkingChatInputView {
extension StateViewDelegate {
    //: func func__sendTextStr() {
    func nextLanguage() {
        //: if self.inputStyle == .GroupChat {
        if self.inputStyle == .GroupChat { // 群聊
            //: let sendStr = self.handleSendText(text: self.inputTextView.attributedText)
            let sendStr = self.headAdd(text: self.inputTextView.attributedText)
            //: self.delegate?.func__sendTextMsg(msgStr: sendStr, quoteModel: quoteModel)
            self.delegate?.sinceFirst(msgStr: sendStr, quoteModel: quoteModel)
            //: self.inputTextView.attributedText = nil
            self.inputTextView.attributedText = nil
            //: self.inputTextView.font = self.inputAttr[NSAttributedString.Key.font] as? UIFont
            self.inputTextView.font = self.inputAttr[NSAttributedString.Key.font] as? UIFont
            //: self.inputTextView.textColor = self.inputAttr[NSAttributedString.Key.foregroundColor] as? UIColor
            self.inputTextView.textColor = self.inputAttr[NSAttributedString.Key.foregroundColor] as? UIColor

            //: } else {
        } else {
            //: self.delegate?.func__sendTextMsg(msgStr: inputTextView.text, quoteModel: quoteModel)
            self.delegate?.sinceFirst(msgStr: inputTextView.text, quoteModel: quoteModel)
        }
        //: self.quoteModel = nil
        self.quoteModel = nil
        //: self.inputTextView.text = ""
        self.inputTextView.text = ""
    }
}

// MARK: - 输入内容时停顿间隔检测

//: extension TalkingChatInputView {
extension StateViewDelegate {
    /// 取消超时检测
    //: private func interval_cancelPreviousPerformRequest() {
    private func videoView() {
        //: NSObject.cancelPreviousPerformRequests(withTarget: self,
        NSObject.cancelPreviousPerformRequests(withTarget: self,
                                               //: selector: #selector(interval_checkInputContent),
                                               selector: #selector(alongObserverButton),
                                               //: object: self.inputTextView)
                                               object: self.inputTextView)
    }

    /// 开启超时检测
    //: private func interval_startPerformRequest() {
    private func start() {
        //: self.perform(#selector(interval_checkInputContent), with: self.inputTextView, afterDelay: 0.5)
        self.perform(#selector(alongObserverButton), with: self.inputTextView, afterDelay: 0.5)
    }

    /// 输入内容间隔超过1秒
    //: @objc private func interval_checkInputContent() {
    @objc private func alongObserverButton() {
        //: self.delegate?.func_inputContentIntervalOneSecond()
        self.delegate?.sectionTarget()
    }
}

// MARK: - 群聊

//: extension TalkingChatInputView {
extension StateViewDelegate {
    /// 检测群聊@ 人数
    //: private func calculateAtCount() -> Int {
    private func reasonFit() -> Int {
        //: var count = 0
        var count = 0
        //: guard let attrText = self.inputTextView.attributedText else { return count }
        guard let attrText = self.inputTextView.attributedText else { return count }
        //: attrText.enumerateAttributes(in: NSRange(location: 0, length: attrText.length), using: { attrs, range, stop in
        attrText.enumerateAttributes(in: NSRange(location: 0, length: attrText.length), using: { attrs, _, _ in
            //: if attrs.keys.contains(NSAttributedString.Key.attachment) {
            if attrs.keys.contains(NSAttributedString.Key.attachment) {
                //: count += 1
                count += 1
            }
            //: })
        })

        //: if count >= 10 {
        if count >= 10 {
            //: self.func__showStatusBarErrorMsg(showMsg: "A maximum of 10 people can be @ one message".localized)
            self.drawObserver(showMsg: String(bytes: dataModelTitle.map{screenValue(off: $0)}, encoding: .utf8)!.localized)
        }

        //: return count
        return count
    }

    /// 替换@ 消息为富文本
    //: func receiveAtInfo(range: NSRange?, dict: [String: Any]) {
    func upDict(range: NSRange?, dict: [String: Any]) {
        //: guard calculateAtCount() < 10 else { return }
        guard reasonFit() < 10 else { return }
        //: var atRange = range
        var atRange = range
        //: if atRange != nil {
        if atRange != nil { // 输入框@
            //: if atRange!.location > 0 && (atRange!.length + atRange!.location > self.inputTextView.text.count) {
            if atRange!.location > 0, atRange!.length + atRange!.location > self.inputTextView.text.count {
//                    atRange!.location -= 1
            }
            //: } else {
        } else { // 操作面板@ Ta
            //: atRange = NSRange(location: self.inputTextView.attributedText.length, length: 0)
            atRange = NSRange(location: self.inputTextView.attributedText.length, length: 0)
        }

        //: let atStr: String = "@\(dict["name"] ?? "")"
        let atStr = "@\(dict[(notiItemIndexFromKey.replacingOccurrences(of: "label", with: "m"))] ?? "")"
        //: let label = UILabel()
        let label = UILabel()
        //: label.textColor = UIColor.RGBA(0, 132, 255, 1)
        label.textColor = UIColor.loadRgba(0, 132, 255, 1)
        //: label.font = UIFont.systemFont(ofSize: 16)
        label.font = UIFont.systemFont(ofSize: 16)
        //: label.text = atStr
        label.text = atStr
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.sizeToFit()
        label.sizeToFit()
        //: let renderer = UIGraphicsImageRenderer(size: label.bounds.size)
        let renderer = UIGraphicsImageRenderer(size: label.bounds.size)
        //: let image = renderer.image { context in
        let image = renderer.image { context in
            //: label.layer.render(in: context.cgContext)
            label.layer.render(in: context.cgContext)
        }

        //: let textAtta = TalkingTextAttachment()
        let textAtta = StartKingfisherCompatible()
        //: textAtta.bounds = CGRect(x: 0, y: label.font.descender,
        textAtta.bounds = CGRect(x: 0, y: label.font.descender,
                                 //: width: image.size.width,
                                 width: image.size.width,
                                 //: height: image.size.height)
                                 height: image.size.height)
        //: textAtta.image = image
        textAtta.image = image
        //: var atInfo = dict
        var atInfo = dict
        //: atInfo["length"] = atStr.count
        atInfo[(show_managerKey.replacingOccurrences(of: "size", with: "g") + notiVideoPath.replacingOccurrences(of: "station", with: "h"))] = atStr.count
        //: textAtta.atInfo = atInfo
        textAtta.atInfo = atInfo

        //: let attaImage = NSAttributedString(attachment: textAtta)
        let attaImage = NSAttributedString(attachment: textAtta)
        //: let attrText = NSMutableAttributedString(attributedString: self.inputTextView.attributedText)
        let attrText = NSMutableAttributedString(attributedString: self.inputTextView.attributedText)
        //: attrText.replaceCharacters(in: atRange!, with: attaImage)
        attrText.replaceCharacters(in: atRange!, with: attaImage)
        //: self.inputTextView.attributedText = attrText
        self.inputTextView.attributedText = attrText
    }

    /// 发送消息处理富文本
    //: private func handleSendText(text: NSAttributedString?) -> String {
    private func headAdd(text: NSAttributedString?) -> String {
        //: var mText: NSMutableAttributedString!
        var mText: NSMutableAttributedString!
        //: if text == nil {
        if text == nil {
            //: mText = NSMutableAttributedString(string: "")
            mText = NSMutableAttributedString(string: "")
            //: } else {
        } else {
            //: mText = NSMutableAttributedString(attributedString: text!)
            mText = NSMutableAttributedString(attributedString: text!)
        }

        //: var string = String()
        var string = String()
        //: if self.inputStyle == .GroupChat {
        if self.inputStyle == .GroupChat {
            //: self.atArr.removeAll()
            self.atArr.removeAll()
            //: mText.enumerateAttributes(in: NSRange(location: 0, length: mText.length)) { attrs, range, stop in
            mText.enumerateAttributes(in: NSRange(location: 0, length: mText.length)) { attrs, range, _ in
                //: let atta = attrs[NSAttributedString.Key.attachment] as? TalkingTextAttachment
                let atta = attrs[NSAttributedString.Key.attachment] as? StartKingfisherCompatible
                //: if atta != nil && range.length == 1 {
                if atta != nil && range.length == 1 {
                    //: if let name = atta!.atInfo["name"] {
                    if let name = atta!.atInfo[(notiItemIndexFromKey.replacingOccurrences(of: "label", with: "m"))] {
                        //: let str = "<at>@\(name)</at> "
                        let str = "<at>@\(name)</at> "
                        //: string.append(str)
                        string.append(str)
                        //: self.atArr.append(atta!.atInfo["uid"]! as! String)
                        self.atArr.append(atta!.atInfo[(constPointUrl.replacingOccurrences(of: "manager", with: "d"))]! as! String)
                    }
                    //: } else {
                } else {
                    //: let str = mText.attributedSubstring(from: range).string
                    let str = mText.attributedSubstring(from: range).string
                    //: string.append(str)
                    string.append(str)
                }
            }
            //: } else {
        } else {
            //: string = mText.string
            string = mText.string
        }

        //: return string
        return string
    }
}

// MARK: - 礼物

//: extension TalkingChatInputView {
extension StateViewDelegate {
    //: @objc func clickgiftBtn() {
    @objc func blockChange() {
        //: var type = GiftViewStyle.normal
        var type = RefOutputStream.normal
        //: if inputStyle == .GroupChat {
        if inputStyle == .GroupChat {
            //: type = .groupChat
            type = .groupChat
        }
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: type, completion: {
        NumberryReactiveCompatible.share.messageMatch(type: type, completion: {
            //: self.func__showGiftChoiceView()
            self.allBridePrice()
            //: })
        })
    }

    //: func func__showGiftChoiceView() {
    func allBridePrice() {
        //: showOtherInputView = true
        showOtherInputView = true
        //: inputTextView.resignFirstResponder()
        inputTextView.resignFirstResponder()
        //: giftView.updateGiftInfo(needReload: true, mf_coin: PunctuateThen.share.loginUserMode.mf_coin)
        giftView.upWill(needReload: true, mf_coin: PunctuateThen.share.loginUserMode.mf_coin)
        //: if self.inputStyle == .GroupChat {
        if self.inputStyle == .GroupChat {
            //: giftView.chatRoomID = self.chatRoomID
            giftView.chatRoomID = self.chatRoomID
            //: giftView.setSeleteMemberList()
            giftView.rowPhone()
        }
        //: currentViewController()?.view.addSubview(giftView)
        occurrentWith()?.view.addSubview(giftView)
        //: giftView.showView()
        giftView.tillSum()
    }
}

// MARK: - 语音

//: extension TalkingChatInputView {
extension StateViewDelegate {
    //: @objc func clickVoiceBtn(sender: UIButton) {
    @objc func lineWith(sender: UIButton) {
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { [weak self]  (isOpen: Bool) in
        CustomPermissionTool.contextBag(true) { [weak self] (isOpen: Bool) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if isOpen {
            if isOpen {
                //: sender.isSelected = !sender.isSelected
                sender.isSelected = !sender.isSelected
                //: if sender.isSelected {
                if sender.isSelected {
                    //: sender.setImage(UIImage.BundleImageNamed(name: "btn_talk_keyboard_nor"), for: .normal)
                    sender.setImage(UIImage.thoughtImageBundleSizeText(name: (String(mainSlideCenterValue.prefix(5)) + show_largePath.replacingOccurrences(of: "frame", with: "k") + String(k_valueTempPath.suffix(4)) + "board" + String(show_productPath.prefix(4)))), for: .normal)
                    //: sender.setImage(UIImage.BundleImageNamed(name: "btn_talk_keyboard_pre"), for: .highlighted)
                    sender.setImage(UIImage.thoughtImageBundleSizeText(name: (String(notiStyleMsg) + main_hockeyValue.replacingOccurrences(of: "observer", with: "oa") + "_pre")), for: .highlighted)
                    //: self.recordButton.isHidden = false
                    self.recordButton.isHidden = false
                    //: self.quoteView.isHidden = true
                    self.quoteView.isHidden = true
                    //: self.inputTextView.resignFirstResponder()
                    self.inputTextView.resignFirstResponder()
                    //: } else {
                } else {
                    //: sender.setImage(UIImage.BundleImageNamed(name: "btn_talk_voice_nor"), for: .normal)
                    sender.setImage(UIImage.thoughtImageBundleSizeText(name: (String(showCornerTitle.suffix(9)) + String(user_femaleFormat))), for: .normal)
                    //: sender.setImage(UIImage.BundleImageNamed(name: "btn_talk_voice_pre"), for: .highlighted)
                    sender.setImage(UIImage.thoughtImageBundleSizeText(name: (String(data_nameValue.prefix(8)) + String(app_indexName.suffix(5)) + String(dataTitleKindMsg.suffix(5)))), for: .highlighted)
                    //: self.recordButton.isHidden = true
                    self.recordButton.isHidden = true
                    //: self.inputTextView.becomeFirstResponder()
                    self.inputTextView.becomeFirstResponder()
                    //: self.quoteView.isHidden = (self.quoteModel == nil)
                    self.quoteView.isHidden = (self.quoteModel == nil)
                }
                //: } else {
            } else {
                //: self.inputTextView.resignFirstResponder()
                self.inputTextView.resignFirstResponder()
            }
        }
    }

    //: @objc func recordBtnDown() {
    @objc func doToDown() {
        //: guard TalkingSocketManager.shared.workSpace == false else {
        guard WrittenRecordSocketDelegate.shared.workSpace == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.drawObserver(showMsg: mainKeyTransformMsg)
            //: return
            return
        }

        //: recordView = TalkingChatRecordView()
        recordView = GestureReactiveCompatible()
        //: recordView?.frame = UIScreen.main.bounds
        recordView?.frame = UIScreen.main.bounds
        //: self.window?.addSubview(recordView!)
        self.window?.addSubview(recordView!)
        //: recordView?.showView()
        recordView?.metadata()
        //: recordView?.setRecordStatus(status: .recording)
        recordView?.localMake(status: .recording)

        //: recordStartTime = NSDate.init()
        recordStartTime = NSDate()

        //: recordView?.setRecordStatus(status: .recording)
        recordView?.localMake(status: .recording)

        //: startRecord()
        allGift()
        //: self.delegate?.func__starRecordBtnDown()
        self.delegate?.prevalence()
    }

    //: @objc func recordBtnCancel() {
    @objc func dataFileLikeCancel() {
        //: guard TalkingSocketManager.shared.workSpace == false else { return }
        guard WrittenRecordSocketDelegate.shared.workSpace == false else { return }
        //: recordView?.hidenView()
        recordView?.startValue()
        //: cancelRecord(isTooLong: false)
        saveHandleLong(isTooLong: false)
    }

    //: @objc func recordBtnExit() {
    @objc func evidenceWhen() {
        //: guard TalkingSocketManager.shared.workSpace == false else { return }
        guard WrittenRecordSocketDelegate.shared.workSpace == false else { return }
        //: recordView?.setRecordStatus(status: .cancel)
        recordView?.localMake(status: .cancel)
    }

    //: @objc func recordBtnEnter() {
    @objc func recordStart() {
        //: guard TalkingSocketManager.shared.workSpace == false else { return }
        guard WrittenRecordSocketDelegate.shared.workSpace == false else { return }
        //: recordView?.setRecordStatus(status: .recording)
        recordView?.localMake(status: .recording)
    }

    //: @objc func recordBtnUp() {
    @objc func topUp() {
        //: guard TalkingSocketManager.shared.workSpace == false else { return }
        guard WrittenRecordSocketDelegate.shared.workSpace == false else { return }

        //: if (AVAudioSession.sharedInstance().recordPermission == .denied) {
        if AVAudioSession.sharedInstance().recordPermission == .denied {
            //: return
            return
        }
        //: let cunrren = NSDate.init()
        let cunrren = NSDate()
        //: let interval: TimeInterval = cunrren.timeIntervalSince1970 - recordStartTime.timeIntervalSince1970
        let interval: TimeInterval = cunrren.timeIntervalSince1970 - recordStartTime.timeIntervalSince1970

        //: if (interval < 1.0 || interval > RecordMaxDuration) {
        if interval < 1.0 || interval > RecordMaxDuration {
            //: if(interval < 1.0) {
            if interval < 1.0 {
                //: recordView?.setRecordStatus(status: .tooShoot)
                recordView?.localMake(status: .tooShoot)
                //: } else {
            } else {
                //: recordView?.setRecordStatus(status: .tooLong)
                recordView?.localMake(status: .tooLong)
            }

            //: cancelRecord(isTooLong: interval > RecordMaxDuration)
            saveHandleLong(isTooLong: interval > RecordMaxDuration)

            //: recordView?.hidenView()
            recordView?.startValue()
            //: } else {
        } else {
            //: recordView?.hidenView()
            recordView?.startValue()
            //: let path = stopRecord()
            let path = release()
            //: if path.isEmpty == false {
            if path.isEmpty == false {
                //: self.delegate? .func__sendVoiceMsg(voicePath: path, voiceTime: Int(interval))
                self.delegate?.example(voicePath: path, voiceTime: Int(interval))
            }
        }
    }

    /// 开始录音
    //: func startRecord() {
    func allGift() {
        //: let session = AVAudioSession.sharedInstance()
        let session = AVAudioSession.sharedInstance()
        //: do {
        do {
            //: try session.setCategory(AVAudioSession.Category.playAndRecord)
            try session.setCategory(AVAudioSession.Category.playAndRecord)
            //: try session.setActive(true)
            try session.setActive(true)
            //: } catch {
        } catch {}

        //: let recordSetting  = [
        let recordSetting = [
            // 编码格式
            //: AVFormatIDKey: kAudioFormatLinearPCM,
            AVFormatIDKey: kAudioFormatLinearPCM,
            // 采样率
            //: AVSampleRateKey: NSNumber(value: 8000.00),
            AVSampleRateKey: NSNumber(value: 8000.00),
            // 通道数
            //: AVNumberOfChannelsKey: NSNumber(value: 1),
            AVNumberOfChannelsKey: NSNumber(value: 1),
            // 采样位数
            //: AVLinearPCMBitDepthKey: NSNumber(value: 16),
            AVLinearPCMBitDepthKey: NSNumber(value: 16),
            // 录音质量
            //: AVEncoderAudioQualityKey: NSNumber(value: AVAudioQuality.high.rawValue)
            AVEncoderAudioQualityKey: NSNumber(value: AVAudioQuality.high.rawValue), // 录音质量

            //: ] as [String: Any]
        ] as [String: Any]

        //: let path =  getVoiceRecordLocalPathWithFileType(path: "wav")
        let path = fastener(path: (String(notiOpMessage)) as NSString)
        //: let url = URL.init(fileURLWithPath: path)
        let url = URL(fileURLWithPath: path)

        //: do {
        do {
            //: try  recorder = AVAudioRecorder.init(url: url, settings: recordSetting)
            try recorder = AVAudioRecorder(url: url, settings: recordSetting)
            //: recorder?.isMeteringEnabled = true
            recorder?.isMeteringEnabled = true
            //: recorder?.prepareToRecord()
            recorder?.prepareToRecord()
            //: recorder?.record()
            recorder?.record()
            //: recorder?.updateMeters()
            recorder?.updateMeters()
            //: duration = 0
            duration = 0

            //: recordTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(recordTick(time:)), userInfo: nil, repeats: true)
            recordTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(makeShared(time:)), userInfo: nil, repeats: true)
            //: if let curTime: Timer = recordTimer {
            if let curTime: Timer = recordTimer {
                //: RunLoop.main.add(curTime, forMode: .common)
                RunLoop.main.add(curTime, forMode: .common)
            }
            //: } catch {
        } catch {}
    }

    //: @objc func recordTick(time: Timer) {
    @objc func makeShared(time _: Timer) {
        //: recorder?.updateMeters()
        recorder?.updateMeters()
        //: let interval = recorder?.currentTime ?? 0
        let interval = recorder?.currentTime ?? 0
        //: duration += 1
        duration += 1

        //: recordView?.durationLabel.text = String(duration)
        recordView?.durationLabel.text = String(duration)

        // 超时自动发送
        //: if interval>RecordMaxDuration {
        if interval > RecordMaxDuration {
            //: let path =  stopRecord()
            let path = release()
            //: recordView?.setRecordStatus(status: .tooLong)
            recordView?.localMake(status: .tooLong)

            //: DispatchQueue.main.asyncAfter(deadline: .now()+1.0, execute: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                //: self.recordView?.hidenView()
                self.recordView?.startValue()
                //: })
            }
            //: if path.isEmpty == false {
            if path.isEmpty == false {
                //: self.delegate? .func__sendVoiceMsg(voicePath: path, voiceTime: 30)
                self.delegate?.example(voicePath: path, voiceTime: 30)
            }
        }
    }

    //: func stopRecord()->String {
    func release() -> String {
        //: if recordTimer != nil {
        if recordTimer != nil {
            //: recordTimer?.invalidate()
            recordTimer?.invalidate()
            //: recordTimer = nil
            recordTimer = nil
        }
        //: if recorder?.isRecording != false {
        if recorder?.isRecording != false {
            //: recorder?.stop()
            recorder?.stop()
        }
        //: return recorder?.url.path ?? ""
        return recorder?.url.path ?? ""
    }

    //: func getVoiceRecordLocalPathWithFileType(path: NSString) -> String {
    func fastener(path: NSString) -> String {
        //: if !FileManager.default.fileExists(atPath: Talking_Chat_record_SandboxPath) {
        if !FileManager.default.fileExists(atPath: k_failureTitle) {
            //: do {
            do {
                //: try FileManager.default.createDirectory(atPath: Talking_Chat_record_SandboxPath, withIntermediateDirectories: true, attributes: nil)
                try FileManager.default.createDirectory(atPath: k_failureTitle, withIntermediateDirectories: true, attributes: nil)
                //: }catch {
            } catch {}
        }

        //: let timestr = NSDate.timeIntervalSinceReferenceDate
        let timestr = NSDate.timeIntervalSinceReferenceDate
        //: let uid = PunctuateThen.share.loginUserMode.userID
        let uid = PunctuateThen.share.loginUserMode.userID
        //: if uid.count == 0 { return "" }
        if uid.count == 0 { return "" }

        //: return Talking_Chat_record_SandboxPath + "_" + uid + "_" + String(Int(timestr)) + "." + (path as String)
        return k_failureTitle + "_" + uid + "_" + String(Int(timestr)) + "." + (path as String)
    }

    //: func cancelRecord(isTooLong: Bool) {
    func saveHandleLong(isTooLong: Bool) {
        //: if recordTimer != nil {
        if recordTimer != nil {
            //: recordTimer?.invalidate()
            recordTimer?.invalidate()
            //: recordTimer = nil
            recordTimer = nil
        }
        //: if recorder?.isRecording != false {
        if recorder?.isRecording != false {
            //: recorder?.stop()
            recorder?.stop()
        }

        //: if isTooLong {
        if isTooLong {
            //: return
            return
        }
        //: let path = recorder?.url.path
        let path = recorder?.url.path
        //: if FileManager.default.fileExists(atPath: path!) {
        if FileManager.default.fileExists(atPath: path!) {
            //: do {
            do {
                //: try FileManager.default.removeItem(atPath: path!)
                try FileManager.default.removeItem(atPath: path!)
                //: }catch {
            } catch {}
        }
    }
}
