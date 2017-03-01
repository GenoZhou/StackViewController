//
//  SimpleStackViewController.swift
//  StackViewController
//
//  Created by GenoZhou on 2017-02-26.
//  Copyright © 2017 GenoZhou. All rights reserved.
//

import UIKit

open class SimpleStackViewController: UIViewController, StackViewContainer {
    
    // MARK: - Properties
    
    public var autoScrollView: AutoScrollView = AutoScrollView()
    public var stackView: UIStackView {
        let view = UIStackView()
        view.axis = .horizontal
        view.alignment = .fill
        view.distribution = .equalSpacing
        view.spacing = 0
        return view
    }
    public var items: [StackViewItem] = []
    public var backgroundColor: UIColor = .white
    public var separatorClass: StackViewItemSeparator.Type = BaseSeparatorView.self
    var viewController: UIViewController {
        return self
    }
    
    // MARK: - Lifecycle
    
    open override func loadView() {
        super.loadView()
        layoutAutoScrollView()
        layoutStackView()
    }

}