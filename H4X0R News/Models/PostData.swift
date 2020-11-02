//
//  PostData.swift
//  H4X0R News
//
//  Created by Tiger Mei on 02.11.2020.
//  Copyright © 2020 Tiger Mei. All rights reserved.
//

import Foundation

struct Results : Decodable {
    let hits: [Post]
}

struct Post : Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let created_at : String
    let story_title: String?
    let points : Int?
    let story_url : String?
    let objectID: String
}
