//
//  ViewController.m
//  圆形进度器Demo
//
//  Created by locojoy on 16/2/3.
//  Copyright © 2016年 fcihpy. All rights reserved.
//

#import "ViewController.h"
#import "progressView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *notifLabel;

@property (weak, nonatomic) IBOutlet UISlider *progress;

@property (weak, nonatomic) IBOutlet progressView *progressView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
}



- (IBAction)progressChange:(UISlider *)sender {
    
  
    
    self.notifLabel.text = [NSString stringWithFormat:@"%.0f%%",sender.value * 100 ];
    
    _progressView.progress = sender.value;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
