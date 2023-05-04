//
//  ViewController.swift
//  Sound
//
//  Created by hiroshi kajikawa on 2023/05/04.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
  
    
    @IBOutlet var drumButton: UIButton!
    
    @IBOutlet var pianoButton: UIButton!
    
    @IBOutlet var guitarButton: UIButton!
    
    
    
    let durmSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    let pianoSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    
    let guitarSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDownDrumButton(){
        
        drumButton.setImage(UIImage(named:"drumPlayingImage"),for: .normal)
        
        durmSoundPlayer.currentTime = 0
        
        
        durmSoundPlayer.play()
        
    }
            
        @IBAction func touchUpDrumButton() {
                
                drumButton.setImage (UIImage (named: "drumImage"), for:.normal)
                
                
        }
    
    @IBAction func touchDownPianoButton(){
        
        pianoButton.setImage(UIImage(named:"pianoPlayingImage"),for:.normal)
        
        pianoSoundPlayer.currentTime = 0
        
        
        pianoSoundPlayer.play()
    }
    
    @IBAction func touchUppianoButton() {
            
        pianoButton.setImage (UIImage (named:"pianoImage"), for:.normal)
            
            
    }
    
    @IBAction func touchDownguitarButton(){
        
        guitarButton.setImage(UIImage(named:"guitarPlayingImage"),for:.normal)
        
        guitarSoundPlayer.currentTime = 0
        
        
        guitarSoundPlayer.play()
    }
    
    @IBAction func touchUpguitarButton() {
            
        guitarButton.setImage (UIImage (named:"guitarImage"), for:.normal)
            
            
    }

    
    }

