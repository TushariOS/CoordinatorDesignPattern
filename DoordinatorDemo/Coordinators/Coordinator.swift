//
//  Coordinator.swift
//  DoordinatorDemo
//
//  Created by Tushar on 07/09/19.
//  Copyright © 2019 Tushar. All rights reserved.
//

import Foundation
import UIKit

/// Protocolo corrdinator
protocol Coordinator : AnyObject {
    var childCooridnator: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
