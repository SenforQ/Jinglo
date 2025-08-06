
//: Declare String Begin

/*: ".wav" :*/
fileprivate let app_modelResultTitle:String = "type gift value view to.wav"

/*: "Documents/User/voice/" :*/
fileprivate let showTransformUrl:[Character] = ["D","o","c","u","m","e","n","t","s","/","U","s","e"]
fileprivate let kInfoValue:[Character] = ["r","/","v","o","i","c","e","/"]

/*: "Documents/User/record/" :*/
fileprivate let showObjectMessage:String = "Doculayer gift collection"
fileprivate let const_resultMessage:String = "/Useaction frame"
fileprivate let mainImageValue:String = "ord/license index title"

/*: "voice dataTaskDownloadFinish" :*/
fileprivate let showBlockTitle:[Character] = ["v","o","i","c","e"," ","d","a","t","a"]
fileprivate let notiExtraPath:String = "TaskDstyle video to reply pic"
fileprivate let notiStageId:String = "oadFinishgift first"

/*: "voice dataTaskDownloadCancel" :*/
fileprivate let const_dataTitle:String = "VOIC"
fileprivate let app_modeKey:String = "TaskDto make height list"
fileprivate let mainBottomPath:String = "alevel"
fileprivate let app_menuUserEqualValue:[Character] = ["C","a","n","c","e","l"]

/*: "voice dataTaskDownloadExpired" :*/
fileprivate let const_toPath:String = "view err return formatvoice "
fileprivate let notiTableData:String = "askDto m extension height return"
fileprivate let noti_editMessage:String = "oadExdata data thin video"
fileprivate let kFrontValue:String = "piquoteed"

/*: "voice dataTaskDownloadErro" :*/
fileprivate let data_formatValue:[Character] = ["v","o","i","c","e"," ","d","a","t","a","T","a","s","k"]
fileprivate let user_mainKey:String = "main styleDownl"
fileprivate let appFillUrl:[Character] = ["o","a","d","E","r","r","o"]

/*: "Play Error,File does not exist" :*/
fileprivate let notiBlockAspectPath:[Character] = ["P","l","a","y"," ","E","r","r","o","r",",","F","i","l"]
fileprivate let data_showMsg:String = "e doesgift var add true in"
fileprivate let show_allModelValue:String = " existleading clear shadow before"

/*: "Play Error,File expired" :*/
fileprivate let kKeyUrl:String = "Play Eprice model staff"
fileprivate let showObjectText:String = "edge string to inile e"
fileprivate let showIndicatorPath:[Character] = ["d"]

/*: "Play Error，Net error" :*/
fileprivate let main_fragmentPath:[Character] = ["P","l","a","y"," ","E","r","r","o","r","\u{ff0c}"]
fileprivate let kActualUrl:String = "true background gift backgroundNe"
fileprivate let main_labPath:String = "t errorlistener skin stop"

/*: "Currently in mute mode" :*/
fileprivate let k_listFormat:[Character] = ["C","u","r","r","e","n","t","l","y"," ","i","n"," ","m","u"]
fileprivate let k_locationValue:String = "fail giftte mode"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SectorThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/10.
//

//: import UIKit
import UIKit

/// 播放器状态
//: enum AudioMsgPlayStatus {
enum ViewPlayStatus {
    //: case Unknown
    case Unknown // 未开始
    //: case Waiting
    case Waiting // 等待中
    //: case Playing
    case Playing // 播放中
}

//: enum AudioPlayingErrorStatus: Int {
enum RangeSignedNumeric: Int {
    //: case AudioPlayerNil = 0
    case AudioPlayerNil = 0 // audioPlayer初始化失败，多半是路径下文件的问题
    //: case FileExpired = 1
    case FileExpired = 1 // 文件过期
    //: case TaskError = 2
    case TaskError = 2 // 下载报错
    //: case NotFileAtPath = 3
    case NotFileAtPath = 3 // 路径下文件不存在
    //: case FirstMuteTip = 100
    case FirstMuteTip = 100 // 静音提醒
}

//: class TalkingVoiceMsgPlayManager: NSObject {
class SectorThen: NSObject {
    //: static let shared = TalkingVoiceMsgPlayManager()
    static let shared = SectorThen()

    //: var  voiceDataList: [TalkingVoiceMsgPlayModel] = []
    var voiceDataList: [FailSizeThen] = []

    //: var playItemDic: Dictionary<String, TalkingVoiceMsgPlayModel> = [:]
    var playItemDic: [String: FailSizeThen] = [:]

