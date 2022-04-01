//
//  ViewController.swift
//  Cocktails
//
//  Created by Azamat Kenjebayev on 4/1/22.
//

import UIKit
import Alamofire
import SnapKit

class ViewController: UIViewController {
        
    var Tags = [ColoredGradientButton]()
    
    var filtredTags = [ColoredGradientButton]()
    
    let activityIndicator : UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.startAnimating()
        return activityIndicator
    }()
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .white
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: view.frame.size.height)
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
    
    lazy var textField: UITextField = {
        let textField = CocktailSearchTextField()
        textField.textAlignment = .center
        textField.backgroundColor = .systemBackground
        textField.layer.cornerRadius = 13
        textField.placeholder = "Cocktail name"
        textField.addTarget(self, action: #selector(searchTags(_ :)), for: .primaryActionTriggered)
        textField.addTarget(self, action: #selector(removeAllFilterTags(_ :)), for: .editingChanged)
        textField.drawShadow()
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NetworkManager.shared.fetchCocktails { [weak self] (Cocktails) in
            
            self?.createTags(cocktails: Cocktails)
            
            self?.activityIndicator.stopAnimating()
            
            self?.layoutTags()

            }
        
        setConstrainst()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillShow),
                                               name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillHide),
                                               name: UIResponder.keyboardWillHideNotification, object: nil)
        hideKeyboardWhenTappedAround()
        
    }

    func createTags(cocktails: [Cocktail]) {
        
        cocktails.forEach { (cocktail) in
            lazy var tag: ColoredGradientButton = {
                let tag = ColoredGradientButton()
                tag.setTitle(cocktail.strDrink, for: .normal)
                tag.titleLabel?.font = .systemFont(ofSize: 17, weight: .regular)
                tag.layer.cornerRadius = 13
                tag.backgroundColor = UIColor.lightGray
                tag.sizeToFit()
                tag.contentEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
                tag.addTarget(self, action: #selector(tap(_:)), for: .touchUpInside)
                return tag
            }()
            Tags.append(tag)
        }
    }

    @objc func removeAllFilterTags(_ textField: UITextField) {
        if textField.text == "" {
            filtredTags = filtredTags.filter { (tag) -> Bool in
                tag.backgroundGradient = false
                return tag.backgroundGradient
            }
        }
    }
    
    @objc func searchTags(_ textField: UITextField) {
        if textField.text != "" {
            filtredTags = Tags.filter { (tag) -> Bool in
                tag.backgroundGradient = false
                return (tag.titleLabel!.text!.lowercased().contains(textField.text!.lowercased().trimmingCharacters(in: .whitespaces)))
            }
            
            filtredTags.forEach { (tag) in
                tag.backgroundGradient = true
            }
        }
    }

    @objc func tap(_ sender: ColoredGradientButton) {
        if sender.isSelected == true {
            sender.backgroundGradient = false
            sender.isSelected = false
        } else {
            sender.backgroundGradient = true
            sender.isSelected = true
        }
    }

    
    @objc func keyboardWillShow(_ notification: Notification) {
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            let keyboardHeight = keyboardRectangle.height
                        
            textField.snp.updateConstraints { (make) in
                make.right.equalToSuperview().offset(0)
                make.left.equalToSuperview().offset(0)
                make.bottom.equalTo(-keyboardHeight)
                make.height.equalTo(40)
            }
            
            textField.layer.cornerRadius = 0
            scrollView.contentSize.height += keyboardHeight
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut) {
                self.view.layoutIfNeeded()
            }
        }
    }
    
    @objc func keyboardWillHide(_ notification: Notification) {
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            let keyboardHeight = keyboardRectangle.height
            
            textField.snp.updateConstraints(textFieldDefaultConstraints(_:))
            
            textField.layer.cornerRadius = 13
            scrollView.contentSize.height -= keyboardHeight
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut) {
                self.view.layoutIfNeeded()
            }
        }
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

extension ViewController {
    
    func textFieldDefaultConstraints(_ make: ConstraintMaker) -> Void {
        make.right.equalToSuperview().offset(-20)
        make.left.equalToSuperview().offset(20)
        make.bottom.equalTo(-40)
        make.height.equalTo(50)
    }
        
    func layoutTags() {
        let constant:CGFloat = 8
        var maxX:CGFloat = 0
        var maxY:CGFloat = 0
        
        for tag in Tags {
            scrollView.addSubview(tag)
            if (UIScreen.main.bounds.width - (maxX + 16 + tag.frame.width)) >= 8 {
                tag.snp.makeConstraints { (make) in
                    make.top.equalToSuperview().offset(constant + maxY)
                    make.left.equalToSuperview().offset(constant + maxX)
                }
                
            } else {
                maxY = maxY + tag.frame.height + 12
                maxX = 0
                tag.snp.makeConstraints { (make) in
                    make.top.equalToSuperview().offset(constant + maxY)
                    make.left.equalToSuperview().offset(constant)
                }
            }
            maxX = maxX + tag.frame.width + constant * 3
        }
        self.scrollView.contentSize.height = maxY + 150
    }
    
    func setConstrainst() {
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints { (make) in
            make.left.right.top.bottom.equalToSuperview()
        }
        
        view.addSubview(activityIndicator)
        activityIndicator.snp.makeConstraints { (make) in
            make.center.equalTo(view.snp.center)
        }
        
        view.addSubview(textField)
        textField.snp.makeConstraints(textFieldDefaultConstraints(_:))
    }
}

extension UIView {
    func drawShadow() {
        layer.masksToBounds = false
        layer.shadowColor = CGColor(red: 0.2354060914, green: 0.2354060914, blue: 0.2354060914, alpha: 1)
        layer.shadowOpacity = 0.3
        layer.shadowOffset = .zero
        layer.shadowRadius = 7
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
    }
}
