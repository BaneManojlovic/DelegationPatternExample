//
//  ViewController.swift
//  DelegationPatternExamp
//
//  Created by Robert on 2/10/19.
//  Copyright © 2019 Robert. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    // MARK: - Outlets

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var chooseBrandBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create rounded button
        chooseBrandBtn.layer.cornerRadius = chooseBrandBtn.frame.height/2
    }

    // MARK: - Action
    
    @IBAction func choseBrandButton(_ sender: Any) {
//        let alert = UIAlertController(title: "Button clicked", message: "You successfully clicked button!", preferredStyle: .alert)
//        let dismissButton = UIAlertAction(title: "Dismiss", style: .cancel, handler: nil)
//        alert.addAction(dismissButton)
//        self.present(alert, animated: true, completion: nil)
        
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! SecondViewController
        secondVC.selectionDelegate = self
        present(secondVC, animated: true, completion: nil)
    }
    
}

extension FirstViewController: ChooserDelegate {
    
    func didTapChoiceImage(image: UIImage, name: String, color: UIColor) {
        mainImage.image = image
        nameLabel.text = name
        view.backgroundColor = color
    }
   
}

