//
//  ViewController.swift
//  Login
//
//  Created by K2 - Diogo Goncalves Rodrigues on 17/08/20.
//  Copyright © 2020 DigitalHouse. All rights reserved.
//

import UIKit


class Usuario {
    
    var email: String?
    var password: String?
    
    
    init(email: String?, password: String?) {
        
        self.email = email
        self.password = password
    }
    
    init() {
        self.email = nil
        self.password = nil
    }
}




class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registrationButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
//    var usuario: Usuario = Usuario(email: nil, password: nil)
    
//    Outras opcoes de declarar as variaveis do projeto
//    var usuario: Usuario?
//    var senha: Senha?
   
//    Outras opcoes de declarar as variaveis do projeto
//    var usuario: Usuario = Usuario()
//    var senha: Usuario = Usuario()
    
    var usuario: Usuario = Usuario()
    
//check se o botao esta habilitado ou nao
    func enableButton(value: Bool) {
        
        if value{
            self.registrationButton.backgroundColor = UIColor(red: 35/255, green: 112/255, blue: 239/255, alpha: 1.0)
            self.loginButton.backgroundColor = UIColor(red: 35/255, green: 112/255, blue: 239/255, alpha: 1.0)
        }else{
            self.registrationButton.backgroundColor = UIColor(red: 35/255, green: 112/255, blue: 239/255, alpha: 0.4)
            self.loginButton.backgroundColor = UIColor(red: 35/255, green: 112/255, blue: 239/255, alpha: 0.4)
        }
        self.loginButton.isEnabled = value
        self.registrationButton.isEnabled = value
    }
    
    func clearFields() {
        self.emailTextField.text = nil
        self.passwordTextField.text = nil
    }
    
    func checkIsValidFields() -> Bool {
        
        if !(self.usuario.email?.isEmpty ?? false) && !(self.usuario.password?.isEmpty ?? false) {
            self.enableButton(value: true)
            return true
        }
        self.enableButton(value: false)
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.enableButton(value: false)
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedLoginButton(_ sender: UIButton) {
        
        if self.emailTextField.text == usuario.email && self.passwordTextField.text == usuario.password {
            self.view.backgroundColor = .green
        }else{
            self.view.backgroundColor = .red
        }
        
        print("tappedLoginButton")
    }


    @IBAction func tappedRegistrationButton(_ sender: UIButton) {
        
        self.emailTextField.resignFirstResponder()
        self.passwordTextField.resignFirstResponder()
        print("tappedregistrationButton")
        
        if self.checkIsValidFields() {
            self.clearFields()
        }
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == self.emailTextField {
            self.passwordTextField.becomeFirstResponder()
        }else{
            self.passwordTextField.resignFirstResponder()
        }
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if textField == self.emailTextField{
            self.usuario.email = textField.text
        }else{
            self.usuario.password = textField.text
        }
        
        print(self.usuario.email)
        print(self.usuario.password)
        
        let _ = self.checkIsValidFields()
    
    }
}

