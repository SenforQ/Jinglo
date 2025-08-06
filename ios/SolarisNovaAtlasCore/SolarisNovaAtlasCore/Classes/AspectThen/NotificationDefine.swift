
//: Declare String Begin

/*: "DID_LOGIN_SUCCESS_NOTIFICATION" :*/
fileprivate let show_barTempFormat:String = "DID_Lcolor selected from"
fileprivate let show_levelContent:String = "SbackgroundCCES"
fileprivate let dataControlMsg:String = "white draw main for managerS_N"
fileprivate let user_textName:String = "playerIF"

/*: "DID_LOGIN_OUT_SUCCESS_NOTIFICATION" :*/
fileprivate let dataInfoPath:[UInt8] = [0xfa,0xf7,0xfa,0xe1,0xf2,0xf1,0xf9,0xf7,0xf0,0xe1,0xf1,0xeb,0xea,0xe1,0xed,0xeb,0xfd,0xfd,0xfb,0xed,0xed,0xe1,0xf0,0xf1,0xea,0xf7,0xf8,0xf7,0xfd,0xff,0xea,0xf7,0xf1,0xf0]

/*: "UPDATE_APP_GETCONFIG_NOTIFICATION" :*/
fileprivate let user_rangeValue:[UInt8] = [0xdb,0xd6,0xca,0xc7,0xda,0xcb,0xe5,0xc7,0xd6,0xd6,0xe5,0xcd,0xcb,0xda,0xc9,0xd5,0xd4,0xcc,0xcf,0xcd,0xe5,0xd4,0xd5,0xda,0xcf,0xcc,0xcf,0xc9,0xc7,0xda,0xcf,0xd5,0xd4]

fileprivate func ofToOneTitle(manager num: UInt8) -> UInt8 {
    let value = Int(num) - 134
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "REFRESH_INDEX_GETCONFIG_NOTIFICATION" :*/
fileprivate let kViewId:[UInt8] = [0x1d,0xa,0x9,0x1d,0xa,0x1c,0x7,0x10,0x6,0x1,0xb,0xa,0x17,0x10,0x8,0xa,0x1b,0xc,0x0,0x1,0x9,0x6,0x8,0x10,0x1,0x0,0x1b,0x6,0x9,0x6,0xc,0xe,0x1b,0x6,0x0,0x1]

private func rawApplication(cell num: UInt8) -> UInt8 {
    return num ^ 79
}

/*: "UPDATE_INDEX_GETCONFIG_NOTIFICATION" :*/
fileprivate let const_tableMsg:[UInt8] = [0xcd,0xc8,0xdc,0xd9,0xcc,0xdd,0xc7,0xd1,0xd6,0xdc,0xdd,0xc0,0xc7,0xdf,0xdd,0xcc,0xdb,0xd7,0xd6,0xde,0xd1,0xdf,0xc7,0xd6,0xd7,0xcc,0xd1,0xde,0xd1,0xdb,0xd9,0xcc,0xd1,0xd7,0xd6]

private func filterNeverSucceed(color num: UInt8) -> UInt8 {
    return num ^ 152
}

/*: "UPDATE_USER_GETMYINFO_NOTIFICATION" :*/
fileprivate let dataProfileModelMessage:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x4f,0x46,0x4e,0x49,0x59,0x4d,0x54,0x45,0x47,0x5f,0x52,0x45,0x53,0x55,0x5f,0x45,0x54,0x41,0x44,0x50,0x55]

/*: "USER_GETMYINFO_SUCCEED_NOTIFICATION" :*/
fileprivate let dataFrameId:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x44,0x45,0x45,0x43,0x43,0x55,0x53,0x5f,0x4f,0x46,0x4e,0x49,0x59,0x4d,0x54,0x45,0x47,0x5f,0x52,0x45,0x53,0x55]

/*: "USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION" :*/
fileprivate let main_listId:[UInt8] = [0xc2,0xc4,0xd2,0xc5,0xc8,0xc2,0xc7,0xd3,0xd6,0xc3,0xd2,0xc8,0xdb,0xd8,0xc2,0xd9,0xd0,0xd2,0xc7,0xdb,0xc2,0xc4,0xde,0xd9,0xd1,0xd8,0xc8,0xd9,0xd8,0xc3,0xde,0xd1,0xde,0xd4,0xd6,0xc3,0xde,0xd8,0xd9]

private func voiceOver(lab num: UInt8) -> UInt8 {
    return num ^ 151
}

/*: "UPDATE_USER_GETINFOCOLUMN_NOTIFICATION" :*/
fileprivate let k_belowMessage:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x4e,0x4d,0x55,0x4c,0x4f,0x43,0x4f,0x46,0x4e,0x49,0x54,0x45,0x47,0x5f,0x52,0x45,0x53,0x55,0x5f,0x45,0x54,0x41,0x44,0x50,0x55]

