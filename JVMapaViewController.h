//
//  JVMapaViewController.h
//  test
//
//  Created by jorgevidal on 5/09/13.
//  Copyright (c) 2013 jorgevidal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JVMapaViewController : UIViewController <GMSMapViewDelegate>

@property (nonatomic) float latitude;
@property (nonatomic) float longitude;

-(id) initWithLatitude:(float) aLatitude
             longitude:(float) aLongitude;

@end
