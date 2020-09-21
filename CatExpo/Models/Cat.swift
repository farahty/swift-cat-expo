//
//  Cat.swift
//  CatExpo
//
//  Created by Nimer Farahty on 9/6/20.
//  Copyright © 2020 Nimer Farahty. All rights reserved.
//

import Foundation
import Fakery

struct Cat: Identifiable,Codable {
    let id = UUID()
    let name: String
    let image: String
    let breed: String
    let registry: String
}


extension Cat {
    static func all()->[Cat] {
        var list = [Cat]()
        let faker = Faker(locale: "en")
        
        
        
        for _ in 0..<20 {
            let image = "http://lorempixel.com/180/100/cats/?random=\(faker.number.randomInt())"
            list.append(Cat(name: faker.cat.name(), image: image, breed: faker.cat.breed(), registry: faker.cat.registry()))
        }
        
        
        return list
    }
}



