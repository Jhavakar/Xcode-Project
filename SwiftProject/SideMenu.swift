//
//  SideMenu.swift
//  SwiftProject
//
//  Created by Jhavakar Thillainathan on 09/06/2021.
//

import SwiftUI

struct SideMenu: View {
    
    @Binding var selectedTab: String
    @Namespace var animation
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15, content: {
            
            // Profile Pic ..
            
            Image("A-class")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
            
            // Pading top for Top Close Button
                .padding(.top,50)
            
            VStack(alignment: .leading, spacing: 5, content: {
                
                Text("Jhavakar Thillainathan")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("View Profile")
                        .font(.title)
                        .foregroundColor(.white)
                        .opacity(0.8)
                })
            })
            
            // tab Buttons ..
            VStack(alignment: .leading, spacing: 10) {
                
                TabButton(image: "house", title: "Home", selectedTab: $selectedTab, animation: animation)
                
                TabButton(image: "person", title: "Restriction", selectedTab: $selectedTab, animation: animation)
                
                TabButton(image: "gearshape.fill", title: "Settings", selectedTab: $selectedTab, animation: animation)
                
            }
            .padding(.leading,-15)
            .padding(.top,20)
            
            Spacer()
            
            // Sign out button ..
            VStack(alignment: .leading, spacing: 6, content: {
                
                TabButton(image: "rectangle.righthalf.inset.fill.arrow.right", title: "Log Out", selectedTab: .constant(""), animation: animation)
                    .padding(.leading,-15)
            })
            
        })
        
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
