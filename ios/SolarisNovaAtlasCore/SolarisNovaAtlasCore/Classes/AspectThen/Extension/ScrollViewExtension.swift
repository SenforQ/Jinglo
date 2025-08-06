
//: Declare String Begin

/*: "Drop down to refresh" :*/
fileprivate let noti_dataStr:String = "Drop dto search icon"
fileprivate let user_indicatorName:[Character] = ["o","w"]
fileprivate let show_cardPath:String = "n tolet model title icon"

/*: "Release Refresh" :*/
fileprivate let appGameFormat:[Character] = ["R","e","l","e","a","s","e"," ","R","e","f","r","e","s"]
fileprivate let kControlData:String = "key"

/*: "Refreshing" :*/
fileprivate let const_sizeMsg:[Character] = ["R","e","f","r","e"]
fileprivate let user_shareMsg:String = "shintable"

/*: "Pull up to load more" :*/
fileprivate let notiBarSinceFormat:String = "bottom file share modelPull "
fileprivate let show_topText:String = "model"
fileprivate let mainFrameTempData:String = "app selfload more"

/*: "No more data." :*/
fileprivate let k_builderStr:String = "corner iconNo mo"
fileprivate let showTextValue:String = "ata.view import"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ScrollViewExtension.swift
//  AbroadTalking
//
//  Created by young on 2022/9/8.
//

//: import UIKit
import UIKit

//: extension UIScrollView {
extension UIScrollView {
    //: typealias CompletionBlock = () -> Void
    typealias CompletionBlock = () -> Void

    /// 下拉刷新
    //: func addHeaderRefresh(complection: @escaping CompletionBlock) {
    func join(complection: @escaping CompletionBlock) {
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeThen.shared.direction == .rightToLeft {
            //: let header = MJRefreshNormalHeader()
            let header = MJRefreshNormalHeader()
            //: header.setTitle("Drop down to refresh".localized, for: .idle)
            header.setTitle((String(noti_dataStr.prefix(6)) + String(user_indicatorName) + String(show_cardPath.prefix(4)) + " refresh").localized, for: .idle)
            //: header.setTitle("Release Refresh".localized, for: .pulling)
            header.setTitle((String(appGameFormat) + kControlData.replacingOccurrences(of: "key", with: "h")).localized, for: .pulling)
            //: header.setTitle("Refreshing".localized, for: .refreshing)
            header.setTitle((String(const_sizeMsg) + user_shareMsg.replacingOccurrences(of: "table", with: "g")).localized, for: .refreshing)
            //: header.lastUpdatedTimeLabel?.isHidden = true
            header.lastUpdatedTimeLabel?.isHidden = true

            //: self.mj_header = header
            self.mj_header = header
            //: self.mj_header?.refreshingBlock = {
            self.mj_header?.refreshingBlock = {
                //: complection()
                complection()
            }
            //: } else {
        } else {
            //: self.mj_header = MJRefreshNormalHeader {
            self.mj_header = MJRefreshNormalHeader {
                //: complection()
                complection()
            }
        }
    }

    /// 上拉加载
    //: func addFooterRefresh(complection: @escaping CompletionBlock) {
    func distant(complection: @escaping CompletionBlock) {
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeThen.shared.direction == .rightToLeft {
            //: let footer = MJRefreshAutoNormalFooter()
            let footer = MJRefreshAutoNormalFooter()
            //: footer.setTitle("Pull up to load more".localized, for: .idle)
            footer.setTitle((String(notiBarSinceFormat.suffix(5)) + "up to" + show_topText.replacingOccurrences(of: "model", with: " ") + String(mainFrameTempData.suffix(9))).localized, for: .idle)
            //: footer.setTitle("Release Refresh".localized, for: .pulling)
            footer.setTitle((String(appGameFormat) + kControlData.replacingOccurrences(of: "key", with: "h")).localized, for: .pulling)
            //: footer.setTitle("Refreshing".localized, for: .refreshing)
            footer.setTitle((String(const_sizeMsg) + user_shareMsg.replacingOccurrences(of: "table", with: "g")).localized, for: .refreshing)
            //: footer.setTitle("No more data.".localized, for: .noMoreData)
            footer.setTitle((String(k_builderStr.suffix(5)) + "re d" + String(showTextValue.prefix(4))).localized, for: .noMoreData)
            //: self.mj_footer = footer
            self.mj_footer = footer
            //: self.mj_footer?.refreshingBlock = {
            self.mj_footer?.refreshingBlock = {
                //: complection()
                complection()
            }
            //: } else {
        } else {
            //: self.mj_footer = MJRefreshAutoNormalFooter {
            self.mj_footer = MJRefreshAutoNormalFooter {
                //: complection()
                complection()
            }
        }
    }

    /// 结束刷新
    //: func endRefresh() {
    func sizeFlush() {
        //: if (self.mj_header?.isRefreshing) != nil {
        if (self.mj_header?.isRefreshing) != nil {
            //: self.mj_header?.endRefreshing()
            self.mj_header?.endRefreshing()
        }
        //: if (self.mj_footer?.isRefreshing) != nil {
        if (self.mj_footer?.isRefreshing) != nil {
            //: self.mj_footer?.endRefreshing()
            self.mj_footer?.endRefreshing()
        }
    }
}
