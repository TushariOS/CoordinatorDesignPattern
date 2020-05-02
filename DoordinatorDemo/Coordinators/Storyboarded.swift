//
//  Storyboarded.swift
//  DoordinatorDemo
//
//  Created by Tushar on 07/09/19.
//  Copyright © 2019 Tushar. All rights reserved.
//

import Foundation
import UIKit

/// Storyboard protocol
protocol Storyboarded {
    static func instantiate(storyBoardName: String) -> Self
}


extension Storyboarded where Self: UIViewController {
    static func instantiate(storyBoardName: String) -> Self {
        let id  = String(describing: self)
        let storyboard = UIStoryboard(name: storyBoardName, bundle: Bundle.main)
        return  storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
