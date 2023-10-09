//
//  PostsDataModel.swift
//  Posts
//
//  Created by Marta Kalichynska on 06.10.2023.
//

import Foundation

struct Posts {
    let posts: [PostsData]
}

struct PostsData {
    let postId: Int
    let timeshamp: Int
    let title: String
    let preview_text: String
    let likes_count: Int
}
