//
//  PostsServicesProtocol.swift
//  PruebaTecnica (iOS)
//
//  Created by Kevin Pleitez on 3/30/21.
//



protocol PostsServiceProtocol: AnyObject {
    func fetchPosts(_ parameters: Parameters,completion: @escaping ([Post]) -> Void)
}

