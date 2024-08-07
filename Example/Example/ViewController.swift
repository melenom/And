//
//  ViewController.swift
//  Example
//
//  Created by ZZZ on 2024/8/6.
//

import UIKit
import And

class ViewController: UIViewController {

    lazy var titleLabel:UILabel = {
        $0.pz.color(.red)
            .alignment(.left)
            .text("And make you life better.")
            .base
    }(UILabel())
    
    lazy var backgroundView:UIView = {
        $0.pz.backgroundColor(.green)
            .cornerRadius(12)
            .masksToBounds(true)
            .maskedCorners([.layerMaxXMinYCorner, .layerMinXMaxYCorner])
            .borderColor(.cyan)
            .borderWidth(2)
            .base
    }(UIView())
    
    lazy var subtitleLabel:UILabel = {
        $0.pz.and(\.text, with: "Hello And")
            .and(\.font, with: .systemFont(ofSize: 12))
            .and(\.highlightedTextColor, with: .red)
            .and(\.isHidden, with: true)
            .base
    }(UILabel())
    
    lazy var background2View:UIView = {
        $0.and { b  in
            b.backgroundColor(.red)
                .cornerRadius(12)
                .and(\.bounds, with: .init(origin: .zero, size: .init(width: 200, height: 400)))
        }
        .masksToBounds(true)
        .base
    }(UIView())
    
    let viewx = UIImageView().pz.contentMode(.scaleAspectFill).image(.strokedCheckmark).base
    let viewx2 = UIImageView().and { i in
        i.contentMode(.scaleAspectFill)
            .image(.remove)
            .and(\.isHidden, with: false)
    }.masksToBounds(true)
        .maskedCorners(.layerMaxXMaxYCorner)
        .base
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.pz.backgroundColor(.blue)
        
        view.addSubview(
            UIButton().pz
                .addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
                .font(.boldSystemFont(ofSize: 12), size: 13)
                .color(.yellow, for: .normal)
                .text("Tap Me", for: .normal)
                .base
        )
    }

    @objc private func buttonTap(){
        
    }
}

