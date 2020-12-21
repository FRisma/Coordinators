//
//  CreateAccountViewController.swift
//  Coordinators
//
//  Created by Franco Risma on 21/12/2020.
//

import UIKit

class CreateAccountViewController: UIViewController {
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .green
        self.title = "Create Account"
    }

}
