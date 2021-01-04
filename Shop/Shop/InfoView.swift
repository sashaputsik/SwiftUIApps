//
//  InfoView.swift
//  Shop
//
//  Created by Sasha Putsikovich on 05.01.2021.
//

import SwiftUI


struct InfoView: View {
    var product: Product = Product(name: "default", image: "m", price: "defa")
    var body: some View {
      
        VStack{
            Image(product.image).resizable().scaledToFit().clipShape(Circle())
            Text(product.name).font(.title2).textCase(.uppercase)
            Text(product.price)
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("Buy Now").foregroundColor(.black)
            }).padding(.all).border(Color.black,
                                    width:2).cornerRadius(5)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

