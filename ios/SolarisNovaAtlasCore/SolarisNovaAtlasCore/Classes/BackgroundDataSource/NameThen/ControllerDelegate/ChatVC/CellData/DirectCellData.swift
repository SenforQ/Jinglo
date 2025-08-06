
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainThoughtStr:[UInt8] = [0x9f,0x98,0x9f,0x82,0xde,0x95,0x99,0x92,0x93,0x84,0xcc,0xdf,0xd6,0x9e,0x97,0x85,0xd6,0x98,0x99,0x82,0xd6,0x94,0x93,0x93,0x98,0xd6,0x9f,0x9b,0x86,0x9a,0x93,0x9b,0x93,0x98,0x82,0x93,0x92]

private func userFrame(data num: UInt8) -> UInt8 {
    return num ^ 246
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DirectCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/2/28.
//

//: import UIKit
import UIKit

//: @objcMembers public class DirectCellData: TalkingChatMsgBaseCellData {
@objcMembers public class DirectCellData: CompartmentCellData {
    //: override public init(direction: TMsgDirection) {
    override public init(direction: AspectSendTotal) {
        //: super.init(direction: direction)
        super.init(direction: direction)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainThoughtStr.map{userFrame(data: $0)}, encoding: .utf8)!)
    }

    //: public override func accumulationOn() -> CGSize {
    override public func accumulationOn() -> CGSize {
        //: return CGSize(width: 120, height: 120)
        return CGSize(width: 120, height: 120)
    }
}
