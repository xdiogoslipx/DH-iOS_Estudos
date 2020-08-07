//
//  CalculadoraView.swift
//  CalculadoraIMC
//
//  Created by K2 - Diogo Goncalves Rodrigues on 07/08/20.
//  Copyright © 2020 DigitalHouse. All rights reserved.
//

import UIKit

class CalculadoraView: UIView {

    @IBOutlet weak var pesoTextField: UITextField!
    @IBOutlet weak var alturaTextField: UITextField!
    
    
    
    
    func setupView(color: UIColor) {
        
        self.alturaTextField.placeholder = "Altura"
        self.pesoTextField.placeholder = "Peso"
        self.backgroundColor = color
        
    }
    
    
   
    func calcularIMC() -> String {
        
//        guard let altura = self.alturaTextField.text else{return ""}
//        let alturaFloat: Float? = Float(alturaText) ??
        
//        guard let alturaText = self.alturaTextField?.text, let altura = Float(alturaText) else {return ""}
//        guard let pesoText = self.pesoTextField?.text, let peso = Float(pesoText) else {return ""}
        
        let height: Float = Float(self.alturaTextField.text ?? "") ?? 0
        let weight: Float = Float(self.pesoTextField.text ?? "") ?? 0
        
        let height2 = height * height
        let imc = weight/height2
        
        if imc < 16 {
            return "Abaixo do Peso"
        } else if imc >= 19 && imc < 25 {
            return "Peso normal"
        } else if imc >= 25 && imc < 30 {
            return "Sobrepeso"
        } else if imc >= 30 && imc < 40 {
            return "Obesidade Grau 1"
        } else if imc > 40 {
            return "Obesidade Grau 2"
        }
        
        return "Nao conseguimos calcular"
    }
    

}
