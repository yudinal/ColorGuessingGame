//
//  ChooseColor.swift
//  ColorGuessingGame
//
//  Created by Lilia Yudina on 10/29/19.
//  Copyright © 2019 Lilia Yudina. All rights reserved.
//

import UIKit

struct ChooseColor {
    func rgba(color: UIColor) -> UIColor {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
    
        if red > green && red > blue {
            return .red
        } else if green > red && green > blue {
            return .green
        } else {
            return .blue
        }
    }
    
    func randomiser() -> UIColor {
            return UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: CGFloat.random(in: 0...1))
    }

}
