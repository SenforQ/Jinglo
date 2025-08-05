import Flutter
import UIKit
import AppTrackingTransparency
@main
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.5) {
            if #available(iOS 14, *) {
                ATTrackingManager.requestTrackingAuthorization { status in
                    
                }
            }
        }
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
// MARK: - 应用跟踪权限管理
   
   func applicationDidBecomeActive(_ application: UIApplication) {
       // 应用变为活跃状态时请求跟踪权限
       requestTrackingAuthorization()
   }
   
   /// 请求应用跟踪权限
   private func requestTrackingAuthorization() {
       // 延迟4.5秒后请求权限（给用户时间了解应用）
       DispatchQueue.main.asyncAfter(deadline: .now() + 4.5) {
           if #available(iOS 14, *) {
               // 检查当前授权状态
               let currentStatus = ATTrackingManager.trackingAuthorizationStatus
               
               // 如果状态是未确定，则请求权限
               if currentStatus == .notDetermined {
                   ATTrackingManager.requestTrackingAuthorization { status in
                       
                   }
               } else {

               }
           } else {
               // iOS 14以下版本，默认允许跟踪
           }
       }
   }
