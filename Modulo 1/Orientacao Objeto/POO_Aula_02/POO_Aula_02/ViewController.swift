//
//  ViewController.swift
//  POO_Aula_02
//
//  Created by K2 - Diogo Goncalves Rodrigues on 29/07/20.
//  Copyright © 2020 DigitalHouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var cat1: Cat = Cat(name: "Gato1", color: "Preto")
        print(cat1.miar())
        cat1.eatFish()
        
        
        var cow1: Cow = Cow(name: "vaca1", color: "Gray", literMilk: 10)
        print(cow1.mugir())
        cow1.eatGrass()
        
        
        
        
        let gato = Gato(umNomeQualquer: "Diogo")
        gato.nome = "Diogo"
      
        
        let aluno1 = Aluno(nome: "DIOGO")
        print("---------------Classe-------------------")
        print("Aluno1: \(aluno1.nome)")
        print("----------------------------------------")
        print("----------------------------------------")
        let aluno2: Aluno = aluno1
        aluno2.nome = "Slip"
        print("Aluno1: \(aluno1.nome)")
        print("Aluno1: \(aluno2.nome)")
        print("---------------Struct-------------------")
        var professor1 = Professor(nome: "Agora Vai")
        print("professor1: \(professor1.nome)")
        print("----------------------------------------")
        print("----------------------------------------")
        var professor2 = professor1
        professor2.nome = "Timao"
        print("professor1: \(professor1.nome)")
        print("professor2: \(professor2.nome)")
        print("----------------------------------------")
        print("----------------------------------------")
        professor1.nome = "Death"
        print("professor1: \(professor1.nome)")
        print("professor2: \(professor2.nome)")
        print("----------------------------------------")
        print("----------------------------------------")
        
        let cachorro = Cachorro()

        cachorro.qtd_patas = 4
        cachorro.qtd_eyes = 2
        cachorro.som = "Rugido"
        
        cachorro.apresentar(tipo_animal: "Dog")
        
        // Do any additional setup after loading the view.
    }
    
    

///////////////////////////////////////

}

class Aluno{
    var nome: String

    init(nome: String){
        self.nome = nome
    }

}

struct Professor {
    var nome: String
}


class Cat: Enimal {
    
    override init(name: String?, color: String?) {
        
        self.name = name
        self.color = color
    }
    
    func miar() -> String {
        return "Miaaaaaaaauuuu"
    }
    
    func eatFish() {
        print("Devorando um Peixe")
    }
}
    

class Cow: Enimal {

    var literMilk: Int?
    
    init(name: String?, color: String?, literMilk: Int?) {
       
        super.init(name: name, color: color)
        self.literMilk = literMilk
    }
    
    func mugir() -> String {
        return "Muuuuuuuuuu"
    }

    func eatGrass() {
        print ("Devorando um Capin")
    }
    
    override func sendSound() -> String {
        return "Muuuuuu"
    }
    
    override func eat() {
        print("Devorando um Capim")
    }
    
}
    

class Enimal {
    var name: String?
    var color: String?
    
    init(name: String?, color: String?) {
        
        self.name = name
        self.color = color
    }
    
    
    func sendSound() -> String {
        return "O Animal está emitindo um Som"
    }
    
    func eat(){
        print("O Animal está correndo")
    }
}
