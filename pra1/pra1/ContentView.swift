//
//  ContentView.swift
//  pra1
//
//  Created by 丸本椋太 on 2022/09/20.
//

//import SwiftUI
//import UIKit
//
//struct ContentView: View {
//
//    @State var labelText = "あいう"
//    @State var flag = false
//
//    var body: some View {
//
//        VStack {
//
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("てすと")
//
//            Text(labelText)
//                .font(.largeTitle)
//                .padding(.all)
//
//            Button(action:{
//                if(self.flag){
//                    self.labelText = "押さないで"
//                    self.flag = false
//                }
//                else{
//                    self.labelText = "押さないでよ〜泣"
//                    self.flag = true
//                }
//            }){
//                Text("Button")
//                    .font(.largeTitle)
//                    .foregroundColor(Color.white)
//            }
//            .padding(.all)
//            .background(Color.blue)
//
//        }
//    }
//
//    struct ContentView_Previews: PreviewProvider {
//        static var previews: some View {
//            ContentView()
//        }
//    }
//}



//import UIKit
//import SpriteKit
//
//final class ViewController: UIViewController {
//
//    @IBOutlet private weak var skView: SKView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let scene = FirstScene(size: skView.frame.size)
//        skView.presentScene(scene)
//    }
//}
//
//final class FirstScene: SKScene {
//
//    override func didMove(to view: SKView) {
//        // 背景設定
//        let backNode = SKSpriteNode(imageNamed: "back")
//        backNode.size = frame.size
//        backNode.position = .init(x: frame.midX, y: frame.midY)
//        addChild(backNode)
//
//        // アニメーションさせるノードの設定
//        let atlas = SKTextureAtlas(named: "")
//        let animationFrames = (1...atlas.textureNames.count).map { atlas.textureNamed("\($0)") }
//        let targetNode = SKSpriteNode(texture: animationFrames.first!)
//        targetNode.position = .init(x: frame.midX, y: frame.midY)
//        addChild(targetNode)
//
//        // アニメーション処理
//        targetNode.run(.repeatForever(.animate(
//            with: animationFrames,
//            timePerFrame: 0.2,
//            resize: false,
//            restore: true)),
//                       withKey:"animation")
//    }
//}


import SwiftUI
// [1] SpriteKit をインポートします。
import SpriteKit

//struct ContentView: View{
//    var scene: SKScene{
//        let scne = GameScene()
//        scene.size = CGSize(width: 216, height: 216)
//        scene.scaleMode = .fill
//        return scene
//    }
//
//    var body: some View{
//        SpriteView(scene: self.scene)
//            .frame(width: 256, height: 256)
//            .ignoresSafeArea()
//    }
//}



struct ContentView: View {
    // [2] GameScene を初期化し、変数へ格納します。
    var scene: SKScene {
        let scene = GameScene()
        scene.scaleMode = .resizeFill
        return scene
    }

    var body: some View {
        // [3] SpriteView をレンダリングします。
        SpriteView(scene: self.scene)
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
