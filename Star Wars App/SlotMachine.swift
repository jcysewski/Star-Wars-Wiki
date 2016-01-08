//
//  slotMachine.swift
//  Star Wars App
//
//  Created by jcysewski on 12/3/15.
//  Copyright © 2015 jcysewski. All rights reserved.
//

import UIKit

class SlotMachine: UIViewController {

    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    var r2d2 : UIImage = UIImage(named: "R2D2")!
    var kyloRehn : UIImage = UIImage(named: "KyloRehn")!
    var falcon : UIImage = UIImage(named: "Falcon")!
    var c3po : UIImage = UIImage(named: "C3PO")!
    var chewie : UIImage = UIImage(named: "Chewbacca")!
    var tieFighter : UIImage = UIImage(named: "TieFighter")!
    var yoda : UIImage = UIImage(named: "Yoda")!
    
    var slotPics : [UIImage] = [] // array of UI images
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        slotPics = [r2d2, kyloRehn, falcon, c3po, chewie, yoda]

    }
    @IBAction func spinWheel(sender: UITapGestureRecognizer)
    {
        print("tapped")
        let randomPic1 = Int(arc4random_uniform(UInt32(slotPics.count))) //variable that randomly choose an Image from the array slotPics
        let randomPic2 = Int(arc4random_uniform(UInt32(slotPics.count)))
        let randomPic3 = Int(arc4random_uniform(UInt32(slotPics.count)))
        
        image1.image = slotPics[randomPic1] // sets the random picture to the Image Views on the story board
        image2.image = slotPics[randomPic2]
        image3.image = slotPics[randomPic3]
        
        if randomPic1 == randomPic2 && randomPic2 == randomPic3 //if statement to identify if you win
        {
            print("jackpot")
            jackpot()
        }

    }
    
    func jackpot() // when you win, an alert view pops up, and depending on the image that won, there is a different message.
    {
        if image1.image == falcon
        {
            let alert = UIAlertController(title: "Jackpot", message: "The Force is Strong With You Young Padawan", preferredStyle: UIAlertControllerStyle.Alert)
            let resestGame = UIAlertAction(title: "Play Again", style: UIAlertActionStyle.Default, handler: {sender in self.image1.image = self.falcon
                self.image2.image = self.falcon
                self.image3.image = self.falcon})
            alert.addAction(resestGame)
            presentViewController(alert, animated: true, completion: nil)
            
        }
        if image1.image == kyloRehn
        {
            let alert = UIAlertController(title: "Jackpot", message: "The Dark Side is Calling for You", preferredStyle: UIAlertControllerStyle.Alert)
            let resestGame = UIAlertAction(title: "Play Again", style: UIAlertActionStyle.Default, handler: {sender in self.image1.image = self.kyloRehn
                self.image2.image = self.kyloRehn
                self.image3.image = self.kyloRehn})
            alert.addAction(resestGame)
            presentViewController(alert, animated: true, completion: nil)
            
        }
        if image1.image == chewie
        {
            let alert = UIAlertController(title: "Jackpot", message: "Rrrrrrr-ghghghghgh (Chewie Growl)", preferredStyle: UIAlertControllerStyle.Alert)
            let resestGame = UIAlertAction(title: "Play Again", style: UIAlertActionStyle.Default, handler: {sender in self.image1.image = self.chewie
                self.image2.image = self.chewie
                self.image3.image = self.chewie})
            alert.addAction(resestGame)
            presentViewController(alert, animated: true, completion: nil)
            
        }
        if image1.image == c3po
        {
            let alert = UIAlertController(title: "Jackpot", message: "This is not the droid you are looking for", preferredStyle: UIAlertControllerStyle.Alert)
            let resestGame = UIAlertAction(title: "Play Again", style: UIAlertActionStyle.Default, handler: {sender in self.image1.image = self.c3po
                self.image2.image = self.c3po
                self.image3.image = self.c3po})
            alert.addAction(resestGame)
            presentViewController(alert, animated: true, completion: nil)
            
        }
        if image1.image == r2d2
        {
            let alert = UIAlertController(title: "Jackpot", message: "Beep Boop Beep Boop Bop", preferredStyle: UIAlertControllerStyle.Alert)
            let resestGame = UIAlertAction(title: "Play Again", style: UIAlertActionStyle.Default, handler: {sender in self.image1.image = self.r2d2
                self.image2.image = self.r2d2
                self.image3.image = self.r2d2})
            alert.addAction(resestGame)
            presentViewController(alert, animated: true, completion: nil)
            
        }
        if image1.image == tieFighter
        {
            let alert = UIAlertController(title: "Jackpot", message: "Rebel Scum", preferredStyle: UIAlertControllerStyle.Alert)
            let resestGame = UIAlertAction(title: "Play Again", style: UIAlertActionStyle.Default, handler: {sender in self.image1.image = self.tieFighter
                self.image2.image = self.tieFighter
                self.image3.image = self.tieFighter})
            alert.addAction(resestGame)
            presentViewController(alert, animated: true, completion: nil)
            
        }
        if image1.image == yoda
        {
            let alert = UIAlertController(title: "Jackpot", message: "Succesful at Slot Machines, You Are", preferredStyle: UIAlertControllerStyle.Alert)
            let resestGame = UIAlertAction(title: "Play Again", style: UIAlertActionStyle.Default, handler: {sender in self.image1.image = self.yoda
                self.image2.image = self.yoda
                self.image3.image = self.yoda})
            alert.addAction(resestGame)
            presentViewController(alert, animated: true, completion: nil)
            
        }
    }

}
