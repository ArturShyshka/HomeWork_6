//
//  Functions.swift
//  HomeWork6_Task2
//
//  Created by Artur Shyshka on 08.09.2022.
//

import Foundation
import UIKit

// gradient for custom view
func addGradientBackground(customView: UIView, colorTop: CGColor, colorBottom: CGColor) {

        let gradientBackground = CAGradientLayer()
        let colorTop = colorTop
        let colorBottom = colorBottom

        gradientBackground.colors = [colorTop, colorBottom]
        gradientBackground.locations = [0.0, 1.0]
        gradientBackground.startPoint = CGPoint(x: 1, y: 0.0)
        gradientBackground.endPoint = CGPoint(x: 0.5, y: 1.0)

        gradientBackground.frame = customView.bounds

        customView.layer.insertSublayer(gradientBackground, at: 0)
    }
