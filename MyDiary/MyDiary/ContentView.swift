//
//  ContentView.swift
//  MyDiary
//
//  Created by Lulwah alduwaikhi on 20/08/2022.
//

import SwiftUI

struct ContentView: View {
    let colors = [Color.indigo.opacity(0.4),Color.blue.opacity(0.4),Color.yellow.opacity(0.4),Color.red.opacity(0.4)]
    
    @State var mynote = ""
    @State var selected : Color = Color.yellow
    var body: some View {
        NavigationView{
            ZStack{
                Color.gray
                    .ignoresSafeArea()
            VStack{
                Text("اختر اللون المفضل")
                    .font(.system(size: 30))
                HStack{
                ForEach(colors,id:\.self){ oneColor in
                    Circle().fill(oneColor)
                        .frame(width: 50, height: 50)
                        .onTapGesture {
                            selected = oneColor
                        }
                        
                  }
                }.padding()
                Text("ماذا تريد ان تكتب")
                    .font(.system(size: 20))
                
                TextField("اكتب هنا",text: $mynote)
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(.black)
                Spacer()
                
                NavigationLink(destination: SecondView(mycolor: selected, myS: mynote)) {
                    Text("حفظ")
                        .font(.largeTitle)
                        .frame(width: 250, height: 100)
                        .background(.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                        
            }
        }
            
            }
       
                .navigationTitle("دفتر يومياتي")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
