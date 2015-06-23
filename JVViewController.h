//
//  JVViewController.h
//  test
//
//  Created by jorgevidal on 5/09/13.
//  Copyright (c) 2013 jorgevidal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JVViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (nonatomic) BOOL *estado;

- (IBAction)botonPantalla:(id)sender;

@end
