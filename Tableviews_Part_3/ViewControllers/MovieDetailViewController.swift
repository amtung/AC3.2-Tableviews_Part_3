//
//  MovieDetailViewController.swift
//  Tableviews_Part_3
//
//  Created by Annie Tung on 9/28/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    var selectedMovie: Movie! 

    @IBOutlet weak var moviePosterImageView: UIImageView!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var summaryFullTextLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.updateViews(for: selectedMovie) //call the function 

        // Do any additional setup after loading the view.
    }
    
    //update label and image
    private func updateViews(for movie: Movie) {
        self.moviePosterImageView.image = UIImage(named: movie.poster)!
        self.genreLabel.text = "Genre: " + movie.genre.capitalized
        self.locationLabel.text = "Locations: " + movie.locations.joined(separator: ", ")
        self.summaryFullTextLabel.text = movie.summary
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
