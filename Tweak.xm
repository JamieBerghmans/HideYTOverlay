//
// Implementation file, shows all methods, classes, property's, and ivars implemented in code
//

//Linking the header file. 
//It is possible to put all the headers in here, 
//but that will get real messy real soon on a bigger tweak.
#import "Tweak.h"

%hook YTMainAppVideoPlayerOverlayView //The class I am hooking.
-(void)setControlsOverlayVisible:(BOOL)arg1 { //The method I am hooking. 

	//Obtaining the background from property's.
	//You could leave this method out but it helps with readability
	//because the original header is in another file.
	//The reason I'm doing this every single time and not only
	//one per view initialization is because I noticed that
	//youtube resets this value sometimes so this is just in case.
	UIView * background = (UIView *) [self backgroundView]; 

	[background setAlpha:(CGFloat)0]; //Calling the method to set the alpha to 0
	%orig(arg1); //Invoking the original setControlsOverlayVisible method with the original value
}
%end

