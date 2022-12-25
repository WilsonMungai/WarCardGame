//
//  ViewController.swift
//  WarCardGame
//
//  Created by Wilson Mungai on 2022-12-19.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func dealTapped(_ sender: UIButton)
    {
        // Randomize card numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        // Update the image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        // Compare random numbers
        if leftNumber > rightNumber
        {
            // Left side wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber
        {
            // Right side wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else
        {
            // A tie
        }
    }
}

