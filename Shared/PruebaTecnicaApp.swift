//
//  PruebaTecnicaApp.swift
//  Shared
//
//  Created by Kevin Pleitez on 3/30/21.
//

import SwiftUI

@main
struct PruebaTecnicaApp: App {
    var postsStore: PostsStore
    var postsPresenter: PostsPresenterProtocol
    
    init(){
        postsStore = PostsStore()
        postsPresenter = PostsPresenter(service: PostsService(),delegate: postsStore)
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                /*PostsView(store: postsStore, presenter: postsPresenter)
                    .navigationTitle("Publicaciones")*/
                /*NavigationLink(destination: Text("Second View")){
                    Text("Ejecutar metodo")
                }*/
                ParametersForm(store:postsStore,presenter:postsPresenter)
                    .navigationTitle("Opciones")
            }
        }
    }
}
