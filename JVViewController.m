//
//  JVViewController.m
//  test
//
//  Created by jorgevidal on 5/09/13.
//  Copyright (c) 2013 jorgevidal. All rights reserved.
//

#import "JVViewController.h"

@interface JVViewController ()

@end

@implementation JVViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        self.estado=YES;
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)botonPantalla:(id)sender {
    if(self.estado)
    {
     self.textLabel.text=@"Segundo Texto";
        self.estado =NO;
    }
    else{
        self.textLabel.text=@"Primer Texto";
        self.estado  =YES;
    }
    
}
@end
