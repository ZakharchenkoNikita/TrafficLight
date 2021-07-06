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
    
    private let startAlphaValue: CGFloat = 0.3
    private let endAlphaValue: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        setupTrafficLight()
    }

    @IBAction func startButtonPressed() {
        
        if trafficLightRedView.alpha != endAlphaValue && trafficLightYellowView.alpha != endAlphaValue && trafficLightGreenView.alpha != endAlphaValue {
            
            trafficLightRedView.alpha = endAlphaValue
            startButton.setTitle("Next", for: .normal)
            
        } else if trafficLightRedView.alpha == endAlphaValue && trafficLightYellowView.alpha != endAlphaValue && trafficLightGreenView.alpha != endAlphaValue {
            
            trafficLightRedView.alpha = startAlphaValue
            trafficLightYellowView.alpha = endAlphaValue
            
        } else if trafficLightRedView.alpha != endAlphaValue && trafficLightYellowView.alpha == endAlphaValue && trafficLightGreenView.alpha != endAlphaValue {
            
            trafficLightRedView.alpha = startAlphaValue
            trafficLightYellowView.alpha = startAlphaValue
            trafficLightGreenView.alpha = endAlphaValue
            
        } else {
            trafficLightRedView.alpha = endAlphaValue
            trafficLightGreenView.alpha = startAlphaValue
            
        }
    }
    
    private func setupTrafficLight() {
        
        trafficLightRedView.alpha = startAlphaValue
        trafficLightYellowView.alpha = startAlphaValue
        trafficLightGreenView.alpha = startAlphaValue
        
        trafficLightRedView.layer.cornerRadius = trafficLightRedView.frame.size.height / 2
        trafficLightYellowView.layer.cornerRadius = trafficLightYellowView.frame.size.height / 2
        trafficLightGreenView.layer.cornerRadius = trafficLightGreenView.frame.size.height / 2
    }
}

