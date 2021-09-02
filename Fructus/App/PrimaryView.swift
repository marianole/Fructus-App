//
//  PrimaryView.swift
//  Fructus
//
//  Created by Mariano Ledesma on 01/09/2021.
//

import SwiftUI

struct PrimaryView: View {
    var body: some View {
        VStack {
            Image("blueberry")
                .resizable()
                .scaledToFit()
            Text("There is the primary view")
                .fontWeight(.heavy)
                .padding(.vertical,20)
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
        }//:VSTACK
        .background(LinearGradient(gradient: Gradient(colors:[Color("ColorPlumLight"),Color("ColorPlumDark")]), startPoint: .top, endPoint: .bottom))
    }
}

struct PrimaryView_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryView()
    }
}
