//
//  MovieCastDetailViewController.swift
//  Tableviews_Part_3
//
//  Created by Annie Tung on 9/28/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class MovieCastDetailViewController: UIViewController {
    
    var selectedMovie: Movie!
    
    @IBOutlet weak var castTitleLabel: UILabel!
    @IBOutlet weak var castListLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.updateViews(for: selectedMovie)
        // Do any additional setup after loading the view.
    }
//    
//    // MARK: - Navigation
//
    private func updateViews(for movie: Movie) {
        self.castListLabel.text = ""
        for cast in movie.cast {
            self.castListLabel.text! += "\(cast.firstName), \(cast.lastName)\n"
        }
    }
}
