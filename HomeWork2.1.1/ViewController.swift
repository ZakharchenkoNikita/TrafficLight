//
//  ViewController.swift
//  HomeWork2.1.1
//
//  Created by Nikita on 06.07.21.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet weak var trafficLightRedView: UIView!
    @IBOutlet weak var trafficLightYellowView: UIView!
    @IBOutlet weak var trafficLightGreenView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    
    private let offLight: CGFloat = 0.3
    private let onLight: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        trafficLightRedView.alpha = offLight
        trafficLightYellowView.alpha = offLight
        trafficLightGreenView.alpha = offLight
    }
    
    override func viewWillLayoutSubviews() {
        trafficLightRedView.layer.cornerRadius = trafficLightRedView.frame.height / 2
        trafficLightYellowView.layer.cornerRadius = trafficLightYellowView.frame.height / 2
        trafficLightGreenView.layer.cornerRadius = trafficLightGreenView.frame.height / 2
    }
    
    @IBAction func startButtonPressed() {
        
        if startButton.currentTitle == "Start" {
            startButton.setTitle("Next", for: .normal)
        }
        
        switch currentLight {
        case .red:
            trafficLightGreenView.alpha = offLight
            trafficLightRedView.alpha = onLight
            currentLight = .yellow
        case .yellow:
            trafficLightRedView.alpha = offLight
            trafficLightYellowView.alpha = onLight
            currentLight = .green
        case .green:
            trafficLightGreenView.alpha = onLight
            trafficLightYellowView.alpha = offLight
            currentLight = .red
        }
    }
}

