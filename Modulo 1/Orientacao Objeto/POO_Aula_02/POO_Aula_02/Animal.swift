//
//  Animal.swift
//  POO_Aula_02
//
//  Created by K2 - Diogo Goncalves Rodrigues on 29/07/20.
//  Copyright © 2020 DigitalHouse. All rights reserved.
//

import UIKit

class Animal: NSObject {
    
    var qtd_patas: Int?
    var qtd_eyes: Int?
    var som: String?
    
    
    func apresentar(tipo_animal: String){
        print("Oi eu sou um animal \(tipo_animal), tenho \(qtd_patas ?? 0) e emito esse som \(som ?? "")")
        
    }

}
