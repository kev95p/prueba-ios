//
//  PostsServices.swift
//  PruebaTecnica (iOS)
//
//  Created by Kevin Pleitez on 3/30/21.
//

class PostsService: PostsServiceProtocol{
    var client = ApiClient()
    func fetchPosts(_ parameters:Parameters,completion: @escaping ([Post]) -> Void) {
        client.getPosts(parameters) { (response) in
            completion(response.items)
        }
    }
    
}
