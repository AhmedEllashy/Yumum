//
//  ProductImageView.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 05/10/2024.
//

import SwiftUI

struct ProductImageView: View {
    var body: some View {
        ZStack(alignment:.topTrailing){
            Image(.image1)
                .resizable()
                .frame(width: UIScreen.main.bounds.width - 20, height: 240)
            Image(systemName: "heart")
                .resizable()
                .scaledToFit()
                .frame(width: 30,height: 30)
                .padding()
                .foregroundStyle(.white)
              
        }    }
}

#Preview {
    ProductImageView()
}
