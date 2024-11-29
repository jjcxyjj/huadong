//
//  UpdateList.swift
//  pro 1
//
//  Created by a on 2020/8/3.
//  Copyright © 2020 AUV. All rights reserved.
//

import SwiftUI

struct UpdateList: View {
    @ObservedObject var store = UpdateStore()
    
    func addUpdate(){
        store.updates.append(Update(image: "古风1",title:"名传千古图",text: "这幅画点亮了千载时空，照破万古长夜",date : "Jan 1"))
    }
    
    var body: some View {
        NavigationView {
            List{
                ForEach(store.updates) {    update in
                    NavigationLink(destination: UpdateDetail(update: update)) {
                        HStack {
                            Image(update.image)
                                .resizable()
                                .frame(width: 80,height: 80)
                                .background(Color(#colorLiteral(red: 0.3098039329, green: 0.2039215714, blue: 0.03921568766, alpha: 1)))
                                .cornerRadius(20)
                                .padding(.trailing,4)
                            VStack(alignment: .leading,spacing: 0.8) {
                                Text(update.title)
                                    .font(.system(size: 22,weight: .bold))
                                Text(update.text)
                                    .font(.subheadline)
                                    .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                Text(update.date)
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            }
                        }
                        .padding(.vertical,8)
                    }
                }
                .onDelete{ index in
                    self.store.updates.remove(at:index.first!)
                    }
                .onMove{(source:IndexSet,destination:Int)in
                    self.store.updates.move(fromOffsets:source,toOffset:destination)
                    }
                }
                .navigationBarTitle(Text("画动社区"))
                .navigationBarItems(leading: Button(action:addUpdate){
                        Text("Update")
                },trailing:EditButton())
            }
        .offset(y: 100)
        }
    }


struct UpdateList_Previews: PreviewProvider {
    static var previews: some View {
        UpdateList()
    }
}


      struct Update : Identifiable{
            var id = UUID()
            var image : String
            var title : String
            var text : String
            var date : String
      }

      let updateData = [
          Update(image: "古风1",title: "金秋十月图",text:"金秋十月，硕果累累，丹桂飘香",date:"Jan 1"),
          Update(image: "古风2",title: "白露雁飞图",text:"飞雁亲昵地看着对方，物也有情",date:"Jan 2"),
          Update(image: "古风3",title: "落日南归图",text:"红日傍山，飞鸟也该归家了",date:"Jan 3"),
          Update(image: "古风4",title: "清明杨柳图",text:"清明时节雨纷纷，杨柳依依送我行",date:"Jan 4"),
          Update(image: "古风5",title: "少儿嬉戏图",text:"年少最是好嬉戏，爆竹声中一岁除",date:"Jan 5"),
          Update(image: "古风6",title: "孤舟独钓图",text:"孤舟蓑笠翁，独钓寒江雪",date:"Jan 6"),
          Update(image: "古风7",title: "云雾江山图",text:"江山如画，锦绣如歌，云雾如梦似幻",date:"Jan 7"),
          Update(image: "古风8",title: "落英缤纷图",text:"芳草鲜美，落英缤纷",date:"Jan 8"),
          Update(image: "古风9",title: "渔歌唱晚图",text:"渔歌唱晚想穷，响穷彭蠡之滨",date:"Jan 9"),
          Update(image: "古风10",title: "山涧飞马图",text:"是日牵来赤墀下，迥立阊阖生长风，一洗万古凡马空",date:"Jan 10")
      ]
