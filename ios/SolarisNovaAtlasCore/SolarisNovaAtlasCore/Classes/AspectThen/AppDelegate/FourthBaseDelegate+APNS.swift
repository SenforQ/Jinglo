
//: Declare String Begin

/*: "%02hhx" :*/
fileprivate let dataShareActionKey:String = "%"
fileprivate let showSectionKey:String = "array string02hhx"

/*: "APNS Token =  :*/
fileprivate let constIndexUrl:String = "else self enterAPNS T"

/*: "APNS Token Error:  :*/
fileprivate let noti_imageFormat:[Character] = ["A","P","N","S"," ","T","o","k","e"]
fileprivate let main_sizeName:String = "n Ermodel color"

/*: ." :*/
fileprivate let data_textUrl:[Character] = ["."]

/*: "token =  :*/
fileprivate let dataTopTitle:String = "text true casetoken = "

/*: "extra" :*/
fileprivate let show_labEqualWithKey:String = "exreceivea"

/*: "Unable to register for remote notifications: :*/
fileprivate let show_iconStr:[UInt8] = [0x51,0x6a,0x65,0x66,0x68,0x61,0x24,0x70,0x6b,0x24,0x76,0x61,0x63,0x6d,0x77,0x70,0x61,0x76,0x24,0x62,0x6b,0x76,0x24,0x76,0x61,0x69,0x6b,0x70,0x61,0x24,0x6a,0x6b,0x70,0x6d,0x62,0x6d,0x67,0x65,0x70,0x6d,0x6b,0x6a,0x77,0x3e]

private func recordUnknown(shared num: UInt8) -> UInt8 {
    return num ^ 4
}

/*: "token" :*/
fileprivate let appDeviceNoseFormat:[UInt8] = [0xec,0xe7,0xe3,0xdd,0xe6]

