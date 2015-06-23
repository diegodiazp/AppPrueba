//
//  JVHomeViewController.m
//  test
//
//  Created by jorgevidal on 5/09/13.
//  Copyright (c) 2013 jorgevidal. All rights reserved.
//

#import "JVHomeViewController.h"
#import "JVMapaViewController.h"
#import "JVViewController.h"

@interface JVHomeViewController (){
    NSArray *lista;
    float latitude;
    float longitude;
    CLLocationManager *locationManager;
}

@end

@implementation JVHomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        lista=@[@"Bogotá",@"Cali",@"Medellín",@"Barranquilla",@"Cartagena"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    locationManager = [[CLLocationManager alloc] init];
    locationManager.distanceFilter = kCLDistanceFilterNone; // whenever we move
    locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters*5; // 500 m
    locationManager.delegate = self;
    [locationManager startUpdatingLocation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark metodos tabla

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return lista.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.selectionStyle = UITableViewCellSelectionStyleGray;
    }
    
    cell.textLabel.text= [lista objectAtIndex:indexPath.row];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [locationManager stopUpdatingLocation];
    
    JVMapaViewController *mapaVC = [[JVMapaViewController alloc]initWithLatitude:locationManager.location.coordinate.latitude longitude:locationManager.location.coordinate.longitude];
    mapaVC.title=@"Mapa";
    
    JVViewController *listVC = [[JVViewController alloc] init];
    listVC.title=@"Lista";
    
    UITabBarController *tabVC = [[UITabBarController alloc] init];
    [tabVC setViewControllers:@[mapaVC, listVC ]];
    
    [self.navigationController pushViewController:tabVC animated:YES];
    
}


@end
