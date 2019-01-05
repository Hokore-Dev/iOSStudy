//
//  main.swift
//  BookManager
//
//  Created by minjun.ha on 05/01/2019.
//  Copyright © 2019 minjun.ha. All rights reserved.
//

import Foundation

var book1 = Book(name: "Ho", genre: "No", author: "WO")
book1.bookPrint()


var myBookManager = BookManager()
myBookManager.RegisterBook(bookObject: book1)
print(myBookManager.ShowAllBooks())
print(myBookManager.CountBooks())

//var result = myBookManager.SearchBook(name: "Ho")
//if result != nil {
//    print(result)
//}
//else {
//    print("null!")
//}

if let result = myBookManager.SearchBook(name: "Ho") {
    print(result)
} else {
    print("null!")
}

myBookManager.RemoveBook(name: "Ho")
print(myBookManager.ShowAllBooks())
print(myBookManager.CountBooks())

