//
//  CircleRing.swift
//  WeatherApp
//
//  Created by Christian Elijah on 2020-12-13.
//

import Foundation
import UIKit

extension WeatherScreen {
    
    func progressCircle() {
        
        // create track layer
        let trackLayer = CAShapeLayer()
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: 215, y: 185), radius: 100, startAngle: -CGFloat.pi / 2, endAngle:  2 * CGFloat.pi, clockwise: true)
        trackLayer.path = circlePath.cgPath
        
        // CA Styling
        trackLayer.fillColor = UIColor(red: 236/255.0, green: 88/255.0, blue: 88/255.0, alpha: 1.0).cgColor
        trackLayer.strokeColor = UIColor(red: 236/255.0, green: 88/255.0, blue: 88/255.0, alpha: 1.0).cgColor
        trackLayer.lineWidth = 10
        trackLayer.strokeEnd = 0
        trackLayer.lineCap = .round
        view.layer.addSublayer(trackLayer)
        
        
        // Main layer
        circleShapeLayer.path = circlePath.cgPath
        
        // CA Styling
        circleShapeLayer.fillColor = UIColor(red: 34/255.0, green: 40/255.0, blue: 49/255.0, alpha: 1.0).cgColor
        circleShapeLayer.strokeColor = UIColor(red: 232/255.0, green: 232/255.0, blue: 232/255.0, alpha: 1.0).cgColor
        circleShapeLayer.lineWidth = 10
        circleShapeLayer.strokeEnd = 0
        circleShapeLayer.lineCap = .round
        // Basic Style
        circleShapeLayer.shadowColor = UIColor(red: 34/255.0, green: 40/255.0, blue: 49/255.0, alpha: 1.0).cgColor
        circleShapeLayer.shadowOffset = .zero
        circleShapeLayer.shadowRadius = 10
        circleShapeLayer.shadowOpacity = 0.4
        
        // Add subview
        view.layer.addSublayer(circleShapeLayer)
        
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
        
    }
    
    @objc private func handleTap() {
        
        print("Tap Attempt")
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        basicAnimation.toValue = 1
        
        basicAnimation.duration =  5
        
        basicAnimation.fillMode = .forwards
        basicAnimation.isRemovedOnCompletion = false
        
        circleShapeLayer.add(basicAnimation, forKey: "basicAnimationEnded")
    }
}
