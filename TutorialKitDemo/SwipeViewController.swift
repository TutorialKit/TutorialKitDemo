//
//  SwipeViewController.swift
//  TutorialKitDemo
//
//  Created by Lee Cooper on 7/23/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

import Foundation

class SwipeViewController: UIViewController {
    
    @IBOutlet weak var swiperLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(SwipeViewController.respond(_:)))
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
    }
    
    func respond(gesture: UIGestureRecognizer) {
        swiperLabel.text = "Swiped Right"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
    }
}
