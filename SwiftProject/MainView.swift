//
//  HomeView.swift
//  SwiftProject
//
//  Created by Jhavakar Thillainathan on 08/06/2021.
//

import SwiftUI

struct MainView: View {
    
    //Select the Tab..
    @State var selectedTab = "Home"
    @State var showMenu = false
    
    var body: some View {
        
        ZStack{
            
            Color("Color")
                .ignoresSafeArea()
            
            // The Side Menu..
            SideMenu(selectedTab: $selectedTab)
                
            
            ZStack{
                
                // M Button
                Home(selectedTab: $selectedTab)
                    .cornerRadius(showMenu ? 20 : 0)
            }
            
            .scaleEffect(showMenu ? 0.85 : 1)
            .offset(x:showMenu ? getReact().width - 110 : 0)
            .ignoresSafeArea()
            .overlay(Button(action: {withAnimation(.spring()){
                showMenu.toggle()
            }}, label: {
                
                VStack(spacing: 7) {
                Capsule()
                    .fill(showMenu ? Color.white: Color.primary)
                    .frame(width: 30, height: 3)
                
                Capsule()
                    .fill(showMenu ? Color.white: Color.primary)
                    .frame(width: 30, height: 3)
                
                Capsule()
                    .fill(showMenu ? Color.white: Color.primary)
                    .frame(width: 30, height: 3)
                }
            })
            
            .padding()
            , alignment: .topLeading
            )
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

//Extending View to get screen size
extension View {
    
    func getReact() -> CGRect {
        
        return UIScreen.main.bounds
    }
}
