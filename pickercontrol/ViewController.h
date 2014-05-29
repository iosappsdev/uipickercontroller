//
//  ViewController.h
//  pickerControl
//
//  Created by Ricardo Ruiz on 10/21/13.
//  Copyright (c) 2013 iOS Apps Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
@property (strong, nonatomic) IBOutlet UIPickerView *pickerControl;


@end
