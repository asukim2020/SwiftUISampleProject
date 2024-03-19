//
//  AppInfo.swift
//  AnimalKR
//
//  Created by 김현구 on 2/18/24.
//

import SwiftUI

struct AppInfoView: View {
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false) {
                VStack (spacing: 20) {
                    
                    // 1. Application
                    GroupBox{
                        AppInfoContent(name: "Developer", content: "Jacob Ko")
                        AppInfoContent(name: "Compatibility", content: "iOS 14.0")
                        AppInfoContent(name: "Version", content: "1.0.0")
                        AppInfoContent(name: "Website", linkLabel: "Jacob's DevLog", linkDestination: "jacobko.info")
                        AppInfoContent(name: "Github", linkLabel: "Go to Repository", linkDestination: "github.com/jacobkosmart/endangered-animals-kr-app")
                    } label: {
                        AppInfoLabel(labelText: "Application", labelImage: "apps.iphone")
                    } // : GroupBox
                    
                    GroupBox {
                        Divider().padding(.vertical, 5)
                        
                        // 1. Copyright
                        HStack {
                            Image("copyright")
                                .resizable()
                                .scaledToFit()
                                .frame(width: CGFloat.screenWidth * 0.3)
                            
                            Text("저작권법 제24조의2 (공공저작물의 자유이용)에 따라 한국문호정보원에서 저작재산권의 전부를 보유하고 있거나 자유이용허락표시에 대한 권리자의 동의를 받은 경우는 \"공공저작물자유이용허락표시기준(공곤누리, KOGL)\"을 부착하여 별도의 이용허락 없이 자유이용이 가능합니다.")
                                .font(.footnote)
                                .hTrailing()
                        } // : H
                        
                        Divider().padding(.vertical, 5)
                        
                        // 2. Icon Copyright
                        HStack(alignment: .center, spacing: 10) {
                            Image("appicon")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 60)
                            Spacer()
                            
                            Link(destination: URL(string: "https://www.freepik.com/vectors/animal-face")!, label: {
                                Text("Animal face vector created by grmarc - www.freepik.com")
                                    .font(.footnote)
                                Image(systemName: "arrow.up.right.square")
                                    .foregroundColor(.accentColor)
                                    .font(.footnote)
                            })
                            
                        } // : H
                        
                        Divider().padding(.vertical, 5)
                        
                        // 3. Splash Copyright
                        HStack(alignment: .center, spacing: 10) {
                            Image("splash")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 60)
                            Spacer()
                            
                            Link(destination: URL(string: "https://icons8.com/illustrations/author/5c07e68d82bcbc0092519bb")!, label: {
                                Text("Illustration by Icons 8 from Ounch")
                                    .font(.footnote)
                                Image(systemName: "arrow.up.right.square")
                                    .foregroundColor(.accentColor)
                                    .font(.footnote)
                            })
                            
                        } // : H
                    } label: {
                        AppInfoLabel(labelText: "Copyright", labelImage: "c.circle")
                        
                    }
                } // : V
                .padding()
            } // : SCROLL
            .navigationTitle("앱 정보")
        } // : NAVI
    }
}

#Preview {
    AppInfoView()
}
