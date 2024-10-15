//
//  HomeStardScreen.swift
//  estudoIMC
//
//  Created by Sthashy Vieira on 15/10/24.
//

import UIKit

protocol imcHomeStardProtocol : AnyObject {
    
    func appendStart()
    
}


class HomeStardScreen: UIView {

    weak var delegate : imcHomeStardProtocol?
    
    
    lazy var imageView : UIImageView = {
        
        var image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "Bicicleta")
        
        
        
        return image
    }()
    lazy var descricaoLabel : UILabel = {
        // Adiciona a descrição
        var descricaoLabel = UILabel()
        descricaoLabel.text = "Comece a acompanhar sua saúde!"
        descricaoLabel.font = UIFont.boldSystemFont(ofSize: 20)
        descricaoLabel.textColor = .black
        descricaoLabel.numberOfLines = 0
        descricaoLabel.textAlignment = .left
        descricaoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return descricaoLabel
    }()
    
    lazy var instrucaoLabel : UILabel = {
        // Adiciona o texto de instrução
        var instrucaoLabel = UILabel()
        instrucaoLabel.text = "Calcule seu IMC e mantenha-se em dia com sua jornada de bem-estar, sem esforço."
        instrucaoLabel.font = UIFont.systemFont(ofSize: 25)
        instrucaoLabel.textColor = .black
        instrucaoLabel.numberOfLines = 0
        instrucaoLabel.textAlignment = .left
        instrucaoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        return instrucaoLabel
    }()
    
    lazy var botaoInicio : UIButton = {
        
        
        // Adiciona o botão
        let botaoInicio = UIButton()
        botaoInicio.setTitle("Começar", for: .normal)
        botaoInicio.backgroundColor = .black
        botaoInicio.setTitleColor(UIColor.white, for: .normal)
        botaoInicio.layer.cornerRadius = 20
        botaoInicio.translatesAutoresizingMaskIntoConstraints = false
        botaoInicio.addTarget(self, action: #selector(appendButton), for: .touchUpInside)
        
        return botaoInicio
    }()
    
    @objc func appendButton(){
        
        
        delegate?.appendStart()
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView (){
        
        
        addSubview(descricaoLabel)
        addSubview(instrucaoLabel)
        addSubview(botaoInicio)
        addSubview(imageView)
    }
    
    
    func setupConstrains(){
        
        NSLayoutConstraint.activate([
            
            
            
            
            // Imagem
            imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -70),
            imageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.3),
            
            // Descrição
            descricaoLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 100),
            descricaoLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            descricaoLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            
            // Instrução
            instrucaoLabel.topAnchor.constraint(equalTo: descricaoLabel.bottomAnchor, constant: 10),
            instrucaoLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            instrucaoLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            
            // Botão
            botaoInicio.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -70),
            botaoInicio.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            botaoInicio.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            botaoInicio.heightAnchor.constraint(equalToConstant: 70)
            
            
            
            
        ])
        
        
    }
}


#Preview("UIkit"){
    
    HomeStardViewController()
    
}
