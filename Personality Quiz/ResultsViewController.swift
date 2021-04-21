//
//  ResultsViewController.swift
//  Personality Quiz
//
//  Created by Trevor Hailey on 4/20/21.
//  Copyright © 2021 Missouri Southern State University - CIS 395. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var responses: [Answer] = [];
    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculatePersonalityResult();
        
        navigationItem.hidesBackButton = true;
    }
    
    func calculatePersonalityResult(){
        var frequencyOfAnswers: [AnimalType: Int] = [:];
        let responseTypes = responses.map { $0.type };
        
        for response in responseTypes{
            let newCount: Int;
            
            if let oldCount = frequencyOfAnswers[response]{
                newCount = oldCount + 1;
            }else{
                newCount = 1;
            }
            
            frequencyOfAnswers[response] = newCount;
        }
        
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key;
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!";
        resultDefinitionLabel.text = mostCommonAnswer.definition;
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
