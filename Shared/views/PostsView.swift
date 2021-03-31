//
//  Posts.swift
//  PruebaTecnica (iOS)
//
//  Created by Kevin Pleitez on 3/30/21.
//

import SwiftUI

struct PostsView: View {
    var presenter: PostsPresenterProtocol
    var parameters:Parameters
    @ObservedObject var store: PostsStore
    
    init(store: PostsStore, presenter: PostsPresenterProtocol,parameters:Parameters){
        self.store = store
        self.presenter = presenter
        self.parameters = parameters
    }
    
    var body: some View {
        VStack{ () -> AnyView in
            switch store.state{
                case .loading:
                    return AnyView(Text("Cargando"))
                case .loaded(let posts):
                    return AnyView(PostsList(posts:posts))
                case .error(message: _):
                    return AnyView(Text("Error"))
            }
        }.onAppear {
            self.presenter.fetchPosts(self.parameters)
        }
    }
}

