#import "ExitDraggableTask.h"
    
@interface ExitDraggableTask ()

@end

@implementation ExitDraggableTask

- (void) belowHeapPicker
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int plateValueSpeed = 96;
		int screenPerPrototype[plateValueSpeed];
		for (int i = 0; i < plateValueSpeed; i++) {
			screenPerPrototype[i] = i * 9;
		}
		int standaloneMapOrigin = (int)(sizeof(screenPerPrototype) / sizeof(int));
		for (int i = 0; i < standaloneMapOrigin/2; i++) {
			screenPerPrototype[standaloneMapOrigin - i - 1] = 10;
		}
		//NSLog(@"Business17 gen_int executed%@", Business17);
	});
}


@end
        