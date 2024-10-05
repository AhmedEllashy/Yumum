//
//  ProductDataView.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 05/10/2024.
//

import SwiftUI

struct ProductDataView: View {
    var body: some View {
        VStack {
            HStack(alignment:.top){
                VStack(alignment:.leading){
                    //Product Details
                    Text("""
                         Coco Strawberry
                         Pancake
                         """)
                    .font(.title)
                    .fontWeight(.heavy)
                    .lineLimit(2)
                    .padding(.bottom,10)
                    HStack{
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                        Text("4.6")
                            .font(.callout)
                        //
                        Image(systemName: "stopwatch.fill")
                            .foregroundStyle(.gray)
                        Text("30 min")
                            .font(.callout)
                        
                    }
                }
                Spacer()
                
                //Price
                VStack(alignment:.trailing){
                    Text("$10")
                        .font(.system(size: 35))
                        .fontWeight(.heavy)
                        .foregroundStyle(Color(.customOrange))
                        .padding(.bottom,5)
                    HStack{
                        Text("$18")
                            .font(.callout)
                            .foregroundStyle(.gray)
                            .strikethrough()
                        Text("-75 OFF")
                            .font(.callout)
                            .foregroundStyle(.black.opacity(0.8))
                    }
                }
            }
            //Description
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In interdum, massa a porta porta, est nulla porta purus, eget ornare eros libero et turpis.")
            .font(.subheadline)
            .fontWeight(.regular)
            .padding(.top,5)
        }//:VStack
 
    }
}

#Preview {
    ProductDataView()
}
