//
//  BooksViewController.swift
//  Books
//
//  Created by Rodrigo Trindade on 25/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

class BooksViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var imageBook: UIImageView!
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var labelAutor: UILabel!
    @IBOutlet weak var labelEditora: UILabel!
    @IBOutlet weak var labelCategoria: UILabel!
    @IBOutlet weak var labelClassificacao: UILabel!
    @IBOutlet weak var labelResumo: UITextView!
    
    // MARK: - Properties
    var books: Books?
    
    // MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let books = books {
            imageBook.image = UIImage(named: books.imagem)
            labelTitulo.text = books.titulo
            labelAutor.text = books.autor
            labelEditora.text = books.editora
            labelCategoria.text = books.categorias
            labelClassificacao.text = books.ratingFormatted
            labelResumo.text = books.resumo
            
        }
        
    }
    
}

