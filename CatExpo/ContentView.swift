//
//  ContentView.swift
//  CatExpo
//
//  Created by Nimer Farahty on 9/6/20.
//  Copyright © 2020 Nimer Farahty. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isOpen = false
    let cats:[Cat] = Cat.all()
    func onDeleteCat(index: IndexSet){
        
    }
    var body: some View {
        NavigationView{
            List{
                ForEach(cats){ cat in
                    NavigationLink(destination: ImageView(cat: cat)) {
                        CatView(cat: cat)
                    }
                }.onDelete(perform: onDeleteCat)
            }.navigationBarTitle("Cats Expo")
                .navigationBarItems(
                    trailing: Button(
                        action: {
                            self.isOpen.toggle()
                    }
                    ){
                        Image(systemName: "heart")                        
                    }
            )
                .sheet(isPresented: $isOpen) {
                    ImagePicker(sourceType: .photoLibrary) { _ in
                            
                    }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
