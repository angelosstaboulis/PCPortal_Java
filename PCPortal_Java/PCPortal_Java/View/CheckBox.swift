//
//  CheckBox.swift
//  PCPortal_Java
//
//  Created by Angelos Staboulis on 18/5/22.
//

import SwiftUI
struct CheckBox: View {
    @Binding var imageName:String
    @Binding var title:String
    @Binding var selected:Bool
    @Binding var getSelected:String
    var body: some View {
        HStack{
            Button {
                getSelected = title
                imageName = "square"
                selected.toggle()
            } label: {
                HStack{
                    Image(imageName).border(.white, width: 1).background(Rectangle().foregroundColor(selected ? .red : .orange))
                    Text(title).padding(5).foregroundColor(.white)
                }
            }.background(Rectangle().foregroundColor(.clear))
        }
    }
}

