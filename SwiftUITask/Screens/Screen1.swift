//
//  Screen1.swift
//  Task 1
//
//  Created by Waqas Khadim on 22/04/2024.
//

import Foundation
import SwiftUI

struct Screen1: View {
    @State private var stringOfTextField: String = String()
    @State var checked = false
    var body: some View {
        VStack(alignment: .leading, spacing:20) {
            HStack(spacing: 10) {
                
                DestinationWidget(title: "From", subTitle: "Kuala Lumpur")
                
                DestinationWidget(title: "To", subTitle: "Kuala Lumpur")
            }
            .overlay {
                Image(systemName: "arrow.left.arrow.right")
                    .padding(4)
                    .foregroundColor(.white)
                    .background(.gray)
                    .cornerRadius(100)
            }
            
            // calender dates
            
            HStack (spacing:0){
                HStack {
                    VStack (alignment: .leading, spacing: 0){
                        Text("Depart Date")
                            .font(.system(size: 12))
                        Text("24/04/2024")
                            .fontWeight(.bold)
                    }
                    Spacer()
                    Image(systemName: "calendar")
                }
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 8, bottomLeading: 8)).fill(.white).stroke(.gray, lineWidth: 0.4))
                
                
                HStack {
                    VStack (alignment: .leading, spacing: 0){
                        Text("Return Date")
                            .font(.system(size: 12))
                        Text("24/04/2024")
                            .fontWeight(.bold)
                    }
                    Spacer()
                    Image(systemName: "calendar")
                }
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(UnevenRoundedRectangle(cornerRadii: .init(bottomTrailing: 8, topTrailing: 8)).fill(.white).stroke(.gray, lineWidth: 0.4))
            }
            
            // heading
            
            HStack(alignment: .center) {
                Image(systemName: "person.fill")
                Text("1 Guest, Economy")
                Image(systemName: "chevron.down")
            }
            
            // Textfield
            
            TextField("Promo Code", text: $stringOfTextField)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 0.4)))
                        .frame(minWidth: 0, maxWidth: .infinity)
            
            // Check box
            
            HStack {
                Image(systemName: checked ? "checkmark.square.fill" : "square")
                            .foregroundColor(checked ? Color(UIColor.systemBlue) : Color.secondary)
                            .onTapGesture {
                                self.checked.toggle()
                            }
                
                Text("Add a hotel and save up to 25% on flights")
                    .font(.system(size: 12))
                    
                    .frame(minWidth: 0, maxWidth: .infinity)
                    
                
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 8)
                .stroke(.gray, lineWidth: 0.4))
            .frame(minWidth: 0, maxWidth: .infinity)
            
            // search button
            
            Button(action: {
                    print("sign up bin tapped")
                }) {
                    Text("Search")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .font(.system(size: 18))
                        .padding()
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.black, lineWidth: 2)
                    )
                }
                .background(Color.green) // If you have this
                .cornerRadius(25)
            
                        
            Spacer()
        }
        .padding(.horizontal, 20)
    }
    
}

#Preview {
    Screen1()
}