    //: var audioPlayer: AVAudioPlayer?
    var audioPlayer: AVAudioPlayer?
    //: var playStatus: AudioMsgPlayStatus = .Unknown
    var playStatus: ViewPlayStatus = .Unknown
    //: var playIndex = 0
    var playIndex = 0 // 当前播放的下标
    //: var waitPlayID = ""   // 将要播放的主键id
    var waitPlayID = "" // 将要播放的主键id
    //: var clickCellId = ""   // 记录点击的
    var clickCellId = "" // 记录点击的
    //: var isMute = false
    var isMute = false // 是否静音，默认否

    //: private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()
    private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: initialization()
        finishedVideo()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: func initialization() {
    func finishedVideo() {
        //: self.voiceDataList.removeAll()
        self.voiceDataList.removeAll()
        //: self.playItemDic.removeAll()
        self.playItemDic.removeAll()
        //: self.playIndex = 0
        self.playIndex = 0
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension SectorThen {
    //: func stopAudioPlayer() {
    func toExecute() {
        //: if playStatus != .Unknown {
        if playStatus != .Unknown {
            //: for  model in voiceDataList {
            for model in voiceDataList {
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
            }
        }
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
    }

    /// 播放引用消息
    //: func starPlayReplyMsg(playModel: TalkingVoiceMsgPlayModel) {
    func jam(playModel: FailSizeThen) {
        //: stopAudioPlayer()
        toExecute()
        //: initialization()
        finishedVideo()
        //: voiceDataList.append(playModel)
        voiceDataList.append(playModel)
        //: let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        //: waitPlayID = playModel.db_voiceCacheWrap.msgId
        waitPlayID = playModel.db_voiceCacheWrap.msgId
        //: self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        //: let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        //: if status == DownloadTaskStatus.finish.rawValue ||
        if status == LogValueConvertible.finish.rawValue ||
            //: !dbFilePath.isEmpty && dbFilePath.hasSuffix(".wav")  {
            !dbFilePath.isEmpty && dbFilePath.hasSuffix((String(app_modelResultTitle.suffix(4))))
        {
            //: starPlayVoiceMsg(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            finishId(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            //: } else {
        } else {
            //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(playModel.db_voiceCacheWrap)
            let taskModel = LabelReactiveCompatible.failureModel(playModel.db_voiceCacheWrap)
            //: VoiceDownloadTaskManager.shared.addDownloadTasks([taskModel])
            StatusThen.shared.hideAddChange([taskModel])
        }
    }

    //: func starPlayMsg(msgArr: [TalkingVoiceMsgPlayModel]) {
    func dismissLoad(msgArr: [FailSizeThen]) {
        //: if msgArr.count == 0 {
        if msgArr.count == 0 {
            //: return
            return
        }
        //: stopAudioPlayer()
        toExecute()
        //: initialization()
        finishedVideo()
        //: voiceDataList += msgArr
        voiceDataList += msgArr
        //: var index = 0
        var index = 0
        //: var tempArray: [VoiceDownloadTaskModel] = []
        var tempArray: [LabelReactiveCompatible] = []
        //: var firstModel: TalkingVoiceMsgPlayModel?
        var firstModel: FailSizeThen?
        //: for model in msgArr {
        for model in msgArr {
            //: let bindWrap = WCDBVoiceMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let bindWrap = QueryQuantityoMsgTable.applicationClick(with: model.db_voiceCacheWrap.msgId)
            //: if bindWrap != nil {
            if bindWrap != nil {
                //: model.db_voiceCacheWrap = bindWrap!
                model.db_voiceCacheWrap = bindWrap!
            }
            //: let isMySend = (model.db_voiceCacheWrap.db_senduid == PunctuateThen.share.loginUserMode.userID)
            let isMySend = (model.db_voiceCacheWrap.db_senduid == PunctuateThen.share.loginUserMode.userID)
            //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if index == 0 {
            if index == 0 {
                //: waitPlayID = model.db_voiceCacheWrap.msgId
                waitPlayID = model.db_voiceCacheWrap.msgId
                //: if status == DownloadTaskStatus.finish.rawValue || isMySend {
                if status == LogValueConvertible.finish.rawValue || isMySend {
                    //: firstModel = model
                    firstModel = model
                }
                //: if (status != DownloadTaskStatus.finish.rawValue) {
                if status != LogValueConvertible.finish.rawValue {
                    //: if playStatus != .Unknown {
                    if playStatus != .Unknown {
                        //: model.activityShowStatus = 1
                        model.activityShowStatus = 1
                    }
                }
            }
            //: if status != DownloadTaskStatus.finish.rawValue && !isMySend {
            if status != LogValueConvertible.finish.rawValue, !isMySend {
                //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(model.db_voiceCacheWrap)
                let taskModel = LabelReactiveCompatible.failureModel(model.db_voiceCacheWrap)
                //: tempArray.append(taskModel)
                tempArray.append(taskModel)
            }
            //: index += 1
            index += 1
        }

        //: if firstModel != nil {
        if firstModel != nil {
            //: firstModel?.isPlayingStatus = 1
            firstModel?.isPlayingStatus = 1
            //: starPlayVoiceMsg(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
            finishId(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
        }
        //: VoiceDownloadTaskManager.shared.addDownloadTasks(tempArray)
        StatusThen.shared.hideAddChange(tempArray)
    }

    //: func starPlayVoiceMsg(filePath: String, msgID: String) {
    func finishId(filePath: String, msgID: String) {
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
        //: let model = self.playItemDic[msgID]
        let model = self.playItemDic[msgID]
        //: if model == nil {
        if model == nil {
            //: return
            return
        }
        //: var temfilePath = filePath
        var temfilePath = filePath
        //: let theFileName = (temfilePath as NSString).lastPathComponent
        let theFileName = (temfilePath as NSString).lastPathComponent

        // 重编译，相对路径会变
        //: if filePath.contains("Documents/User/voice/") {
        if filePath.contains((String(showTransformUrl) + String(kInfoValue))) {
            //: temfilePath = Talking_Chat_voice_SandboxPath + theFileName
            temfilePath = notiBarRecordFormat + theFileName
        }
        //: if filePath.contains("Documents/User/record/") {
        if filePath.contains((String(showObjectMessage.prefix(4)) + "ments" + String(const_resultMessage.prefix(4)) + "r/rec" + String(mainImageValue.prefix(4)))) {
            //: temfilePath = Talking_Chat_record_SandboxPath + theFileName
            temfilePath = k_failureTitle + theFileName
        }
        //: if !FileManager.fileManager.fileExists(atPath: temfilePath) {
        if !FileManager.fileManager.fileExists(atPath: temfilePath) {
            //: model?.isPlayingStatus = 2
            model?.isPlayingStatus = 2
            //: showToast(status: .NotFileAtPath)
            query(status: .NotFileAtPath)
            //: return
            return
        }
        //: model?.db_voiceCacheWrap.db_isRead = "1"
        model?.db_voiceCacheWrap.db_isRead = "1"
        //: WCDBVoiceMsgTable.db_updateVoiceMsg(model!.db_voiceCacheWrap)
        QueryQuantityoMsgTable.nearButton(model!.db_voiceCacheWrap)
        //: let session = AVAudioSession.sharedInstance()
        let session = AVAudioSession.sharedInstance()
        //: do {
        do {
            //: try session.setCategory(AVAudioSession.Category.ambient)
            try session.setCategory(AVAudioSession.Category.ambient)
            //: } catch {
        } catch {}
        //: let url = URL.init(fileURLWithPath: temfilePath)
        let url = URL(fileURLWithPath: temfilePath)
        //: do {
        do {
            //: try audioPlayer = AVAudioPlayer.init(contentsOf: url)
            try audioPlayer = AVAudioPlayer(contentsOf: url)
            //: } catch {
        } catch {}
        //: audioPlayer?.delegate = self
        audioPlayer?.delegate = self
        //: audioPlayer?.prepareToPlay()
        audioPlayer?.prepareToPlay()
        //: audioPlayer?.play()
        audioPlayer?.play()
        //: self.playStatus = .Playing
        self.playStatus = .Playing
        //: setMutedDetection()
        adhereQuantityeraction()
    }

    //: func addDaskManagerDelegate() {
    func viewSize() {
        //: stopAudioPlayer()
        toExecute()
        //: VoiceDownloadTaskManager.shared.delegate = self
        StatusThen.shared.delegate = self
    }

    //: func removeDaskManagerDelegate() {
    func words() {
        //: stopAudioPlayer()
        toExecute()
        //: VoiceDownloadTaskManager.shared.delegate = nil
        StatusThen.shared.delegate = nil
    }
}

//: extension TalkingVoiceMsgPlayManager: AVAudioPlayerDelegate {
extension SectorThen: AVAudioPlayerDelegate {
    //: func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
    func audioPlayerDidFinishPlaying(_: AVAudioPlayer, successfully flag: Bool) {
        //: let lastModel = voiceDataList[playIndex]
        let lastModel = voiceDataList[playIndex]
        //: lastModel.isPlayingStatus = 2
        lastModel.isPlayingStatus = 2
        //: if flag {
        if flag {
            //: if playIndex < voiceDataList.count - 1 {
            if playIndex < voiceDataList.count - 1 {
                //: playIndex += 1
                playIndex += 1
                //: let model = voiceDataList[playIndex]
                let model = voiceDataList[playIndex]
                //: let bindWrap = WCDBVoiceMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
                let bindWrap = QueryQuantityoMsgTable.applicationClick(with: model.db_voiceCacheWrap.msgId)
                //: if bindWrap != nil {
                if bindWrap != nil {
                    //: model.db_voiceCacheWrap = bindWrap!
                    model.db_voiceCacheWrap = bindWrap!
                    //: self.waitPlayID = bindWrap!.msgId
                    self.waitPlayID = bindWrap!.msgId
                }
                //: voiceDataList[playIndex] = model
                voiceDataList[playIndex] = model
                //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
                self.playItemDic[model.db_voiceCacheWrap.msgId] = model

                //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
                let status = Int(model.db_voiceCacheWrap.downloadStatus)
                //: if status == DownloadTaskStatus.finish.rawValue {
                if status == LogValueConvertible.finish.rawValue {
                    //: model.isPlayingStatus = 1
                    model.isPlayingStatus = 1
                    //: starPlayVoiceMsg(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    finishId(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    //: playStatus = .Waiting
                    playStatus = .Waiting
                    //: } else if (status == DownloadTaskStatus.error.rawValue) {
                } else if status == LogValueConvertible.error.rawValue {
                    //: self.showToast(status: .TaskError)
                    self.query(status: .TaskError)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.expired.rawValue) {
                } else if status == LogValueConvertible.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.query(status: .FileExpired)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.cancel.rawValue) {
                } else if status == LogValueConvertible.cancel.rawValue {
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                }

                //: } else {
            } else {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: stopAudioPlayer()
                toExecute()
            }
        }
    }

    //: func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer, error: Error?) {
    func audioPlayerDecodeErrorDidOccur(_: AVAudioPlayer, error: Error?) {
        //: printLog(message: error)
        printLog(message: error)
    }
}

// MARK: - KeyManagerDelegate

//: extension TalkingVoiceMsgPlayManager: VoiceDownloadTaskManagerDelegate {
extension SectorThen: KeyManagerDelegate {
    //: func voiceDownloadFinish(model: VoiceDownloadTaskModel) {
    func districtManager(model: LabelReactiveCompatible) {
        //: printLog(message: "voice dataTaskDownloadFinish")
        printLog(message: (String(showBlockTitle) + String(notiExtraPath.prefix(5)) + "ownl" + String(notiStageId.prefix(9))))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        delegateNext(taskModel: model)
    }

    //: func voiceDownloadCancel(model: VoiceDownloadTaskModel) {
    func eventDrag(model: LabelReactiveCompatible) {
        //: printLog(message: "voice dataTaskDownloadCancel")
        printLog(message: (const_dataTitle.lowercased() + "e data" + String(app_modeKey.prefix(5)) + "ownlo" + mainBottomPath.replacingOccurrences(of: "level", with: "d") + String(app_menuUserEqualValue)))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        delegateNext(taskModel: model)
    }

    //: func voiceDownloadExpired(model: VoiceDownloadTaskModel) {
    func mTheory(model: LabelReactiveCompatible) {
        //: printLog(message: "voice dataTaskDownloadExpired")
        printLog(message: (String(const_toPath.suffix(6)) + "dataT" + String(notiTableData.prefix(4)) + "ownl" + String(noti_editMessage.prefix(5)) + kFrontValue.replacingOccurrences(of: "quote", with: "r")))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        delegateNext(taskModel: model)
    }

    //: func voiceDownloading(model: VoiceDownloadTaskModel) {
    func activity(model _: LabelReactiveCompatible) {}

    //: func voiceDownloadError(model: VoiceDownloadTaskModel) {
    func errorModel(model: LabelReactiveCompatible) {
        //: printLog(message: "voice dataTaskDownloadErro")
        printLog(message: (String(data_formatValue) + String(user_mainKey.suffix(5)) + String(appFillUrl)))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        delegateNext(taskModel: model)
    }

    //: func handleDataTaskDownloadDelegate(taskModel: VoiceDownloadTaskModel) {
    func delegateNext(taskModel: LabelReactiveCompatible) {
        //: if voiceDataList.count  == 0 {
        if voiceDataList.count == 0 {
            //: return
            return
        }

        //: if self.waitPlayID == taskModel.taskId {
        if self.waitPlayID == taskModel.taskId {
            //: let model = self.voiceDataList[playIndex]
            let model = self.voiceDataList[playIndex]
            //: let warp = WCDBVoiceMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let warp = QueryQuantityoMsgTable.applicationClick(with: model.db_voiceCacheWrap.msgId)
            //: if warp != nil {
            if warp != nil {
                //: model.db_voiceCacheWrap = warp!
                model.db_voiceCacheWrap = warp!
            }
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if status == DownloadTaskStatus.finish.rawValue {
            if status == LogValueConvertible.finish.rawValue {
                //: model.isPlayingStatus = 1
                model.isPlayingStatus = 1
                //: starPlayVoiceMsg(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)
                finishId(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)

                //: } else if status == DownloadTaskStatus.error.rawValue ||
            } else if status == LogValueConvertible.error.rawValue ||
                //: status == DownloadTaskStatus.expired.rawValue ||
                status == LogValueConvertible.expired.rawValue ||
                //: status == DownloadTaskStatus.cancel.rawValue {
                status == LogValueConvertible.cancel.rawValue
            {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
                //: if status == DownloadTaskStatus.expired.rawValue {
                if status == LogValueConvertible.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.query(status: .FileExpired)
                    //: } else {
                } else {
                    //: self.showToast(status: .TaskError)
                    self.query(status: .TaskError)
                }
            }
            //: } else {
        } else {
            //: let warp = WCDBVoiceMsgTable.db_getVoiceMsg(with: taskModel.taskId)
            let warp = QueryQuantityoMsgTable.applicationClick(with: taskModel.taskId)
            //: let model = self.playItemDic[taskModel.taskId]
            let model = self.playItemDic[taskModel.taskId]
            //: if warp != nil {
            if warp != nil {
                //: model?.db_voiceCacheWrap = warp!
                model?.db_voiceCacheWrap = warp!
            }
        }
    }

    //: func showToast(status: AudioPlayingErrorStatus) {
    func query(status: RangeSignedNumeric) {
        //: var toastStr = ""
        var toastStr = ""
        //: switch status {
        switch status {
        //: case .NotFileAtPath, .AudioPlayerNil:
        case .NotFileAtPath, .AudioPlayerNil:
            //: toastStr = "Play Error,File does not exist".localized
            toastStr = (String(notiBlockAspectPath) + String(data_showMsg.prefix(6)) + " not" + String(show_allModelValue.prefix(6))).localized
        //: break
        //: case .FileExpired:
        case .FileExpired:
            //: toastStr = "Play Error,File expired".localized
            toastStr = (String(kKeyUrl.prefix(6)) + "rror,F" + String(showObjectText.suffix(5)) + "xpire" + String(showIndicatorPath)).localized
        //: break
        //: case .TaskError:
        case .TaskError:
            //: toastStr = "Play Error，Net error".localized
            toastStr = (String(main_fragmentPath) + String(kActualUrl.suffix(2)) + String(main_labPath.prefix(7))).localized
        //: break
        //: case .FirstMuteTip:
        case .FirstMuteTip:
            //: toastStr = "Currently in mute mode".localized
            toastStr = (String(k_listFormat) + String(k_locationValue.suffix(7))).localized
            //: break
        }

        //: if toastStr.isEmptyString == false {
        if toastStr.isEmptyString == false {
            //: self.func__showStatusBarErrorMsg(showMsg: toastStr)
            self.drawObserver(showMsg: toastStr)
        }
        //: if status.rawValue < 100 {
        if status.rawValue < 100 {
            //: stopAudioPlayer()
            toExecute()
        }
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension SectorThen {
    //: func setMutedDetection() {
    func adhereQuantityeraction() {
        //: RBDMuteSwitch.shared.detectMuteSwitch()
        GiftReactiveCompatible.shared.handle()
        //: RBDMuteSwitch.shared.isMutedBlock = { [weak self] mute in
        GiftReactiveCompatible.shared.isMutedBlock = { [weak self] mute in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isMute = mute
            self.isMute = mute
            //: if self.isMute {
            if self.isMute {
                //: self.showToast(status: .FirstMuteTip)
                self.query(status: .FirstMuteTip)
            }
        }
    }
}
