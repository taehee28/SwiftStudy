//
//  ViewController.swift
//  MusicPlayer
//
//  Created by 강태희 on 2022/07/07.
//

import UIKit

class ViewController: UIViewController {
    
    // 스토리보드의 UI 요소들과 연결되는 프로퍼티들
    @IBOutlet var playPauseButton: UIButton!
    @IBOutlet var timeLable: UILabel!
    @IBOutlet var progressSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchUpPlayPauseButton(_ sender: UIButton) {
        print("button tapped")
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print("slider value changed")
    }
}

