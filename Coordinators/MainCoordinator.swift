//
//  MainCoordinator.swift
//  Coordinators
//
//  Created by Franco Risma on 21/12/2020.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators: [Coordinator]?
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let mainVC = MainViewController()
        mainVC.coordinator = self
        navigationController.pushViewController(mainVC, animated: true)
    }
    
    func buy() {
        let buyVC = BuyViewController()
        buyVC.coordinator = self
        navigationController.pushViewController(buyVC, animated: true)
    }
    
    func createAccount() {
        let createAccountVC = CreateAccountViewController()
        createAccountVC.coordinator = self
        navigationController.pushViewController(createAccountVC, animated: true)
    }
}
