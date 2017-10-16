//
//  ViewController.swift
//  Retro Calculator
//
//  Created by Osama Mac on 10/16/17.
//  Copyright © 2017 Osama Mac. All rights reserved.
//

import UIKit
import AVFoundation

class MainVC: UIViewController {

    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btnPath = Bundle.main.path(forResource: "btn", ofType: "wav")
        
        if let btnPathExist = btnPath {
            let btnSoundURL = URL(fileURLWithPath: btnPathExist)
            
            do{
                try audioPlayer = AVAudioPlayer(contentsOf: btnSoundURL)
            } catch let error as NSError{
                print(error)
            }
            
            
        }else{
            print("Invalid Path")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func calculatorBtnPressed(_ sender: AnyObject) {
        audioPlayer.play()
    }
    
    
}

