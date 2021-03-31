//
//  Post.swift
//  PruebaTecnica (iOS)
//
//  Created by Kevin Pleitez on 3/30/21.
//

struct Post: Decodable{
    var owner: PostOwner
    var score: Int
    var last_activity_date: Int
    var creation_date: Int
    var post_type: String
    var content_license: String
    var link: String
    var title: String
}

struct PostOwner: Decodable{
    var reputation: Int
    var user_id: Int
    var user_type: String
    var profile_image: String
    var display_name: String
    var link: String
}

struct PostsResponse: Decodable{
    var items: [Post]
}
