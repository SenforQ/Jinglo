
//: Declare String Begin

/*: "/Library" :*/
fileprivate let userRegularBlockData:[Character] = ["/"]
fileprivate let k_socialFitUrl:[Character] = ["L","i","b","r","a","r","y"]

/*: "/Library/Caches" :*/
fileprivate let userHiddenMessage:String = "page view present super/Libra"
fileprivate let show_leadingValue:[Character] = ["r","y"]
fileprivate let k_pushId:String = "/Cachessearch self true model let"

/*: "/Library/Preferences" :*/
fileprivate let main_resultFormat:String = "/Libmake white line"
fileprivate let dataGiftTitle:String = "REFER"
fileprivate let main_plusUrl:String = "enmalees"

/*: "/tmp" :*/
fileprivate let kSignMessage:String = "let object/tmp"

/*: 不存在" :*/
fileprivate let showModelUrl:[Character] = ["不","存","\u{5728}"]

/*: 存在" :*/
fileprivate let noti_sizeName:[Character] = ["\u{5b58}","在"]

/*: 成功" :*/
fileprivate let constWithPath:String = "成accept"

/*: 失败" :*/
fileprivate let show_blockMsg:String = "失mini"

/*: "写入成功" :*/
fileprivate let dataFromFormat:String = "写入成\u{529f}"

/*: "写入失败" :*/
fileprivate let mainCountPath:String = "\u{5199}入\u{5931}败"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FileManagerExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/10.
//

//: import UIKit
import UIKit

//: extension FileManager {
extension FileManager {
    // MARK: 1.1、获取Home的完整路径名

    //: static func homeDirectory() -> String {
    static func finishMethod() -> String {
        // 获取程序的Home目录
        //: let homeDirectory = NSHomeDirectory()
        let homeDirectory = NSHomeDirectory()
        //: return homeDirectory
        return homeDirectory
    }

    // MARK: 1.2、获取Documnets的完整路径名

    //: static func DocumnetsDirectory() -> String {
    static func logDirectory() -> String {
        //: let documentPaths = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
        let documentPaths = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
        //: let documnetPath = documentPaths[0]
        let documnetPath = documentPaths[0]
        //: return documnetPath
        return documnetPath
        // 方法2
//        let ducumentPath = NSHomeDirectory() + "/Documents"
//        return ducumentPath
    }

    // MARK: 1.3、获取Library的完整路径名

    /* 这个目录下有两个子目录：Caches 和 Preferences
     Library/Preferences目录，包含应用程序的偏好设置文件。不应该直接创建偏好设置文件，而是应该使用NSUserDefaults类来取得和设置应用程序的偏好。
     Library/Caches目录，主要存放缓存文件，iTunes不会备份此目录，此目录下文件不会再应用退出时删除
     */
    //: static func LibraryDirectory() -> String {
    static func lockDirectory() -> String {
        // 获取程序的documentPaths目录
        // Library目录－方法1
        // let libraryPaths = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.libraryDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
        // let libraryPath = libraryPaths[0]
        //
        // Library目录－方法2
        //: let libraryPath = NSHomeDirectory() + "/Library"
        let libraryPath = NSHomeDirectory() + (String(userRegularBlockData) + String(k_socialFitUrl))
        //: return libraryPath
        return libraryPath
    }

    // MARK: 1.4、获取/Library/Caches的完整路径名

    // 获取程序的/Library/Caches目录
    //: static func CachesDirectory() -> String {
    static func startDirectory() -> String {
        //: let cachesPath = NSHomeDirectory() + "/Library/Caches"
        let cachesPath = NSHomeDirectory() + (String(userHiddenMessage.suffix(6)) + String(show_leadingValue) + String(k_pushId.prefix(7)))
        //: return cachesPath
        return cachesPath
    }

    // MARK: 1.5、获取Library/Preferences的完整路径名

    //: static func PreferencesDirectory() -> String {
    static func popHalf() -> String {
        //: let preferencesPath = NSHomeDirectory() + "/Library/Preferences"
        let preferencesPath = NSHomeDirectory() + (String(main_resultFormat.prefix(4)) + "rary/P" + dataGiftTitle.lowercased() + main_plusUrl.replacingOccurrences(of: "male", with: "c"))
        //: return preferencesPath
        return preferencesPath
    }

    // MARK: 1.6、获取Tmp的完整路径名

    // 获取Tmp的完整路径名，用于存放临时文件，保存应用程序再次启动过程中不需要的信息，重启后清空
    //: static func TmpDirectory() -> String {
    static func equality() -> String {
        // 方法1
        // let tmpDir = NSTemporaryDirectory()
        // 方法2
        //: let tmpDir = NSHomeDirectory() + "/tmp"
        let tmpDir = NSHomeDirectory() + (String(kSignMessage.suffix(4)))
        //: return tmpDir
        return tmpDir
    }
}

//: extension FileManager {
extension FileManager {
    //: static var fileManager: FileManager {
    static var fileManager: FileManager {
        //: return FileManager.default
        return FileManager.default
    }

    //: static func judgeFileOrFolderExists(filePath: String) -> Bool {
    static func revenueIn(filePath: String) -> Bool {
        //: let exist = fileManager.fileExists(atPath: filePath)
        let exist = fileManager.fileExists(atPath: filePath)
        // 查看文件夹是否存在，如果存在就直接读取，不存在就直接反空
        //: guard exist else {
        guard exist else {
            //: printLog(message: "\(filePath)不存在")
            printLog(message: "\(filePath)" + (String(showModelUrl)))
            //: return false
            return false
        }
        //: printLog(message: "\(filePath)存在")
        printLog(message: "\(filePath)存在")
        //: return true
        return true
    }

    //: static func createFolder(folderPath: String) ->  Bool {
    static func sizePath(folderPath: String) -> Bool {
        //: if judgeFileOrFolderExists(filePath: folderPath) {
        if revenueIn(filePath: folderPath) {
            //: return true
            return true
        }
        //: do {
        do {
            // withIntermediateDirectories为ture表示路径中间如果有不存在的文件夹都会创建
            //: try fileManager.createDirectory(atPath: folderPath, withIntermediateDirectories: true, attributes: nil)
            try fileManager.createDirectory(atPath: folderPath, withIntermediateDirectories: true, attributes: nil)
            //: printLog(message: "\(folderPath)成功")
            printLog(message: "\(folderPath)成功")
            //: return true
            return true
            //: } catch _ {
        } catch _ {
            //: printLog(message: "\(folderPath)失败")
            printLog(message: "\(folderPath)失败")
            //: return false
            return false
        }
    }

    //: static func writeStringToFile(content: String, writePath: String) -> (isSuccess: Bool, error: String) {
    static func technicality(content: String, writePath: String) -> (isSuccess: Bool, error: String) {
        //: do {
        do {
            //: let info = "\(content)"
            let info = "\(content)"
            //: try info.write(toFile: writePath, atomically: true, encoding: .utf8)
            try info.write(toFile: writePath, atomically: true, encoding: .utf8)
            //: return (true, "写入成功")
            return (true, (dataFromFormat))
            //: } catch _ {
        } catch _ {
            //: return (false, "写入失败")
            return (false, (mainCountPath))
        }
    }
}
