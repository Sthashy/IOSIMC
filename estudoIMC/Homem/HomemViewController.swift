//
//  HomemViewController.swift
//  estudoIMC
//
//  Created by Sthashy Vieira on 11/10/24.
//

import UIKit

class HomemViewController: UIViewController {

    var homem : HomemScreen?
    
    override func loadView() {
        homem = HomemScreen()
        view = homem
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homem?.delegate = self
        view.backgroundColor = UIColor(red: 0.38, green: 0.81, blue: 1.00, alpha: 1.00)
        // Do any additional setup after loading the view.
    }
    


}

extension HomemViewController : imcHomem {
    func appendHomem() {
        guard let peso = Double(homem?.pesoTextField.text ?? ""),
              let altura = Double(homem?.alturaTextField.text ?? ""), altura > 0  else {
            homem?.resultadoLabel.text = "Por favor, insira valores válidos."
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
        
        homem?.resultadoLabel.text = resultado
    }
    
    
    
    
    
}
