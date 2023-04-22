//
//  TouchIndicatorView.swift
//  TouchApplication
//
//  Created by Chun-Li Cheng on 2023/4/22.
//

import UIKit

class TouchIndicatorView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
//        configure()
    }

    private func configure() {
        backgroundColor = UIColor.systemBlue.withAlphaComponent(0.5)
        layer.cornerRadius = frame.width / 2
//        layer.masksToBounds = true
    }

}
