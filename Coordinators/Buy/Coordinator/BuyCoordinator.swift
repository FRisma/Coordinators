//
//  BuyCoordinator.swift
//  Coordinators
//
//  Created by Franco Risma on 21/12/2020.
//

import UIKit

class BuyCoordinator: Coordinator {
    
    weak var parentCoordinator: MainCoordinator? //This will be used for sending messages when navigating back
    
    var childCoordinators: [Coordinator] = [Coordinator]()
    
    var navigationController: UINavigationController
    
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let buyVC = BuyViewController()
        buyVC.coordinator = self
        navigationController.pushViewController(buyVC, animated: true)
    }
    
    func didFinishBuying() {
        parentCoordinator?.childDidFinish(self)
    }
}
