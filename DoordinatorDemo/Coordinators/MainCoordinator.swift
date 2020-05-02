//
//  MainCoordinator.swift
//  DoordinatorDemo
//
//  Created by Tushar on 07/09/19.
//  Copyright © 2019 Tushar. All rights reserved.
//

import Foundation
import UIKit

/// MainCoordinator in which set all the app routing flow
final class MainCoordinator: Coordinator {
    
    var childCooridnator =  [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate(storyBoardName: "Main")
        vc.coordinatore = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func navigateToBuy(productType: Int) {
        let child = BuyCoordinator(navigationController: navigationController)
        child.parentCoordinator = self
        child.selctedProduct = productType
        childCooridnator.append(child)
        child.start()
    }
    
    func navigateToAccount() {
        let vc = AccountViewController.instantiate(storyBoardName: "Main")
        vc.coordinatro = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func navigateToProfile() {
        let child = ProfileCoordinator(navigationController: navigationController)
        child.parentCoordinator = self
        childCooridnator.append(child)
        child.start()
    }
    
    func childDidFinshBuying(_ child:  Coordinator) {
        for(index, cooridnator) in childCooridnator.enumerated() {
            if cooridnator === child {
                childCooridnator.remove(at: index)
                break
            }
        }
    }
}
