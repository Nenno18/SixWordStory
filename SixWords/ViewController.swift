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
    @IBOutlet var waterView: UIView!
    @IBOutlet var nextView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.nextView.alpha = 0.0
        self.surferImageView.image = "🏄‍♂️".image!
        self.animateViews()
    }

    func animateViews() {
        UIView.animate(withDuration: 5) {
            self.nextView.alpha = 1.0
        }
        
        UIView.animate(withDuration: 10, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.1, options: .curveEaseInOut, animations: {
            self.surferImageView.image = self.surferImageView.image?.withHorizontallyFlippedOrientation()
            self.surferImageView.frame = CGRect(x: ( self.view.frame.size.width - self.surferImageView.frame.size.width ), y: ( self.view.center.y - self.surferImageView.frame.size.height ), width: self.surferImageView.frame.size.width, height: self.surferImageView.frame.size.height)
        }, completion: { (result) in
          // clean up code..
            print("The animation is done.")
        })
    }

}

extension String {
    var image: UIImage? {
        let size = CGSize(width: 100, height: 100)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        UIColor.white.set()
        let rect = CGRect(origin: .zero, size: size)
        UIRectFill(CGRect(origin: .zero, size: size))
        (self as AnyObject).draw(in: rect, withAttributes: [.font: UIFont.systemFont(ofSize: 40)])
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image

    }
}
