//
//  ChatViw.swift
//  WhatsAppCloneSwiftUI
//
//  Created by Alperen Kavuk on 17.01.2024.
//

import SwiftUI

struct ChatViw: View {
    var userToChat: UserModel
    @State var messageToSend = ""
    var body: some View {
        
        NavigationView{
           
            VStack{
                
                HStack{
                    TextField("message here.. ", text: $messageToSend)
                }
            }
        }.navigationBarTitle(Text(userToChat.name), displayMode: .inline)
    }
}

#Preview {
    ChatViw(userToChat: UserModel(id: 0, name: "alpern", uidFromFirebase: "123"))
}
