//
//  BuyViewController.swift
//  DoordinatorDemo
//
//  Created by Tushar on 07/09/19.
//  Copyright © 2019 Tushar. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {

    weak var coordinator: BuyCoordinator?
    
    var selectedProduct = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Selected product id:::::", selectedProduct )
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        coordinator?.didFinshBuying()
    }
}
