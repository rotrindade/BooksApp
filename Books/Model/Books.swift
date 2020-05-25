//
//  Books.swift
//  Books
//
//  Created by Rodrigo Trindade on 25/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import Foundation

struct Books: Codable {
    
    let titulo: String
    let autor: String
    let editora: String
    let categorias: String
    let classificacao: Double
    let resumo: String
    let imagem: String
    
    var ratingFormatted: String {
        return "⭐️ \(classificacao)/5.0"
    }
    
}
