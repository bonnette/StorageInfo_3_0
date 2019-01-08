//
//  ImagePageViewController.swift
//  StorageInfo
//
//  Created by Larry Bonnette on 12/21/14.
//  Copyright (c) 2014 com.bubbles. All rights reserved.
//

import UIKit

class ImagePageViewController: UIViewController {
    
    
            var CurrentImage : Stuff?
            var currentScale = 1.0 as CGFloat
            //var lastScale = 0 as CGFloat
            //var lastPoint = 0 as CGFloat
   
        
    @IBAction func ScaleImage(_ sender: UIPinchGestureRecognizer) {
        
        if sender.state == .ended{
            currentScale = sender.scale
        } else if sender.state == .began && currentScale != 0.0{
            sender.scale = currentScale
        }
        if sender.scale != CGFloat.nan && sender.scale != 0.0{
            sender.view!.transform = CGAffineTransform(scaleX: sender.scale,
                y: sender.scale);
        }
        if sender.scale > 3 {sender.scale = 3
        currentScale = 3}
        if sender.scale < 1 {sender.scale = 1
        currentScale = 1}
        }
    
    @IBAction func handlePan(_ recognizer:UIPanGestureRecognizer) {
        if currentScale > 1 {
        let translation = recognizer.translation(in: self.view)
        recognizer.view!.center = CGPoint(x:recognizer.view!.center.x + translation.x,
            y:recognizer.view!.center.y + translation.y)
        recognizer.setTranslation(CGPoint.zero, in: self.view)
        }
    }
    @IBAction func handleTap(_ sender: UITapGestureRecognizer)
    { // Double tap image will do the following
        // Test to see if image is scaled
      /*  if(CGAffineTransformIsIdentity(self.view.transform)){ //if not scaled do this
                self.view.center = CGPointMake(CGRectGetMidX(self.view.bounds), CGRectGetMidY(self.view.bounds));
                self.view.transform = CGAffineTransformMakeScale(2.0, 2.0); // scales image to X2
                currentScale = 2
                }
        else {
            // if scaled do this
                self.view.center = CGPointMake(CGRectGetMidX(self.view.bounds), CGRectGetMidY(self.view.bounds));
                self.view.transform = CGAffineTransformIdentity; //shrinks image back down to normal
                currentScale = 1
                
                };*/
        
    }

    
    @IBOutlet weak var ImgPage: UIImageView!


    override func viewDidLoad(){

        
        ImgPage.image = UIImage(named: (CurrentImage?.ArrayImage)!)
        
  
}

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        
        if segue.identifier == "InfoID" {
            let InfoScene = segue.destination as! InfoPageViewController
            InfoScene.CurrentInfo = CurrentImage
        } else { let PointsScene = segue.destination as! PointsPageViewController
            PointsScene.CurrentPoints = CurrentImage
        }
    }
    
    
    
}