/*: "USER_RECIEVED_GIFT_NOTIFICATION" :*/
fileprivate let const_makeName:[UInt8] = [0x4f,0x49,0x5f,0x48,0x45,0x48,0x5f,0x59,0x53,0x5f,0x4c,0x5f,0x5e,0x45,0x5d,0x53,0x5c,0x4e,0x45,0x54,0x55,0x4e,0x53,0x5c,0x53,0x59,0x5b,0x4e,0x53,0x55,0x54]

/*: "USER_INFO_MSG_LIST_NOTIFICATION" :*/
fileprivate let notiViewData:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x54,0x53,0x49,0x4c,0x5f,0x47,0x53,0x4d,0x5f,0x4f,0x46,0x4e,0x49,0x5f,0x52,0x45,0x53,0x55]

/*: "CHAT_TIPS_TEXT_NOTIFICATION" :*/
fileprivate let noti_lastValue:[Character] = ["C","H","A","T","_","T","I","P"]
fileprivate let userPicTitle:String = "change viewS_TEX"
fileprivate let main_postSeatStr:String = "ICATItextN"

/*: "WHOLIKEME_BADGENUMBER_NOTIF" :*/
fileprivate let notiLabelValue:String = "WHOview"
fileprivate let show_sharedKey:String = "E_BADGmodel click succeed target at"
fileprivate let dataAppFormat:String = "BER_Ncolor image"

/*: "UPDATE_COMMENTNUMBER_NOTIFICATION" :*/
fileprivate let mainLeadingData:[UInt8] = [0x51,0x54,0x40,0x45,0x50,0x41,0x5b,0x47,0x4b,0x49,0x49,0x41,0x4a,0x50,0x4a,0x51,0x49,0x46,0x41,0x56,0x5b,0x4a,0x4b,0x50,0x4d,0x42,0x4d,0x47,0x45,0x50,0x4d,0x4b,0x4a]

private func videoActive(result num: UInt8) -> UInt8 {
    return num ^ 4
}

/*: "UPDATE_LIKE_NUMBER_NOTIFICATION" :*/
fileprivate let constDocumentFormat:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x52,0x45,0x42,0x4d,0x55,0x4e,0x5f,0x45,0x4b,0x49,0x4c,0x5f,0x45,0x54,0x41,0x44,0x50,0x55]

/*: "UPDATE_ATTION_NOTIFICATION" :*/
fileprivate let main_tableGenderData:String = "UcolorAT"
fileprivate let noti_mainKey:String = "TvideoON"
fileprivate let k_ageText:[Character] = ["I","C","A","T","I","O","N"]

/*: "DELETE_MINE_POST_NOTIFICATION" :*/
fileprivate let mainViewPath:[Character] = ["D","E","L","E","T","E","_","M","I","N","E","_","P","O","S","T","_","N","O","T","I","F","I"]
fileprivate let appCameraMsg:String = "CAeffectON"

/*: "FREEBTN_UPLOAD_POST_NOTIFICATION" :*/
fileprivate let mainCellName:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x54,0x53,0x4f,0x50,0x5f,0x44,0x41,0x4f,0x4c,0x50,0x55,0x5f,0x4e,0x54,0x42,0x45,0x45,0x52,0x46]

/*: "POST_EXPLORE_SUCCESS_NOTIFICATION" :*/
fileprivate let user_viewName:[UInt8] = [0x52,0x51,0x55,0x56,0x61,0x47,0x5a,0x52,0x4e,0x51,0x54,0x47,0x61,0x55,0x57,0x45,0x45,0x47,0x55,0x55,0x61,0x50,0x51,0x56,0x4b,0x48,0x4b,0x45,0x43,0x56,0x4b,0x51,0x50]

fileprivate func modelPath(image num: UInt8) -> UInt8 {
    let value = Int(num) - 2
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "CHAT_NEW_MSG_NOTIFICATION" :*/
fileprivate let main_sizeName:[Character] = ["C","H","A","T","_","N","E","W","_","M","S","G","_","N","O","T","I","F","I","C","A","T"]
fileprivate let dataMomentViewMsg:String = "IOup"

/*: "CHAT_MSG_READ_RECEIPT_NOTIFICATION" :*/
fileprivate let app_labelName:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x54,0x50,0x49,0x45,0x43,0x45,0x52,0x5f,0x44,0x41,0x45,0x52,0x5f,0x47,0x53,0x4d,0x5f,0x54,0x41,0x48,0x43]

/*: "MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION" :*/
fileprivate let appFrameValue:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x53,0x55,0x54,0x41,0x54,0x53,0x45,0x4e,0x49,0x4c,0x4e,0x4f,0x5f,0x45,0x54,0x41,0x44,0x50,0x55,0x5f,0x54,0x53,0x49,0x4c,0x47,0x53,0x4d]

