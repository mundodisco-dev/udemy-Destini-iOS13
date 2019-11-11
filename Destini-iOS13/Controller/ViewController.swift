//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
        
    }
    
    
    func updateUI() {
        storyLabel.text = storyBrain.currentStoryTitle()
        let (choice1, choice2) = storyBrain.getStoryChoices()
        
        choice1Button.setTitle(choice1, for: .normal)
        choice2Button.setTitle(choice2, for: .normal)
        
        
        //        choice1Button.setTitle(stories[storyNumber].choice1, for: .normal)
        //        choice2Button.setTitle(stories[storyNumber].choice2, for: .normal)
    }
    
}

