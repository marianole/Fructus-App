//
//  ContentView.swift
//  Fructus
//
//  Created by Mariano Ledesma on 31/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    @State private var inShowingSettings: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                    
                    FruitRowView(fruit: item)
                        .padding(.vertical,6)
                    
                    }//: Navigation Link
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                inShowingSettings = true
            }){
                Image(systemName: "slider.horizontal.3")
            }//: Button
            .sheet(isPresented: $inShowingSettings){
                SettingsView()
            }
            )
        }//: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
