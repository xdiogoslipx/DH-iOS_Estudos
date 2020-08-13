//
//  CalculadoraView.swift
//  CalculadoraIMC
//
//  Created by K2 - Diogo Goncalves Rodrigues on 07/08/20.
//  Copyright © 2020 DigitalHouse. All rights reserved.
//

import UIKit


protocol CalculadoraViewProtocol: class {
    
    func successCalcIMC(value: String)
    func failureCalcIMC(msg: String)
    func calcIMC()
    
    
}

class CalculadoraView: UIView {

    @IBOutlet weak var pesoTextField: UITextField!
    @IBOutlet weak var alturaTextField: UITextField!
    
    weak var delegate: CalculadoraViewProtocol?
    
    
    
    func setupView(color: UIColor) {
        
        self.alturaTextField.placeholder = "Altura"
        self.pesoTextField.placeholder = "Peso"
        self.backgroundColor = color
        self.pesoTextField.delegate = self
        self.alturaTextField.delegate = self
        
        // Colocar o Foco no TextField
        self.alturaTextField.becomeFirstResponder()
        
        
        // Tirar o Foco do textField
        //self.pesoTextField.resignFirstResponder()
        
    }
    
    
   
    func calcularIMC() {
        
//        guard let altura = self.alturaTextField.text else{return ""}
//        let alturaFloat: Float? = Float(alturaText) ??
        
//        guard let alturaText = self.alturaTextField?.text, let altura = Float(alturaText) else {return ""}
//        guard let pesoText = self.pesoTextField?.text, let peso = Float(pesoText) else {return ""}
        
        let height: Float = Float(self.alturaTextField.text ?? "") ?? 0
        let weight: Float = Float(self.pesoTextField.text ?? "") ?? 0
        var result: String = "Nao conseguimos calcular"
        
        
        if height <= 0 || weight <= 0 {
            
            self.delegate?.failureCalcIMC(msg: result)
            
        }else{
        
        let height2 = height * height
        let imc = weight/height2
        
        if imc < 16 {
            result = "Abaixo do Peso"
        } else if imc >= 19 && imc < 25 {
            result = "Peso normal"
        } else if imc >= 25 && imc < 30 {
            result = "Sobrepeso"
        } else if imc >= 30 && imc < 40 {
            result = "Obesidade Grau 1"
        } else if imc > 40 {
            result = "Obesidade Grau 2"
        }
        
        self.delegate?.successCalcIMC(value: result)
 
        }
    
    }

}

extension CalculadoraView: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        textField.backgroundColor = .red
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        textField.backgroundColor = .white
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.backgroundColor = .white
        
        if textField == self.alturaTextField {
            self.pesoTextField.becomeFirstResponder()
        }else{
            self.pesoTextField.resignFirstResponder()
            self.delegate?.calcIMC()
        }
        return true
    }
    
        
    
}
