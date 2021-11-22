//
//  ViewController.swift
//  emotionDiaryNew
//
//  Created by Jaeho Jung on 2021/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imojiButtons: [UIButton]!
    @IBOutlet var emotionLabels: [UILabel]!
    
    let emotionList = ["행복해","사랑해","좋아해",
                       "당황해","속상해","우울해",
                       "심심해","지루해","모호해"]

    let imojiImageList = ["mono_slime1","mono_slime2","mono_slime3",
                          "mono_slime4","mono_slime5","mono_slime6",
                          "mono_slime7","mono_slime8","mono_slime9"]

    var emotionClicked = [0,0,0,
                          0,0,0,
                          0,0,0]
            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for (button, image) in zip(imojiButtons, imojiImageList) {
            button.setBackgroundImage(UIImage(named: image), for: UIControl.State.normal)
        }
        
        for i in 0...8 {
            let label = emotionLabels[i]
            let emotion = emotionList[i]
            let clicked = emotionClicked[i]
            label.text = emotion + "\(clicked)"
        }

 
        /* 질문1:
         버튼 타이틀 값(button) 지우지 않아서 아래 방법으로 지우려고 하니 에러 발생: 일단은 하나씩 찾아서 빈칸으로 수정함
         혹시 해결방법이 있을까요?
        for buton in imojiButtons {
            button.setTitle("", for: .normal)
        }
         */
    }
    
    //함수1: 감정별 클릭 횟수 출력
    func emotionCount(indexNumber: Int) {
        emotionClicked[indexNumber] = emotionClicked[indexNumber] + 1
        emotionLabels[indexNumber].text = emotionList[indexNumber] + "\(emotionClicked[indexNumber])"
    }
    
    //버튼 클릭 시
    @IBAction func btnHappy(_ sender: UIButton) {
        emotionCount(indexNumber: 0)
    }
    @IBAction func btnLove(_ sender: UIButton) {
        emotionCount(indexNumber: 1)
    }
    @IBAction func btnLike(_ sender: UIButton) {
        emotionCount(indexNumber: 2)
    }
    @IBAction func btnEmbarrassed(_ sender: UIButton) {
        emotionCount(indexNumber: 3)
    }
    @IBAction func btnSad(_ sender: UIButton) {
        emotionCount(indexNumber: 4)
    }
    @IBAction func btnGloomy(_ sender: UIButton) {
        emotionCount(indexNumber: 5)
    }
    @IBAction func btnBoring(_ sender: UIButton) {
        emotionCount(indexNumber: 6)
    }
    @IBAction func btnBoring2(_ sender: UIButton) {
        emotionCount(indexNumber: 7)
    }
    @IBAction func btnAmbiguous(_ sender: UIButton) {
        emotionCount(indexNumber: 8)
    }
    
    /* 질문2: tag를 설정하고 하고, switch 쓰려고 하는데 에러 발생
     */

}

