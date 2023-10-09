//
//  PostsDataModel.swift
//  Posts
//
//  Created by Marta Kalichynska on 06.10.2023.
//

import Foundation

<<<<<<< HEAD
struct Posts: Decodable {
    let posts: [PostsData]
}

struct PostsData: Decodable {
=======
struct Posts {
    let posts: [PostsData]
}

struct PostsData {
>>>>>>> 1725053 (Add files via upload)
    let postId: Int
    let timeshamp: Int
    let title: String
    let preview_text: String
    let likes_count: Int
}
