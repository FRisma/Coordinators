//
//  ViewController.swift
//  Coordinators
//
//  Created by Franco Risma on 21/12/2020.
//

import UIKit

class MainViewController: UIViewController {
    
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Main View Controller"
        self.view.backgroundColor = .white
        
        let buyButton = UIButton(type: .custom)
        buyButton.translatesAutoresizingMaskIntoConstraints = false
        buyButton.setTitle("Buy", for: .normal)
        buyButton.addTarget(self, action: #selector(didTapBuy), for: .touchUpInside)
        buyButton.setTitleColor(.blue, for: .normal)
        
        view.addSubview(buyButton)
        NSLayoutConstraint.activate([
            buyButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            buyButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            buyButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            buyButton.heightAnchor.constraint(equalToConstant: 50),
        ])
        
        let createButton = UIButton(type: .custom)
        createButton.translatesAutoresizingMaskIntoConstraints = false
        createButton.setTitle("Create", for: .normal)
        createButton.addTarget(self, action: #selector(didTapCreate), for: .touchUpInside)
        createButton.setTitleColor(.blue, for: .normal)
        
        view.addSubview(createButton)
        NSLayoutConstraint.activate([
            createButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            createButton.topAnchor.constraint(equalTo: buyButton.bottomAnchor, constant: 30),
            createButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            createButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }

    @objc func didTapBuy() {
        coordinator?.buy()
    }
    
    @objc func didTapCreate() {
        coordinator?.createAccount()
    }

}

