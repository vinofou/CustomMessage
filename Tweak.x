#import <SpringBoard/SpringBoard.h>

%hook SpringBoard

-(void)applicationDidFinishLaunching:(id)application {
    %orig;
    UIAlertController *alertController = [UIAlertController
			alertControllerWithTitle:@"TestTitle"
			message:@"TestMessage"
			preferredStyle:UIAlertControllerStyleAlert];

    [alertController addAction:[UIAlertAction
			actionWithTitle:@"OK"
			style:UIAlertActionStyleDefault
			handler:^(UIAlertAction *action) {
				// do stuff here
    	}]];

    [self.keyWindow.rootViewController presentViewController:alertController animated:YES completion:NULL];
}

%end
