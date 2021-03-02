//
//  ViewController.swift
//  SixWords
//
//  Created by Matthew Hanlon on 02/03/2021.
//  Copyright © 2021 Teaching Develop in Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var surferImageView: UIImageView!
    
    // Our word labels...
    @IBOutlet var keepLabel: UILabel!
    @IBOutlet var watchingLabel: UILabel!
    @IBOutlet var forLabel: UILabel!
    @IBOutlet var theLabel: UILabel!
    @IBOutlet var nextLabel: UILabel!
    @IBOutlet var waveLabel: UILabel!
    
    @IBOutlet var waterView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.animateScene()
    }

    func animateScene() {
        // Here we'll access our UI elements and animate them all
        // using those IBOutlets above
        UIView.animate(withDuration: 5) {
            self.surferImageView.transform = CGAffineTransform(        }

        
    }

}

