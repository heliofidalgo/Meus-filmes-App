//
//  Filme.swift
//  Meus filmes teste
//
//  Created by Helio Marcus Nery Fidalgo on 08/11/21.
//  Copyright © 2021 Curso IOS. All rights reserved.
//

import UIKit

class Filme{
    var titulo: String!
    var descricao: String!
    var imagem: UIImage!
    
    init(titulo: String, descricao: String, imagem: UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
    
}
