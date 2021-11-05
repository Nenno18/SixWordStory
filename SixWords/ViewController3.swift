//
//  ViewController.swift
//  SixWords
//
//  Created by Matthew Hanlon on 02/03/2021.
//  Copyright © 2021 Teaching Develop in Swift. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapNextButton() {
        guard let vc = storyboard?.instantiateViewController(identifier: "fourth") as? ViewController4 else {
            print("failed to load storyboard")
            return
        
        }
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    @IBAction func didTapBackButton() {
        guard let vc = storyboard?.instantiateViewController(identifier: "second") as? ViewController2 else {
            print("failed to load storyboard")
            return
        
        }
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }



}

