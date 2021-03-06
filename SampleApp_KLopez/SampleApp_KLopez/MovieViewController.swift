//
//  MovieViewController.swift
//  SampleApp_KLopez
//
//  Created by Keith and Marshneille Lopez on 11/19/16.
//  Copyright © 2016 icc. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {

    var movie: Movie?
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBOutlet weak var movieYearLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let m = movie {
            movieTitleLabel.text? = m.movieTitle!
            movieYearLabel.text? = m.movieYear!
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  

}
