//
//  ViewController.swift
//  VisualBookManager
//
//  Created by minjun.ha on 06/01/2019.
//  Copyright © 2019 minjun.ha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let myBookManager = BookManager()
    
    @IBOutlet weak var outputTextView: UITextView!
    @IBOutlet weak var titleTextView: UITextField!
    @IBOutlet weak var authorTextView: UITextField!
    @IBOutlet weak var genreTextView: UITextField!
    @IBOutlet weak var numberOfBooks: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let book1 = Book(name: "Ho", genre: "No", author: "WO")
        book1.bookPrint()
        
        myBookManager.RegisterBook(bookObject: book1)
        
        numberOfBooks.text = "\(myBookManager.CountBooks())"
    }
    
    @IBAction func showAllBooksAction(_ sender: Any) {
        outputTextView.text = myBookManager.ShowAllBooks()
    }
    
    @IBAction func searchAction(_ sender: Any) {
        let resultBook = myBookManager.SearchBook(name: titleTextView.text!)
        if resultBook != nil {
            outputTextView.text = resultBook
        } else {
            outputTextView.text = "We don't have book that you search. ^^;"
        }
    }
    
    @IBAction func removeAction(_ sender:Any) {
        myBookManager.RemoveBook(name: titleTextView.text!)
        numberOfBooks.text = "\(myBookManager.CountBooks())"
        outputTextView.text = "\(titleTextView.text!) removed"
    }
    
    @IBAction func registerAction(_ sender: Any) {
        var bookTemp = Book()
        bookTemp.name = titleTextView.text
        bookTemp.author = authorTextView.text
        bookTemp.genre = genreTextView.text
        
        myBookManager.RegisterBook(bookObject: bookTemp)
        outputTextView.text = "\(titleTextView.text!) has been registerd."
        numberOfBooks.text = "\(myBookManager.CountBooks())"
    }
}

