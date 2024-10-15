//
//  CriançaViewController.swift
//  estudoIMC
//
//  Created by Sthashy Vieira on 11/10/24.
//

import UIKit

class IdosoViewController: UIViewController {
    
    var idoso : IdosoScreen?
    
    override func loadView() {
        idoso = IdosoScreen()
        view = idoso
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor =  UIColor(red: 0.00, green: 0.76, blue: 0.80, alpha: 1.00)
    }
    
    
    
}

extension IdosoViewController : imcIdoso {
    func appendIdoso() {
        
        guard let peso = Double(idoso?.pesoTextField.text ?? ""),
              let altura = Double(idoso?.alturaTextField.text ?? ""), altura > 0 else {
            idoso?.resultadoLabel.text = "Por Favor, insira valores válidos"
            return
        }
        
        
        let imc = peso / (altura * altura)
        
        
        var   resultado : String
        if imc < 22 {
            resultado = String(format: "Seu IMC é %.2f - (Abaixo do peso)", imc)
        } else if imc >= 22 && imc < 27 {
            resultado = String(format: "Seu IMC é %.2f - (Normal)",imc)
        } else if imc >= 27 && imc < 30  {
            resultado = String(format: "Seu IMC é %.2f - (Sobrepeso)", imc )
        } else  {
            resultado = String(format: "Seu IMC é %.2f - (Obesidade) ")
        }
        
        idoso?.resultadoLabel.text = resultado
        
    }
    
}
