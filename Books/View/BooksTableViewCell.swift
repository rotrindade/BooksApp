//
//  BooksTableViewCell.swift
//  Books
//
//  Created by Rodrigo Trindade on 25/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

class BooksTableViewCell: UITableViewCell {

    @IBOutlet weak var imageBooks: UIImageView!
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var labelClassificacao: UILabel!
    @IBOutlet weak var labelCategoria: UILabel!
    
    func configure(with books: Books) {
        imageBooks.image = UIImage(named: books.imagem)
        labelTitulo.text = books.titulo
        labelClassificacao.text = books.ratingFormatted
        labelCategoria.text = books.categorias
    }

}
