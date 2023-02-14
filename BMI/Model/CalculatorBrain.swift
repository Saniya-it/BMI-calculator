//
//  CalculatorBrain.swift
//  BMI
//
//  Created by Dauletkhanova Saniya on 09.02.2023.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBmiValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBmi (height: Float, weight: Float ) {
        let bmiValue = weight/pow(height, 2)
        var advice: String
        var color: UIColor
        
        switch bmiValue {
        case ..<18.5:
            advice = "Eat more pies!"
            color = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        case 18.5...24.9:
            advice = "Fit as a fiddle!"
            color = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        default:
            advice = "Execise more!"
            color = #colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1)
        }
                
        bmi = BMI(value: bmiValue, advice: advice, color: color)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.clear
    }
    
}
