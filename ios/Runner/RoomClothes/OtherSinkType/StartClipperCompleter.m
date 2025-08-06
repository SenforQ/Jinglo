#import "StartClipperCompleter.h"
    
@interface StartClipperCompleter ()

@end

@implementation StartClipperCompleter

- (void) unbindLabelNavigator
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int normalMenuVisibility = 100;
		BOOL equipmentStateIndex = normalMenuVisibility > 13;
		UISlider *listviewDecoratorScale = [[UISlider alloc] init];
		listviewDecoratorScale.value = (float)normalMenuVisibility/100.0;
		//NSLog(@"Business19 gen_int with value: %d%@", normalMenuVisibility);
	});
}


@end
        