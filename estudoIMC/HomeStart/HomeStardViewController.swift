//
//  HomeStardViewController.swift
//  estudoIMC
//
//  Created by Sthashy Vieira on 15/10/24.
//

import UIKit

class HomeStardViewController: UIViewController {

    var home : HomeStardScreen?
    
    override func loadView() {
        home = HomeStardScreen()
        view = home
        view.backgroundColor = .white
      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        home?.delegate = self
        
    }
    

    

}


extension HomeStardViewController : imcHomeStardProtocol {
    func appendStart() {
        
        let view = HomeViewController()
        navigationController?.pushViewController(view, animated: true)
        
        
    }
}
    
    
    
    
    

