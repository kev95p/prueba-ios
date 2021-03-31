//
//  UserPresenterDelegate.swift
//  PruebaTecnica (iOS)
//
//  Created by Kevin Pleitez on 3/30/21.
//

protocol PostsPresenterDelegate: AnyObject {
  func render(errorMessage: String)
  func renderLoading()
  func render(posts: [Post])
}
