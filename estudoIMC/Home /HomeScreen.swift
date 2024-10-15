//
//  TelaDeInformacao.swift
//  estudoIMC
//
//  Created by Sthashy Vieira on 11/10/24.
//

import UIKit

protocol TelaDeInformacaoDelegate : AnyObject {
    
    func didTapHomem()
    func didTapMulher()
    func didTapCriança()
    
}


class HomeScreen: UIView {
    
    weak var delegate : TelaDeInformacaoDelegate?
    
    lazy var verdeClaroView : UIView = {
        
        let claro = UIView()
        claro.translatesAutoresizingMaskIntoConstraints = false
        claro.backgroundColor = UIColor(red: 0.00, green: 0.76, blue: 0.80, alpha: 1.00)
        claro.clipsToBounds = true
        claro.layer.cornerRadius = 10
        
        
        return claro
    }()
    
    
    
    
    lazy var azulescuroView : UIView = {
        
        let escuro = UIView()
        escuro.translatesAutoresizingMaskIntoConstraints = false
        escuro.backgroundColor = UIColor(red: 0.05, green: 0.26, blue: 0.43, alpha: 1.00)
        escuro.clipsToBounds = true
        escuro.layer.cornerRadius = 10
        
        
        return escuro
    }()
    
    
    lazy var azulView : UIView = {
        
        let azul = UIView()
        azul.translatesAutoresizingMaskIntoConstraints = false
        azul.backgroundColor = UIColor(red: 0.38, green: 0.81, blue: 1.00, alpha: 1.00)
        azul.clipsToBounds = true
        azul.layer.cornerRadius = 10
        
        
        return azul
    }()
    
    lazy var rosaView : UIView = {
        
        let rosa = UIView()
        rosa.translatesAutoresizingMaskIntoConstraints = false
        rosa.backgroundColor = UIColor(red: 0.90, green: 0.88, blue: 1.00, alpha: 1.00)
        rosa.clipsToBounds = true
        rosa.layer.cornerRadius = 10
        
        
        return rosa
    }()
    
    lazy var homemLabel : UILabel = {
        
        let homem = UILabel()
        homem.translatesAutoresizingMaskIntoConstraints = false
        homem.tintColor = .black
        homem.text = "Homem"
        homem.font = UIFont.boldSystemFont(ofSize: 20)
        homem.textAlignment = .center
        
        return homem
    }()
    
    
    lazy var mulherLabel : UILabel = {
        
        let mulher = UILabel()
        mulher.translatesAutoresizingMaskIntoConstraints = false
        mulher.tintColor = .black
        mulher.text = "Mulher"
        mulher.font = UIFont.boldSystemFont(ofSize: 20)
        mulher.textAlignment = .center
        
        return mulher
    }()
    
    lazy var criançalabel : UILabel = {
        
        let crianca = UILabel()
        crianca.translatesAutoresizingMaskIntoConstraints = false
        crianca.tintColor = .black
        crianca.text = "Idoso +60"
        crianca.font = UIFont.boldSystemFont(ofSize: 20)
        crianca.textAlignment = .center
        
        return crianca
    }()
    
    lazy var TabelaIMC : UILabel = {
        
        let homem = UILabel()
        homem.translatesAutoresizingMaskIntoConstraints = false
        homem.textColor = .white
        homem.text = "TABELA DO IMC"
        homem.font = UIFont.boldSystemFont(ofSize: 20)
        homem.textAlignment = .center
        
        return homem
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupConstraints()
        setGestures()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        
        
        addSubview(azulescuroView)
        addSubview(TabelaIMC)
        addSubview(verdeClaroView)
        addSubview(criançalabel)
        addSubview(azulView)
        addSubview(rosaView)
        addSubview(homemLabel)
        addSubview(mulherLabel)
        
        
    }
    
    private func setupConstraints() {
        
        // Constraints para azulView
        NSLayoutConstraint.activate([
         
            
            
            azulescuroView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 50),
            azulescuroView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            azulescuroView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            azulescuroView.heightAnchor.constraint(equalToConstant: 100),
            
            TabelaIMC.centerXAnchor.constraint(equalTo: azulescuroView.centerXAnchor),
            TabelaIMC.centerYAnchor.constraint(equalTo: azulescuroView.centerYAnchor),
            
            
            verdeClaroView.topAnchor.constraint(equalTo: self.TabelaIMC.bottomAnchor, constant: 130),
            verdeClaroView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            verdeClaroView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            verdeClaroView.heightAnchor.constraint(equalToConstant: 100),
            
            criançalabel.centerXAnchor.constraint(equalTo: verdeClaroView.centerXAnchor),
            criançalabel.centerYAnchor.constraint(equalTo: verdeClaroView.centerYAnchor),
            
            
            azulView.topAnchor.constraint(equalTo: self.verdeClaroView.bottomAnchor, constant: 20),
            azulView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            azulView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            azulView.heightAnchor.constraint(equalToConstant: 100),
            
            
            // Constraints para homemLabel dentro de azulView
            
            homemLabel.centerXAnchor.constraint(equalTo: azulView.centerXAnchor),
            homemLabel.centerYAnchor.constraint(equalTo: azulView.centerYAnchor),
            
            
            // Constraints para rosaView
            
            rosaView.topAnchor.constraint(equalTo: azulView.bottomAnchor, constant: 20),
            rosaView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            rosaView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            rosaView.heightAnchor.constraint(equalToConstant: 100),
            
            
            // Constraints para mulherLabel dentro de rosaView
            
            mulherLabel.centerXAnchor.constraint(equalTo: rosaView.centerXAnchor),
            mulherLabel.centerYAnchor.constraint(equalTo: rosaView.centerYAnchor),
        ])
    }
    
    
    private func setGestures(){
        
        let tapAzulView = UITapGestureRecognizer(target: self, action: #selector(azulViewTapped))
        azulView.isUserInteractionEnabled = true
        azulView.addGestureRecognizer(tapAzulView)
        
        let tapRosaView = UITapGestureRecognizer(target: self, action: #selector(rosaViewTapped))
        rosaView.isUserInteractionEnabled = true
        rosaView.addGestureRecognizer(tapRosaView)
        
        let tapVerdeClaroView = UITapGestureRecognizer(target: self, action: #selector(verdeClaroViewTapped))
        verdeClaroView.isUserInteractionEnabled = true
        verdeClaroView.addGestureRecognizer(tapVerdeClaroView)
        
    }
    
    @objc func azulViewTapped(){
        
        delegate?.didTapHomem()
       
        
    }
    
    @objc func rosaViewTapped(){
        
        delegate?.didTapMulher()
       
        
    }
    
    @objc func verdeClaroViewTapped(){
        
        delegate?.didTapCriança()
       
        
    }
    
    
}

#Preview("UIkit"){
    
    HomeViewController()
    
}
