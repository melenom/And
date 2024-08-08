//
//  ViewController.swift
//  Example
//
//  Created by ZZZ on 2024/8/6.
//

import UIKit
import And
import SnapKit

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
        
        let bnt = UIButton().pz
            .addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
            .font(.boldSystemFont(ofSize: 12), size: 13)
            .text("hello world!!", for: .normal)
            .color(.brown, for: .normal)
            .base
        
        view.addSubview(bnt)
        
        bnt.pz.make { make in
            make.bottom.equalToSuperview()
        }
        
        view.pz.addSubview(
            UIButton().pz.text("tap me", for: .normal)
                .color(.red, for: .normal)
                .color(.yellow, for: .normal)
                .backgroundColor(.cyan)
                .base
        ){
            $0.left.equalTo(self.view.nice.left).offSet(10)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(self.view.nice.top).offSet(300)
            $0.centerY.equalToSuperview()
        }
    }

    @objc private func buttonTap(){
        
    }
}

