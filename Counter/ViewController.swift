//
//  ViewController.swift
//  Counter
//
//  Created by Thiago Tosetti Lopes on 09/03/16.
//  Copyright © 2016 Thiago Tosetti Lopes. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    let counter = Counter()
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func reset(sender: UIButton) {
        counter.clear()
        display.text = "\(counter.count)"
    }
    
    @IBAction func count(sender: UIButton) {
        counter.add(em: 1)
        display.text = "\(counter.count)"
    }
    
    @IBOutlet weak var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Google Mobile Ads SDK version: " + GADRequest.sdkVersion())
        bannerView.adUnitID = "ca-app-pub-3910981515171501/4697536674"
        bannerView.rootViewController = self
        bannerView.loadRequest(GADRequest())
    }

}

