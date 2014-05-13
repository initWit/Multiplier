//
//  ViewController.m
//  Multiply
//
//  Created by Robert Figueras on 5/12/14.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *myView;
@property (strong, nonatomic) IBOutlet UITextField *myNumber;
@property (strong, nonatomic) IBOutlet UILabel *myMultiplier;
@property (strong, nonatomic) IBOutlet UILabel *myAnswer;
@property (strong, nonatomic) IBOutlet UISlider *mySlider;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

//    self.myMultiplier.text = [NSString stringWithFormat:@"%g",[self.mySlider.value]];


}
- (IBAction)onCalculateButtonPressed:(id)sender {


    int convertedNumber = [self.myNumber.text intValue];
    int convertedMultipier = [self.myMultiplier.text intValue];
    int product = convertedNumber*convertedMultipier;

    self.myAnswer.text = [NSString stringWithFormat:@"%d",product];
    if (product > 20) {
        self.myView.backgroundColor = [UIColor greenColor];
    }

    //*** modulo returns the remainder of the two inputs
    float myRemainderDivisibleBy3= product % 3;

    if (myRemainderDivisibleBy3 == 0){ // *** if the modulo is 0, it is evenly divisible by 3

        self.myAnswer.text = @"fizz";
    }

    float myRemainderDivisibleBy5= product % 5; // *** if the modulo is 0, it is evenly divisible by 5
    if (myRemainderDivisibleBy5 == 0){

        self.myAnswer.text = @"buzz";
    }

    if (myRemainderDivisibleBy3 == 0 && myRemainderDivisibleBy5 == 0){

        self.myAnswer.text = @"fizzbuzz";
    }


}

- (IBAction)sliderChanged:(id)sender {

    int rounded = lroundf(self.mySlider.value);

    //NSLog(@"slider value is %d", rounded);

    self.myMultiplier.text = [NSString stringWithFormat:@"%d",rounded];

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
