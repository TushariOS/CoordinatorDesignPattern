//
//  BuyCoordinator.swift
//  DoordinatorDemo
//
//  Created by Tushar on 13/09/19.
//  Copyright © 2019 Tushar. All rights reserved.
//

import UIKit

class BuyCoordinator: Coordinator {
    
    weak var parentCoordinator: MainCoordinator?
    
    var childCooridnator = [Coordinator]()
    
    var navigationController: UINavigationController
    
    var selctedProduct = 0
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = BuyViewController.instantiate(storyBoardName: "Main")
        viewController.coordinator = self
        viewController.selectedProduct = selctedProduct
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func didFinshBuying() {
        parentCoordinator?.childDidFinshBuying(self)
    }
}

