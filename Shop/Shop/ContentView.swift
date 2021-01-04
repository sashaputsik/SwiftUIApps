//
//  ContentView.swift
//  Shop
//
//  Created by Sasha Putsikovich on 04.01.2021.
//

import SwiftUI

struct ContentView: View {
    var products: [Product]
    var body: some View {
      
        }
        NavigationView {
            List(products){ product in
                HStack{
                   
                    Image(product.image).resizable().frame(width: 80, height: 80).clipShape(Circle()).shadow(color: .black, radius: 1)
                    
                    HStack{
                        Text(product.name).font(.headline)
                        Spacer()
                        Text(product.price)
                        NavigationLink(destination: InfoView(product: product)){
                        }
                    }
                   
                }
            }
        }.navigationBarTitle("S")
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(products: Product.initProducts())
    }
}
