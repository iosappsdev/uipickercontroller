//
//  ViewController.m
//  pickerControl
//
//  Created by Ricardo Ruiz on 10/21/13.
//  Copyright (c) 2013 iOS Apps Development. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSArray *mainSection;
    NSArray *altSection;
}

@end

@implementation ViewController
@synthesize pickerControl;

- (void)viewDidLoad
{
    [super viewDidLoad];
	mainSection =@[@"Santiago",@"Maria Elena", @"Maria De Jesus",@"Maria Guadalupe", @"Yolanda", @"Rojelio",@"Patty", @"Mario", @"Ricardo"];
}

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return [mainSection count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    return [mainSection objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    NSString *nameString = [[NSString alloc]initWithFormat:@"%@",[mainSection objectAtIndex:row]];
    NSString *name = [[NSString alloc]initWithFormat:@"You selected: %@",[mainSection objectAtIndex:row]];
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:nameString message:name delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    [alert show];
}

@end
