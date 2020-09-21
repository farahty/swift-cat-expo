//
//  ImageView.swift
//  CatExpo
//
//  Created by Nimer Farahty on 9/7/20.
//  Copyright © 2020 Nimer Farahty. All rights reserved.
//

import SwiftUI
import URLImage

struct ImageView: View {
    
    let cat: Cat
    
    var body: some View {
        withAnimation {
            URLImage(
                URL(string: cat.image)!,
                delay: 0.25,
                placeholder: {
                ProgressView($0){ progress in
                    ZStack{
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 180, height: 100)
                            .foregroundColor(.gray)
                            .opacity(0.5)
                        CircleProgressView(progress)
                            .stroke(lineWidth: 8.0).frame(width: 180, height: 100)
                    }
                }
                
                
            }){ proxy in
                proxy.image
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 180)
            }
            .padding([.vertical],5)
            
        }
    }
}


struct ImageView_Previews: PreviewProvider {
    
    static var previews: some View {
        ImageView(cat: Cat.all()[0]).previewLayout(.sizeThatFits)
    }
}
