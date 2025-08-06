
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_countPath:[UInt8] = [0xdd,0xe2,0xdd,0xe8,0x9c,0xd7,0xe3,0xd8,0xd9,0xe6,0xae,0x9d,0x94,0xdc,0xd5,0xe7,0x94,0xe2,0xe3,0xe8,0x94,0xd6,0xd9,0xd9,0xe2,0x94,0xdd,0xe1,0xe4,0xe0,0xd9,0xe1,0xd9,0xe2,0xe8,0xd9,0xd8]

fileprivate func taskName(detail num: UInt8) -> UInt8 {
    let value = Int(num) - 116
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeCellData.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/2.
//

//: import UIKit
import UIKit

//: @objcMembers public class SizeCellData: TalkingChatMsgBaseCellData {
@objcMembers public class SizeCellData: CompartmentCellData {
    //: public override var msgModel: AbTalkingChatMsgBaseModel {
    override public var msgModel: SharedModel {
        //: get { return super.msgModel }
        get { return super.msgModel }
        //: set { super.msgModel = newValue }
        set { super.msgModel = newValue }
    }

    //: override public init(direction: TMsgDirection) {
    override public init(direction: AspectSendTotal) {
        //: super.init(direction: direction)
        super.init(direction: direction)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_countPath.map{taskName(detail: $0)}, encoding: .utf8)!)
    }

    //: public override func accumulationOn() ->CGSize {
    override public func accumulationOn() -> CGSize {
        //: let audioWidth = Float(self.voiceModel.audioLength)*2.4 + 90
        let audioWidth = Float(self.voiceModel.audioLength) * 2.4 + 90
        //: return CGSize.init(width: Int(audioWidth), height: 42)
        return CGSize(width: Int(audioWidth), height: 42)
    }

    //: @objc public lazy var voiceModel: TalkingVoiceMsgPlayModel = {
    public lazy var voiceModel: FailSizeThen = {
        //: var model = TalkingVoiceMsgPlayModel()
        var model = FailSizeThen()
        //: return model
        return model
        //: }()
    }()
}
