//
//  SettingsView.swift
//  Fructus
//
//  Created by Mariano Ledesma on 03/09/2021.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false ){
                VStack(spacing: 20){
                    //MARK: - SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical,4)
                        
                        HStack(alignment:.center,spacing:10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width:80,height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    //MARK: - SECTION 2
                    GroupBox(
                    label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical,4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again")
                            .padding(.vertical,8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)))
                    }
                    
                    //MARK: - SECTION 3
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        SettingsRowView(name: "Developer", content: "Mariano/ Emergencias")
                        SettingsRowView(name: "Designer", content: "Udemy Master Class")
                        SettingsRowView(name:"Compability",content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "Emergencias", linkDestination: "https://www.emergencias.com.ar/")
                        SettingsRowView(name: "WhatsApp", linkLabel: "WhatsApp", linkDestination: "https://api.whatsapp.com/send?phone=5491169103637&text=Hola!%20Quiero%20realizar%20una%20consulta.&src=sitio-emergencias")
                        SettingsRowView(name: "SwiftUI",content: "2.0")
                        SettingsRowView(name: "Version",content: "1.1.0")
                    }//:GROUP BOX
                                    
                }//:VStack
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .navigationBarItems(trailing: Button(action:{
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                    
                })
                .padding()
                
            }//: Scroll View
        }//: Navigation View
    }
}
// MARK: PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
