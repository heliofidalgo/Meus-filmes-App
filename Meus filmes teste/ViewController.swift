//
//  ViewController.swift
//  Meus filmes teste
//
//  Created by Helio Marcus Nery Fidalgo on 08/11/21.
//  Copyright © 2021 Curso IOS. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var filmes: [Filme] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        filme = Filme(titulo:"007 - Spectre", descricao: "James Bond chega à Cidade do México.....\n" + "E ele e está pronto para eliminar Marco Sciarra sem que o chef M saiba da missão. O caso leva à suspensão temporária do agente, que passa a ser constantemente vigiado pelo governo britânico graças a uma tecnologia implantada em seu corpo por Q. Na tentativa de despistar os inimigos e até mesmo alguns de seus parceiros de trabalho, ele se responsabiliza por ajudar a filha de um desafeto. Toda a situação o leva ao centro de uma temida organização denominada Spectre.", imagem: #imageLiteral(resourceName: "filme1"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Star Wars", descricao: "A queda de Darth Vader....\n" + "Também levou a queda do Império e levou ao surgimento de uma nova força sombria: a Primeira Ordem. Eles procuram o jedi Luke Skywalker, desaparecido. A resistência tenta desesperadamente encontrá-lo antes para salvar a galáxia.", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Impacto Mortal", descricao: "Colt e John são pistoleiros e amantes ocasionais.\n" +  "Vivendo entre os encontros e desencontros, eles gostam mesmo é da adrenalina proporcionada pelas aventuras paralelas e pelos duelos perigosos de que participam na América do Sul. Tudo muda depois que o irmão dele é assassinado e eles acabam no meio de um jogo sujo e misterioso em que podem contar apenas um com o outro para sobreviver. Pelo menos até conseguirem localizar e se vingar do inimigo.", imagem: #imageLiteral(resourceName: "filme3"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Deadpool", descricao: "Wade Wilson é um ex-agente especial\n" + "Ele passou a trabalhar como mercenário. Seu mundo é destruído quando um cientista maligno o tortura e o desfigura completamente. O experimento brutal transforma Wade em Deadpool, que ganha poderes especiais de cura e uma força aprimorada. Com a ajuda de aliados poderosos e um senso de humor mais desbocado e cínico do que nunca, o irreverente anti-herói usa habilidades e métodos violentos para se vingar do homem que quase acabou com a sua vida.", imagem: #imageLiteral(resourceName: "filme4"))
        filmes.append( filme )
        
        filme = Filme(titulo:"O Regresso", descricao: "Após ser atacado por um urso.\n"  + "O caçador Hugh Glass é abandonado na floresta por seu companheiro John Fitzgerald. Apesar de muito ferido, Glass consegue sobreviver e vai em busca de vingança.", imagem: #imageLiteral(resourceName: "filme5"))
        filmes.append( filme )
        
        filme = Filme(titulo:"A Herdeira", descricao: "descricao 6", imagem: #imageLiteral(resourceName: "filme6"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Caçadores de emoção", descricao: "descricao 7", imagem: #imageLiteral(resourceName: "filme7"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Regresso do mal", descricao: "descricao 8", imagem: #imageLiteral(resourceName: "filme8"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Tarzan", descricao: "descricao 9", imagem: #imageLiteral(resourceName: "filme9"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Filme 9", descricao: "descricao 10", imagem: #imageLiteral(resourceName: "filme10"))
        filmes.append( filme )
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let filme: Filme = filmes[ indexPath.row ]
        let celula = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath) as! FilmeCelula
        
        celula.filmeImageView.image = filme.imagem
        celula.tituloLabel.text = filme.titulo
        celula.descricaoLabel.text = filme.descricao
         
        // linha de codigo que arredonda a imagem do filme no app
        celula.filmeImageView.layer.cornerRadius = 42
        celula.filmeImageView.clipsToBounds = true
        
        /*celula.textLabel?.text = filme.titulo
        celula.imageView?.image = filme.imagem*/
        
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detalheFilme" {
        
            if let indexPath = tableView.indexPathForSelectedRow {
                 
                let filmeSelecionado = self.filmes[indexPath.row ]
                let viewControllerDestino = segue.destination as! DetalhesFilmeViewController
                viewControllerDestino.filme = filmeSelecionado
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

