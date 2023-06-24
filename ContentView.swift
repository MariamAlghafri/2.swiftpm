import SwiftUI

struct ContentView: View {
    @AppStorage("count") var count = 0
    @AppStorage("remaining") var tryesReamaining = 40
    @AppStorage("messege") private var messege = ""
    
    var body: some View {
        VStack{
            Text("\(count) Welcomw to MEDTECH")
            Text("\(tryesReamaining - count) tryes remaining")
            Button{
                count += 1
                if count >= 5 {
                    messege = "Thats to much"}
                if count >= 10 {
                    messege = "Clam Down"}
                if count >= 15 {
                    messege = "Relaxe"}
                
            }label: {
                Text("Sing In")
            }
           // .buttonStyle(.borderedProminent)
            .padding()
            .font(.system(size: 40))
            .background(.orange)
            .foregroundColor(.black)
            .cornerRadius(10)
            .shadow(color: .blue.opacity(0.9),radius: 10, x: 0.0, y:0.0)
            
            Text(messege)
            
            Button {
                //tryesReamaining - count == count += 1
                //if  tryesReamaining - count >= 5 {
                    messege = "STOP!"
                    }
                
            label: {
                    Text("Serch")
                }
               // .buttonStyle(.borderedProminent)
                .padding()
                .font(.system(size: 40))
                .background(.blue)
                .foregroundColor(.orange)
                .cornerRadius(10)
                .shadow(color: .blue.opacity(0.9),radius: 10, x: 0.0, y:0.0)
                
            Text(messege)
                }
            //}
            //}
        }
    }
