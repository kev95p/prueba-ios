//
//  PostsList.swift
//  PruebaTecnica (iOS)
//
//  Created by Kevin Pleitez on 3/30/21.
//

import SwiftUI

struct PostsList: View {
    
    var posts: [Post]
    
    init(posts: [Post]){
        self.posts = posts
    }
    
    var body: some View {
        List(posts,id:\.creation_date){ post in
            PostRow(post: post)
        }
    }
}

struct PostRow: View{
    
    var post: Post
    
    init(post:Post){
        self.post = post
    }
    
    func dateFormat(_ d:Int) -> String{
        let timeInterval = Double(d)
        let dd = Date(timeIntervalSince1970: timeInterval)
        let formater = DateFormatter()
        formater.dateFormat = "dd-MM-yyyy hh:mm"
        return formater.string(from: dd)
    }
    
    var body: some View{
        VStack(alignment: .leading){
            HStack(){
                Text("Titulo: ").font(Font.headline.weight(.bold))
                Text(post.title)
            }.padding(.bottom,10)
            HStack(){
                Text("Usuario: ").font(Font.headline.weight(.bold))
                Text(post.owner.display_name)
            }.padding(.bottom,10)
            HStack(){
                Text("Fecha: ").font(Font.headline.weight(.bold))
                Text(dateFormat(post.creation_date))
            }.padding(.bottom,10)
        }.navigationTitle("Publicaciones")
    }
}
