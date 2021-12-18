//
//  SafeAreaBootcamp.swift
//  TextBootcamp
//
//  Created by Dipon Sutradhar on 15/12/21.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        
        ScrollView{
            
            Text("Title goes here")
                .font(.title)
                .frame(maxWidth : .infinity,alignment: .leading)
                .padding()
            
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 25)
                    .fill(.orange)
                    .frame(height : 150)
                    .shadow(radius: 10)
                    .padding()
            }
            
            
        }
        .background(
            Color.blue
                .ignoresSafeArea(.all)
        )
        
            
            
        
        
        
        
        
//        ZStack {
//
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//            VStack{
//
//                Text("Hello")
//                Spacer()
//
//            }
//        }
        
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
