//
//  ViewController.swift
//  SlideShow
//
//  Created by user on 4/19/16.
//  Copyright © 2016 cubix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var slide: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        animate([ UIImage(named: "i-1")!, UIImage(named: "i-2")!, UIImage(named: "i-3")!, UIImage(named: "i-4")!, UIImage(named: "i-5")!])

    }
    
    func animate(images: [UIImage], index: Int = 0) {
        print(index)
        UIView.transitionWithView(imageView, duration: 1, options: .TransitionCrossDissolve, animations: {
            self.imageView.image = images[index]
            }, completion: { value in
                let idx = index == images.count-1 ? 0 : index+1
                self.animate(images, index: idx)
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

