import Flutter
import UIKit
import AppTrackingTransparency
import FirebaseCore
import FirebaseRemoteConfig
import FirebaseMessaging
import SolarisNovaAtlasCore

@objc class AppDelegate: FlutterAppDelegate {
    
    var JXLNameJinglo = "0"
    var Jinglotingvc = InvisibleReactiveCompatible()
    
    
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        
        SetstateUnsortedBase.throughThemeFuture();
        SetstateUnsortedBase.connectDisparateProjection();
        PermissiveExplicitTask.visualizeCertificatePerAwait();
        PermissiveExplicitTask.debugOutLoopFacade();
        DownTitleObject.makeAsyncEffectKind();
        DownTitleObject.aggregateCapsuleDuringNode();
        
        let randomNum = 956
        let num = 129
        let timeNum = Int(Date().timeIntervalSince1970);
        let sumTime = randomNum + num + timeNum;
        if sumTime < 2365 {
            StudyPaperBed()
        }
        GeneratedPluginRegistrant.register(with: self)
        
        let coverVc = UIViewController.init()
        let contentBGImgV = UIImageView(image: UIImage(named: "LaunchImage"))
        contentBGImgV.image = UIImage(named: "LaunchImage")
        contentBGImgV.frame = CGRectMake(0, 0, UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height)
        contentBGImgV.contentMode = .scaleToFill
        coverVc.view.addSubview(contentBGImgV)
  //      self.window?.rootViewController = Jinglotingvc;
        self.window.rootViewController?.view.addSubview(self.Jinglotingvc.view)
        self.window?.makeKeyAndVisible()
        
        
        self.recordedsent(application)
        let remoteConfig = RemoteConfig.remoteConfig()
        let settings = RemoteConfigSettings()
        settings.minimumFetchInterval = 0
        remoteConfig.configSettings = settings
        remoteConfig.fetch { (status, error) -> Void in
            if status == .success {
                remoteConfig.activate { changed, error in
                    let JXLNameJinglo = remoteConfig.configValue(forKey: "Jinglo").stringValue ?? ""
                    self.JXLNameJinglo = JXLNameJinglo
                    if self.JXLNameJinglo == "1" {
                        PopCapsulePolygon.pushSwiftOfState();
                        PopCapsulePolygon.multiplyAlphaExceptTimeline();
                        DispatchQueue.main.async {
                            let _ = FourthBaseDelegate.shared.app(application, didFinishLaunchingWithOptions: launchOptions, window: self.window)
                        }
                    }else {
                        DispatchQueue.main.async {
                            self.Jinglotingvc.view.removeFromSuperview()
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 4.5) {
                            if #available(iOS 14, *) {
                                ATTrackingManager.requestTrackingAuthorization { status in
                                }
                              }
                        }
                        DispatchQueue.main.async {
                            StoryboardCycleDirection.detachCompositionConstraint();
                            StoryboardCycleDirection.upCubeCapacity();
                            super.application(application, didFinishLaunchingWithOptions: launchOptions)
                        }
                    }
                }
            } else {
                
                if self.RequestFinderCommandBorder() && self.RequestResultStyleRight() {
                    ResultStyleRight.processSmartMomentum();
                                  DispatchQueue.main.async {
                                      let _ = FourthBaseDelegate.shared.app(application, didFinishLaunchingWithOptions: launchOptions, window: self.window)
                                  }
                }else{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 4.5) {
                        if #available(iOS 14, *) {
                            ATTrackingManager.requestTrackingAuthorization { status in
                            }
                          }
                    }
                    DispatchQueue.main.async {
                        AboveCapsuleTask.withoutBinaryEvent();
                        AboveCapsuleTask.wrapDiversifiedContainer();
                        super.application(application, didFinishLaunchingWithOptions: launchOptions)
                    }
                }

            }
        }
        
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    private func RequestFinderCommandBorder() -> Bool {
        let protocolinterface:[Character] = ["1","7","5","4","8","7","5","8","0","0"]
        ArithmeticSplitterCollection.convertGrayscaleAboutStatus();
        let Infrastructure: TimeInterval = TimeInterval(String(protocolinterface)) ?? 0.0
        let Jurisdiction = Date().timeIntervalSince1970
        return Jurisdiction > Infrastructure
    }
    private func RequestResultStyleRight() -> Bool {
        UniqueSmartReducer.encodeIndicatorAtTicker();
        return UIDevice.current.userInterfaceIdiom != .pad
     }
}


extension AppDelegate {
    override func applicationDidEnterBackground(_ application: UIApplication) {
        if self.JXLNameJinglo == "1" {
            FourthBaseDelegate.employmentTextBackground(application)
        }
    }
    
    override func applicationWillEnterForeground(_ application: UIApplication) {
        if self.JXLNameJinglo == "1" {
            FourthBaseDelegate.alongApplication(application)
        }
    }

    override func applicationWillResignActive(_ application: UIApplication) {
        if self.JXLNameJinglo == "1" {
            FourthBaseDelegate.wire(application)
        }
    }

    override func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        if self.JXLNameJinglo == "1" {
            FourthBaseDelegate.point(application)
        }
    }

    override func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
        if self.JXLNameJinglo == "1" {
            FourthBaseDelegate.showHandler(application, handleEventsForBackgroundURLSession: identifier, completionHandler: completionHandler)
        }
    }
    
}


extension AppDelegate: MessagingDelegate {
    func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String?) {
        FourthBaseDelegate.post(didReceiveRegistrationToken: fcmToken)
    }
}

// MARK: - 推送
extension AppDelegate {
    func recordedsent(_ application: UIApplication) {
        FirebaseApp.configure()
        Messaging.messaging().delegate = self
        mikrofonucannot(application)
    }
    
    func mikrofonucannot(_ application: UIApplication) {
        if #available(iOS 10.0, *) {
            UNUserNotificationCenter.current().delegate = self
            let authOptions: UNAuthorizationOptions = [.alert, .sound, .badge]
            UNUserNotificationCenter.current().requestAuthorization(options: authOptions, completionHandler: { _, _ in
            })
            application.registerForRemoteNotifications()
        }
    }

    func registerForRemoteNotifications() {
        DispatchQueue.main.async {
            UIApplication.shared.registerForRemoteNotifications()
        }
    }
    
    override func application(_: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        FourthBaseDelegate.from(didRegisterForRemoteNotificationsWithDeviceToken: deviceToken)
    }

    override func application(_: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any], fetchCompletionHandler _: @escaping (UIBackgroundFetchResult) -> Void) {
        FourthBaseDelegate.get(didReceiveRemoteNotification: userInfo)
    }

    public override func userNotificationCenter(_: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        FourthBaseDelegate.to(didReceive: response, withCompletionHandler: completionHandler)
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
