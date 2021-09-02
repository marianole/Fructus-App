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
        }//: Navigation
    }
}

//MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
