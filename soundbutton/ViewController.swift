//
//  ViewController.swift
//  soundbutton
//
//  Created by ValerioRossetti on 20/11/16.
//  Copyright © 2016 ValerioRossetti. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var url = URL(fileURLWithPath: Bundle.main.path(forResource: "george", ofType: "mp3")!)
    var audioplayer = AVAudioPlayer()
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do{
            audioplayer = try AVAudioPlayer(contentsOf:url, fileTypeHint: nil)
        }catch
        {
         }            // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playmyass(_ sender: AnyObject){
        if counter == 0 {
            audioplayer.prepareToPlay()
            audioplayer.currentTime = 0
            audioplayer.play()
            counter = 1
        }
        else{
            audioplayer.stop()
            counter = 0
        }
    }
    
    
    
}

