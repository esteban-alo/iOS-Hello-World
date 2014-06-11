//
//  ViewController.h
//  Hello World
//
//  Created by Esteban Rodríguez Alonso on 10/06/14.
//  Copyright (c) 2014 Esteban Rodriguez Alonso. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtName;

@property (weak, nonatomic) IBOutlet UILabel *lblName;

- (IBAction)btnGreet:(id)sender;
- (IBAction)btnClear:(id)sender;

- (IBAction)backgroundTouched:(id)sender;

@end
