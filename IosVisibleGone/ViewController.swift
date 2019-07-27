//
//  ViewController.swift
//  IosVisibleGone
//
//  Created by Flora PC on 25/7/19.
//  Copyright © 2019 Green Appers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var viewStart: UIView!
    @IBOutlet weak var viewVia1: UIView!
    @IBOutlet weak var viewVia2: UIView!
    @IBOutlet weak var viewDrop: UIView!
    
    @IBOutlet weak var btnClock: UIButton!
    
    @IBOutlet weak var btnVia1: UIButton!
    @IBOutlet weak var btnVia2: UIButton!
    @IBOutlet weak var btnDrop: UIButton!
    
    var via1IsShown = false
    var via2IsShown = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defaultView()
        // Do any additional setup after loading the view.
        
        
    }
    
    func defaultView(){
        viewStart.isHidden = false
        viewDrop.isHidden = false
        btnDrop.setTitle("+VIA", for: .normal)
        
        viewVia1.isHidden = true
        viewVia2.isHidden = true
        
        
    }

    @IBAction func onClickButton1(_ sender: Any) {
        
    }
    
    @IBAction func onClickVia1(_ sender: Any) {
        viewVia1.isHidden = true
        via1IsShown = false
        btnDrop.isHidden = false
        btnDrop.setTitle("+VIA", for: .normal)
    }
    
    @IBAction func onClickVia2(_ sender: Any) {
        viewVia2.isHidden = true
        via2IsShown = false
        btnVia1.isHidden = false
        btnDrop.isHidden = false
        btnVia1.setTitle("-VIA", for: .normal)
        btnDrop.setTitle("+VIA", for: .normal)
    }
    
    @IBAction func onCLickDrop(_ sender: Any) {
        if !via1IsShown && !via2IsShown{
            via1IsShown = true
            viewVia1.isHidden = false
            btnVia1.setTitle("-VIA", for: .normal)
            btnDrop.setTitle("+VIA", for: .normal)
            return
        }
        if via1IsShown && !via2IsShown{
            via2IsShown = true
            viewVia2.isHidden = false
            btnVia1.isHidden = true
            btnDrop.isHidden = true
            btnVia2.setTitle("-VIA", for: .normal)
        }
        
        
    }
    
}

