//
//  ViewController.swift
//  10question
//
//  Created by juicemeart on 2017/6/1.
//  Copyright © 2017年 juicemeart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    struct Qna {
        var question = ""
        var answer = ""
    }
    
    @IBOutlet weak var quesNumber: UILabel!
    @IBOutlet weak var quesLabel: UILabel!
    @IBOutlet weak var ansLabel: UILabel!
    @IBOutlet weak var cat1: UIImageView!
    @IBOutlet weak var cat2: UIImageView!
    @IBOutlet weak var showAns: UIButton!
    @IBOutlet weak var nextQues: UIButton!
    
    var count = 0
    var qnaArray = [Qna(question: "「XBOX」是哪家公司開發的？", answer: "微軟"),
                    Qna(question: "「瑪麗歐兄弟」主角帽子上寫的英文字母是？", answer: "M"),
                    Qna(question: "「光速蒙面俠21」中，主角所屬的隊伍是？", answer: "泥門惡魔蝙蝠隊"),
                    Qna(question: "「南方四賤客」裡穿著橘色外套的人是誰？", answer: "肯尼"),
                    Qna(question: "「火影忍者」中，日向寧次的血繼界限是？", answer: "白眼"),
                    Qna(question: "「怪醫黑傑克」中，黑傑克的小助手名字叫什麼？", answer: "皮諾可"),
                    Qna(question: "哪一種族屬於「魔獸世界WOW」中的「中立陣營」？", answer: "熊貓人"),
                    Qna(question: "《銀之匙》中，女主角御影亞紀最喜歡的動物是什麼？", answer: "馬"),
                    Qna(question: "《麵包超人》裡，麵包超人最大的敵人是誰？", answer: "細菌人"),
                    Qna(question: "《庫洛魔法使》的小櫻每次對戰時所穿的衣服是由誰所設計的？", answer: "知世"),
                    ]
    
    //秀答案
    @IBAction func showAns(_ sender: Any) {
        cat1.isHidden = true
        cat2.isHidden = false
        ansLabel.isHidden = false
        showAns.isHidden = true
        nextQues.isHidden = false
    }
    
    //下一題
    @IBAction func nextQues(_ sender: Any) {
        count += 1
        if count == 10{
            count = 0
        }
        nextQuestion()
        cat1.isHidden = false
        cat2.isHidden = true
        showAns.isHidden = false
        nextQues.isHidden = true
    }
    
    
    
    func nextQuestion(){
        quesLabel.text = qnaArray[count].question
        ansLabel.text = qnaArray[count].answer
        quesNumber.text = "\(count+1)"
        ansLabel.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        cat1.isHidden = false
        showAns.isHidden = false
        nextQuestion()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

