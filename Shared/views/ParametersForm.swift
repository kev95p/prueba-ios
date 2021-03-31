//
//  ParametersForm.swift
//  PruebaTecnica (iOS)
//
//  Created by Kevin Pleitez on 3/30/21.
//

import SwiftUI

struct ParametersForm: View {
    
    var postsStore: PostsStore
    var postsPresenter: PostsPresenterProtocol
    
    var orderOptions = ["Descendente","Ascendente"]
    var sortOptions = ["Votos","Mas Recientes","Mas Actividad"]
    
    @State var orderSelected = 0
    @State var sortSelected = 0
    @State var date = Date()
    
    init(store: PostsStore, presenter: PostsPresenterProtocol){
        postsStore = store;
        postsPresenter = presenter
    }
        
    func getParameters() -> Parameters{
        let p = Parameters(sortOption: self.sortSelected, orderOption: orderSelected, creationDate: Int(date.timeIntervalSince1970))
        return p
    }
    
    var body: some View {
        Form{
            Picker("Criterio",selection: $sortSelected ){
                ForEach(0 ..< sortOptions.count){
                    Text(self.sortOptions[$0])
                }
                
            }
            Picker("Orden",selection: $orderSelected ){
                ForEach(0 ..< orderOptions.count){
                    Text(self.orderOptions[$0])
                }
                .pickerStyle(WheelPickerStyle())
            }
            
            DatePicker("Fecha publicación",selection: $date)
            NavigationLink(destination: PostsView(store: postsStore, presenter: postsPresenter,parameters: getParameters())){
                Text("Buscar publicaciones")
            }
        }
    }
}
