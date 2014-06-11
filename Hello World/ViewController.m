//
//  ViewController.m
//  Hello World
//
//  Created by Esteban Rodríguez Alonso on 10/06/14.
//  Copyright (c) 2014 Esteban Rodriguez Alonso. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize txtName;
@synthesize lblName;

NSString *name;
NSString *message;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnGreet:(id)sender {
    
    name = txtName.text;
    
    //Compara si la cadena ingresada es vacia
    if([name length] == 0) {
        UIAlertView *avMsjError = [[UIAlertView alloc] init];
        [avMsjError setTitle:[NSString stringWithFormat:@"%@", NSLocalizedString(@"msjTitulo", @"Mensaje Error")]];
        [avMsjError setMessage:[NSString stringWithFormat:@"%@", NSLocalizedString(@"msjError", @"Mensaje Error")]];
        [avMsjError setDelegate:self];
        [avMsjError addButtonWithTitle: [NSString stringWithFormat:@"%@", NSLocalizedString(@"msjOkButton", @"Mensaje Error")]];
        [avMsjError show]; //Muestra el mensaje
        
    } else {
        //NSLog (@"Hola %@", mensaje);
        message = [NSString stringWithFormat: NSLocalizedString(@"msjLabel", @"Mensaje Error"), name];
        
        lblName.text = [NSString stringWithFormat: @"%@",message];
    }
    
}

- (IBAction)btnClear:(id)sender {
    
    lblName.text = [NSString stringWithFormat: @""];
    txtName.text = @"";
    
}

- (IBAction)backgroundTouched:(id)sender {
    [txtName resignFirstResponder];
}
@end
