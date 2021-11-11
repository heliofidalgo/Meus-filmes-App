//
//  DetalhesFilmeViewController.swift
//  Meus filmes teste
//
//  Created by Helio Marcus Nery Fidalgo on 08/11/21.
//  Copyright © 2021 Curso IOS. All rights reserved.
//

import Foundation
import UIKit

class DetalhesFilmeViewController: UIViewController {
    
    @IBOutlet weak var filmeimageView: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    
    var filme : Filme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmeimageView.image = filme.imagem
        tituloLabel.text = filme.titulo
        descricaoLabel.text = filme.descricao
        
    }
}
