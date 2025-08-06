
//: Declare String Begin

/*: "bg_talk_other" :*/
fileprivate let constSizeUrl:String = "bg_talraw request drop fatal"

/*: "bg_talk_me" :*/
fileprivate let noti_actionName:String = "bg_ttrue if appear make with"

/*: "init(coder:) has not been implemented" :*/
fileprivate let kLabelValue:[UInt8] = [0x1d,0x1a,0x1d,0x0,0x5c,0x17,0x1b,0x10,0x11,0x6,0x4e,0x5d,0x54,0x1c,0x15,0x7,0x54,0x1a,0x1b,0x0,0x54,0x16,0x11,0x11,0x1a,0x54,0x1d,0x19,0x4,0x18,0x11,0x19,0x11,0x1a,0x0,0x11,0x10]

private func textSystem(background num: UInt8) -> UInt8 {
    return num ^ 116
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CompartmentCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/1.
//

//: import UIKit
import UIKit

//: @objcMembers public class TalkingChatMsgBaseCellData: EqualCompartmentReactiveCompatible {
@objcMembers public class CompartmentCellData: EqualCompartmentReactiveCompatible {
    //: var bubbleTop: CGFloat = 10
    var bubbleTop: CGFloat = 10
    //: var bubbleImg: UIImage?
    var bubbleImg: UIImage?

    //: override public init(direction: TMsgDirection) {
    override public init(direction: AspectSendTotal) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_other")
            self.bubbleImg = UIImage.everyMake(name: (String(constSizeUrl.prefix(6)) + "k_other"))
            //: self.cellLayout = MessageCellLayout.incommingTextMessageLayout()
            self.cellLayout = PictureCellLayout.taro()
            //: } else {
        } else {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_me")
            self.bubbleImg = UIImage.everyMake(name: (String(noti_actionName.prefix(4)) + "alk_me"))
            //: self.cellLayout = MessageCellLayout.outgoingTextMessageLayout()
            self.cellLayout = PictureCellLayout.tiedNumbereraction()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kLabelValue.map{textSystem(background: $0)}, encoding: .utf8)!)
    }
}
