

%hook SpringBoard

-(void)applicationDidFinishLaunching:(id)application {
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
		[self.keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
}
%end
