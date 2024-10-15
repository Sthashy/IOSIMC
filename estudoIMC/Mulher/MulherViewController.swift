//
//  MulherViewController.swift
//  estudoIMC
//
//  Created by Sthashy Vieira on 11/10/24.
//

import UIKit

class MulherViewController: UIViewController {
    
    var mulher : MulherScreen?
    
    
    override func loadView() {
        mulher = MulherScreen()
        view = mulher
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mulher?.delegate = self
        view.backgroundColor = UIColor(red: 0.90, green: 0.88, blue: 1.00, alpha: 1.00)
        
        
    }
    
    
    
}

extension MulherViewController : imcMulher {
    
    func appendMulher() {
        
        guard let peso = Double(mulher?.pesoTextField.text ?? ""),
              let altura = Double(mulher?.alturaTextField.text ?? ""), altura > 0  else {
            mulher?.resultadoLabel.text = "Por favor, insira valores válidos."
            return
        }
        let imc = peso / (altura * altura)
        
        
        let resultado : String
        switch imc {
        case ..<18.5:
            resultado = String(format: "Seu IMC é %.2f - (Abaixo do peso)", imc)
        case 18.5..<24.9:
            resultado = String(format: "Seu IMC é %.2f - (Peso normal)", imc)
        case 24.0..<29.9:
            resultado = String(format: "Seu IMC é %.2f - (Sobrepeso)", imc)
        case 30.0..<34.9:
            resultado = String(format: "Seu IMC é %.2f - (Obesidade grau I)", imc)
        case 35.0..<39.9:
            resultado = String(format: "Seu IMC é %.2f - (Obesidade grau II)", imc)
        case 40.0...:
            resultado = String(format: "Seu IMC é %.2f - (Obesidade grau III)", imc)
        default:
            resultado = "Por favor, insira valores válidos."
        }
        
        mulher?.resultadoLabel.text = resultado
        
    }
    
}
















