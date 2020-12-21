//
//  BuyViewController.swift
//  Coordinators
//
//  Created by Franco Risma on 21/12/2020.
//

import UIKit

class BuyViewController: UIViewController {
    weak var coordinator: BuyCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .lightGray
        self.title = "Buy"
    }

}
