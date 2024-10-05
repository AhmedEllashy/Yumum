//
//  ProductDetailsView.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 05/10/2024.
//

import SwiftUI

struct ProductDetailsView: View {
    let infoArray: [String] = ["Calories","Organic","Free Gluten"]
    @State var instructions: String = ""
    var body: some View {
        ZStack(alignment:.bottom){
            ScrollView(.vertical) {
                
                    VStack(alignment:.leading){
                        
                        ProductImageView()
                        
                        ProductDataView()
                        
                        mainGradiantsView()
                        
                        foodInformationView(infoArray: infoArray)
                        
                        Divider()
                            .padding(.top,10)
                        TextField("Add Intstructions", text: $instructions)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10.0)
                                    .fill()
                                    .foregroundStyle(.gray.opacity(0.1))
                                    .shadow(radius: 10)
                                
                            )
                            .frame(height: 60)
                        
                        
                    }//:VStack
                    .padding()
            }
            bottomHandlerView()
            .frame(height: 40)
            .background(Color.white)
            .padding(.horizontal,10)

        }//:ZStack
        
    }
}
//MARK: - Helpers
func mainGradiantsView() -> some View{
    return VStack (alignment:.leading){
        Text("Main Ingrediants")
            .font(.headline)
            .fontWeight(.bold)
        Image(.ingridientGroup)
    }
    .padding(.top,5)
}

func foodInformationView(infoArray:[String]) -> some View{
    return VStack (alignment:.leading){
        Text("Food Informations")
            .font(.headline)
            .fontWeight(.bold)
        HStack{
            ForEach(infoArray,id:\.self){item in
                HStack(spacing:nil) {
                    Image(item)
                    Text(item)
                        .font(.subheadline)
                        .fontWeight(.medium)
                }
                .padding(9)
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill()
                        .foregroundStyle(.gray.opacity(0.1))
                )
                
                
            }
        }
    }
    .padding(.top,5)
    
}
func stepperView() -> some View{
    return   HStack{
        Button(action: {}, label: {
            Image(systemName: "plus")
                .padding(6)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill()
                        .foregroundStyle(.gray.opacity(0.2))
                        .shadow(color:.gray,radius: 10)
                )
        })
        Text("0")
        
        
        Button(action: {}, label: {
            Image(systemName: "minus")
            
                .padding(6)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill()
                        .foregroundStyle(.gray.opacity(0.2))
                        .shadow(color:.gray,radius: 10)
                )
        })
    }
    
}
func bottomHandlerView() -> some View{
    return HStack(alignment:.bottom){
        stepperView()
            .padding(.leading,30)
            .padding(.bottom,10)

        Spacer()
        Button {
            
        } label: {
            Text("Add to Cart")
                .font(.headline)
                .padding(.horizontal,60)
                .padding(.vertical,10)
                .foregroundStyle(.white)

                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill()
                        
                )
        }
        .padding(.top,20)
        .padding(.trailing,20)


        
    }

}

#Preview {
    ProductDetailsView()
}
