//
//  ExtractSubviewsBootcamp.swift
//  TextBootcamp
//
//  Created by Dipon Sutradhar on 16/12/21.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            
            VStack(spacing : 20){
                
                Text("Title")
                    .font(.system(size: 25))
                    .frame(width: 360, height: 50, alignment: .center)
                    .background(
                        Color.white
                            
                    )
                    .foregroundColor(Color.blue)
                    
                
                HStack{
                    MyItem(title: "Apples", count: 2, color: .red)
                    MyItem(title: "Orange", count: 5, color: .orange)
                    MyItem(title: "Mango", count: 2, color: .green)
                    MyItem(title: "Banana", count: 5, color: .yellow)
                }
            }
            
            
        }
    }
    
    

}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct MyItem: View {
    
    let title : String
    let count : Int
    let color : Color
    
    var body: some View {
        VStack{
            
            Text("\(count)")
            Text(title)
            
            
            
        }
        .padding(15)
        .background(color)
        .cornerRadius(20)
    }
}
