
//: Declare String Begin

/*: "idToken" :*/
fileprivate let dataHiddenPartyTitle:[UInt8] = [0x70,0x6b,0x5b,0x76,0x72,0x6c,0x75]

fileprivate func playerSelect(shared num: UInt8) -> UInt8 {
    let value = Int(num) - 7
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "email" :*/
fileprivate let notiOriginTotalMessage:[UInt8] = [0xf6,0xfe,0xf2,0xfa,0xfd]

fileprivate func modelName(the num: UInt8) -> UInt8 {
    let value = Int(num) + 111
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleReactiveCompatible.swift
//  SolarisNovaAtlasCore
//
//  Created by DouXiu on 2025/7/25.
//

//: import GoogleSignIn
import GoogleSignIn
//: import UIKit
import UIKit

//: extension AppDelegateHelper {
extension FourthBaseDelegate {
    //: class func googleOpenURL(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
    class func rawData(_: UIApplication, open url: URL, options _: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        //: return GIDSignIn.sharedInstance.handle(url)
        return GIDSignIn.sharedInstance.handle(url)
    }
}

//: class GoogleLoginManager: NSObject {
class TitleReactiveCompatible: NSObject {
    //: static let shared = GoogleLoginManager()
    static let shared = TitleReactiveCompatible()

    /// 登录按钮
    /// - Parameters:
    ///   - vc: 控制器
    ///   - closure: 回调
    //: func login(vc: UIViewController, closure: @escaping LoginCompletionBlock) {
    func request(vc _: UIViewController, closure: @escaping LoginCompletionBlock) {
        //: guard let vc = self.currentViewController() else {
        guard let vc = self.occurrentWith() else {
            //: return
            return
        }
        //: GIDSignIn.sharedInstance.signIn(withPresenting: vc) { signInResult, error in
        GIDSignIn.sharedInstance.signIn(withPresenting: vc) { signInResult, error in
            //: guard error == nil, let user = signInResult?.user else {
            guard error == nil, let user = signInResult?.user else {
                //: closure(nil)
                closure(nil)
                //: return
                return
            }
            //: let idToken = user.idToken?.tokenString ?? ""
            let idToken = user.idToken?.tokenString ?? ""
            //: let email = user.profile?.email ?? ""
            let email = user.profile?.email ?? ""
            //: let params = ["idToken": idToken, "email": email]
            let params = [String(bytes: dataHiddenPartyTitle.map{playerSelect(shared: $0)}, encoding: .utf8)!: idToken, String(bytes: notiOriginTotalMessage.map{modelName(the: $0)}, encoding: .utf8)!: email]
            //: closure(params)
            closure(params)
        }
    }
}