fileprivate func formatStatus(face num: UInt8) -> UInt8 {
    let value = Int(num) - 120
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "FCMToken" :*/
fileprivate let noti_itemPath:String = "FCMTokenself file if fatal"

/*: _LocalPush" :*/
fileprivate let appBackgroundPath:String = "let attribute view for_Loca"
fileprivate let kLocalName:String = "lPushdirection path"

/*: "identifier" :*/
fileprivate let noti_burnMessage:String = "ideneventi"
fileprivate let kBottomTitle:[Character] = ["f","i","e","r"]

/*: "fcm_options" :*/
fileprivate let mainSendReplyLivePath:String = "var array color at colorfcm_o"
fileprivate let k_modelContent:String = "ptionrequest"

/*: "image" :*/
fileprivate let showSessionData:[UInt8] = [0xa0,0xa4,0xa8,0xae,0xac]

private func parlourGame(hidden num: UInt8) -> UInt8 {
    return num ^ 201
}

/*: "本地推送通知 -- 用户未授权(.notDetermined)" :*/
fileprivate let app_tagVideoValue:[UInt8] = [0x40,0xf6,0x6,0x3f,0xf6,0xa,0x40,0xe8,0x2,0x43,0xda,0xdb,0x43,0xda,0xf4,0x41,0xf9,0xff,0x7a,0x87,0x87,0x7a,0x41,0xee,0x2,0x40,0xe2,0x11,0x40,0xf6,0x4,0x40,0xe8,0xe2,0x40,0xf7,0xdd,0x82,0x88,0xc8,0xc9,0xce,0x9e,0xbf,0xce,0xbf,0xcc,0xc7,0xc3,0xc8,0xbf,0xbe,0x83]

fileprivate func atText(the num: UInt8) -> UInt8 {
    let value = Int(num) - 90
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "本地推送通知 -- 用户未授权(.denied)" :*/
fileprivate let dataModelBeautyTitle:[Character] = ["\u{672c}","地","推","送","\u{901a}","知"," ","-","-"," ","\u{7528}","\u{6237}","未","授","权","(",".","d"]
fileprivate let notiMoreMessage:String = "enied)table else program with"

/*: "本地推送通知 -- 用户未授权(.ephemeral)" :*/
fileprivate let data_indicatorName:[Character] = ["本","地","\u{63a8}","\u{9001}","通","知"," ","-","-"," ","用","户","未","授","权","(","."]
fileprivate let k_featureContent:[Character] = ["e","p","h","e","m"]
fileprivate let appLineTitle:String = "eral)line var self live"

/*: "本地推送通知 -- 用户未授权" :*/
fileprivate let notiActionKey:String = "\u{672c}地推送"
fileprivate let mainManagerKey:[Character] = ["用","户","未","授","权"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FourthBaseDelegate+APNS.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/23.
//

//: import FirebaseCore
import FirebaseCore
//: import FirebaseMessaging
import FirebaseMessaging
//: import Foundation
import Foundation
//: import UserNotifications
import UserNotifications

//: public extension AppDelegateHelper {
public extension FourthBaseDelegate {
    /// 成功的回调
    //: class func application(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    class func from(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        //: let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        //: Messaging.messaging().apnsToken = deviceToken
        Messaging.messaging().apnsToken = deviceToken
        //: printLog(message: "APNS Token = \(deviceStr)")
        printLog(message: (String(constIndexUrl.suffix(6)) + "oken = ") + "\(deviceStr)")
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, error in
            //: if let error = error {
            if let error = error {
                //: UploadLogTool.writeLog(msg: "APNS Token Error: \(error).")
                GestureLogTool.playChangeImage(msg: (String(noti_imageFormat) + String(main_sizeName.prefix(4)) + "ror: ") + "\(error).")
                //: } else if let token = token {
            } else if let token = token {
                //: printLog(message: "token = \(token)")
                printLog(message: (String(dataTopTitle.suffix(8))) + "\(token)")
            }
        }
    }

    /// 收到远程推送（kill app）
    //: class func application(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
    class func get(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
        //: Messaging.messaging().appDidReceiveMessage(userInfo)
        Messaging.messaging().appDidReceiveMessage(userInfo)
        //: if UIApplication.shared.applicationState != .active {
        if UIApplication.shared.applicationState != .active {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: if userInfo.keys.contains("extra") {
                if userInfo.keys.contains((show_labEqualWithKey.replacingOccurrences(of: "receive", with: "tr"))) {
                    //: let extraStr = userInfo["extra"] as? String ?? ""
                    let extraStr = userInfo[(show_labEqualWithKey.replacingOccurrences(of: "receive", with: "tr"))] as? String ?? ""
                    //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                    KeyTableReactiveCompatible.share.APNSUserInfoStr = extraStr
                    //: TalkingAPNSManager.share.launchFromApns = true
                    KeyTableReactiveCompatible.share.launchFromApns = true
                }
            }
        }
    }

    /// 失败的回调
    //: class func application(didFailToRegisterForRemoteNotificationsWithError error: Error) {
    class func prime(didFailToRegisterForRemoteNotificationsWithError error: Error) {
        //: printLog(message: "Unable to register for remote notifications:\(error.localizedDescription)")
        printLog(message: String(bytes: show_iconStr.map{recordUnknown(shared: $0)}, encoding: .utf8)! + "\(error.localizedDescription)")
    }

    /// 点击消息（app运行中）
    //: class func userNotificationCenter(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
    class func to(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        //: if UIApplication.shared.applicationState == .active {
        if UIApplication.shared.applicationState == .active {
            //: TalkingAPNSManager.share.APNSUserInfoStr = ""
            KeyTableReactiveCompatible.share.APNSUserInfoStr = ""
            //: TalkingAPNSManager.share.launchFromApns = false
            KeyTableReactiveCompatible.share.launchFromApns = false

            //: } else {
        } else {
            //: let userInfo = response.notification.request.content.userInfo
            let userInfo = response.notification.request.content.userInfo
            //: if userInfo.keys.contains("extra") {
            if userInfo.keys.contains((show_labEqualWithKey.replacingOccurrences(of: "receive", with: "tr"))) {
                //: let extraStr = userInfo["extra"] as? String ?? ""
                let extraStr = userInfo[(show_labEqualWithKey.replacingOccurrences(of: "receive", with: "tr"))] as? String ?? ""
                //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                KeyTableReactiveCompatible.share.APNSUserInfoStr = extraStr
                //: TalkingAPNSManager.share.launchFromApns = true
                KeyTableReactiveCompatible.share.launchFromApns = true
            }
        }

        //: completionHandler()
        completionHandler()
    }

    /// MessagingDelegate
    //: class func messaging(didReceiveRegistrationToken fcmToken: String?) {
    class func post(didReceiveRegistrationToken fcmToken: String?) {
        //: let dataDict: [String: String] = ["token": fcmToken ?? ""]
        let dataDict: [String: String] = [String(bytes: appDeviceNoseFormat.map{formatStatus(face: $0)}, encoding: .utf8)!: fcmToken ?? ""]
        //: NotificationCenter.default.post(
        NotificationCenter.default.post(
            //: name: Notification.Name("FCMToken"),
            name: Notification.Name((String(noti_itemPath.prefix(8)))),
            //: object: nil,
            object: nil,
            //: userInfo: dataDict
            userInfo: dataDict
        )
    }
}

// MARK: - 本地推送

//: extension AppDelegateHelper {
extension FourthBaseDelegate {
    /// 构建通知内容，发送本地通知
    /// - Parameters:
    ///   - uid: 用户Id（用于identifier）
    ///   - title: 标题
    ///   - body: 内容
    ///   - imageUrl: 图片地址
    //: class func pushLocalNotification(uid: String? = nil,
    class func totaleraction(uid: String? = nil,
                             //: title: String? = nil,
                             title: String? = nil,
                             //: body: String,
                             body: String,
                             //: imageUrl: String? = nil) {
                             imageUrl: String? = nil)
    {
        //: UNUserNotificationCenter.current().getNotificationSettings { settings in
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            //: switch settings.authorizationStatus {
            switch settings.authorizationStatus {
            //: case .provisional, .authorized:
            case .provisional, .authorized: // 已授权，发送本地推送通知
                //: let content = UNMutableNotificationContent()
                let content = UNMutableNotificationContent()
                //: content.title = title ?? ""
                content.title = title ?? ""
                //: content.body = body
                content.body = body
                //: content.sound = UNNotificationSound.default
                content.sound = UNNotificationSound.default
                //: let identifier = (uid != nil) ? uid:"\(AppName)_LocalPush"
                let identifier = (uid != nil) ? uid : "\(const_onFormat)" + (String(appBackgroundPath.suffix(5)) + String(kLocalName.prefix(5)))
                //: let userInfo = ["identifier": identifier!] as [String: Any]
                let userInfo = [(noti_burnMessage.replacingOccurrences(of: "event", with: "t") + String(kBottomTitle)): identifier!] as [String: Any]
                //: content.userInfo = userInfo
                content.userInfo = userInfo
                //: guard let imgStr = imageUrl else {
                guard let imgStr = imageUrl else {
                    //: local_notificationPush(content)
                    manager(content)
                    //: return
                    return
                }
                /// 带图片的本地通知
                //: let newStr = imgStr.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain)
                let newStr = imgStr.replacingOccurrences(of: const_maxFormalText.recordBy(), with: k_detailData)
                //: content.userInfo["fcm_options"] = ["image": newStr]
                content.userInfo[(String(mainSendReplyLivePath.suffix(5)) + k_modelContent.replacingOccurrences(of: "request", with: "s"))] = [String(bytes: showSessionData.map{parlourGame(hidden: $0)}, encoding: .utf8)!: newStr]
                //: FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                    //: local_notificationPush(content)
                    manager(content)
                }

            //: case .notDetermined:
            case .notDetermined:
                //: printLog(message: "本地推送通知 -- 用户未授权(.notDetermined)")
                printLog(message: String(bytes: app_tagVideoValue.map{atText(the: $0)}, encoding: .utf8)!)
            //: case .denied:
            case .denied:
                //: printLog(message: "本地推送通知 -- 用户未授权(.denied)")
                printLog(message: (String(dataModelBeautyTitle) + String(notiMoreMessage.prefix(6))))
            //: case .ephemeral:
            case .ephemeral:
                //: printLog(message: "本地推送通知 -- 用户未授权(.ephemeral)")
                printLog(message: (String(data_indicatorName) + String(k_featureContent) + String(appLineTitle.prefix(5))))
            //: @unknown default:
            @unknown default:
                //: printLog(message: "本地推送通知 -- 用户未授权")
                printLog(message: (notiActionKey + "通\u{77e5} -- " + String(mainManagerKey)))
            }
        }
    }

    /// 根据content发送本地通知
    /// - Parameter content: 通知内容
    //: private class func local_notificationPush(_ content: UNNotificationContent) {
    private class func manager(_ content: UNNotificationContent) {
        //: let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        //: let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        //: if let identifier = content.userInfo["identifier"] as? String {
        if let identifier = content.userInfo[(noti_burnMessage.replacingOccurrences(of: "event", with: "t") + String(kBottomTitle))] as? String {
            //: let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            //: UNUserNotificationCenter.current().add(request) { _ in
            UNUserNotificationCenter.current().add(request) { _ in
            }
        }
    }

    /// 移除已经展示的推送
    /// - Parameter identifier: 通知标识符（nil：移除所有）
    //: class func local_removeDeliveredNotification(identifier: String?) {
    class func corner(identifier: String?) {
        //: guard let idf = identifier else {
        guard let idf = identifier else {
            //: UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            //: return
            return
        }
        //: UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
        UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
    }
}
