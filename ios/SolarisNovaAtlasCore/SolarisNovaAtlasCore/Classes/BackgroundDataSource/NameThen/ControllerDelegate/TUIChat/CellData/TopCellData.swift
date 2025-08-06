
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainLockUrl:[UInt8] = [0xb8,0xbf,0xb8,0xa5,0xf9,0xb2,0xbe,0xb5,0xb4,0xa3,0xeb,0xf8,0xf1,0xb9,0xb0,0xa2,0xf1,0xbf,0xbe,0xa5,0xf1,0xb3,0xb4,0xb4,0xbf,0xf1,0xb8,0xbc,0xa1,0xbd,0xb4,0xbc,0xb4,0xbf,0xa5,0xb4,0xb5]

private func equalPremium(collection num: UInt8) -> UInt8 {
    return num ^ 209
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TopCellData.swift
//  SolarisNovaAtlasCore
//
//  Created by Hemming on 2024/8/14.
//

//: import UIKit
import UIKit

//: @objcMembers public class TopCellData: EqualCompartmentReactiveCompatible {
@objcMembers public class TopCellData: EqualCompartmentReactiveCompatible {
    //: var contentFont = UIFont.pingfangRugularFont(fontSize: 13)
    var contentFont = UIFont.recoverOf(fontSize: 13)
    //: var contentColor = UIColor.appValueDetailColor()
    var contentColor = UIColor.hockeyPlayer()
    //: @objc public var contentStr = ""
    public var contentStr = ""

    //: override public init(direction: TMsgDirection) {
    override public init(direction: AspectSendTotal) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: self.cellLayout = MessageCellLayout.systemMessageLayout()
        self.cellLayout = PictureCellLayout.addAcross()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainLockUrl.map{equalPremium(collection: $0)}, encoding: .utf8)!)
    }

    //: public override func accumulationOn() -> CGSize {
    override public func accumulationOn() -> CGSize {
        //: let textSize = CGSize(width: ScreenWidth/2, height: ScreenHeight)
        let textSize = CGSize(width: kQueryValue / 2, height: notiKeyTitle)
        //: let paragraphStyle = NSMutableParagraphStyle()
        let paragraphStyle = NSMutableParagraphStyle()
        //: paragraphStyle.lineBreakMode = .byWordWrapping
        paragraphStyle.lineBreakMode = .byWordWrapping
        //: paragraphStyle.alignment = .left
        paragraphStyle.alignment = .left

        //: let attributes = [NSAttributedString.Key.font: contentFont,
        let attributes = [NSAttributedString.Key.font: contentFont,
                          //: NSAttributedString.Key.paragraphStyle: paragraphStyle]
                          NSAttributedString.Key.paragraphStyle: paragraphStyle]

        //: let contentSize = contentStr.boundingRect(with: textSize, options: .usesLineFragmentOrigin, attributes: attributes, context: nil).size
        let contentSize = contentStr.boundingRect(with: textSize, options: .usesLineFragmentOrigin, attributes: attributes, context: nil).size

        //: return CGSize(width: contentSize.width + 16, height: contentSize.height + 10)
        return CGSize(width: contentSize.width + 16, height: contentSize.height + 10)
    }

    //: public override func heightOfWidth(_ width: CGFloat) -> CGFloat {
    override public func transaction(_: CGFloat) -> CGFloat {
        //: return self.accumulationOn().height + 10
        return self.accumulationOn().height + 10
    }
}
