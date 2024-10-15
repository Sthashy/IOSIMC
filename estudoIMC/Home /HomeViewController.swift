//
//  TelaDeInformacaoViewController.swift
//  estudoIMC
//
//  Created by Sthashy Vieira on 11/10/24.
//

import UIKit

class HomeViewController: UIViewController {

    var tela : HomeScreen?
    
    override func loadView() {
        tela = HomeScreen()
        view = tela
        tela?.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        view.backgroundColor = .systemGroupedBackground
        navigationItem.backButtonTitle = "Voltar"
        navigationController?.navigationBar.tintColor = .black
    }
    


}


extension HomeViewController : TelaDeInformacaoDelegate {
    
    func didTapCriança() {
        let criançaVC  = IdosoViewController()
        navigationController?.pushViewController(criançaVC, animated: true)
    }
    
    func didTapHomem() {
        
        let homemVc  = HomemViewController()
        navigationController?.pushViewController(homemVc, animated: true)
        
       
    }
    
    func didTapMulher() {
        let mulherVc  = MulherViewController()
        navigationController?.pushViewController(mulherVc, animated: true)
    }
    
    
    
    
}
