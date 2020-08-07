//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by K2 - Diogo Goncalves Rodrigues on 07/08/20.
//  Copyright © 2020 DigitalHouse. All rights reserved.
//

import UIKit

class CalculadoraVC: BaseViewController {
    
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var calcView: CalculadoraView!
    @IBOutlet weak var resultsLabelInfo: UILabel!
    @IBOutlet weak var calcularButton: UIButton!
    @IBOutlet weak var containersView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.setupView()
        
        // Do any additional setup after loading the view.
    }


    @IBAction func clickCalcularButton(_ sender: UIButton) {
        self.resultadoLabel.text = self.calcView.calcularIMC()
    }
    
    override func setupView() {
        self.calcView.setupView(color: .black)
        self.view.backgroundColor = .green
        self.resultsLabelInfo.textColor = .white
        self.resultadoLabel.backgroundColor = .black
        self.resultadoLabel.textColor = .white
        self.calcularButton.backgroundColor = .white
        self.containersView.backgroundColor = .black
        self.calcularButton.setTitleColor(.white, for: .normal)
        self.calcularButton.backgroundColor = .black
    }
    
}

