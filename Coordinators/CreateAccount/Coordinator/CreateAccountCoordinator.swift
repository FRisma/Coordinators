//
//  CreateAccountCoordinator.swift
//  Coordinators
//
//  Created by Franco Risma on 21/12/2020.
//

import UIKit

class CreateAccountCoordinator: Coordinator {
    
    weak var parentCoordinator: MainCoordinator?
    
    var childCoordinators: [Coordinator] = [Coordinator]()
    
    var navigationController: UINavigationController
    
    
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let createAccountVC = CreateAccountViewController()
        createAccountVC.coordinator = self
        navigationController.pushViewController(createAccountVC, animated: true)
    }
    
    func didFinishCreatingAccount() {
        parentCoordinator?.childDidFinish(self)
    }
}
