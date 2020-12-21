//
//  Coordinator.swift
//  Coordinators
//
//  Created by Franco Risma on 21/12/2020.
//

import UIKit

protocol Coordinator: class {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
