//
//  CustomCorners.swift
//  SwiftProject
//
//  Created by Jhavakar Thillainathan on 08/06/2021.
//

import SwiftUI

// Custom Corner Shapes..
struct CustomCorners: Shape {
    
    var corners: UIRectCorner
    var radius: CGFloat
    
    
    func path(in react: CGRect) -> Path {
            
        let path = UIBezierPath(roundedRect: react, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}


