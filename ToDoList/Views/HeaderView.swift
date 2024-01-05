//
//  HeaderView.swift
//  ToDoList
//
//  Created by Cyril on 04/01/2024.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subTitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .fill(.shadow(.inner(radius: 1, y: 1)))
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                Text(subTitle)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .bold()
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width*3, height: 350)
        .offset(y:-150)
    }
}

#Preview {
    HeaderView(title: "title",
               subTitle: "subTitle",
               angle: 15,
               background: .blue)
}
