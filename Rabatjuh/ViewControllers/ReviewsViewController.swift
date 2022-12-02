//
//  ReviewsViewController.swift
//  Rabatjuh
//
//  Created by Apple on 30/11/2022.
//

import UIKit

class ReviewsViewController: UIViewController {
   
    
    // MARK: - Data
    var ReviewData = [
        Review(userImage: "userImage", userName: "Sheraz Ahmed", Reviews: "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content."),
        Review(userImage: "userImage", userName: "Sheraz Ahmed", Reviews: "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content."),
        Review(userImage: "userImage", userName: "Sheraz Ahmed", Reviews: "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content."),
        Review(userImage: "userImage", userName: "Sheraz Ahmed", Reviews: "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content."),
        Review(userImage: "userImage", userName: "Sheraz Ahmed", Reviews: "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content."),
        Review(userImage: "userImage", userName: "Sheraz Ahmed", Reviews: "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content."),
        Review(userImage: "userImage", userName: "Sheraz Ahmed", Reviews: "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content."),
        Review(userImage: "userImage", userName: "Sheraz Ahmed", Reviews: "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content."),
        Review(userImage: "userImage", userName: "Sheraz Ahmed", Reviews: "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.")
    ]

    // MARK: - Background

    
    // MARK: - Header

    
    
    // MARK: - Body
    
    private let reviewsTableVeiw = UITableView.TableVeiw()

    // MARK: - Footer
    

    // MARK: - Variables

    
    // MARK: - ViewController Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Setup()
        configureViews()

    }
}
    
    // MARK: - Actions
    


// MARK: - Extension

private extension ReviewsViewController {
    func Setup() {
        reviewsTableVeiw.delegate = self
        reviewsTableVeiw.dataSource = self
        reviewsTableVeiw.register(ReviewsTableViewCell.self, forCellReuseIdentifier: ReviewsTableViewCell.identifier)
       
      }

  }

// MARK: - Extension

// Setup Views
private extension ReviewsViewController {
    func configureViews() {
        
        navigationController?.navigationBar.isHidden = true
        self.view.addSubview(reviewsTableVeiw)

        activateConstrains()
    }
    
    func activateConstrains() {
        reviewsTableVeiw.snp.makeConstraints{ (make) in
            make.edges.equalToSuperview()
         
        }
        
    }
}

// MARK: - Extension

// Setup Views
 extension ReviewsViewController: UITableViewDelegate, UITableViewDataSource{

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ReviewData.count
   }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
           let cell = tableView.dequeueReusableCell(withIdentifier: ReviewsTableViewCell.identifier,for: indexPath) as! ReviewsTableViewCell
            cell.userImage.image = UIImage(named: ReviewData[indexPath.row].userImage)
            cell.lblName.text = ReviewData[indexPath.row].userName
            cell.lblReviews.text = ReviewData[indexPath.row].Reviews
            return cell
     }
}




// MARK: - Extension


// Setup ApiCalls
//private extension LoginViewController {
//    func LoginApi() {
//
//    }
//}
//



