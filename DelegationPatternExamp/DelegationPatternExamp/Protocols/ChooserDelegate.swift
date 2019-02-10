//
//  ChooserDelegate.swift
//  DelegationPatternExamp
//
//  Created by Robert on 2/10/19.
//  Copyright © 2019 Robert. All rights reserved.
//

import UIKit


protocol ChooserDelegate{
    func didTapChoiceImage(image: UIImage, name: String, color: UIColor)
}
