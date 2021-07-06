//
//  ViewController.swift
//  HomeWork2.1.1
//
//  Created by Nikita on 06.07.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var trafficLightRedView: UIView!
    @IBOutlet weak var trafficLightYellowView: UIView!
    @IBOutlet weak var trafficLightGreenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    private let offLight: CGFloat = 0.3
    private let onLight: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        setupTrafficLights()
    }
    
    @IBAction func startButtonPressed() {
        
        switch onLight {
        
        case trafficLightRedView.alpha:
            
            trafficLightRedView.alpha = offLight
            trafficLightYellowView.alpha = onLight
            
        case trafficLightYellowView.alpha:
            
            trafficLightYellowView.alpha = offLight
            trafficLightGreenView.alpha = onLight
            
        case trafficLightGreenView.alpha:
            
            trafficLightGreenView.alpha = offLight
            trafficLightRedView.alpha = onLight
            
        default:
            startButton.setTitle("Next", for: .normal)
            trafficLightRedView.alpha = onLight
        }
    }
    
    private func setupTrafficLights() {
        
        trafficLightRedView.alpha = offLight
        trafficLightYellowView.alpha = offLight
        trafficLightGreenView.alpha = offLight
        
        trafficLightRedView.layer.cornerRadius = trafficLightRedView.frame.size.height / 2
        trafficLightYellowView.layer.cornerRadius = trafficLightYellowView.frame.size.height / 2
        trafficLightGreenView.layer.cornerRadius = trafficLightGreenView.frame.size.height / 2
    }
}

