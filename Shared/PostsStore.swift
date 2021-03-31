//
//  UserStore.swift
//  PruebaTecnica (iOS)
//
//  Created by Kevin Pleitez on 3/30/21.
//
import SwiftUI

class PostsStore: ObservableObject {
    enum State {
      case loading
      case error(message: String)
      case loaded(posts: [Post])
    }
    
    @Published var state: State = .loading
}

extension PostsStore: PostsPresenterDelegate {
    
    func render(errorMessage: String) {
      self.state = .error(message: errorMessage)
    }
    func renderLoading() {
      self.state = .loading
    }
    func render(posts: [Post]) {
        self.state = .loaded(posts: posts)
    }
}
