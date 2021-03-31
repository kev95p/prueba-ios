//
//  ApiClient.swift
//  PruebaTecnica (iOS)
//
//  Created by Kevin Pleitez on 3/30/21.
//

import Alamofire

class ApiClient{
    static var URL = "https://api.stackexchange.com/2.2/"
    static var POST_ENDPOINT = "posts?order=:order&sort=:sort&site=stackoverflow&filter=!9_bDDt835"
    static let sort_values = ["votes","creation","activity"];
    static let order_values = ["desc","asc"]
    
    
    func getPosts(_ parameters: Parameters ,completion: @escaping (PostsResponse) -> Void){
        
        var endpont = ApiClient.URL + ApiClient.POST_ENDPOINT
        endpont = endpont.replacingOccurrences(of: ":order", with:ApiClient.order_values[parameters.orderOption])
        endpont = endpont.replacingOccurrences(of: ":sort", with:ApiClient.sort_values[parameters.sortOption])
        
        AF.request(endpont).responseDecodable(of:PostsResponse.self){ r in
            guard let posts = r.value else {return }
            completion(posts)
        }
    }
}
