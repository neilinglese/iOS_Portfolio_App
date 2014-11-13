//
//  Website.m
//  Midterm
//
//  Created by Neil Inglese on 11/3/14.
//  Copyright (c) 2014 ___Neil_Inglese___. All rights reserved.
//

#import "Website.h"

@interface Website ()

@end

@implementation Website
@synthesize myWebSite;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.myWebSite loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.neilinglese.com"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
