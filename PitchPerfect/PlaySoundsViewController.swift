//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Thomas Hauglid on 05/11/2018.
//  Copyright © 2018 Hauglid. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
  
    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var vaderButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!

    var recordedAudioURL: URL!
    var audioFile:AVAudioFile!
    var audioEngine:AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI(.notPlaying)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        stopAudio()
    }
    
    @IBAction func playSoundForButton(_ sender: UIButton) {
        switch sender {
        case snailButton:
            playSound(rate: 0.5)
        case chipmunkButton:
            playSound(rate: 1.5)
        case rabbitButton:
            playSound(pitch: 1000)
        case vaderButton:
            playSound(pitch: -1000)
        case echoButton:
            playSound(echo: true)
        case reverbButton:
            playSound(reverb: true)
        default:
            print("something pressed")
        }
        configureUI(.playing)
    }
    
    @IBAction func stopButtonPressed(_ sender: AnyObject) {
        stopAudio()
    }

}
