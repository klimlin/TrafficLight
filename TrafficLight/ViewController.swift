//
//  ViewController.swift
//  TrafficLight
//
//  Created by MAcbook on 22.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startedButton.layer.cornerRadius = 10
        redView.layer.cornerRadius = 100
        yellowView.layer.cornerRadius = 100
        greenView.layer.cornerRadius = 100
        redView.alpha = 1.0
        yellowView.alpha = 0.5
        greenView.alpha = 0.5
    }
    
    
    @IBAction func startButtonTapped() {
        startedButton.setTitle("NEXT", for: .normal)
        if greenView.alpha == 1.0 {
            redView.alpha = 1.0
            greenView.alpha = 0.5
        } else if redView.alpha == 1.0 {
            yellowView.alpha = 1.0
            redView.alpha = 0.5
        } else if yellowView.alpha == 1.0 {
            yellowView.alpha = 0.5
            greenView.alpha = 1.0
        }
        
    }
}

