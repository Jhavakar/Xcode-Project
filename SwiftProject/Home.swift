//
//  Home.swift
//  SwiftProject
//
//  Created by Jhavakar Thillainathan on 09/06/2021.
//

import SwiftUI

struct Home: View {
    
    @Binding var selectedTab: String
    
    init(selectedTab: Binding<String>) {
        self._selectedTab = selectedTab
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        
        
        //  View with the tabs ..
        TabView(selection: $selectedTab) {
            
            // Views ..
            MainHome()
                .tag("Home")
            
            Restriction()
                .tag("Restriction")
            
            Settings()
                .tag("Settings")
 
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct MainHome: View {
    
    var body: some View{
        
        NavigationView{
            
            Text("Hi")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Home")
        }
        
        
    }
}

struct Restriction: View {
    
    var body: some View{
        
        NavigationView{
            
            Text("Restriction")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Restriction")
        }
        
        
    }
}

struct Settings: View {
    
    var body: some View{
        
        NavigationView{
            
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Settings")
        }
        
        
    }
}


