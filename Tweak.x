//import uikit to use it's abilities
#import <UIKit/UIKit.h>

@interface SpringBoard : UIApplication
@end

bool firstTime = true;

%hook SpringBoard

-(void)applicationDidFinishLaunching:(id)application {
	//if (firstTime) {
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
	/*}
	else {
		%orig;
	}*/
}
%end
