//
//  SecondView.swift
//  MyDiary
//
//  Created by Lulwah alduwaikhi on 20/08/2022.
//

import SwiftUI

struct SecondView: View {
    let mycolor: Color
    let myS: String
    
    var body: some View {
       
        ZStack{
            mycolor.ignoresSafeArea()
            VStack{
                Text(myS)
            }
            
        }
        
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(mycolor: Color.blue, myS: "string1")
    }
}
