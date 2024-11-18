//
//  CaptchaLogic.swift
//  Captcha
//
//  Created by RANA  on 18/11/24.
//



import UIKit


public class CaptchaLogic {

    public static func RandomString() -> String {
        let characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
        return String((0..<6).compactMap { _ in characters.randomElement() })
    }

    // to create image
    public static func CreateImage(from text: String) -> UIImage {
        let attributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 40),
            .foregroundColor: randomColor()
        ]
        
        let size = (text as NSString).size(withAttributes: attributes)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
       
        text.draw(at: .zero, withAttributes: attributes)
        
        
        // Add noise
        let context = UIGraphicsGetCurrentContext()
        let Lines = Int.random(in: 5...10)
        for _ in 0..<Lines * 15 {
            let startX = CGFloat.random(in: 0..<size.width)
            let startY = CGFloat.random(in: 0..<size.height)
            let endX = CGFloat.random(in: 0..<size.width)
            let endY = CGFloat.random(in: 0..<size.height)
            
            context?.setStrokeColor(UIColor.gray.withAlphaComponent(0.5).cgColor)
            context?.setLineWidth(2)
            context?.move(to: CGPoint(x: startX, y: startY))
            context?.addLine(to: CGPoint(x: endX, y: endY))
            context?.strokePath()
        }
        
        // distortion
        let rotationAngle = CGFloat.random(in: -0.1...0.1)
        context?.rotate(by: rotationAngle)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image ?? UIImage()
    }
    
    // color
    private static func randomColor() -> UIColor {
        return UIColor(
            red: CGFloat.random(in: 0...1),
            green: CGFloat.random(in: 0...1),
            blue: CGFloat.random(in: 0...1),
            alpha: CGFloat.random(in: 0.5...1) // opacity
        )
    }
}

