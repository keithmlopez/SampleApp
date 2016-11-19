//
//  MovieTableViewController.swift
//  SampleApp_KLopez
//
//  Created by Keith and Marshneille Lopez on 11/19/16.
//  Copyright © 2016 icc. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {

    var movieTitles = ["Halloween", "Halloween 1", "Halloween 3", "Halloween 4", "Halloween 5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movieTitles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = movieTitles[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowMovie" {
            let movieVC = segue.destination as? MovieViewController
            //movieVC?.movieTitle = "Halloween"
            
            // get the cell that was tapped
            // get the index path for that cell
            // use the index path to get the movieTitle from the array
            // send the movie title to the Product view controller
            let cell = sender as? UITableViewCell
            if let c = cell {
                let indexPath = tableView.indexPath(for: c)
                if let ip = indexPath {
                    let productName = movieTitles[ip.row]
                    movieVC?.movieTitle = productName
                }
            }
        }
    }

    

    
}
