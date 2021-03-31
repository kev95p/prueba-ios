//
//  UserPresenter.swift
//  PruebaTecnica (iOS)
//
//  Created by Kevin Pleitez on 3/30/21.
//

class PostsPresenter: PostsPresenterProtocol {
    
  private var service: PostsServiceProtocol
  private weak var delegate: PostsPresenterDelegate?
  private var posts: [Post] = []
    
  init(service: PostsServiceProtocol, delegate: PostsPresenterDelegate?) {
    self.service = service;
    self.delegate = delegate;
  }
  
    func fetchPosts(_ parameters:Parameters) {
    service.fetchPosts(parameters) { [weak self] result in
        if(result.isEmpty){
            self?.delegate?.render(errorMessage: "Vacio")
        }
        else{
            self?.posts = result
            self?.delegate?.render(posts: result)
        }
    }
  }

    
  func sortByName() {  }
  func sortByAge() { }
}
