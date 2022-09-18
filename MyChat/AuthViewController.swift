//
//  AuthViewController.swift
//  MyChat
//
//  Created by Marina on 18.09.22.
//

import UIKit

class AuthViewController: UIViewController {

    //let logoImageView = UIImageView(image: #imageLiteral(resourceName: "Logo"), contentMode: .scaleAspectFit)
    let logoImageView = UILabel(text: "MyCHAT")
    let googleLabel = UILabel(text: "Get started with")
    let emailLabel = UILabel(text: "Or sign up with")
    let alreadyOnboardLabel = UILabel(text: "Alerady onboard?")
    
    let googleButton = UIButton(title: "Google", titleColor: .black, backgroundColor: .white, isShadow: true)
    let emailButton = UIButton(title: "Email", titleColor: .white, backgroundColor: .buttonDark())
    let loginButton = UIButton(title: "Login", titleColor: .buttonRed(), backgroundColor: .white, isShadow: true)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        setupConstraints()
    }
}
extension AuthViewController {
        
        private func setupConstraints() {
           let googleView = ButtonFormView(label: googleLabel, button: googleButton)
           let emailView = ButtonFormView(label: emailLabel, button: emailButton)
           let loginView = ButtonFormView(label: alreadyOnboardLabel, button: loginButton)

            let stackView = UIStackView(arrangedSubviews: [googleView, emailView, loginView], axis: .vertical, spacing: 40)
            logoImageView.translatesAutoresizingMaskIntoConstraints = false
            stackView.translatesAutoresizingMaskIntoConstraints = false
            
            view.addSubview(logoImageView)
            view.addSubview(stackView)
            logoImageView.font = UIFont.init(name: "avenir", size: 30)
            logoImageView.textColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
     
            NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
                ])
            
            NSLayoutConstraint.activate([
               stackView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 160),
               stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
               stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
            ])
        }
    }


// MARK: - SwiftUI
import SwiftUI

struct AuthVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = AuthViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<AuthVCProvider.ContainerView>) -> AuthViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: AuthVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<AuthVCProvider.ContainerView>) {
            
        }
    }
}

