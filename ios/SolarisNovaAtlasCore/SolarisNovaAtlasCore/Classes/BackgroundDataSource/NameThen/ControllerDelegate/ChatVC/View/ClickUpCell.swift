
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kNextMessage:[UInt8] = [0x38,0x3f,0x38,0x25,0x79,0x32,0x3e,0x35,0x34,0x23,0x6b,0x78,0x71,0x39,0x30,0x22,0x71,0x3f,0x3e,0x25,0x71,0x33,0x34,0x34,0x3f,0x71,0x38,0x3c,0x21,0x3d,0x34,0x3c,0x34,0x3f,0x25,0x34,0x35]

private func labelDomain(status num: UInt8) -> UInt8 {
    return num ^ 81
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClickUpCell.swift
//  SolarisNovaAtlasCore
//
//  Created by Charlotte on 2024/7/26.
//

//: import UIKit
import UIKit

//: class TalkingIntimateInstructionsPopUpCell: UITableViewCell {
class ClickUpCell: UITableViewCell {
    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear
        //: contentView.addSubview(lineView)
        contentView.addSubview(lineView)
        //: lineView.snp.makeConstraints { make in
        lineView.snp.makeConstraints { make in
            //: make.size.equalTo(7)
            make.size.equalTo(7)
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
            //: make.top.equalTo(6)
            make.top.equalTo(6)
        }
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.leading.equalTo(lineView.snp.trailing).offset(10)
            make.leading.equalTo(lineView.snp.trailing).offset(10)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.bottom.equalTo(-2)
            make.bottom.equalTo(-2)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kNextMessage.map{labelDomain(status: $0)}, encoding: .utf8)!)
    }

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.recoverOf(fontSize: 14)
        //: lab.backgroundColor = .clear
        lab.backgroundColor = .clear
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var lineView: UIView = {
    private lazy var lineView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 3.5
        view.layer.cornerRadius = 3.5
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingIntimateInstructionsPopUpCell {
extension ClickUpCell {
    //: func setCellData(msg: String) {
    func houseSquare(msg: String) {
        //: self.titleLab.text = msg
        self.titleLab.text = msg
    }
}