/*: "MSGLIST_UPDATE_INTIMATE_NOTIFICATION" :*/
fileprivate let kToIconKey:[UInt8] = [0x7f,0x61,0x75,0x7e,0x7b,0x61,0x66,0x6d,0x67,0x62,0x76,0x73,0x66,0x77,0x6d,0x7b,0x7c,0x66,0x7b,0x7f,0x73,0x66,0x77,0x6d,0x7c,0x7d,0x66,0x7b,0x74,0x7b,0x71,0x73,0x66,0x7b,0x7d,0x7c]

private func consumerShare(total num: UInt8) -> UInt8 {
    return num ^ 50
}

/*: "CHAT_ADD_CALL_RECORD_MSG_NOTIFICATION" :*/
fileprivate let notiPointMessage:[UInt8] = [0xbe,0xb5,0xbc,0xa9,0xa2,0xbc,0xb9,0xb9,0xa2,0xbe,0xbc,0xb1,0xb1,0xa2,0xaf,0xb8,0xbe,0xb2,0xaf,0xb9,0xa2,0xb0,0xae,0xba,0xa2,0xb3,0xb2,0xa9,0xb4,0xbb,0xb4,0xbe,0xbc,0xa9,0xb4,0xb2,0xb3]

private func labData(except num: UInt8) -> UInt8 {
    return num ^ 253
}

/*: "VIDEO_CHAT_OTHER_CAMERA_AVAILABLE_NOTIFICATION" :*/
fileprivate let const_cellStr:[UInt8] = [0x42,0x5d,0x50,0x51,0x5b,0x4b,0x57,0x5c,0x55,0x40,0x4b,0x5b,0x40,0x5c,0x51,0x46,0x4b,0x57,0x55,0x59,0x51,0x46,0x55,0x4b,0x55,0x42,0x55,0x5d,0x58,0x55,0x56,0x58,0x51,0x4b,0x5a,0x5b,0x40,0x5d,0x52,0x5d,0x57,0x55,0x40,0x5d,0x5b,0x5a]

/*: "SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION" :*/
fileprivate let dataGreetMsg:[UInt8] = [0xac,0xba,0xbe,0xad,0xbc,0xb7,0xa0,0xbb,0xba,0xab,0xbe,0xb6,0xb3,0xa0,0xb7,0xb0,0xb2,0xba,0xad,0xba,0xb9,0xad,0xba,0xac,0xb7,0xa0,0xb1,0xb0,0xab,0xb6,0xb9,0xb6,0xbc,0xbe,0xab,0xb6,0xb0,0xb1]

private func againIndex(video num: UInt8) -> UInt8 {
    return num ^ 255
}

/*: "SWITCH_TABBAR_HOME_PARTY_NOTIFICATION" :*/
fileprivate let showSharedCellMessage:[UInt8] = [0x11,0x15,0xb,0x16,0x1,0xa,0x1d,0x16,0x3,0x0,0x0,0x3,0x10,0x1d,0xa,0xd,0xf,0x7,0x1d,0x12,0x3,0x10,0x16,0x1b,0x1d,0xc,0xd,0x16,0xb,0x4,0xb,0x1,0x3,0x16,0xb,0xd,0xc]

/*: "PUSH_MEEDIT_NOTIFICATION" :*/
fileprivate let k_imageInfoTitle:[Character] = ["P","U","S","H","_","M","E","E","D","I","T","_","N","O"]
fileprivate let showAppFilterPath:String = "TIFIcontent"

/*: "LIVE_USER_POINT_CHANGE" :*/
fileprivate let constViewTableUrl:String = "type viewLIVE_"
fileprivate let data_createKey:String = "label accept selected var_POINT"

/*: "LIVE_HALF_VIEW_SHOW" :*/
fileprivate let notiPeopleErrorValue:String = "time emptyLIVE_"
fileprivate let dataBagKey:[Character] = ["V","I","E","W","_","S","H","O","W"]

/*: "LIVE_HALF_VIEW_DISMISS" :*/
fileprivate let main_dataId:String = "right equal blockLIVE_HA"
fileprivate let constDateFormat:String = "jump"
fileprivate let dataMomentPath:String = "F_VIEclass path type let name"

/*: "LIVE_RECIVE_STARTLIVE_NOTIFICATION" :*/
fileprivate let userLargeName:[UInt8] = [0xab,0xae,0xb1,0xa2,0xb8,0xb5,0xa2,0xa4,0xae,0xb1,0xa2,0xb8,0xb4,0xb3,0xa6,0xb5,0xb3,0xab,0xae,0xb1,0xa2,0xb8,0xa9,0xa8,0xb3,0xae,0xa1,0xae,0xa4,0xa6,0xb3,0xae,0xa8,0xa9]

private func voiceFind(color num: UInt8) -> UInt8 {
    return num ^ 231
}

/*: "LIVE_RECIVE_FLOATSCREEN_NOTIFICATION" :*/
fileprivate let main_titleValue:[UInt8] = [0x3a,0x3f,0x20,0x33,0x29,0x24,0x33,0x35,0x3f,0x20,0x33,0x29,0x30,0x3a,0x39,0x37,0x22,0x25,0x35,0x24,0x33,0x33,0x38,0x29,0x38,0x39,0x22,0x3f,0x30,0x3f,0x35,0x37,0x22,0x3f,0x39,0x38]

