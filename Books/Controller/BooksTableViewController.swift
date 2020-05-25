//
//  BooksTableViewController.swift
//  Books
//
//  Created by Rodrigo Trindade on 25/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

class BooksTableViewController: UITableViewController {

    
    // MARK: - Properties
    var book: [Books] = []
    
    // MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        loadBooks()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bookViewController = segue.destination as? BooksViewController
        if let booksIndex = tableView.indexPathForSelectedRow?.row {
            bookViewController?.books = book[booksIndex]
        }
    }

    // MARK: - Methods
    private func loadBooks() {
        guard let jsonURL = Bundle.main.url(forResource: "livros", withExtension: "json") else {return}
        do {
            let jsonData = try Data(contentsOf: jsonURL)
            let jsonDecoder = JSONDecoder()
            book = try jsonDecoder.decode([Books].self, from: jsonData)
            tableView.reloadData()
        } catch {
            print(error)
        }
    }
    
    // MARK: - TableView  Data Source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return book.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? BooksTableViewCell else {
            return UITableViewCell()
        }
        
        let books = book[indexPath.row]
        cell.configure(with: books)
        
        return cell
        
    }

}

