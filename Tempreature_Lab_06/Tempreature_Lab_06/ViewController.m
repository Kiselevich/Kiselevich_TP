//
//  ViewController.m
//  Tempreature_Lab_06
//
//  Created by Admin on 15.04.17.
//  Copyright © 2017 Oleg Kiselevich. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputCityTextField;

@property (weak, nonatomic) IBOutlet UILabel *tempreatureLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.inputCityTextField.text =@"Enter city";
    self.tempreatureLabel.text = @"0°C";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showTempreatureButton:(id)sender
{
    NSString *city = _inputCityTextField.text;
    NSString *url_path = [NSString stringWithFormat:@"http://api.openweathermap.org/data/2.5/weather?q=%@&appid=2a3316ef209c91ac5c10a77e7717ac7b", city];
    
    NSURL *url = [NSURL URLWithString:url_path];
    NSData *data = [[NSData alloc]initWithContentsOfURL:url];
    NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    
    NSDictionary *mainDictionary = [[NSDictionary alloc] initWithDictionary:[dictionary valueForKey: @"main"]];
    NSNumber *number = [mainDictionary valueForKey: @"temp"];
    NSString *myString = [NSString stringWithFormat: @"%.1f°C", [number doubleValue]-273.15];
    NSNumber *numberForColor = [NSNumber numberWithDouble:([number doubleValue]-273.15)];
    NSInteger tempreatureValue = [numberForColor integerValue];
    
    if(tempreatureValue > 15)
        self.tempreatureLabel.textColor = [UIColor greenColor];
    
    if(tempreatureValue < 15 && tempreatureValue > 0)
        self.tempreatureLabel.textColor = [UIColor yellowColor];
    
    if(tempreatureValue < 0 && tempreatureValue > -10)
        self.tempreatureLabel.textColor = [UIColor orangeColor];
    
    if(tempreatureValue < -15)
        self.tempreatureLabel.textColor = [UIColor redColor];
    
    [self.tempreatureLabel setText:myString];

}



    


@end
