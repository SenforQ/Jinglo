
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let main_countName:[UInt8] = [0xcf,0xd4,0xcf,0xda,0x8e,0xc9,0xd5,0xca,0xcb,0xd8,0xa0,0x8f,0x86,0xce,0xc7,0xd9,0x86,0xd4,0xd5,0xda,0x86,0xc8,0xcb,0xcb,0xd4,0x86,0xcf,0xd3,0xd6,0xd2,0xcb,0xd3,0xcb,0xd4,0xda,0xcb,0xca]

fileprivate func theoreticalAccount(price num: UInt8) -> UInt8 {
    let value = Int(num) - 102
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_recording" :*/
fileprivate let showHoneyPath:String = "btn_relet let"

/*: "btn_marching" :*/
fileprivate let data_colorText:String = "hidden"
fileprivate let app_boardPath:String = "half self to showtn_m"

/*: "btn_upload" :*/
fileprivate let userModelMsg:String = "btn_udown model"

/*: "btn_audition" :*/
fileprivate let k_frontName:String = "top data layer textbtn_"
fileprivate let main_modelTitle:[Character] = ["o","n"]

/*: "Click to listen" :*/
fileprivate let kRequestIconName:[Character] = ["C","l","i","c","k"," "]
fileprivate let kDataOriginalUrl:[Character] = ["t","o"," ","l","i","s","t","e","n"]

/*: "Click to start recording" :*/
fileprivate let data_messageCurrentName:String = "format varClic"
fileprivate let mainBeginRawServiceName:String = "model fataltart "
fileprivate let k_centerPath:String = "rhiddening"

/*: "00:00" :*/
fileprivate let show_errorData:String = "should:should"

/*: "brn_cycle" :*/
fileprivate let dataHomeTitle:String = "brn_cycexplain mode"
fileprivate let kValuePath:String = "colore"

/*: "Come back" :*/
fileprivate let showAddTitle:String = "Come bacdata in size"
fileprivate let kWithUrl:String = "from"

/*: "btn_submit" :*/
fileprivate let main_indexMessage:[Character] = ["b","t","n","_","s"]
fileprivate let mainLeadingValue:[Character] = ["u","b","m","i","t"]

/*: "Submit" :*/
fileprivate let data_userMessage:String = "make var beauty err listSubmit"

/*: "Click to finish recording" :*/
fileprivate let k_viewTitle:[Character] = ["C","l","i","c","k"," ","t","o"," ","f","i","n","i","s","h"]
fileprivate let showExtraValue:String = "model try color let if rec"
fileprivate let dataAcceptLayerBagFormat:[Character] = ["o","r","d","i","n","g"]

/*: "Under time" :*/
fileprivate let const_timeLeadingFormat:[Character] = ["U","n","d","e","r"," ","t"]
fileprivate let const_arrayId:String = "ivideo"

/*: "Click to pause" :*/
fileprivate let main_titleValue:[Character] = ["C","l","i","c","k"," ","t"]
fileprivate let notiTextMessage:String = "count burn class foro pause"

/*: "Click to play" :*/
fileprivate let constLabelText:[Character] = ["C","l","i","c","k"," ","t","o"," ","p"]
fileprivate let kTopHandlePath:[Character] = ["l","a","y"]

/*: "filePath" :*/
fileprivate let noti_dataName:[UInt8] = [0x68,0x74,0x61,0x50,0x65,0x6c,0x69,0x66]

/*: "time" :*/
fileprivate let k_nameValue:[UInt8] = [0x65,0x6d,0x69,0x74]

/*: "Recording cancelled" :*/
fileprivate let k_equalRangeMsg:String = "guard transform view showRecor"
fileprivate let app_objectViewMessage:String = "makeled"

/*: "get json error" :*/
fileprivate let show_withName:String = "view other confirmget json "
fileprivate let userBlockPath:[Character] = ["e","r","r","o","r"]

/*: "%02d:%02d" :*/
fileprivate let mainHiddenKey:[Character] = ["%","0","2","d",":","%","0","2","d"]

/*: "btn_delete" :*/
fileprivate let k_randomFormat:String = "excepttn"
fileprivate let userAlreadyKey:[Character] = ["_","d","e","l","e","t","e"]

/*: "Add voice message" :*/
fileprivate let k_stickMessage:[Character] = ["A","d","d"," ","v","o","i","c","e"," ","m","e","s","s","a"]
fileprivate let appModelFormat:[Character] = ["g","e"]

/*: "Record a voice for 3-10s" :*/
fileprivate let main_viewImageName:String = "Recoimage to count conversation pair"
fileprivate let noti_valueFinishUrl:String = "request eventoice fo"
fileprivate let mainAddFormat:String = "tap let in extra maker 3-10s"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StateReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/13.
//

//: import UIKit
import UIKit

//: enum RecordSoundStatus: Int {
enum FugitiveEquatable: Int {
    //: case Record = 100
    case Record = 100
    //: case Listen
    case Listen
    //: case Reset
    case Reset
    //: case Finish
    case Finish
}

//: enum RecordState: Int {
enum SizeContentConvertible: Int {
    //: case ReadyToRecord = 0
    case ReadyToRecord = 0 /// 准备录音
    //: case Recording
    case Recording /// 录音中
    //: case RecordComplete
    case RecordComplete /// 录音完成
    //: case RecordWaitReply
    case RecordWaitReply /// 录音审核中
    //: case RecordPassed
    case RecordPassed /// 录音审核通过
}

//: typealias AudioFileUpload = (_ info: Dictionary<String, Any>) -> Void
typealias AudioFileUpload = (_ info: [String: Any]) -> Void

//: class TalkingGreetRecordAudioView: UIView {
class StateReactiveCompatible: UIView {
    //: var state: RecordState? = .ReadyToRecord
    var state: SizeContentConvertible? = .ReadyToRecord
    //: var didEnterBack = false
    var didEnterBack = false
    //: var tempTime = 0
    var tempTime = 0 /// 录音时长
    //: var filePath = ""
    var filePath = ""
    //: var audioFileUpload: AudioFileUpload?
    var audioFileUpload: AudioFileUpload?
    //: var popView: TalkingPopView?
    var popView: UserModelReactiveCompatible?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.noCell()
        //: self.setupSubViewsConstraint()
        self.photoSetup()
        //: self.bindInteraction()
        self.taskTheme()
        //: NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBack), name: UIApplication.didEnterBackgroundNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(of), name: UIApplication.didEnterBackgroundNotification, object: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: main_countName.map{theoreticalAccount(price: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var soundButton: UIButton = {
    lazy var soundButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_recording"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(showHoneyPath.prefix(6)) + "cording")), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_recording"), for: .highlighted)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(showHoneyPath.prefix(6)) + "cording")), for: .highlighted)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_marching"), for: .selected)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (data_colorText.replacingOccurrences(of: "hidden", with: "b") + String(app_boardPath.suffix(4)) + "arching")), for: .selected)
        //: btn.tag = RecordSoundStatus.Record.rawValue
        btn.tag = FugitiveEquatable.Record.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(showPlayer(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var listenButton: UIButton = {
    lazy var listenButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_upload"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(userModelMsg.prefix(5)) + "pload")), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_audition"), for: .selected)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(k_frontName.suffix(4)) + "auditi" + String(main_modelTitle))), for: .selected)
        //: btn.tag = RecordSoundStatus.Listen.rawValue
        btn.tag = FugitiveEquatable.Listen.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(showPlayer(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var listenLabel: UILabel = {
    lazy var listenLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lb.font = UIFont.clickLarge(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .hockeyPlayer()
        //: lb.text = "Click to listen".localized
        lb.text = (String(kRequestIconName) + String(kDataOriginalUrl)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var soundLabel: UILabel = {
    lazy var soundLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 17)
        lb.font = UIFont.clickLarge(type: .Regular, fontSize: 17)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .hockeyPlayer()
        //: lb.text = "Click to start recording".localized
        lb.text = (String(data_messageCurrentName.suffix(4)) + "k to s" + String(mainBeginRawServiceName.suffix(5)) + "reco" + k_centerPath.replacingOccurrences(of: "hidden", with: "d")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var timeLabel: UILabel = {
    lazy var timeLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 20)
        lb.font = UIFont.clickLarge(type: .Medium, fontSize: 20)
        //: lb.textColor = .appTitleColor()
        lb.textColor = .toEvent()
        //: lb.text = "00:00"
        lb.text = (show_errorData.replacingOccurrences(of: "should", with: "00"))
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var resetButton: UIButton = {
    lazy var resetButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "brn_cycle"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(dataHomeTitle.prefix(7)) + kValuePath.replacingOccurrences(of: "color", with: "l"))), for: .normal)
        //: btn.tag = RecordSoundStatus.Reset.rawValue
        btn.tag = FugitiveEquatable.Reset.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(showPlayer(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var resetLabel: UILabel = {
    lazy var resetLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lb.font = UIFont.clickLarge(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .hockeyPlayer()
        //: lb.text = "Come back".localized
        lb.text = (String(showAddTitle.prefix(8)) + kWithUrl.replacingOccurrences(of: "from", with: "k")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var finishButton: UIButton = {
    lazy var finishButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_submit"), for: .normal)
        btn.setImage(UIImage.thoughtImageBundleSizeText(name: (String(main_indexMessage) + String(mainLeadingValue))), for: .normal)
        //: btn.tag = RecordSoundStatus.Finish.rawValue
        btn.tag = FugitiveEquatable.Finish.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(showPlayer(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishLabel: UILabel = {
    lazy var finishLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lb.font = UIFont.clickLarge(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .hockeyPlayer()
        //: lb.text = "Submit".localized
        lb.text = (String(data_userMessage.suffix(6))).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var listenPlayer: SVGAPlayer = {
    lazy var listenPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var leftRecordPlayer: SVGAPlayer = {
    lazy var leftRecordPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var rightRecordPlayer: SVGAPlayer = {
    lazy var rightRecordPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var audioTool: TalkingAudioTool? = {
    lazy var audioTool: ViewLayerPlayerDelegate? = {
        //: let audioT = TalkingAudioTool.shared
        let audioT = ViewLayerPlayerDelegate.shared
        //: audioT.delegate = self
        audioT.delegate = self
        //: return audioT
        return audioT
        //: }()
    }()
}

//: extension TalkingGreetRecordAudioView {
extension StateReactiveCompatible {
    //: func showUIViaState() {
    func viaMedium() {
        //: switch self.state {
        switch self.state {
        //: case .ReadyToRecord:
        case .ReadyToRecord:
            //: self.listenButton.isHidden = true
            self.listenButton.isHidden = true
            //: self.listenLabel.isHidden = true
            self.listenLabel.isHidden = true
            //: self.resetButton.isHidden = true
            self.resetButton.isHidden = true
            //: self.resetLabel.isHidden = true
            self.resetLabel.isHidden = true
            //: self.finishButton.isHidden = true
            self.finishButton.isHidden = true
            //: self.finishLabel.isHidden = true
            self.finishLabel.isHidden = true
            //: self.soundButton.isHidden = false
            self.soundButton.isHidden = false
            //: self.soundLabel.isHidden = false
            self.soundLabel.isHidden = false

        //: break
        //: case .Recording:
        case .Recording:
            //: break
            break
        //: case .RecordComplete:
        case .RecordComplete:
            //: self.soundButton.isHidden = true
            self.soundButton.isHidden = true
            //: self.soundLabel.isHidden = true
            self.soundLabel.isHidden = true
            //: self.resetButton.isHidden = false
            self.resetButton.isHidden = false
            //: self.resetLabel.isHidden = false
            self.resetLabel.isHidden = false
            //: self.finishButton.isHidden = false
            self.finishButton.isHidden = false
            //: self.finishLabel.isHidden = false
            self.finishLabel.isHidden = false
            //: self.listenButton.isHidden = false
            self.listenButton.isHidden = false
            //: self.listenLabel.isHidden = false
            self.listenLabel.isHidden = false
        //: break
        //: case .RecordWaitReply, .RecordPassed:
        case .RecordWaitReply, .RecordPassed:
            //: self.listenButton.isHidden = false
            self.listenButton.isHidden = false
            //: self.listenLabel.isHidden = false
            self.listenLabel.isHidden = false
            //: self.resetButton.isHidden = false
            self.resetButton.isHidden = false
            //: self.resetLabel.isHidden = false
            self.resetLabel.isHidden = false
            //: self.finishButton.isHidden = true
            self.finishButton.isHidden = true
            //: self.finishLabel.isHidden = true
            self.finishLabel.isHidden = true
            //: self.soundButton.isHidden = true
            self.soundButton.isHidden = true
            //: self.soundLabel.isHidden = true
            self.soundLabel.isHidden = true
        //: break
        //: default: break
        default: break
        }
    }

    //: func releaseSoundView() {
    func moreTo() {
        //: self.audioTool?.delegate = nil
        self.audioTool?.delegate = nil
        //: self.audioTool?.stopRecord()
        self.audioTool?.errorList()
        //: stopPlay()
        anyEqual()
        //: self.audioTool?.destroy()
        self.audioTool?.beak()
        //: self.audioTool = nil
        self.audioTool = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: func record() {
    func onAddStatus() {
        //: leftRecordSVGAParser()
        comment()
        //: rightRecordSVGAParser()
        range()
        //: self.audioTool?.BeginRecord()
        self.audioTool?.dismissMake()
        //: stopPlay()
        anyEqual()
        //: self.soundLabel.text = "Click to finish recording".localized
        self.soundLabel.text = (String(k_viewTitle) + String(showExtraValue.suffix(4)) + String(dataAcceptLayerBagFormat)).localized
        //: self.state = .Recording
        self.state = .Recording
    }

    //: func stopRecord() {
    func asInfo() {
        //: self.soundButton.isSelected = false
        self.soundButton.isSelected = false
        //: self.leftRecordPlayer.stopAnimation()
        self.leftRecordPlayer.stopAnimation()
        //: self.rightRecordPlayer.stopAnimation()
        self.rightRecordPlayer.stopAnimation()
        //: self.audioTool?.stopRecord()
        self.audioTool?.errorList()

        //: if self.tempTime >= 3 {
        if self.tempTime >= 3 {
            //: self.state = .RecordComplete
            self.state = .RecordComplete
            //: showUIViaState()
            viaMedium()
            //: self.listenLabel.text = "Click to listen".localized
            self.listenLabel.text = (String(kRequestIconName) + String(kDataOriginalUrl)).localized
            //: }else {
        } else {
            //: self.soundLabel.text = "Click to start recording".localized
            self.soundLabel.text = (String(data_messageCurrentName.suffix(4)) + "k to s" + String(mainBeginRawServiceName.suffix(5)) + "reco" + k_centerPath.replacingOccurrences(of: "hidden", with: "d")).localized
            //: self.timeLabel.text = "00:00"
            self.timeLabel.text = (show_errorData.replacingOccurrences(of: "should", with: "00"))
            //: self.state = .ReadyToRecord
            self.state = .ReadyToRecord
            //: self.func__showStatusBarErrorMsg(showMsg: "Under time".localized)
            self.drawObserver(showMsg: (String(const_timeLeadingFormat) + const_arrayId.replacingOccurrences(of: "video", with: "me")).localized)
        }
    }

    //: func play() {
    func sound() {
        //: if filePath.count>1 {
        if filePath.count > 1 {
            //: self.audioTool?.play()
            self.audioTool?.feature()
            //: self.listenLabel.text = "Click to pause".localized
            self.listenLabel.text = (String(main_titleValue) + String(notiTextMessage.suffix(7))).localized
            //: listenSVGAParser()
            listenMake()
            //: }else {
        } else {
            //: tryToPlayRemoteAudio()
            dismissEnable()
        }
    }

    //: func stopPlay() {
    func anyEqual() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.audioTool?.stopPlay()
        self.audioTool?.content()
        //: var text = "Click to play".localized
        var text = (String(constLabelText) + String(kTopHandlePath)).localized
        //: if self.state == .RecordComplete {
        if self.state == .RecordComplete {
            //: text = "Click to listen".localized
            text = (String(kRequestIconName) + String(kDataOriginalUrl)).localized
        }
        //: self.listenLabel.text = text
        self.listenLabel.text = text
    }

    //: func reset() {
    func betweenUp() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.listenButton.isSelected = false
        self.listenButton.isSelected = false
        //: self.audioTool?.stopPlay()
        self.audioTool?.content()
        //: self.state = .ReadyToRecord
        self.state = .ReadyToRecord
        //: self.soundLabel.text = "Click to start recording".localized
        self.soundLabel.text = (String(data_messageCurrentName.suffix(4)) + "k to s" + String(mainBeginRawServiceName.suffix(5)) + "reco" + k_centerPath.replacingOccurrences(of: "hidden", with: "d")).localized
        //: self.timeLabel.text = "00:00"
        self.timeLabel.text = (show_errorData.replacingOccurrences(of: "should", with: "00"))

        //: showUIViaState()
        viaMedium()
    }

    //: func finish() {
    func component() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.listenButton.isSelected = false
        self.listenButton.isSelected = false
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.audioTool?.stopPlay()
        self.audioTool?.content()
        //: self.listenLabel.text = "Click to listen".localized
        self.listenLabel.text = (String(kRequestIconName) + String(kDataOriginalUrl)).localized
        //: if self.audioFileUpload != nil {
        if self.audioFileUpload != nil {
            //: let dict = ["filePath": self.filePath, "time": (self.tempTime).description]
            let dict = [String(bytes: noti_dataName.reversed(), encoding: .utf8)!: self.filePath, String(bytes: k_nameValue.reversed(), encoding: .utf8)!: (self.tempTime).description]
            //: self.audioFileUpload!(dict)
            self.audioFileUpload!(dict)
        }
    }

    //: func tryToPlayRemoteAudio() {
    func dismissEnable() {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            drawObserver(showMsg: show_limitMessage)
            //: self.listenButton.isSelected = false
            self.listenButton.isSelected = false
            //: return
            return
        }
        //: self.listenLabel.text = "Click to pause".localized
        self.listenLabel.text = (String(main_titleValue) + String(notiTextMessage.suffix(7))).localized
        //: listenSVGAParser()
        listenMake()
    }

    //: @objc func soundButtonAction(sender: UIButton) {
    @objc func showPlayer(sender: UIButton) {
        //: switch (sender.tag) {
        switch sender.tag {
        //: case RecordSoundStatus.Record.rawValue:
        case FugitiveEquatable.Record.rawValue:

            //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
            CustomPermissionTool.contextBag(true) { isOpen in
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                    self.drawObserver(showMsg: constChangeName)
                    //: return
                    return
                }
                //: sender.isSelected = !sender.isSelected
                sender.isSelected = !sender.isSelected
                //: if (sender.isSelected) {
                if sender.isSelected {
                    //: guard !TalkingSocketManager.shared.workSpace else {
                    guard !WrittenRecordSocketDelegate.shared.workSpace else {
                        //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                        self.drawObserver(showMsg: mainKeyTransformMsg)
                        //: sender.isSelected = false
                        sender.isSelected = false
                        //: return
                        return
                    }
                    //: self.record()
                    self.onAddStatus()
                    //: }else {
                } else {
                    //: self.stopRecord()
                    self.asInfo()
                }
            }
            //: break

        //: case RecordSoundStatus.Listen.rawValue:
        case FugitiveEquatable.Listen.rawValue:
            //: sender.isSelected = !sender.isSelected
            sender.isSelected = !sender.isSelected
            //: if sender.isSelected {
            if sender.isSelected {
                //: self.play()
                self.sound()
                //: }else {
            } else {
                //: self.stopPlay()
                self.anyEqual()
            }
                //: break

        //: case RecordSoundStatus.Reset.rawValue:
        case FugitiveEquatable.Reset.rawValue:
            //: reset()
            betweenUp()
                //: break

        //: case RecordSoundStatus.Finish.rawValue:
        case FugitiveEquatable.Finish.rawValue:
            //: finish()
            component()
        //: break
        //: default:
        default:
            //: break
            break
        }
    }

    //: @objc func closeButtonAction() {
    @objc func removeAction() {
        //: stopPlay()
        anyEqual()
        //: dismiss()
        shared()
    }

    //: @objc func appDidEnterBack() {
    @objc func of() {
        //: if self.state != .Recording {
        if self.state != .Recording {
            //: return
            return
        }
        //: self.func__showStatusBarErrorMsg(showMsg: "Recording cancelled")
        self.drawObserver(showMsg: (String(k_equalRangeMsg.suffix(5)) + "ding canc" + app_objectViewMessage.replacingOccurrences(of: "make", with: "el")))
        //: self.didEnterBack = true
        self.didEnterBack = true
        //: self.soundButton.isSelected = false
        self.soundButton.isSelected = false
        //: self.leftRecordPlayer.stopAnimation()
        self.leftRecordPlayer.stopAnimation()
        //: self.rightRecordPlayer.stopAnimation()
        self.rightRecordPlayer.stopAnimation()
        //: self.audioTool?.stopRecord()
        self.audioTool?.errorList()

        //: self.soundLabel.text = "Click to start recording".localized
        self.soundLabel.text = (String(data_messageCurrentName.suffix(4)) + "k to s" + String(mainBeginRawServiceName.suffix(5)) + "reco" + k_centerPath.replacingOccurrences(of: "hidden", with: "d")).localized
        //: self.timeLabel.text = "00:00"
        self.timeLabel.text = (show_errorData.replacingOccurrences(of: "should", with: "00"))
        //: self.state = .ReadyToRecord
        self.state = .ReadyToRecord
        //: showUIViaState()
        viaMedium()
    }

    //: func show() {
    func screen() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = UserModelReactiveCompatible(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.style(view: self)
        //: popView?.showInView(view: PublisherReactiveCompatible.getWindow())
        popView?.hadith(view: PublisherReactiveCompatible.exceptAction())
    }

    //: func dismiss() {
    func shared() {
        //: releaseSoundView()
        moreTo()
        //: popView?.dismissView()
        popView?.conversation()
        //: popView = nil
        popView = nil
    }

    /// 试听动效
    //: func listenSVGAParser() {
    func listenMake() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Greet_Corrugated_Yellow)
            let url = SkullSessionReactiveCompatible.default.region(type: .Greet_Corrugated_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.listenPlayer.videoItem = videoItem
                self.listenPlayer.videoItem = videoItem
                //: self.listenPlayer.startAnimation()
                self.listenPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(show_withName.suffix(9)) + String(userBlockPath)))
        }
    }

    /// 录音动效
    //: func leftRecordSVGAParser() {
    func comment() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            let url = SkullSessionReactiveCompatible.default.region(type: .Chat_Record_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.leftRecordPlayer.videoItem = videoItem
                self.leftRecordPlayer.videoItem = videoItem
                //: self.leftRecordPlayer.startAnimation()
                self.leftRecordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(show_withName.suffix(9)) + String(userBlockPath)))
        }
    }

    ///
    //: func rightRecordSVGAParser() {
    func range() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            let url = SkullSessionReactiveCompatible.default.region(type: .Chat_Record_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.rightRecordPlayer.videoItem = videoItem
                self.rightRecordPlayer.videoItem = videoItem
                //: self.rightRecordPlayer.startAnimation()
                self.rightRecordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(show_withName.suffix(9)) + String(userBlockPath)))
        }
    }
}

//: extension TalkingGreetRecordAudioView: TalkingAudioToolDelegate {
extension StateReactiveCompatible: SessionWithThen {
    /// 录音时间
    //: func func__recordTime(currentTime: Double) {
    func queryOf(currentTime: Double) {
        //: if currentTime > 10 {
        if currentTime > 10 {
            //: stopRecord()
            asInfo()
        }
        //: self.tempTime = Int(round(currentTime)) % 60
        self.tempTime = Int(round(currentTime)) % 60
        //: let currentTimeLabel = String.init(format: "%02d:%02d", Int(round(currentTime))/60, Int(round(currentTime))%60)
        let currentTimeLabel = String(format: "%02d:%02d", Int(round(currentTime)) / 60, Int(round(currentTime)) % 60)
        //: if self.tempTime > 10 {
        if self.tempTime > 10 {
            //: return
            return
        }
        //: self.timeLabel.text = currentTimeLabel
        self.timeLabel.text = currentTimeLabel
    }

    /// 播放时间
    //: func func__playTime(currentTime: Double) {
    func currentLive(currentTime: Double) {
        //: let currentTimeLabel = String.init(format: "%02d:%02d", Int(round(currentTime))/60, Int(round(currentTime))%60)
        let currentTimeLabel = String(format: "%02d:%02d", Int(round(currentTime)) / 60, Int(round(currentTime)) % 60)
        //: self.timeLabel.text = currentTimeLabel
        self.timeLabel.text = currentTimeLabel
    }

    /// 录音完毕的回调
    //: func func__recordFinishWithFile(filePath: String) {
    func withFollowOutTrademarkFileFuncSunnahStub(filePath: String) {
        //: if self.didEnterBack {
        if self.didEnterBack {
            //: self.didEnterBack = false
            self.didEnterBack = false
            //: return
            return
        }
        //: self.filePath = filePath
        self.filePath = filePath
        //: stopRecord()
        asInfo()
    }

    /// 播放完毕的回调
    //: func playerStatusChange(status: AudioPlayerStatus) {
    func targetFace(status: StateAudioDefaultsSerializable) {
        //: self.timeLabel.text = ""
        self.timeLabel.text = ""
        //: if status == .PlayerFinish {
        if status == .PlayerFinish {
            //: self.audioTool?.finishPlay()
            self.audioTool?.mixIn()
            //: self.listenButton.isSelected = false
            self.listenButton.isSelected = false
            //: self.listenPlayer.stopAnimation()
            self.listenPlayer.stopAnimation()
            //: self.listenLabel.text = self.state == .RecordComplete ? "Click to listen".localized : "Click to play".localized
            self.listenLabel.text = self.state == .RecordComplete ? (String(kRequestIconName) + String(kDataOriginalUrl)).localized : (String(constLabelText) + String(kTopHandlePath)).localized
            //: }else if status == .PlayerInterruption {
        } else if status == .PlayerInterruption {
            //: if self.filePath.count > 1 {
            if self.filePath.count > 1 {
                //: self.listenButton.isSelected = false
                self.listenButton.isSelected = false
                //: self.listenPlayer.stopAnimation()
                self.listenPlayer.stopAnimation()
                //: self.listenLabel.text = self.state == .RecordComplete ? "Click to listen".localized : "Click to play".localized
                self.listenLabel.text = self.state == .RecordComplete ? (String(kRequestIconName) + String(kDataOriginalUrl)).localized : (String(constLabelText) + String(kTopHandlePath)).localized
            }
        }
    }
}

//: extension TalkingGreetRecordAudioView {
extension StateReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func noCell() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(soundButton)
        contentView.addSubview(soundButton)
        //: contentView.addSubview(listenButton)
        contentView.addSubview(listenButton)
        //: contentView.addSubview(soundLabel)
        contentView.addSubview(soundLabel)
        //: contentView.addSubview(listenLabel)
        contentView.addSubview(listenLabel)
        //: contentView.addSubview(timeLabel)
        contentView.addSubview(timeLabel)
        //: contentView.addSubview(resetButton)
        contentView.addSubview(resetButton)
        //: contentView.addSubview(resetLabel)
        contentView.addSubview(resetLabel)
        //: contentView.addSubview(finishButton)
        contentView.addSubview(finishButton)
        //: contentView.addSubview(finishLabel)
        contentView.addSubview(finishLabel)
        //: contentView.addSubview(listenPlayer)
        contentView.addSubview(listenPlayer)
        //: contentView.addSubview(leftRecordPlayer)
        contentView.addSubview(leftRecordPlayer)
        //: contentView.addSubview(rightRecordPlayer)
        contentView.addSubview(rightRecordPlayer)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func photoSetup() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 275), height: actualWidth(w: 313)))
            make.size.equalTo(CGSize(width: actualWidth(w: 275), height: actualWidth(w: 313)))
        }
        //: let closeBtn = UIButton.init()
        let closeBtn = UIButton()
        //: closeBtn.setImage(UIImage.BundleImageNamed(name: "btn_delete"), for: .normal)
        closeBtn.setImage(UIImage.thoughtImageBundleSizeText(name: (k_randomFormat.replacingOccurrences(of: "except", with: "b") + String(userAlreadyKey))), for: .normal)
        //: closeBtn.addTarget(self, action: #selector(closeButtonAction), for: .touchUpInside)
        closeBtn.addTarget(self, action: #selector(removeAction), for: .touchUpInside)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.trailing.equalTo(-11)
            make.trailing.equalTo(-11)
            //: make.size.equalTo(CGSize.init(width: 18, height: 18))
            make.size.equalTo(CGSize(width: 18, height: 18))
        }

        //: let titleLb = UILabel.init()
        let titleLb = UILabel()
        //: titleLb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 20)
        titleLb.font = UIFont.clickLarge(type: .Semibold, fontSize: 20)
        //: titleLb.textColor = .appTitleColor()
        titleLb.textColor = .toEvent()
        //: titleLb.text = "Add voice message".localized
        titleLb.text = (String(k_stickMessage) + String(appModelFormat)).localized
        //: contentView.addSubview(titleLb)
        contentView.addSubview(titleLb)
        //: titleLb.snp.makeConstraints { make in
        titleLb.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: let explainLb = UILabel.init()
        let explainLb = UILabel()
        //: explainLb.font = UIFont.pingfangFont(type: .Regular, fontSize: 17)
        explainLb.font = UIFont.clickLarge(type: .Regular, fontSize: 17)
        //: explainLb.textColor = .appValueDetailColor()
        explainLb.textColor = .hockeyPlayer()
        //: explainLb.text = "Record a voice for 3-10s".localized
        explainLb.text = (String(main_viewImageName.prefix(4)) + "rd a v" + String(noti_valueFinishUrl.suffix(7)) + String(mainAddFormat.suffix(7))).localized
        //: contentView.addSubview(explainLb)
        contentView.addSubview(explainLb)
        //: explainLb.snp.makeConstraints { make in
        explainLb.snp.makeConstraints { make in
            //: make.top.equalTo(titleLb.snp.bottom).offset(9)
            make.top.equalTo(titleLb.snp.bottom).offset(9)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: soundButton.snp.makeConstraints { make in
        soundButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 66))
            make.bottom.equalTo(-actualWidth(w: 66))
            //: make.width.height.equalTo(actualWidth(w: 87))
            make.width.height.equalTo(actualWidth(w: 87))
        }
        //: listenButton.snp.makeConstraints { make in
        listenButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 66))
            make.bottom.equalTo(-actualWidth(w: 66))
            //: make.width.height.equalTo(actualWidth(w: 87))
            make.width.height.equalTo(actualWidth(w: 87))
        }
        //: soundLabel.snp.makeConstraints { make in
        soundLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 24))
            make.bottom.equalTo(-actualWidth(w: 24))
        }
        //: listenLabel.snp.makeConstraints { make in
        listenLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 24))
            make.bottom.equalTo(-actualWidth(w: 24))
        }
        //: timeLabel.snp.makeConstraints { make in
        timeLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(explainLb.snp.bottom).offset(36)
            make.top.equalTo(explainLb.snp.bottom).offset(36)
        }
        //: resetButton.snp.makeConstraints { make in
        resetButton.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.width.height.equalTo(actualWidth(w: 49))
            make.width.height.equalTo(actualWidth(w: 49))
            //: make.trailing.equalTo(soundButton.snp.leading).offset(-27)
            make.trailing.equalTo(soundButton.snp.leading).offset(-27)
        }
        //: resetLabel.snp.makeConstraints { make in
        resetLabel.snp.makeConstraints { make in
            //: make.centerX.equalTo(resetButton)
            make.centerX.equalTo(resetButton)
            //: make.centerY.equalTo(soundLabel)
            make.centerY.equalTo(soundLabel)
        }
        //: finishButton.snp.makeConstraints { make in
        finishButton.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.width.height.equalTo(actualWidth(w: 49))
            make.width.height.equalTo(actualWidth(w: 49))
            //: make.leading.equalTo(soundButton.snp.trailing).offset(27)
            make.leading.equalTo(soundButton.snp.trailing).offset(27)
        }
        //: finishLabel.snp.makeConstraints { make in
        finishLabel.snp.makeConstraints { make in
            //: make.centerX.equalTo(finishButton)
            make.centerX.equalTo(finishButton)
            //: make.centerY.equalTo(soundLabel)
            make.centerY.equalTo(soundLabel)
        }
        //: listenPlayer.snp.makeConstraints { make in
        listenPlayer.snp.makeConstraints { make in
            //: make.center.equalTo(soundButton)
            make.center.equalTo(soundButton)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 123), height: actualWidth(w: 123)))
            make.size.equalTo(CGSize(width: actualWidth(w: 123), height: actualWidth(w: 123)))
        }
        //: leftRecordPlayer.snp.makeConstraints { make in
        leftRecordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.trailing.equalTo(soundButton.snp.leading).offset(-12)
            make.trailing.equalTo(soundButton.snp.leading).offset(-12)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 66), height: actualWidth(w: 26)))
            make.size.equalTo(CGSize(width: actualWidth(w: 66), height: actualWidth(w: 26)))
        }
        //: rightRecordPlayer.snp.makeConstraints { make in
        rightRecordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.leading.equalTo(soundButton.snp.trailing).offset(12)
            make.leading.equalTo(soundButton.snp.trailing).offset(12)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 66), height: actualWidth(w: 26)))
            make.size.equalTo(CGSize(width: actualWidth(w: 66), height: actualWidth(w: 26)))
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func taskTheme() {
        //: showUIViaState()
        viaMedium()
    }
}