private func itemView(device num: UInt8) -> UInt8 {
    return num ^ 118
}

/*: "LIVE_BLOCK_USER_NOTIFICATION" :*/
fileprivate let appLabText:[Character] = ["L","I","V","E","_","B"]
fileprivate let app_renderMakeKey:String = "LOCK_Upage make list"
fileprivate let app_toTitle:String = "OTItool"

/*: "SOCKET_IS_OPEN_NOTIFICATION" :*/
fileprivate let k_showTitle:[Character] = ["S","O","C","K","E","T","_","I","S","_","O","P","E","N","_"]
fileprivate let appBubbleTitle:String = "notifi"

/*: "GIFT_REFRESHPACKAGE_NOTIFICATION" :*/
fileprivate let appPointMessage:[UInt8] = [0xeb,0xe5,0xea,0xf8,0xf3,0xfe,0xe9,0xea,0xfe,0xe9,0xff,0xe4,0xfc,0xed,0xef,0xe7,0xed,0xeb,0xe9,0xf3,0xe2,0xe3,0xf8,0xe5,0xea,0xe5,0xef,0xed,0xf8,0xe5,0xe3,0xe2]

private func panoramicView(center num: UInt8) -> UInt8 {
    return num ^ 172
}

/*: "VIDEOCALL_INITIV_NOTIFICATION" :*/
fileprivate let dataPathName:String = "VIDEplay"
fileprivate let show_foodFormat:String = "key appear delay manager to_INI"
fileprivate let main_throughId:String = "OTIinfo"

/*: "VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION" :*/
fileprivate let notiBackgroundValue:[UInt8] = [0x46,0x59,0x54,0x55,0x5f,0x53,0x51,0x5c,0x5c,0x4f,0x55,0x5e,0x54,0x4f,0x53,0x5c,0x5f,0x43,0x55,0x54,0x59,0x43,0x53,0x5f,0x45,0x5e,0x44,0x43,0x4f,0x5e,0x5f,0x44,0x59,0x56,0x59,0x53,0x51,0x44,0x59,0x5f,0x5e]

/*: "RECHARGEHALFPAGE_END_CLOSE_NOTIFICATION" :*/
fileprivate let noti_addUrl:[UInt8] = [0xde,0xd1,0xcf,0xd4,0xcd,0xde,0xd3,0xd1,0xd4,0xcd,0xd8,0xd2,0xdc,0xcd,0xd3,0xd1,0xeb,0xd1,0xda,0xd0,0xeb,0xcf,0xd8,0xdb,0xdf,0xd1,0xeb,0xda,0xdb,0xe0,0xd5,0xd2,0xd5,0xcf,0xcd,0xe0,0xd5,0xdb,0xda]

