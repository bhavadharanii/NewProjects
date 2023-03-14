//
//  ContentView.swift
//  swiftuiproject-1
//
//  Created by Fiuser on 09/03/23.
//

import SwiftUI
struct StackLayout: View {
    var body : some View {
        ContentView()

    }
}
//Cardview
struct CardView: View {
    @State private var isPresented = false
    var iconName: String
    var title: String
    var description: String
    
    var body : some View{
        VStack(spacing: 20){
            Image(systemName: iconName)
                .font(.system(size: 60))
                .rotation3DEffect(.degrees(20), axis: (x:1.0,y:0.0,z:-0.5))
            VStack(spacing: 10){
                Text(title)
                    .font(.system(.title2,design: .rounded))
                    .fontWeight(.black)
                Text(description)
                    .font(.body)
                    .fontWeight(.bold)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
            }
        }
        .border(.black)
        .frame(minWidth: 0, maxWidth: .infinity,minHeight: 200,maxHeight: 200)
        .padding(10)
        .background(Color(red : 200/255, green:200/255 , blue:230/255))
        .cornerRadius(20)
        .onTapGesture {
            isPresented = true
        }
        .sheet(isPresented: $isPresented, content: {
            descriptionSheet()
                .frame(height: 100)
                .background(Color(red : 200/255, green:200/255 , blue:230/255))
                .cornerRadius(20)
                .padding()
//               .border(.black)

        })
        Spacer()
        
    }
    
}
//Heading
struct ContentView: View {
    var body: some View {
        
        HStack {
            VStack(alignment: .leading, spacing: 10){
                //spacing between hobbies and "The quest for a balanced life" is 10
                Text("Hobbies")
                    .font(.system(.largeTitle,design: .rounded))
                    .fontWeight(.black)
                Text("The quest for a balanced life")
                    .font(.title2)
               // nextPage()
                //nextButton()
            }
            Spacer()
        }
    }
    
}
//BadgeView
struct BadgeView: View {
    var title: String
    var padding: CGFloat
    var radius: CGFloat
    var rotation: Double
    var xOffset: CGFloat
    var yOffset: CGFloat
    
    var body: some View {
        Text(title)
            .font(.callout)
            .fontWeight(.bold)
            .padding(padding)
            .background(Color(red: 20/255, green: 18/255, blue: 237/255))
            .foregroundColor(.white)
            .cornerRadius(radius)
            .rotationEffect(.degrees(rotation))
            .offset(x: xOffset, y: yOffset)
    }
}

//bottomSheet
struct descriptionSheet : View{
    var body: some View{
        Text("New arrival of book from this journal")
            .padding()
    }
}

//newPage
struct nextPage: View{
    @State private var text: String = ""
    var body: some View{
        TextField("Enter text", text: $text)
            .textFieldStyle(RoundedBorderTextFieldStyle()
        )
            .border(Color.black,width: 3)
            .cornerRadius(10)
        .padding()
    }
}

//Button
struct nextButton: View{
    var body: some View{
        NavigationLink(destination: NextPage()){
        Text("Next Page")
    }
        .frame(minWidth: 0, maxWidth: 300)
        //.fontWeight(.bold)
//        .cornerRadius(30)
        .border(.black)
        .background(LinearGradient(gradient: Gradient(colors: [Color.purple,Color.white,Color.white, Color.blue]), startPoint: .leading, endPoint: .trailing))
         .foregroundColor(.black)
        .font(.title)
        .cornerRadius(30)
        .padding()
    }
}
struct NextPage: View {
    var body: some View {
        Text("This is the next page")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
       
    }
}

