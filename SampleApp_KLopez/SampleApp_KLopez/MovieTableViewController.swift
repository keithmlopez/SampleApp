//
//  MovieTableViewController.swift
//  SampleApp_KLopez
//
//  Created by Keith and Marshneille Lopez on 11/19/16.
//  Copyright © 2016 icc. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    var movies: [Movie]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let movie1 = Movie()
        let movie2 = Movie()
        let movie3 = Movie()
        let movie4 = Movie()
        let movie5 = Movie()
        
        movie1.movieTitle = "Halloween"
        movie1.movieYear = "1978"
        movie2.movieTitle = "Halloween 1"
        movie2.movieYear = "2007"
        movie3.movieTitle = "Halloween 2"
        movie3.movieYear = "1981"
        movie4.movieTitle = "Halloween 3"
        movie4.movieYear = "1998"
        movie5.movieTitle = "Halloween 4"
        movie5.movieYear = "2009"
        
        movies = [movie1, movie2, movie3, movie4, movie5]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if let m = movies {
            return m.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        let movie = movies?[indexPath.row]
        
        if let m = movie {
            cell.textLabel?.text = m.movieTitle! + " - " + m.movieYear!
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowMovie" {
            let movieVC = segue.destination as? MovieViewController
            //movieVC?.movieTitle = "Halloween"
            
            guard let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPath(for: cell) else {
                    return
            }
            movieVC?.movie = movies?[indexPath.row]
        }
    }

    

    
}
