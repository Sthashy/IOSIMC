//
//  CriançaScreen.swift
//  estudoIMC
//
//  Created by Sthashy Vieira on 11/10/24.
//

import UIKit

protocol imcIdoso : AnyObject {
    
    
    func appendIdoso()
    
    
}
    
class IdosoScreen: UIView {
        
        
        weak var delegate : imcIdoso?
        
        lazy var imageView : UIImageView = {
            
            var image = UIImageView()
            image.translatesAutoresizingMaskIntoConstraints = false
            image.image = UIImage(named: "Idoso")
            
            
            
            return image
        }()
        
        // Campo de texto para inserir o peso
        lazy var pesoTextField: UITextField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.placeholder = "Digite seu peso (kg)"
            textField.borderStyle = .roundedRect
            textField.keyboardType = .decimalPad
            return textField
        }()
        
        // Campo de texto para inserir a altura
        lazy var alturaTextField: UITextField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.placeholder = "Digite sua altura (m)"
            textField.borderStyle = .roundedRect
            textField.keyboardType = .decimalPad
            return textField
        }()
        
        // Botão para calcular o IMC
        lazy var calcularButton: UIButton = {
            let button = UIButton(type: .system)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Calcular IMC", for: .normal)
            button.backgroundColor = .lightGray
            button.clipsToBounds = true
            button.layer.cornerRadius = 8
            button.tintColor = .white
            button.addTarget(self, action: #selector(calcularIMC), for: .touchUpInside)
            return button
        }()
        
        
        @objc func calcularIMC(){
            
            
            delegate?.appendIdoso()
            
            
        }
        
        // Label para exibir o resultado
        lazy var resultadoLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Seu IMC será exibido aqui"
            label.textAlignment = .center
            label.numberOfLines = 0
            return label
        }()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            
            setupView()
            setupConstrais()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        
        private func setupView() {
            addSubview(imageView)
            addSubview(pesoTextField)
            addSubview(alturaTextField)
            addSubview(calcularButton)
            addSubview(resultadoLabel)
            
            
        }
        
        func setupConstrais(){
            
            
            NSLayoutConstraint.activate([
                // Constraints para a imageView
                imageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 60),
                imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                imageView.heightAnchor.constraint(equalToConstant: 150),
                imageView.widthAnchor.constraint(equalToConstant: 150),
                
                // Constraints para o pesoTextField
                pesoTextField.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 80),
                pesoTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
                pesoTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
                pesoTextField.heightAnchor.constraint(equalToConstant: 50),
                
                // Constraints para o alturaTextField
                alturaTextField.topAnchor.constraint(equalTo: pesoTextField.bottomAnchor, constant: 20),
                alturaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
                alturaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
                alturaTextField.heightAnchor.constraint(equalToConstant: 50),
                
                // Constraints para o calcularButton
                calcularButton.topAnchor.constraint(equalTo: alturaTextField.bottomAnchor, constant: 30),
                calcularButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                calcularButton.heightAnchor.constraint(equalToConstant: 50),
                calcularButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
                calcularButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
                calcularButton.widthAnchor.constraint(equalToConstant: 400),
                
                // Constraints para o resultadoLabel
                resultadoLabel.topAnchor.constraint(equalTo: calcularButton.bottomAnchor, constant: 50),
                resultadoLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
                resultadoLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            ])
            
        }
        
    }
    
    
#Preview("UIkit"){
    
    IdosoViewController()
    
}
    
    
    

