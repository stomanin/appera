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

<<<<<<< Updated upstream
    var url = URL(fileURLWithPath: Bundle.main.path(forResource: "george", ofType: "mp3")!)
    var audioplayer = AVAudioPlayer()
=======
    var url1 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("george", ofType: "mp3")!)
    var url2 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("george", ofType: "mp3")!)
    var url3 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("george", ofType: "mp3")!)
    var url4 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("george", ofType: "mp3")!)
    var audioplayer1 = AVAudioPlayer()
    var audioplayer2 = AVAudioPlayer()
    var audioplayer3 = AVAudioPlayer()
    var audioplayer4 = AVAudioPlayer()
>>>>>>> Stashed changes
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do{
<<<<<<< Updated upstream
            audioplayer = try AVAudioPlayer(contentsOf:url, fileTypeHint: nil)
=======
            audioplayer1 = try AVAudioPlayer(contentsOfURL:url1, fileTypeHint: nil)
            audioplayer1.prepareToPlay()
            audioplayer2 = try AVAudioPlayer(contentsOfURL:url2, fileTypeHint: nil)
            audioplayer2.prepareToPlay()
            audioplayer3 = try AVAudioPlayer(contentsOfURL:url3, fileTypeHint: nil)
            audioplayer3.prepareToPlay()
            audioplayer4 = try AVAudioPlayer(contentsOfURL:url4, fileTypeHint: nil)
            audioplayer4.prepareToPlay()
            //audioplayer.currentTime = 0
            //audioplayer.play()
            counter = 0
>>>>>>> Stashed changes
        }catch
        {
         }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
<<<<<<< Updated upstream
    @IBAction func playmyass(_ sender: AnyObject){
=======
    func stopAll(){
        audioplayer1.stop()
        audioplayer1.currentTime = 0
        audioplayer2.stop()
        audioplayer2.currentTime = 0
        audioplayer3.stop()
        audioplayer3.currentTime = 0
        audioplayer4.stop()
        audioplayer4.currentTime = 0
        counter = 0
    }

    @IBAction func play1(sender: AnyObject){
>>>>>>> Stashed changes
        if counter == 0 {
            audioplayer1.currentTime = 0
            audioplayer1.play()
            counter = 1
        }
        else{
            stopAll()
        }
    }
    @IBAction func play2(sender: AnyObject){
        if counter == 0 {
            audioplayer2.currentTime = 0
            audioplayer2.play()
            counter = 1
        }
        else{
            stopAll()
        }
    }
    @IBAction func play3(sender: AnyObject){
        if counter == 0 {
            audioplayer3.currentTime = 0
            audioplayer3.play()
            counter = 1
        }
        else{
            stopAll()
        }
    }
    @IBAction func play4(sender: AnyObject){
        if counter == 0 {
            audioplayer4.currentTime = 0
            audioplayer4.play()
            counter = 1
        }
        else{
            stopAll()
        }
    }
  
    
    
}

