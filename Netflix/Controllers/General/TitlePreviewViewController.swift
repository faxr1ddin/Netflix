//
//  TitlePreviewViewController.swift
//  Netflix
//
//  Created by Faxriddin Mo'ydinxonov on 22/08/23.
//

import UIKit
import WebKit

class TitlePreviewViewController: UIViewController {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.text = "Harry Potter"
        return label
    }()
    
    private let overViewLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = "This is the best movie ever to watch as a kid!"
        return label
    }()
    
    private let dowloadButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.setTitle("Dowload", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        return button
    }()
    
    private let webView: WKWebView = {
        let webView = WKWebView()
        webView.translatesAutoresizingMaskIntoConstraints = false
        return webView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(webView)
        view.addSubview(titleLabel)
        view.addSubview(overViewLabel)
        view.addSubview(dowloadButton)
        
        configureConstraints()
        
        view.backgroundColor = .systemBackground

    }
    
    func configureConstraints() {
        
        let webViewConstrainsts = [
            webView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            webView.heightAnchor.constraint(equalToConstant: 300)]
        
        let titleLabelConstrainsts = [
            titleLabel.topAnchor.constraint(equalTo: webView.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),]
        
        let overViewLabelConstrainsts = [
            overViewLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15),
            overViewLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            overViewLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor)]
        
        let dowloadButtonConstrainsts = [
            dowloadButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dowloadButton.topAnchor.constraint(equalTo: overViewLabel.bottomAnchor, constant: 25),
            dowloadButton.widthAnchor.constraint(equalToConstant: 140),
            dowloadButton.heightAnchor.constraint(equalToConstant: 40)]
        
        NSLayoutConstraint.activate(webViewConstrainsts)
        NSLayoutConstraint.activate(titleLabelConstrainsts)
        NSLayoutConstraint.activate(overViewLabelConstrainsts)
        NSLayoutConstraint.activate(dowloadButtonConstrainsts)

    }
    
    func configure(with model: TitlePreviewViewModel) {
        
        titleLabel.text = model.title
        overViewLabel.text = model.titleOverview
        
        guard let url = URL(string: "https://www.youtube.com/embed/\(model.youtubeView.id.videoId)") else {
            return
        }
        
        webView.load(URLRequest(url: url))
    }
    
}
