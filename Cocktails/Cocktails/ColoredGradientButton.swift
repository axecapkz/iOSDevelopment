//
//  ColoredGradientButton.swift
//  Cocktails
//
//  Created by Azamat Kenjebayev on 4/1/22.
//

import UIKit

class ColoredGradientButton: UIButton {
    
    var backgroundGradient: Bool {
            get {
                if layer.sublayers?[0] == gradientLayer {
                    return true
                } else {
                    return false
                }
            }
            set(state) {
                switch state {
                case true:
                    layer.insertSublayer(gradientLayer, at: 0)
                case false:
                    gradientLayer.removeFromSuperlayer()
                }
            }
        }

        private lazy var gradientLayer: CAGradientLayer = {
            let gradient = CAGradientLayer()
            gradient.frame = self.bounds
            gradient.colors = [UIColor.red.cgColor, UIColor.purple.cgColor]
            gradient.startPoint = CGPoint(x: 0.5, y: 0)
            gradient.endPoint = CGPoint(x: 0.5, y: 1)
            gradient.cornerRadius = 13
            return gradient
        }()
    }
