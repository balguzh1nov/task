//
//  ViewController.swift
//  travel
//
//  Created by Абай on 12.06.2023.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the background color of the view to white
        view.backgroundColor = .white
        
        // Create the header view
        let headerView = UIView()
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.backgroundColor = UIColor(red: 12/255, green: 29/255, blue: 48/255, alpha: 1.0)
        headerView.layer.cornerRadius = 16
        headerView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        
        // Add the header view to the main view
        view.addSubview(headerView)
        
        // Create constraints for the header view
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 222)
        ])
        
        // Create the navigation bar
        let navBar = UINavigationBar()
        navBar.translatesAutoresizingMaskIntoConstraints = false
        navBar.barTintColor = UIColor(red: 12/255, green: 29/255, blue: 48/255, alpha: 1.0)
        navBar.tintColor = .white
        navBar.setBackgroundImage(UIImage(), for: .default)
        navBar.shadowImage = UIImage()
        let navItem = UINavigationItem(title: "Custom Header")
        
        // Button with location system image and "Astana" label
        let locationButton = UIButton(type: .system)
        locationButton.setImage(UIImage(systemName: "location"), for: .normal)
        locationButton.tintColor = .white
        locationButton.addTarget(self, action: #selector(locationButtonTapped), for: .touchUpInside)
        let locationLabel = UILabel()
        locationLabel.text = "Astana"
        locationLabel.font = UIFont.systemFont(ofSize: 14)
        locationLabel.textColor = .white
        let locationStackView = UIStackView(arrangedSubviews: [locationButton, locationLabel])
        locationStackView.axis = .horizontal
        
        // Label at the center "Welcome to Kazakhstan"
        let titleLabel = UILabel()
        titleLabel.text = "Welcome to"
        titleLabel.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        titleLabel.textColor = .white
        let countryLabel = UILabel()
        countryLabel.text = "Kazakhstan"
        countryLabel.font = UIFont.systemFont(ofSize: 17)
        countryLabel.textColor = .white
        let titleStackView = UIStackView(arrangedSubviews: [titleLabel, countryLabel])
        titleStackView.axis = .vertical
        titleStackView.alignment = .center
        
        // Add the title stack view to the header view
        headerView.addSubview(titleStackView)
        
        // Create constraints for the title stack view
        NSLayoutConstraint.activate([
            titleStackView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            titleStackView.centerYAnchor.constraint(equalTo: headerView.centerYAnchor)
        ])
        
        // QR scan button with scan system image
        let qrScanButton = UIBarButtonItem(image: UIImage(systemName: "qrcode.viewfinder"), style: .plain, target: nil, action: nil)
        qrScanButton.tintColor = .white
        
        // Notification button with notification system image
        let notificationButton = UIBarButtonItem(image: UIImage(systemName: "bell"), style: .plain, target: nil, action: nil)
        notificationButton.tintColor = .white
        
        // Add the buttons to the navigation item
        navItem.leftBarButtonItems = [UIBarButtonItem(customView: locationStackView)]
        navItem.titleView = titleStackView
        navItem.rightBarButtonItems = [notificationButton, qrScanButton]
        
        // Add the navigation item to the navigation bar
        navBar.items = [navItem]
        
        // Add the navigation bar to the header view
        headerView.addSubview(navBar)
        
        // Create constraints for the navigation bar
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: headerView.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: headerView.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: headerView.trailingAnchor),
            navBar.bottomAnchor.constraint(equalTo: headerView.bottomAnchor)
        ])
        
        // Create the stack view
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .red
        stackView.layer.cornerRadius = 12
        
        // Add the stack view to the main view
        view.addSubview(stackView)
        
        // Create constraints for the stack view
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 16),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
    }
    
    @objc private func locationButtonTapped() {
        // Handle location button tap
    }
}
