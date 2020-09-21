//
//  CatView.swift
//  CatExpo
//
//  Created by Nimer Farahty on 9/7/20.
//  Copyright © 2020 Nimer Farahty. All rights reserved.
//

import SwiftUI

struct CatView: View {
    
    let cat: Cat
    
    var body: some View {
        HStack {
            ImageView(cat: cat)
            VStack( alignment: .leading ) {
                Text(cat.name).font(.title)
                Text(cat.breed).font(.body)
                Text(cat.registry).font(.caption)
            }
        }
    }
}

struct CatView_Previews: PreviewProvider {
    static var previews: some View {
        Group {            
            CatView(cat: Cat.all()[0]).environment(\.sizeCategory, .small)
            CatView(cat: Cat.all()[0]).environment(\.sizeCategory, .large)
            CatView(cat: Cat.all()[0]).environment(\.sizeCategory, .extraExtraExtraLarge)
        }.previewLayout(.sizeThatFits)
    }
}
