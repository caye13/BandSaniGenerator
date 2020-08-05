//
//  ViewController.swift
//  BandSaniGenerator
//
//  Created by Caye on 7/29/20.
//  Copyright © 2020 caye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    
    let genreAnswers = ["rock", "alternative rock", "punk rock", "heavy metal", ]
    let aestheticAnswers = ["grunge", "vintage", "soft", "lounge", "black", "cozy", "disco", "dreamy", "retro", "contemporary"]
    let topicAnswers = ["love", "relationships", "break up", "family", "life", "summer", "winter", "spring", "fall", "coming of age", "highschool", "death", "heartbreak", "friends", "loss", "nostagia", "remincing", "pain", "imspiration", "confusion", "change", "melancholy", "hatred", "horror", "question", "theme song", "fictional tale", ]
    let chordProgressionAnswers = ["Ab", "A", "Bb", "B", "C","C#", "D", "Eb", "E", "Fb", "F", "F#", "G", "A", "B", "C", "D", "E", "F", "G", "A", "B", "C", "D", "E", "F", "G"]
    let lyricAnswers = ["roadtrip", "love", "beach", "school", "seasons", "autumn", "august", "rain", "tonight", "free", "spirit", "water", "fearless", "too late", "help", "sorry", "eyes", "serene", "salty", "grass", "field", "snow", "sunlight", "morning", "dewdrops", "leaves", "waves"]
    
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var aestheticLabel: UILabel!
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var chordProgressionLabel: UILabel!
    @IBOutlet weak var lyricLabel: UILabel!
    
    @IBOutlet weak var generateButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!

    
    @IBAction func generateButtonPushed(_ sender: Any) {
        generateGenre()
        generateAesthetic()
        generateTopic()
        generateChordProgression()
        generateLyric()
    }
    
    func generateGenre() {
        let randomIndex = Int.random(in: 0..<genreAnswers.count)
        genreLabel.text = genreAnswers[randomIndex]
    
    }

    func generateAesthetic() {
        let randomIndex = Int.random(in: 0..<aestheticAnswers.count)
        aestheticLabel.text = aestheticAnswers[randomIndex]
    
    }

    func generateTopic() {
        let randomIndex = Int.random(in: 0..<aestheticAnswers.count)
        topicLabel.text = topicAnswers[randomIndex]
        
    }
    
    func generateChordProgression() {
        var progression: String = ""
        for _ in 1...4 {
            progression += chordProgressionAnswers[Int.random(in: 0..<chordProgressionAnswers.count)]
            progression += " "
        }
        chordProgressionLabel.text = progression
    
    }
    
    func generateLyric() {
        let randomIndex = Int.random(in: 0..<lyricAnswers.count)
        lyricLabel.text = lyricAnswers[randomIndex]
        
    }
    
    @IBAction func resetButtonPushed(_ sender: Any) {
        self.genreLabel.text = "Genre"
        self.aestheticLabel.text = "Aesthetic"
        self.topicLabel.text = "Topic"
        self.chordProgressionLabel.text = "Chord Progression"
        self.lyricLabel.text = "Lyric"

    }
}

