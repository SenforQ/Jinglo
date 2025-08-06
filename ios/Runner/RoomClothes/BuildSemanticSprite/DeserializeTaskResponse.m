#import "DeserializeTaskResponse.h"
    
@interface DeserializeTaskResponse ()

@end

@implementation DeserializeTaskResponse

- (void) decodeComputeForNorm: (NSMutableDictionary *)newestGrainSpacing
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger controllerIncludeForm = newestGrainSpacing.count;
		int listenerThanObserver[4];
		for (int i = 0; i < 4; i++) {
			listenerThanObserver[i] = 12 * i;
		}
		if (controllerIncludeForm > listenerThanObserver[3]) {
			listenerThanObserver[0] = controllerIncludeForm;
		} else {
			int controllerSystemPressure=0;
			for (int i = 0; i < 3; i++) {
				if (listenerThanObserver[i] < controllerIncludeForm && listenerThanObserver[i+1] >= controllerIncludeForm) {
				    controllerSystemPressure = i + 1;
				    break;
				}
			}
			for (int i = 0; i < controllerSystemPressure; i++) {
				listenerThanObserver[controllerSystemPressure - i] = listenerThanObserver[controllerSystemPressure - i - 1];
			}
			listenerThanObserver[0] = controllerIncludeForm;
		}
		//NSLog(@"Business17 gen_dic executed%@", Business17);
	});
}


@end
        