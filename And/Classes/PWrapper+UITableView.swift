/*
 MIT License

 Copyright (c) 2024 melenom

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
*/

import Foundation
extension PWrapper where Base:UITableView {
    
    @discardableResult
    func dataSource(_ dataSource:UITableViewDataSource)-> PWrapper{
        self.base.dataSource = dataSource
        return self
    }
    
    @discardableResult
    func delegate(_ delegate:UITableViewDelegate)-> PWrapper{
        self.base.delegate = delegate
        return self
    }
    
    @discardableResult
    func register(_ cellClass: AnyClass?, _ identifier: String)-> PWrapper{
        self.base.register(cellClass, forCellReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func separatorStyle(_ style: UITableViewCell.SeparatorStyle)-> PWrapper{
        self.base.separatorStyle = style
        return self
    }
    
    @discardableResult
    func separatorInset(_ inset: UIEdgeInsets)-> PWrapper{
        self.base.separatorInset = inset
        return self
    }
    
    @discardableResult
    func isScrollEnabled(_ state: Bool)-> PWrapper{
        self.base.isScrollEnabled = state
        return self
    }
    
    @discardableResult
    func estimatedRowHeight(_ height: CGFloat)-> PWrapper{
        self.base.estimatedRowHeight = height
        return self
    }
    
    @discardableResult
    func rowHeight(_ height: CGFloat)-> PWrapper{
        self.base.rowHeight = height
        return self
    }
    
    @discardableResult
    func contentInset(_ inset: UIEdgeInsets)-> PWrapper{
        self.base.contentInset = inset
        return self
    }
    
    @discardableResult
    func keyboardDismissMode(_ model: UIScrollView.KeyboardDismissMode)-> PWrapper{
        self.base.keyboardDismissMode = model
        return self
    }
    
    @discardableResult
    func showsVerticalScrollIndicator(_ state: Bool)-> PWrapper{
        self.base.showsVerticalScrollIndicator = state
        return self
    }
    
    @discardableResult
    func showsHorizontalScrollIndicator(_ state: Bool)-> PWrapper{
        self.base.showsHorizontalScrollIndicator = state
        return self
    }
    
    @discardableResult
    func allowsSelection(_ state: Bool)-> PWrapper{
        self.base.allowsSelection = state
        return self
    }
}
