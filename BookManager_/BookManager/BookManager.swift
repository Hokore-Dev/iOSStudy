//
//  BookManager.swift
//  BookManager
//
//  Created by minjun.ha on 05/01/2019.
//  Copyright © 2019 minjun.ha. All rights reserved.
//

import Foundation

class BookManager {
    var bookList = [Book]()
    
    func RegisterBook(bookObject: Book) {
        bookList += [bookObject]
    }
    
    func ShowAllBooks() -> String {
        var strTemp = ""
        for bookTemp in bookList {
            strTemp += "Name \(bookTemp.name)"
            strTemp += "Genre \(bookTemp.genre)"
            strTemp += "Author \(bookTemp.author)"
        }
        return strTemp
    }
    
    func CountBooks() -> Int {
        return bookList.count
    }
    
    func SearchBook(name:String) -> String? {
        var strTemp = ""
        for bookTemp in bookList {
            if bookTemp.name == name {
                strTemp += "Name \(bookTemp.name)"
                strTemp += "Genre \(bookTemp.genre)"
                strTemp += "Author \(bookTemp.author)"
                return strTemp
            }
        }
        return nil
    }
    
    func RemoveBook(name:String) {
        for (index, value) in bookList.enumerated() {
            if value.name == name {
                bookList.remove(at: index)
                break
            }
        }
    }
}
