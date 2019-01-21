//
//  ComputerList.swift
//  StoryBoard
//
//  Created by swuad_14 on 2019. 1. 11..
//  Copyright © 2019년 swuad_14. All rights reserved.
//

import Foundation

struct ComputerList: Codable {
    var computer: [Condition]

}

struct Condition: Codable {
    var image: URL // 이미지
    var name: String
    var spec: String
    var program: String
    var day: String
    var notice: String
    var type: String
}

struct User: Codable {
    var username: String // 아이디
    var password: String // 비밀번호
    var name: String // 이름
    var dept: String // 학과
    var studentID: String // 학번
    
}
struct Post: Codable{
    var id: Int // 작성자
    var text: String // 글 내용
    var created_date:String // 글 쓴 날짜
}


struct Rsv: Codable {
    var author: String // 글 작성자
    var name: String
    var classRoom: String
    var rsvTime: String
    var rsvDate: String
    var rsvPeopleNum: String
}
