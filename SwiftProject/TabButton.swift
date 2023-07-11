//
//  TableButton.swift
//  SwiftProject
//
//  Created by Jhavakar Thillainathan on 08/06/2021.
//

import SwiftUI

struct TabButton: View {
    var image: String
    var title: String
    
    // Selected Tab ..
    @Binding var selectedTab: String
    
    // For Hero Animation Slide ..
    var animation: Namespace.ID
    
    
    var body: some View {
        
        Button(action: {
                withAnimation(.spring()) {selectedTab = title} }, label: {
            
            HStack(spacing: 15) {
               
                Image(systemName: image)
                    .font(.title2)
                    .frame(width: 30)
                
                
                Text(title)
                    .fontWeight(.semibold)
            }
            
            .foregroundColor(selectedTab == title ? .black : .white)
            .padding(.vertical,12)
            .padding(.horizontal,20)
            .frame(maxWidth: getReact().width - 220, alignment: .leading)
            
            .background(
            
                // Hero Animation..
                
                ZStack{
                    
                    if selectedTab == title{
                        Color.white
                            .opacity(selectedTab == title ? 1:0)
                            .clipShape(CustomCorners(corners: [.topRight, .bottomRight], radius: 10))
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                }
            )
            
        })
    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
