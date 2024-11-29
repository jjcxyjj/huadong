//
//  ContentView.swift
//  practice
//
//  Created by a on 2020/7/30.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI
import AVKit
  
  struct VideoView: View {
    var body: some View{
        
        GeometryReader{geo in
            ZStack{
                if UIDevice.current.orientation.isLandscape{
                    Color.black.edgesIgnoringSafeArea(.all)
                }
                VStack {
                    player().frame(height:UIDevice.current.orientation.isLandscape ? geo.size.height : geo.size.height / 3)
                    if !UIDevice.current.orientation.isLandscape{
                        MainBody()
                    }
                }
            }
            .offset(y: 40)
        }
    }
}
  
  struct VideoView_Previews: PreviewProvider {
      static var previews: some View {
          VideoView()
      }
  }
  
  struct player : UIViewControllerRepresentable {
      func makeUIViewController(context: UIViewControllerRepresentableContext<player>) -> AVPlayerViewController {
          
        let player1 = AVPlayer(url:URL(string : "https://www.w3school.com.cn/example/html5/mov_bbb.mp4")!)
        let controller = AVPlayerViewController()
        controller.player = player1
        return controller
      }
      
      func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<player>) {
          
          
      }
  }

    struct MainBody : View{
        var body : some View{
            ScrollView( .vertical, showsIndicators: false){
                VStack{
                    subscriber()
                    ForEach(1..<10){ i in
                        Videocard(image: "古风\(i)",name: "画动视频作品 \(i)")
                    }
                }
            }.padding(10)
        }
    }

struct subscriber : View{
    var body : some View{
        HStack{
            Image("person")
            VStack(alignment: .leading, content:{
                Text("ZYP").fontWeight(.heavy)
                Text("120位关注者").fixedSize()
                
            })
            Spacer()
            Button(action:{
                
            }){
                Text("关注").fontWeight(.heavy)
            }.foregroundColor(.red)
        }
    }
}
struct Videocard: View  {
    var image = ""
    var name  = ""
    var body : some View{
        HStack{
            Image(image)
                .resizable()
                .frame(width: 120, height: 80)
            VStack(alignment: .leading, content: {
                Text(name).fontWeight(.heavy)
                Text("ZYP")
                Text("110人观看")
            })
            .frame(width: UIScreen.main.bounds.width - 170,alignment: .leading)
            VStack{
                Button(action:{
                    
                }){
                    Image("pencil.empty").resizable().frame(width: 15, height: 15)
                    Spacer()
                }
                .padding(.top,20)
            .foregroundColor(Color("Custom"))
            }
        }
    }
}
