//
//  JVMapaViewController.m
//  test
//
//  Created by jorgevidal on 5/09/13.
//  Copyright (c) 2013 jorgevidal. All rights reserved.
//

#import "JVMapaViewController.h"


@interface JVMapaViewController ()
{
    GMSMapView *mapView;
}

@end

@implementation JVMapaViewController

-(id) initWithLatitude:(float) aLatitude
             longitude:(float) aLongitude{
    if(self = [super initWithNibName:Nil bundle:Nil])
    {
        _latitude = aLatitude;
        _longitude = aLongitude;
    }
    
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
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

#pragma mark mapa

- (void)loadView {
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:self.latitude
                                                            longitude:self.longitude
                                                                 zoom:13];
    mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView.delegate=self;
    self.view = mapView;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(self.latitude, self.longitude);
    marker.title = @"Sydney";
    marker.snippet = @"Australia";
    marker.map = mapView;
}




@end
