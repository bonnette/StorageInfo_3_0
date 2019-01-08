//
//  InfoPageViewController.swift
//  StorageInfo
//
//  Created by Larry Bonnette on 12/21/14.
//  Copyright (c) 2014 com.bubbles. All rights reserved.
//

import UIKit

class InfoPageViewController: UIViewController {
    
    var CurrentInfo : Stuff?

    @IBOutlet weak var InfoPageconnection: UIWebView!

    override func viewDidLoad(){

    let url = Bundle.main.url(forResource: (CurrentInfo?.ArrayInfo)!, withExtension:"html")
        
        let request = URLRequest(url: url!)
        InfoPageconnection.loadRequest(request)
    
    }


}
