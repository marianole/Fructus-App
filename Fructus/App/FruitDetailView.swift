//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Mariano Ledesma on 02/09/2021.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTIES
    
    var fruit: Fruit
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
                VStack(alignment:.center,spacing: 20){
                    //HEADER
                    
                    FruitHeaderView(fruit: fruit)
                    
                    VStack (alignment:.leading,spacing:20){
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColor[1])
                        
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        
                        //NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColor[1])
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //LINK
                        SourceLinkView()
                        
                    }//:Vstack
                    .padding(.horizontal,20)
                    .frame(maxWidth:640,alignment: .center)
                }//:VStack
                .navigationBarTitle(fruit.title,displayMode: .inline)
                .navigationBarHidden(true)
            }//:SCROLL
            .edgesIgnoringSafeArea(.top)
        }//:NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }//:body
}

//MARK: - PREVIEW

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
    }
}
