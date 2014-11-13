//
//  Projects.m
//  Midterm
//
//  Created by Neil Inglese on 11/3/14.
//  Copyright (c) 2014 ___Neil_Inglese___. All rights reserved.
//

#import "Projects.h"

@interface Projects (){
    MPMoviePlayerController *moviePlayerController;
}
@property (weak, nonatomic) IBOutlet UIView *movieView;

@end

@implementation Projects


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"metal.jpg"]];

    NSString *moviePath = [[NSBundle mainBundle] pathForResource:@"cpppoker" ofType:@"mp4"];
    NSURL *movieURL = [NSURL fileURLWithPath:moviePath];
    moviePlayerController = [[MPMoviePlayerController alloc] initWithContentURL:movieURL];
    [moviePlayerController.view setFrame:self.movieView.bounds];
    [self.movieView addSubview:moviePlayerController.view];
    
    moviePlayerController.controlStyle = MPMovieControlStyleDefault;
    [moviePlayerController prepareToPlay];

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

- (IBAction)playBtn:(id)sender {

}
@end
