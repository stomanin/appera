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

    let url1 = Bundle.main.url(forResource: "george", withExtension: "mp3")!
    let url2 = Bundle.main.url(forResource: "james", withExtension: "mp3")!
    let url3 = Bundle.main.url(forResource: "stanley", withExtension: "mp3")!
    let url4 = Bundle.main.url(forResource: "snap", withExtension: "mp3")!
    //var url1 = URL(fileURLWithPath: Bundle.path(forResource: "george", ofType: "mp3", inDirectory: "sounds")!)
    //var url2 = NSURL(fileURLWithPath: Bundle.path(forResource: "james", ofType: "mp3", inDirectory: "sounds")!)
    //var url3 = NSURL(fileURLWithPath: Bundle.path(forResource: "stanley", ofType: "mp3", inDirectory: "sounds")!)
    //var url4 = NSURL(fileURLWithPath: Bundle.path(forResource: "snap", ofType: "mp3", inDirectory: "sounds")!)
    var audioplayer1 = AVAudioPlayer()
    var audioplayer2 = AVAudioPlayer()
    var audioplayer3 = AVAudioPlayer()
    var audioplayer4 = AVAudioPlayer()
    var counter = 0
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        do{
            audioplayer1 = try AVAudioPlayer(contentsOf:url1)
            audioplayer1.prepareToPlay()
            audioplayer2 = try AVAudioPlayer(contentsOf:url2)
            audioplayer2.prepareToPlay()
            audioplayer3 = try AVAudioPlayer(contentsOf:url3, fileTypeHint: nil)
            audioplayer3.prepareToPlay()
            audioplayer4 = try AVAudioPlayer(contentsOf:url4, fileTypeHint: nil)
            audioplayer4.prepareToPlay()
            //audioplayer.currentTime = 0
            //audioplayer.play()
            counter = 0
        }catch
        {
         }
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
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
        if counter != 1 {
            stopAll()
            audioplayer1.currentTime = 0
            audioplayer1.play()
            counter = 1
        }
        else{stopAll()}
    }
    @IBAction func play2(sender: AnyObject){
        if counter != 2 {
            stopAll()
            audioplayer2.currentTime = 0
            audioplayer2.play()
            counter = 2
        }
        else{stopAll()}
    }
    @IBAction func play3(sender: AnyObject){
        if counter != 3 {
            stopAll()
            audioplayer3.currentTime = 0
            audioplayer3.play()
            counter = 3
        }
        else{stopAll()}
    }
    @IBAction func play4(sender: AnyObject){
        if counter != 4 {
            stopAll()
            audioplayer4.currentTime = 0
            audioplayer4.play()
            counter = 4
        }
        else{stopAll()}
    }
  
    
    
}

