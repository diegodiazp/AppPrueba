//
//  JVHomeViewController.h
//  test
//
//  Created by jorgevidal on 5/09/13.
//  Copyright (c) 2013 jorgevidal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface JVHomeViewController : UIViewController <UITableViewDataSource,UITableViewDelegate, CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *titulo;


@end
