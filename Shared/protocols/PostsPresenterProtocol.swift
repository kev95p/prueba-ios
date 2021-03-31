//
//  UserPresenterProtocol.swift
//  PruebaTecnica (iOS)
//
//  Created by Kevin Pleitez on 3/30/21.
//

protocol PostsPresenterProtocol: AnyObject {
  func fetchPosts(_ parameters:Parameters)
  func sortByName()
  func sortByAge()
}

