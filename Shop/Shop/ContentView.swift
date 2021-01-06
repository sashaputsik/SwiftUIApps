
import SwiftUI

struct ContentView: View {
    @State var isSelected = false
    var body: some View {
        VStack{
            Image("logo")
                .resizable()
                .frame(width: 100, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            HStack{
                ButtonSell(text: "Favorite", isSelected: $isSelected).onTapGesture {
                    self.isSelected.toggle()
                }.padding(.trailing)
                ButtonSell(text: "Best seller", isSelected: $isSelected).padding(.leading)
            }.padding(.top)
            Spacer()
            SimpleView(shoe: Shoe(name: "Nike next tow", imagePath: "1"))
                .frame(width: 290, height: 390, alignment: .center)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.965, green: 0.965, blue: 0.965)/*@END_MENU_TOKEN@*/).cornerRadius(29).shadow(radius: 5)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ButtonSell: View{
    var text: String
    @Binding var isSelected: Bool
    
    var body: some View{
        VStack{
            Text(text).font(.callout)
            GeometryReader(content: { geometry in
                //
            }).cornerRadius(3)
            .frame(width: 20, height: 3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(isSelected ?  Color.orange : Color.gray)
            .cornerRadius(2)
        }
    }
}

struct SimpleView: View{
    var shoe: Shoe
    var body: some View{
        VStack{
            Image(shoe.imagePath).resizable().scaledToFit().cornerRadius(25)
            Text(shoe.name).padding(.bottom).font(.callout).lineLimit(0)
        }
    }
}
