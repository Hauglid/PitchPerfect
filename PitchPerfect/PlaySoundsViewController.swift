//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Thomas Hauglid on 05/11/2018.
//  Copyright © 2018 Hauglid. All rights reserved.
//

import UIKit

class PlaySoundsViewController: UIViewController {
    var recordedAudioURL: URL!
  
    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var vaderButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // MARK: Actions
    
    @IBAction func playSoundForButton(_ sender: UIButton) {
        switch sender {
        case snailButton:
            print("snailbutton pressed")
        case chipmunkButton:
            print("chipmunkButton pressed")
        case rabbitButton:
            print("rabbitButton pressed")
        case vaderButton:
            print("vaderButton pressed")
        case echoButton:
            print("echoButton pressed")
        case reverbButton:
            print("reverbButton pressed")
        default:
            print("something pressed")
        }
    }
    
    @IBAction func stopButtonPressed(_ sender: AnyObject) {
        print("Stop Audio Button Pressed")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
