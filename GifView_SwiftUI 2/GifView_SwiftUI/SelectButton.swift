//
//  SelectButton.swift
//  GifView_SwiftUI
//
//  Created by SHUAA on 30-11-2023.
//

import SwiftUI

struct SelectButton: View {
    @Binding var isSelected : Bool
    @State  var text : String
    @State var color :Color

    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(width: 150,height: 80)
                .foregroundColor(isSelected ? color : .gray)
                .cornerRadius(45)
               
            
            Text(text)
                .foregroundColor(.black)
        }
    }
    }

    struct SelectButton_Previews : PreviewProvider {
    static var previews : some View {

        SelectButton(isSelected:.constant(false),
                     text: "option ",color : .white)
        
    }
    }


