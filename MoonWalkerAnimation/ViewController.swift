//
//  ViewController.swift
//  MoonWalkerAnimation
//
//  Created by MAC on 24/12/2019.
//  Copyright © 2019 EdJordan. All rights reserved.
//

import UIKit
import Lottie


class ViewController: UIViewController {
    
    @IBOutlet weak var animationView: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startAnimation()
        
        // Do any additional setup after loading the view.
    }
    
    func startAnimation (){
        
        let path = Bundle.main.path(forResource: "11755-moon-run", ofType: "json") ?? ""
        animationView.animation = Animation.filepath(path)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        
    }
    
}