fileprivate func replyProgress(report num: UInt8) -> UInt8 {
    let value = Int(num) + 116
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Net Error, Try again later" :*/
fileprivate let showTabUrl:[Character] = ["N","e","t"," ","E","r","r","o","r",","," ","T","r","y"," ","a","g","a","i","n"," ","l","a","t","e","r"]

/*: "We want everyone to enjoy a healthy chatting environment and to use this feature you need to be " :*/
fileprivate let main_byUrl:[UInt8] = [0x20,0x65,0x62,0x20,0x6f,0x74,0x20,0x64,0x65,0x65,0x6e,0x20,0x75,0x6f,0x79,0x20,0x65,0x72,0x75,0x74,0x61,0x65,0x66,0x20,0x73,0x69,0x68,0x74,0x20,0x65,0x73,0x75,0x20,0x6f,0x74,0x20,0x64,0x6e,0x61,0x20,0x74,0x6e,0x65,0x6d,0x6e,0x6f,0x72,0x69,0x76,0x6e,0x65,0x20,0x67,0x6e,0x69,0x74,0x74,0x61,0x68,0x63,0x20,0x79,0x68,0x74,0x6c,0x61,0x65,0x68,0x20,0x61,0x20,0x79,0x6f,0x6a,0x6e,0x65,0x20,0x6f,0x74,0x20,0x65,0x6e,0x6f,0x79,0x72,0x65,0x76,0x65,0x20,0x74,0x6e,0x61,0x77,0x20,0x65,0x57]

/*: "Face cerification" :*/
fileprivate let main_lineId:String = "Face ctrue model equal"
fileprivate let appWhiteUrl:String = "ICATION"

/*: "By blocking a user, you will not receive his/her new messages and the message history will be removed too. Continue to block this user?" :*/
fileprivate let noti_withId:[UInt8] = [0x27,0x5e,0x5,0x47,0x51,0x54,0x48,0x50,0x4e,0x53,0x4c,0x5,0x46,0x5,0x5a,0x58,0x4a,0x57,0x11,0x5,0x5e,0x54,0x5a,0x5,0x5c,0x4e,0x51,0x51,0x5,0x53,0x54,0x59,0x5,0x57,0x4a,0x48,0x4a,0x4e,0x5b,0x4a,0x5,0x4d,0x4e,0x58,0x14,0x4d,0x4a,0x57,0x5,0x53,0x4a,0x5c,0x5,0x52,0x4a,0x58,0x58,0x46,0x4c,0x4a,0x58,0x5,0x46,0x53,0x49,0x5,0x59,0x4d,0x4a,0x5,0x52,0x4a,0x58,0x58,0x46,0x4c,0x4a,0x5,0x4d,0x4e,0x58,0x59,0x54,0x57,0x5e,0x5,0x5c,0x4e,0x51,0x51,0x5,0x47,0x4a,0x5,0x57,0x4a,0x52,0x54,0x5b,0x4a,0x49,0x5,0x59,0x54,0x54,0x13,0x5,0x28,0x54,0x53,0x59,0x4e,0x53,0x5a,0x4a,0x5,0x59,0x54,0x5,0x47,0x51,0x54,0x48,0x50,0x5,0x59,0x4d,0x4e,0x58,0x5,0x5a,0x58,0x4a,0x57,0x24]

fileprivate func myLet(list num: UInt8) -> UInt8 {
    let value = Int(num) + 27
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Turn on permissions in settings before you can use the feature" :*/
fileprivate let appShareClickMessage:[UInt8] = [0x1f,0x3e,0x39,0x25,0x6b,0x24,0x25,0x6b,0x3b,0x2e,0x39,0x26,0x22,0x38,0x38,0x22,0x24,0x25,0x38,0x6b,0x22,0x25,0x6b,0x38,0x2e,0x3f,0x3f,0x22,0x25,0x2c,0x38,0x6b,0x29,0x2e,0x2d,0x24,0x39,0x2e,0x6b,0x32,0x24,0x3e,0x6b,0x28,0x2a,0x25,0x6b,0x3e,0x38,0x2e,0x6b,0x3f,0x23,0x2e,0x6b,0x2d,0x2e,0x2a,0x3f,0x3e,0x39,0x2e]

private func deviceLarge(event num: UInt8) -> UInt8 {
    return num ^ 75
}

/*: "Not available during a call" :*/
fileprivate let showLengthId:String = "label lab letNot "
fileprivate let k_progressId:String = "size add thought view ifble "
fileprivate let app_makeName:String = "info curg a ca"
fileprivate let app_regionData:String = "modelmodel"

/*: "You're on the live" :*/
fileprivate let user_byFormat:String = "You\'re"
fileprivate let showCellPath:String = "label make text frame equalhe li"
fileprivate let data_giftId:String = "equale"

/*: "You are already in Party room" :*/
fileprivate let const_sizeChoiceName:[Character] = ["Y","o","u"," ","a","r","e"," ","a","l","r","e","a","d","y"," ","i","n"," ","P","a","r","t","y"]
fileprivate let showBlockLabelPeopleFormat:[Character] = [" ","r","o","o","m"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NotificationDefine.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/29.
//

//: import Foundation
import Foundation

// MARK: - NSNotification

// 登录成功
//: public let DID_LOGIN_SUCCESS_NOTIFICATION = NSNotification.Name(rawValue: "DID_LOGIN_SUCCESS_NOTIFICATION")
public let notiEnvironmentPath = NSNotification.Name(rawValue: (String(show_barTempFormat.prefix(5)) + "OGIN_" + show_levelContent.replacingOccurrences(of: "background", with: "U") + String(dataControlMsg.suffix(3)) + user_textName.replacingOccurrences(of: "player", with: "OT") + "ICATION"))
// 退出登录
//: public let DID_LOGIN_OUT_SUCCESS_NOTIFICATION = NSNotification.Name(rawValue: "DID_LOGIN_OUT_SUCCESS_NOTIFICATION")
public let k_deviceKey = NSNotification.Name(rawValue: String(bytes: dataInfoPath.map{$0^190}, encoding: .utf8)!)
// app配置信息
//: public let UPDATE_APP_GETCONFIG_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_APP_GETCONFIG_NOTIFICATION")
public let const_logData = NSNotification.Name(rawValue: String(bytes: user_rangeValue.map{ofToOneTitle(manager: $0)}, encoding: .utf8)!)
// 刷新 mf/index/getConfig配置信息接口
//: public let REFRESH_INDEX_GETCONFIG_NOTIFICATION = NSNotification.Name(rawValue: "REFRESH_INDEX_GETCONFIG_NOTIFICATION")
public let app_lengthData = NSNotification.Name(rawValue: String(bytes: kViewId.map{rawApplication(cell: $0)}, encoding: .utf8)!)
// mf/index/getConfig配置信息接口成功通知
//: public let UPDATE_INDEX_GETCONFIG_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_INDEX_GETCONFIG_NOTIFICATION")
public let constTabValue = NSNotification.Name(rawValue: String(bytes: const_tableMsg.map{filterNeverSucceed(color: $0)}, encoding: .utf8)!)
// 请求app个人信息
//: public let UPDATE_USER_GETMYINFO_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_USER_GETMYINFO_NOTIFICATION")
public let userReasonMessage = NSNotification.Name(rawValue: String(bytes: dataProfileModelMessage.reversed(), encoding: .utf8)!)
// app个人信息请求成功
//: public let USER_GETMYINFO_SUCCEED_NOTIFICATION = NSNotification.Name(rawValue: "USER_GETMYINFO_SUCCEED_NOTIFICATION")
public let constCoverPathValue = NSNotification.Name(rawValue: String(bytes: dataFrameId.reversed(), encoding: .utf8)!)
// 刷新218用户余额次数/会员状态
//: public let USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION = NSNotification.Name(rawValue: "USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION")
public let constSkipPath = NSNotification.Name(rawValue: String(bytes: main_listId.map{voiceOver(lab: $0)}, encoding: .utf8)!)

// 刷新金币
//: public let UPDATE_USER_GETINFOCOLUMN_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_USER_GETINFOCOLUMN_NOTIFICATION")
public let main_appAgentTitle = NSNotification.Name(rawValue: String(bytes: k_belowMessage.reversed(), encoding: .utf8)!)
// 首页礼物
//: public let USER_RECIEVED_GIFT_NOTIFICATION = NSNotification.Name(rawValue: "USER_RECIEVED_GIFT_NOTIFICATION")
public let constBarContent = NSNotification.Name(rawValue: String(bytes: const_makeName.map{$0^26}, encoding: .utf8)!)
// 获取聊天列表数据成功
//: public let USER_INFO_MSG_LIST_NOTIFICATION = NSNotification.Name(rawValue: "USER_INFO_MSG_LIST_NOTIFICATION")
public let constVersionKey = NSNotification.Name(rawValue: String(bytes: notiViewData.reversed(), encoding: .utf8)!)

// 插入聊天提示消息
//: public let CHAT_TIPS_TEXT_NOTIFICATION = NSNotification.Name(rawValue: "CHAT_TIPS_TEXT_NOTIFICATION")
public let userTableMessage = NSNotification.Name(rawValue: (String(noti_lastValue) + String(userPicTitle.suffix(5)) + "T_NOTIF" + main_postSeatStr.replacingOccurrences(of: "text", with: "O")))

// 获取谁喜欢我数量消息
//: public let WHOLIKEME_BADGENUMBER_NOTIF = NSNotification.Name(rawValue: "WHOLIKEME_BADGENUMBER_NOTIF")
public let data_barId = NSNotification.Name(rawValue: (notiLabelValue.replacingOccurrences(of: "view", with: "L") + "IKEM" + String(show_sharedKey.prefix(6)) + "ENUM" + String(dataAppFormat.prefix(5)) + "OTIF"))

// 更新评论数量
//: public let UPDATE_COMMENTNUMBER_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_COMMENTNUMBER_NOTIFICATION")
public let notiScreenStr = NSNotification.Name(rawValue: String(bytes: mainLeadingData.map{videoActive(result: $0)}, encoding: .utf8)!)
// 动态更新点赞数量
//: public let UPDATE_LIKE_NUMBER_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_LIKE_NUMBER_NOTIFICATION")
public let data_countMsg = NSNotification.Name(rawValue: String(bytes: constDocumentFormat.reversed(), encoding: .utf8)!)
// 动态关注
//: public let UPDATE_ATTION_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_ATTION_NOTIFICATION")
public let appUserClickUrl = NSNotification.Name(rawValue: (main_tableGenderData.replacingOccurrences(of: "color", with: "PD") + "E_AT" + noti_mainKey.replacingOccurrences(of: "video", with: "I") + "_NOTIF" + String(k_ageText)))
// 删除个人动态，动态列表更新
//: public let DELETE_MINE_POST_NOTIFICATION = NSNotification.Name(rawValue: "DELETE_MINE_POST_NOTIFICATION")
public let user_halfStr = NSNotification.Name(rawValue: (String(mainViewPath) + appCameraMsg.replacingOccurrences(of: "effect", with: "TI")))
// 打开发布动态
//: public let FREEBTN_UPLOAD_POST_NOTIFICATION = NSNotification.Name(rawValue: "FREEBTN_UPLOAD_POST_NOTIFICATION")
public let showTitleMsg = NSNotification.Name(rawValue: String(bytes: mainCellName.reversed(), encoding: .utf8)!)

// 发布动态成功，列表更新
//: public let POST_EXPLORE_SUCCESS_NOTIFICATION = NSNotification.Name(rawValue: "POST_EXPLORE_SUCCESS_NOTIFICATION")
public let const_pingValue = NSNotification.Name(rawValue: String(bytes: user_viewName.map{modelPath(image: $0)}, encoding: .utf8)!)

// 收到新消息
//: public let CHAT_NEW_MSG_NOTIFICATION = NSNotification.Name(rawValue: "CHAT_NEW_MSG_NOTIFICATION")
public let user_domainData = NSNotification.Name(rawValue: (String(main_sizeName) + dataMomentViewMsg.replacingOccurrences(of: "up", with: "N")))

// 消息已读回执通知
//: public let CHAT_MSG_READ_RECEIPT_NOTIFICATION = NSNotification.Name(rawValue: "CHAT_MSG_READ_RECEIPT_NOTIFICATION")
public let notiBeautyInfoMsg = NSNotification.Name(rawValue: String(bytes: app_labelName.reversed(), encoding: .utf8)!)

// 消息列表更新在线状态
//: public let MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION = NSNotification.Name(rawValue: "MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION")
public let appNetPath = NSNotification.Name(rawValue: String(bytes: appFrameValue.reversed(), encoding: .utf8)!)

// 消息列表更新亲密度
//: public let MSGLIST_UPDATE_INTIMATE_NOTIFICATION = NSNotification.Name(rawValue: "MSGLIST_UPDATE_INTIMATE_NOTIFICATION")
public let user_clickViewFileUrl = NSNotification.Name(rawValue: String(bytes: kToIconKey.map{consumerShare(total: $0)}, encoding: .utf8)!)

// 本地插入通话送礼的消息
//: public let CHAT_ADD_CALL_RECORD_MSG_NOTIFICATION = NSNotification.Name(rawValue: "CHAT_ADD_CALL_RECORD_MSG_NOTIFICATION")
public let const_ageStr = NSNotification.Name(rawValue: String(bytes: notiPointMessage.map{labData(except: $0)}, encoding: .utf8)!)

// 视频通话对方摄像头是否可用通知
//: public let VIDEO_CHAT_OTHER_CAMERA_AVAILABLE_NOTIFICATION = NSNotification.Name(rawValue: "VIDEO_CHAT_OTHER_CAMERA_AVAILABLE_NOTIFICATION")
public let const_textInfoName = NSNotification.Name(rawValue: String(bytes: const_cellStr.map{$0^20}, encoding: .utf8)!)

// 搜索筛选页触发首页刷新
//: public let SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION = NSNotification.Name(rawValue: "SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION")
public let show_streamMessage = NSNotification.Name(rawValue: String(bytes: dataGreetMsg.map{againIndex(video: $0)}, encoding: .utf8)!)

// 切换底部tabbar到home-party
//: public let SWITCH_TABBAR_HOME_PARTY_NOTIFICATION = NSNotification.Name(rawValue: "SWITCH_TABBAR_HOME_PARTY_NOTIFICATION")
public let k_messageMsg = NSNotification.Name(rawValue: String(bytes: showSharedCellMessage.map{$0^66}, encoding: .utf8)!)

// 打开个人资料编辑页
//: public let PUSH_MEEDIT_NOTIFICATION = NSNotification.Name(rawValue: "PUSH_MEEDIT_NOTIFICATION")
public let const_playPath = NSNotification.Name(rawValue: (String(k_imageInfoTitle) + showAppFilterPath.replacingOccurrences(of: "content", with: "C") + "ATION"))

// 积分收益变更
//: public let LIVE_USER_POINT_CHANGE = NSNotification.Name(rawValue: "LIVE_USER_POINT_CHANGE")
public let user_screenUrl = NSNotification.Name(rawValue: (String(constViewTableUrl.suffix(5)) + "USER" + String(data_createKey.suffix(6)) + "_CHANGE"))

// 直播中半屏页面显示
//: public let LIVE_HALF_VIEW_SHOW = NSNotification.Name(rawValue: "LIVE_HALF_VIEW_SHOW")
public let const_buttonText = NSNotification.Name(rawValue: (String(notiPeopleErrorValue.suffix(5)) + "HALF_" + String(dataBagKey)))

// 直播中半屏页面消失
//: public let LIVE_HALF_VIEW_DISMISS = NSNotification.Name(rawValue: "LIVE_HALF_VIEW_DISMISS")
public let show_replaceKey = NSNotification.Name(rawValue: (String(main_dataId.suffix(7)) + constDateFormat.replacingOccurrences(of: "jump", with: "L") + String(dataMomentPath.prefix(5)) + "W_DISMISS"))

// 接收到主播开播通知
//: public let LIVE_RECIVE_STARTLIVE_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_RECIVE_STARTLIVE_NOTIFICATION")
public let mainAppTitle = NSNotification.Name(rawValue: String(bytes: userLargeName.map{voiceFind(color: $0)}, encoding: .utf8)!)

// 飘屏
//: public let LIVE_RECIVE_FLOATSCREEN_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_RECIVE_FLOATSCREEN_NOTIFICATION")
public let data_useStr = NSNotification.Name(rawValue: String(bytes: main_titleValue.map{itemView(device: $0)}, encoding: .utf8)!)

// 直播中拉黑用户提出房间
//: public let LIVE_BLOCK_USER_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_BLOCK_USER_NOTIFICATION")
public let app_lineUrl = NSNotification.Name(rawValue: (String(appLabText) + String(app_renderMakeKey.prefix(6)) + "SER_N" + app_toTitle.replacingOccurrences(of: "tool", with: "F") + "ICATION"))

// 长连接建立成功
//: public let SOCKET_IS_OPEN_NOTIFICATION = NSNotification.Name(rawValue: "SOCKET_IS_OPEN_NOTIFICATION")
public let show_skipClickText = NSNotification.Name(rawValue: (String(k_showTitle) + appBubbleTitle.uppercased() + "CATION"))

// 刷新礼物背包
//: public let GIFT_REFRESHPACKAGE_NOTIFICATION = NSNotification.Name(rawValue: "GIFT_REFRESHPACKAGE_NOTIFICATION")
public let dataTurnContent = NSNotification.Name(rawValue: String(bytes: appPointMessage.map{panoramicView(center: $0)}, encoding: .utf8)!)

// 显示主动拨打视频弹窗
//: public let VIDEOCALL_INITIV_NOTIFICATION = NSNotification.Name(rawValue: "VIDEOCALL_INITIV_NOTIFICATION")
public let dataNoStr = NSNotification.Name(rawValue: (dataPathName.replacingOccurrences(of: "play", with: "O") + "CALL" + String(show_foodFormat.suffix(4)) + "TIV_N" + main_throughId.replacingOccurrences(of: "info", with: "F") + "ICATION"))

// 通话结束，关闭弹窗
//: public let VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION = NSNotification.Name(rawValue: "VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION")
public let k_bottomImageId = NSNotification.Name(rawValue: String(bytes: notiBackgroundValue.map{$0^16}, encoding: .utf8)!)

// 半屏充值页关闭
//: public let RECHARGEHALFPAGE_END_CLOSE_NOTIFICATION = NSNotification.Name(rawValue: "RECHARGEHALFPAGE_END_CLOSE_NOTIFICATION")
public let mainSaltErrContent = NSNotification.Name(rawValue: String(bytes: noti_addUrl.map{replyProgress(report: $0)}, encoding: .utf8)!)

// MARK: - PatronymNotificationTool

//: @objcMembers public class NSNotificationTool: NSObject {
@objcMembers public class PatronymNotificationTool: NSObject {
    //: class public func getLoginOutNoti() -> String {
    public class func headWhen() -> String {
        //: return DID_LOGIN_OUT_SUCCESS_NOTIFICATION.rawValue
        return k_deviceKey.rawValue
    }

    //: class public func getUserIngoListNoti() -> String {
    public class func wearer() -> String {
        //: return USER_INFO_MSG_LIST_NOTIFICATION.rawValue
        return constVersionKey.rawValue
    }

    //: class public func getChatNewMsgNoti() -> String {
    public class func shareLikeNoti() -> String {
        //: return CHAT_NEW_MSG_NOTIFICATION.rawValue
        return user_domainData.rawValue
    }
}

// MARK: - 宏文本

// 网络失败toast
//: public let kNetErrorMsg = "Net Error, Try again later".localized
public let show_limitMessage = (String(showTabUrl)).localized
// 真人认证
//: public let kMessage_FaceCerification = "We want everyone to enjoy a healthy chatting environment and to use this feature you need to be \"Face cerification\".".localized
public let data_deviceMessage = String(bytes: main_byUrl.reversed(), encoding: .utf8)! + "\"" + (String(main_lineId.prefix(6)) + "erif" + appWhiteUrl.lowercased()) + "\"" + ".".localized

// 拉黑
//: public let kMessage_blocking = "By blocking a user, you will not receive his/her new messages and the message history will be removed too. Continue to block this user?".localized
public let const_netMsg = String(bytes: noti_withId.map{myLet(list: $0)}, encoding: .utf8)!.localized
// 音视频/直播 手机权限提醒
//: public let kMessage_permissions_error = "Turn on permissions in settings before you can use the feature".localized
public let constChangeName = String(bytes: appShareClickMessage.map{deviceLarge(event: $0)}, encoding: .utf8)!.localized
// 视频通话中部分功能限制使用
//: public let kMessage_videoTalking_limit = "Not available during a call".localized
public let mainKeyTransformMsg = (String(showLengthId.suffix(4)) + "availa" + String(k_progressId.suffix(4)) + "durin" + String(app_makeName.suffix(6)) + app_regionData.replacingOccurrences(of: "model", with: "l")).localized
// 直播中部分功能限制使用
//: public let kMessage_live_limit = "You're on the live".localized
public let kBarAdjustKeyMessage = (user_byFormat + " on t" + String(showCellPath.suffix(5)) + data_giftId.replacingOccurrences(of: "equal", with: "v")).localized
// 语聊房部分功能限制使用
//: public let kMessage_party_limit = "You are already in Party room".localized
public let user_streamContent = (String(const_sizeChoiceName) + String(showBlockLabelPeopleFormat)).localized
