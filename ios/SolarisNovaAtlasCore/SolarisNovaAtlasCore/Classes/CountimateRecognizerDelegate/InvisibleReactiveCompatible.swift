
//: Declare String Begin

/*: "LaunchImage" :*/
fileprivate let appEqualMsg:String = "Lauraw corner view"
fileprivate let k_requestMakeId:String = "share viewnchImage"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InvisibleReactiveCompatible.swift
//  SolarisNovaAtlasCore
//
//  Created by DouXiu on 2025/1/16.
//

//: import UIKit
import UIKit

//: public class NormalWaitingController: UIViewController {
public class InvisibleReactiveCompatible: UIViewController {
    //: public override func viewDidLoad() {
    override public func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: let bgImgV = UIImageView()
        let bgImgV = UIImageView()
        //: bgImgV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        bgImgV.frame = CGRect(x: 0, y: 0, width: kQueryValue, height: notiKeyTitle)
        //: bgImgV.image = UIImage(named: "LaunchImage")
        bgImgV.image = UIImage(named: (String(appEqualMsg.prefix(3)) + String(k_requestMakeId.suffix(8))))
        //: view.addSubview(bgImgV)
        view.addSubview(bgImgV)
    }
}
