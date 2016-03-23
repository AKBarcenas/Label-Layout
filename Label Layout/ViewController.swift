//
//  ViewController.swift
//  Label Layout
//
//  Created by Alex on 12/28/15.
//  Copyright © 2015 Alex Barcenas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /*
     * Function Name: viewDidLoad
     * Parameters: None
     * Purpose: This method creates and displays 5 labels. This method also places Autolayout constraints
     *   on each of these labels.
     * Return Value: None
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Creates labels with different background colors without any default constraints.
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.backgroundColor = UIColor.redColor()
        label1.text = "THESE"
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = UIColor.cyanColor()
        label2.text = "ARE"
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = UIColor.yellowColor()
        label3.text = "SOME"
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = UIColor.greenColor()
        label4.text = "AWESOME"
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = UIColor.orangeColor()
        label5.text = "LABELS"
        
        // Adds the labels to the view.
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
        // A dictionary of labels used for Visual Format Language (VFL).
        let viewsDictionary = ["label1": label1, "label2": label2, "label3": label3, "label4": label4, "label5": label5]
        
        // Horizantal constraints (label stretches from left edge to right edge)
        for label in viewsDictionary.keys {
            view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[\(label)]|", options: [], metrics: nil, views: viewsDictionary))
        }
        
        // Vertical constraints (label height of 88 if possible)
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]->=10-|"
, options: [], metrics: ["labelHeight": 88], views: viewsDictionary))

    }
    
    /*
     * Function Name: prefersStatusBarHidden
     * Parameters: None
     * Purpose: This method tells the app that we want to hide the status bar at the top.
     * Return Value: bool
     */
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

