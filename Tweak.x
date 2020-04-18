//import uikit to use it's abilities
#import <UIKit/UIKit.h>

bool firstTime = true;

@interface SBHomeScreenViewController : UIViewController
@end

%hook SBHomeScreenViewController

-(void)viewWillLayoutSubviews {
	if (firstTime) {
		%orig;
		UIAlertController *alert = [UIAlertController
	    alertControllerWithTitle:@"some title"
	    message:@"some message"
	    preferredStyle:UIAlertControllerStyleAlert];


		UIAlertAction *okAction = [UIAlertAction
	    actionWithTitle:@"Okay"
	    style:UIAlertActionStyleCancel
	    handler:^(UIAlertAction *action) {
				//Do stuff here
	    }];

		[alert addAction:okAction];
		[self presentViewController:alert animated:YES completion:nil];
		firstTime = false;
	}
	else {
		%orig;
	}
}
%end
