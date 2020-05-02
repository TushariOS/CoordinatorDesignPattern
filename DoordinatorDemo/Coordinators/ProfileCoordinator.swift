//
//  ProfileCoordinator.swift
//  DoordinatorDemo
//
//  Created by Tushar on 17/09/19.
//  Copyright © 2019 Tushar. All rights reserved.
//

import Foundation
import UIKit

class ProfileCoordinator: Coordinator {
    
    weak var parentCoordinator: MainCoordinator?

    var childCooridnator = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ProfileViewController.instantiate(storyBoardName: "Profile")
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
