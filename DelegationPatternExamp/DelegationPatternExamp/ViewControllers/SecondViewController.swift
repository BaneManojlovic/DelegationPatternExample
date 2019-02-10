//
//  SecondViewController.swift
//  DelegationPatternExamp
//
//  Created by Robert on 2/10/19.
//  Copyright © 2019 Robert. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var selectionDelegate: ChooserDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions

    @IBAction func bmwButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTapChoiceImage(image: UIImage(named: "bmw_car")!, name: "BMW", color: .green)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func mercedesButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTapChoiceImage(image: UIImage(named:"mercedes_benc")!, name: "Mercedes Benz", color: .blue)
        dismiss(animated: true, completion: nil)
    }
}
