//
//  MainCoordinator.swift
//  Coordinators
//
//  Created by Franco Risma on 21/12/2020.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
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
        let buyCoordinator = BuyCoordinator(navigationController: navigationController)
        childCoordinators.append(buyCoordinator)
        buyCoordinator.parentCoordinator = self
        buyCoordinator.start()
    }
    
    func createAccount() {
        let createCoordinator = CreateAccountCoordinator(navigationController: navigationController)
        createCoordinator.parentCoordinator = self
        childCoordinators.append(createCoordinator)
        createCoordinator.start()
    }
    
    func childDidFinish(_ child: Coordinator) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if child === coordinator {
                childCoordinators.remove(at: index)
                print("Removing child \(child)")
            }
        }
    }
}
