//
//  ViewController.swift
//  Star Wars App
//
//  Created by jcysewski on 11/19/15.
//  Copyright © 2015 jcysewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        
        if segue.identifier == "one"
        {
            let episode1View = segue.destinationViewController
            episode1View.title = "Episode I The Phantom Menace"
        }
        if segue.identifier == "two"
        {
            let episode2View = segue.destinationViewController
            episode2View.title = "Episode II Attack of the Clones"
        }
        if segue.identifier == "three"
        {
            let episode3View = segue.destinationViewController
            episode3View.title = "Episode III Revenge of the Sith"
        }
        if segue.identifier == "four"
        {
            let episode4View = segue.destinationViewController
            episode4View.title = "Episode IV A New Hope"
        }
        if segue.identifier == "five"
        {
            let episode5View = segue.destinationViewController
            episode5View.title = "Episode V The Empire Strikes Back"
        }
        if segue.identifier == "six"
        {
            let episode6View = segue.destinationViewController
            episode6View.title = "Episode VI Return of the Jedi"
        }
        if segue.identifier == "seven"
        {
            let episode7View = segue.destinationViewController
            episode7View.title = "Episode VII The Force Awakens"
        }
        if segue.identifier == "slotMachine"
        {
            let slotView = segue.destinationViewController
            slotView.title = "Slot Machine Game"
        }
    }


}

