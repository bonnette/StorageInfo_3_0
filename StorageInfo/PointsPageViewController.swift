//
//  PointsPageViewController.swift
//  StorageInfo
//
//  Created by Larry Bonnette on 12/21/14.
//  Copyright (c) 2014 com.bubbles. All rights reserved.
//

import UIKit

class PointsPageViewController: UIViewController {
    
     var CurrentPoints : Stuff?
    

    @IBOutlet weak var PointsPageconnection: UIWebView!
    override func viewDidLoad(){

        let url = Bundle.main.url(forResource: (CurrentPoints?.ArrayPoints)!, withExtension:"html")
        
        let request = URLRequest(url: url!)
        PointsPageconnection.loadRequest(request)
        
    }


}
