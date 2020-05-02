//
//  ViewController.swift
//  DoordinatorDemo
//
//  Created by Tushar on 17/02/20
//  Copyright © 2020 Tushar. All rights reserved.
//

import UIKit

final class ViewController: UIViewController, Storyboarded {
    
    weak var coordinatore: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK:- Button Action
    @IBAction func buyTapped(_ sender: Any) {
        coordinatore?.navigateToBuy(productType: 1)
    }
    
    @IBAction func accountTapped(_ sender: Any) {
        coordinatore?.navigateToAccount()
    }
    
    @IBAction func profileTapped(_ sender: Any) {
        coordinatore?.navigateToProfile()
    }
}

