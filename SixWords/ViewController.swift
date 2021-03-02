//
//  ViewController.swift
//  SixWords
//
//  Created by Matthew Hanlon on 02/03/2021.
//  Copyright © 2021 Teaching Develop in Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var surferView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        animate()
    }

    func animate() {
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { (timer) in
            self.surferView.image = self.surferView.image?.withHorizontallyFlippedOrientation()
            UIView.animate(withDuration: 5.0) {
                self.surferView.frame = CGRect(x: self.view.frame.size.width, y: (self.view.frame.size.height/2), width: self.surferView.frame.size.width, height: self.surferView.frame.size.height)
            }
        }
    }

}

