//
//  Person.swift
//  100 Days project 10
//
//  Created by Zodino BLR on 5/23/21.
//  Copyright © 2021 Zodino BLR. All rights reserved.
//

import UIKit

class Person: NSObject, NSCoding {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "name") as? String ?? ""
        image = aDecoder.decodeObject(forKey: "image") as? String ?? ""
    }

    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, value(forKey: "name")
            aCoder.encode(image, forKey: "image")
    }
}
