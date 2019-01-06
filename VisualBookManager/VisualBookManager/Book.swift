//
//  Book.swift
//  BookManager
//
//  Created by minjun.ha on 05/01/2019.
//  Copyright © 2019 minjun.ha. All rights reserved.
//

import Foundation

struct Book {
    var name:String?
    var genre:String?
    var author:String?
    
    
    func bookPrint() {
        print("Name \(name!) Genre \(genre!) Author \(author!)")
    }
}
