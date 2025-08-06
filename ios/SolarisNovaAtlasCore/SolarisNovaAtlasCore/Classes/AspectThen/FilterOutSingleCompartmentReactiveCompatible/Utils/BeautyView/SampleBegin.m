
#import <Foundation/Foundation.h>

@interface CellData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CellData

+ (instancetype)sharedInstance {
    static CellData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CellDataToCache:(Byte *)data {
    int version = data[0];
    Byte readOut = data[1];
    int indexFirst = data[2];
    for (int i = indexFirst; i < indexFirst + version; i++) {
        int value = data[i] + readOut;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[indexFirst + version] = 0;
    return data + indexFirst;
}

- (NSString *)StringFromCellData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CellDataToCache:data]];
}

//: Height
- (NSString *)main_listData {
    /* static */ NSString *main_listData = nil;
    if (!main_listData) {
        Byte value[] = {6, 33, 5, 52, 16, 39, 68, 72, 70, 71, 83, 252};
        main_listData = [self StringFromCellData:value];
    }
    return main_listData;
}

//: Width
- (NSString *)main_lineTitle {
    /* static */ NSString *main_lineTitle = nil;
    if (!main_lineTitle) {
        Byte value[] = {5, 46, 12, 251, 110, 77, 107, 180, 198, 247, 41, 58, 41, 59, 54, 70, 58, 141};
        main_lineTitle = [self StringFromCellData:value];
    }
    return main_lineTitle;
}

//: 请打开相机权限
- (NSString *)dataStreamUrl {
    /* static */ NSString *dataStreamUrl = nil;
    if (!dataStreamUrl) {
        Byte value[] = {21, 89, 13, 142, 235, 13, 101, 195, 173, 42, 70, 92, 229, 143, 86, 94, 141, 48, 58, 140, 99, 39, 142, 66, 95, 141, 67, 97, 141, 68, 42, 144, 64, 55, 105};
        dataStreamUrl = [self StringFromCellData:value];
    }
    return dataStreamUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SampleBegin.m
//
//  Created by sluin on 16/5/4.
//  Copyright © 2016年 SenseTime. All rights reserved.
//

// __M_A_C_R_O__
//: #import "STFilterCamera.h"
#import "SampleBegin.h"
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface STFilterCamera () <AVCaptureVideoDataOutputSampleBufferDelegate, AVCaptureAudioDataOutputSampleBufferDelegate>
@interface SampleBegin () <AVCaptureVideoDataOutputSampleBufferDelegate, AVCaptureAudioDataOutputSampleBufferDelegate>

//: @property (nonatomic , strong) AVCaptureDeviceInput * deviceInput;
@property (nonatomic , strong) AVCaptureDeviceInput * deviceInput;
//: @property (nonatomic , strong) AVCaptureVideoDataOutput * dataOutput;
@property (nonatomic , strong) AVCaptureVideoDataOutput * dataOutput;
//: @property (nonatomic , strong) AVCaptureStillImageOutput *stillImageOutput;
@property (nonatomic , strong) AVCaptureStillImageOutput *stillImageOutput;

//: @property (nonatomic , strong) AVCaptureSession *session;
@property (nonatomic , strong) AVCaptureSession *session;
//: @property (nonatomic , strong) AVCaptureDevice *videoDevice;
@property (nonatomic , strong) AVCaptureDevice *videoDevice;

//: @property (nonatomic , readwrite) dispatch_queue_t bufferQueue;
@property (nonatomic , readwrite) dispatch_queue_t bufferQueue;
//: @property (nonatomic, strong) dispatch_queue_t sessionQueue;
@property (nonatomic, strong) dispatch_queue_t sessionQueue;
//: @property (nonatomic , strong , readwrite) AVCaptureConnection *videoConnection;
@property (nonatomic , strong , readwrite) AVCaptureConnection *videoConnection;

//: @end
@end

//: @implementation STFilterCamera
@implementation SampleBegin

//: - (instancetype)initWithDevicePosition:(AVCaptureDevicePosition)iDevicePosition
- (instancetype)initWithMessageView:(AVCaptureDevicePosition)iDevicePosition
                        //: sessionPresset:(AVCaptureSessionPreset)sessionPreset
                        harsh:(AVCaptureSessionPreset)sessionPreset
                                   //: fps:(int)iFPS
                                   output:(int)iFPS
                         //: needYuvOutput:(BOOL)needYuvOutput
                         frame:(BOOL)needYuvOutput
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {

        //: needYuvOutput = NO;
        needYuvOutput = NO;
        //: self.bSessionPause = YES;
        self.bSessionPause = YES;

        //: self.bufferQueue = dispatch_queue_create("STFilterCameraBufferQueue", NULL);
        self.bufferQueue = dispatch_queue_create("STFilterCameraBufferQueue", NULL);
        //: self.sessionQueue = dispatch_queue_create("STFilterCameraSessionQueue", NULL);
        self.sessionQueue = dispatch_queue_create("STFilterCameraSessionQueue", NULL);
        //: self.session = [[AVCaptureSession alloc] init];
        self.session = [[AVCaptureSession alloc] init];

        //: self.videoDevice = [self cameraDeviceWithPosition:iDevicePosition];
        self.videoDevice = [self deviceOutput:iDevicePosition];
        //: _devicePosition = iDevicePosition;
        _devicePosition = iDevicePosition;
        //: NSError *error = nil;
        NSError *error = nil;
        //: self.deviceInput = [AVCaptureDeviceInput deviceInputWithDevice:self.videoDevice
        self.deviceInput = [AVCaptureDeviceInput deviceInputWithDevice:self.videoDevice
                                                                 //: error:&error];
                                                                 error:&error];

        //: if (!self.deviceInput || error) {
        if (!self.deviceInput || error) {
            //: NSLog(@"create input error");
            //: return nil;
            return nil;
        }


        //: self.dataOutput = [[AVCaptureVideoDataOutput alloc] init];
        self.dataOutput = [[AVCaptureVideoDataOutput alloc] init];
        //: [self.dataOutput setAlwaysDiscardsLateVideoFrames:YES];
        [self.dataOutput setAlwaysDiscardsLateVideoFrames:YES];
        //: self.dataOutput.videoSettings = @{(id)kCVPixelBufferPixelFormatTypeKey :
        self.dataOutput.videoSettings = @{(id)kCVPixelBufferPixelFormatTypeKey :
                                              //: @((needYuvOutput
                                              @((needYuvOutput
                                                 //: ? kCVPixelFormatType_420YpCbCr8BiPlanarFullRange
                                                 ? kCVPixelFormatType_420YpCbCr8BiPlanarFullRange
                                                 //: : kCVPixelFormatType_32BGRA))};
                                                 : kCVPixelFormatType_32BGRA))};
        //: self.dataOutput.alwaysDiscardsLateVideoFrames = YES;
        self.dataOutput.alwaysDiscardsLateVideoFrames = YES;
        //: [self.dataOutput setSampleBufferDelegate:self queue:self.bufferQueue];
        [self.dataOutput setSampleBufferDelegate:self queue:self.bufferQueue];

        //: self.stillImageOutput = [[AVCaptureStillImageOutput alloc] init];
        self.stillImageOutput = [[AVCaptureStillImageOutput alloc] init];
        //: self.stillImageOutput.outputSettings = @{AVVideoCodecKey : AVVideoCodecJPEG};
        self.stillImageOutput.outputSettings = @{AVVideoCodecKey : AVVideoCodecJPEG};
        //: if ([self.stillImageOutput respondsToSelector:@selector(setHighResolutionStillImageOutputEnabled:)]) {
        if ([self.stillImageOutput respondsToSelector:@selector(setHighResolutionStillImageOutputEnabled:)]) {

            //: self.stillImageOutput.highResolutionStillImageOutputEnabled = YES;
            self.stillImageOutput.highResolutionStillImageOutputEnabled = YES;
        }


        //: [self.session beginConfiguration];
        [self.session beginConfiguration];

        //: if ([self.session canSetSessionPreset:sessionPreset]) {
        if ([self.session canSetSessionPreset:sessionPreset]) {

            //: [self.session setSessionPreset:sessionPreset];
            [self.session setSessionPreset:sessionPreset];

            //: _sessionPreset = sessionPreset;
            _sessionPreset = sessionPreset;
        }

        //: if ([self.session canAddInput:self.deviceInput]) {
        if ([self.session canAddInput:self.deviceInput]) {

            //: [self.session addInput:self.deviceInput];
            [self.session addInput:self.deviceInput];
        //: }else{
        }else{

            //: NSLog( @"Could not add device input to the session" );

            //: return nil;
            return nil;
        }

        //: if ([self.session canAddOutput:self.dataOutput]) {
        if ([self.session canAddOutput:self.dataOutput]) {

            //: [self.session addOutput:self.dataOutput];
            [self.session addOutput:self.dataOutput];
        //: }else{
        }else{

            //: NSLog( @"Could not add video data output to the session" );

            //: return nil;
            return nil;
        }

        //: if ([self.session canAddOutput:self.stillImageOutput]) {
        if ([self.session canAddOutput:self.stillImageOutput]) {

            //: [self.session addOutput:self.stillImageOutput];
            [self.session addOutput:self.stillImageOutput];
        //: }else {
        }else {

            //: NSLog(@"Could not add still image output to the session");
        }

        //: self.videoConnection = [self.dataOutput connectionWithMediaType:AVMediaTypeVideo];
        self.videoConnection = [self.dataOutput connectionWithMediaType:AVMediaTypeVideo];


        //: if ([self.videoConnection isVideoOrientationSupported]) {
        if ([self.videoConnection isVideoOrientationSupported]) {

            //: [self.videoConnection setVideoOrientation:AVCaptureVideoOrientationPortrait];
            [self.videoConnection setVideoOrientation:AVCaptureVideoOrientationPortrait];
            //: self.videoOrientation = AVCaptureVideoOrientationPortrait;
            self.videoOrientation = AVCaptureVideoOrientationPortrait;
        }


        //: if ([self.videoConnection isVideoMirroringSupported]) {
        if ([self.videoConnection isVideoMirroringSupported]) {

            //: [self.videoConnection setVideoMirrored:YES];
            [self.videoConnection setVideoMirrored:YES];
            //: self.needVideoMirrored = YES;
            self.needVideoMirrored = YES;
        }

        //: [self.session commitConfiguration];
        [self.session commitConfiguration];


        //: self.videoCompressingSettings = [[self.dataOutput recommendedVideoSettingsForAssetWriterWithOutputFileType:AVFileTypeQuickTimeMovie] copy];
        self.videoCompressingSettings = [[self.dataOutput recommendedVideoSettingsForAssetWriterWithOutputFileType:AVFileTypeQuickTimeMovie] copy];

        //: self.iExpectedFPS = iFPS;
        self.iExpectedFPS = iFPS;

    }

    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: if (self.session) {
    if (self.session) {

        //: self.bSessionPause = YES;
        self.bSessionPause = YES;

        //: [self.session beginConfiguration];
        [self.session beginConfiguration];

        //: [self.session removeOutput:self.dataOutput];
        [self.session removeOutput:self.dataOutput];
        //: [self.session removeInput:self.deviceInput];
        [self.session removeInput:self.deviceInput];

        //: [self.session commitConfiguration];
        [self.session commitConfiguration];

        //: if ([self.session isRunning]) {
        if ([self.session isRunning]) {

            //: [self.session stopRunning];
            [self.session stopRunning];
        }

        //: self.session = nil;
        self.session = nil;
    }
}

//: - (void)setThrowPlace:(CGPoint)point inPreviewFrame:(CGRect)frame
- (void)marqueFrame:(CGPoint)point toAge:(CGRect)frame
{
    //: BOOL isFrontCamera = self.devicePosition == AVCaptureDevicePositionFront;
    BOOL isFrontCamera = self.devicePosition == AVCaptureDevicePositionFront;
    //: float fX = point.y / frame.size.height;
    float fX = point.y / frame.size.height;
    //: float fY = isFrontCamera ? point.x / frame.size.width : (1 - point.x / frame.size.width);
    float fY = isFrontCamera ? point.x / frame.size.width : (1 - point.x / frame.size.width);

    //: [self focusWithMode:AVCaptureFocusModeAutoFocus
    [self message:AVCaptureFocusModeAutoFocus
           //: exposureMode:AVCaptureExposureModeContinuousAutoExposure
           handleCur:AVCaptureExposureModeContinuousAutoExposure
                //: atPoint:CGPointMake(fX, fY)];
                mode:CGPointMake(fX, fY)];

}

//: - (void)focusWithMode:(AVCaptureFocusMode)focusMode exposureMode:(AVCaptureExposureMode)exposureMode atPoint:(CGPoint)point
- (void)message:(AVCaptureFocusMode)focusMode handleCur:(AVCaptureExposureMode)exposureMode mode:(CGPoint)point
{

    //: [self changeDeviceProperty:^(AVCaptureDevice *captureDevice) {
    [self retell:^(AVCaptureDevice *captureDevice) {

        //: if ([captureDevice isFocusModeSupported:focusMode]) {
        if ([captureDevice isFocusModeSupported:focusMode]) {
            //: [captureDevice setFocusMode:focusMode];
            [captureDevice setFocusMode:focusMode];
        }

        //: if ([captureDevice isFocusPointOfInterestSupported]) {
        if ([captureDevice isFocusPointOfInterestSupported]) {
            //: [captureDevice setFocusPointOfInterest:point];
            [captureDevice setFocusPointOfInterest:point];
        }

        //: if ([captureDevice isExposureModeSupported:exposureMode]) {
        if ([captureDevice isExposureModeSupported:exposureMode]) {
            //: [captureDevice setExposureMode:exposureMode];
            [captureDevice setExposureMode:exposureMode];
        }

        //: if ([captureDevice isExposurePointOfInterestSupported]) {
        if ([captureDevice isExposurePointOfInterestSupported]) {
            //: [captureDevice setExposurePointOfInterest:point];
            [captureDevice setExposurePointOfInterest:point];
        }

    //: }];
    }];
}

//: - (void)changeDeviceProperty:(void(^)(AVCaptureDevice *))propertyChange
- (void)retell:(void(^)(AVCaptureDevice *))propertyChange
{
    //: AVCaptureDevice *captureDevice= self.videoDevice;
    AVCaptureDevice *captureDevice= self.videoDevice;
    //: NSError *error;
    NSError *error;
    //: if ([captureDevice lockForConfiguration:&error]) {
    if ([captureDevice lockForConfiguration:&error]) {
        //: propertyChange(captureDevice);
        propertyChange(captureDevice);
        //: [captureDevice unlockForConfiguration];
        [captureDevice unlockForConfiguration];
    //: }else{
    }else{
        //: NSLog(@"设置设备属性过程发生错误，错误信息：%@",error.localizedDescription);
    }
}

//: - (void)setISOValue:(float)value
- (void)setFuturism:(float)value
{
    //: CGFloat currentISO = value <= self.videoDevice.activeFormat.minISO ? self.videoDevice.activeFormat.minISO: value;
    CGFloat currentISO = value <= self.videoDevice.activeFormat.minISO ? self.videoDevice.activeFormat.minISO: value;

    //: NSError *error;
    NSError *error;
    //: if ([self.videoDevice lockForConfiguration:&error]) {
    if ([self.videoDevice lockForConfiguration:&error]) {

        //: [self.videoDevice setExposureModeCustomWithDuration:AVCaptureExposureDurationCurrent
        [self.videoDevice setExposureModeCustomWithDuration:AVCaptureExposureDurationCurrent
                                                        //: ISO:currentISO
                                                        ISO:currentISO
                                          //: completionHandler:nil];
                                          completionHandler:nil];
        //: [self.videoDevice unlockForConfiguration];
        [self.videoDevice unlockForConfiguration];
    }
}

//: - (void)setDevicePosition:(AVCaptureDevicePosition)devicePosition
- (void)setDevicePosition:(AVCaptureDevicePosition)devicePosition
{
    //: if (_devicePosition != devicePosition && devicePosition != AVCaptureDevicePositionUnspecified) {
    if (_devicePosition != devicePosition && devicePosition != AVCaptureDevicePositionUnspecified) {

        //: if (_session) {
        if (_session) {

            //: AVCaptureDevice *targetDevice = [self cameraDeviceWithPosition:devicePosition];
            AVCaptureDevice *targetDevice = [self deviceOutput:devicePosition];

            //: if (targetDevice && [self judgeCameraAuthorization]) {
            if (targetDevice && [self judgeViewAuthorization]) {

                //: NSError *error = nil;
                NSError *error = nil;
                //: AVCaptureDeviceInput *deviceInput = [[AVCaptureDeviceInput alloc] initWithDevice:targetDevice error:&error];
                AVCaptureDeviceInput *deviceInput = [[AVCaptureDeviceInput alloc] initWithDevice:targetDevice error:&error];

                //: if(!deviceInput || error) {
                if(!deviceInput || error) {

                    //: NSLog(@"Error creating capture device input: %@", error.localizedDescription);
                    //: return;
                    return;
                }

                //: _bSessionPause = YES;
                _bSessionPause = YES;

                //: [_session beginConfiguration];
                [_session beginConfiguration];

                //: [_session removeInput:_deviceInput];
                [_session removeInput:_deviceInput];

                //: if ([_session canAddInput:deviceInput]) {
                if ([_session canAddInput:deviceInput]) {

                    //: [_session addInput:deviceInput];
                    [_session addInput:deviceInput];

                    //: _deviceInput = deviceInput;
                    _deviceInput = deviceInput;
                    //: _videoDevice = targetDevice;
                    _videoDevice = targetDevice;

                    //: _devicePosition = devicePosition;
                    _devicePosition = devicePosition;
                }

                //: _videoConnection = [_dataOutput connectionWithMediaType:AVMediaTypeVideo];
                _videoConnection = [_dataOutput connectionWithMediaType:AVMediaTypeVideo];

                //: if ([_videoConnection isVideoOrientationSupported]) {
                if ([_videoConnection isVideoOrientationSupported]) {

                    //: [_videoConnection setVideoOrientation:_videoOrientation];
                    [_videoConnection setVideoOrientation:_videoOrientation];
                }

                //: if ([_videoConnection isVideoMirroringSupported]) {
                if ([_videoConnection isVideoMirroringSupported]) {

                    //: [_videoConnection setVideoMirrored:devicePosition == AVCaptureDevicePositionFront];
                    [_videoConnection setVideoMirrored:devicePosition == AVCaptureDevicePositionFront];

                }

                //: [_session commitConfiguration];
                [_session commitConfiguration];

                //: [self setSessionPreset:_sessionPreset];
                [self setSessionPreset:_sessionPreset];

                //: _bSessionPause = NO;
                _bSessionPause = NO;
            }
        }
    }
}

//: - (void)setSessionPreset:(NSString *)sessionPreset
- (void)setSessionPreset:(NSString *)sessionPreset
{
    //: if (_session && _sessionPreset) {
    if (_session && _sessionPreset) {

        //        if (![sessionPreset isEqualToString:_sessionPreset]) {

        //: _bSessionPause = YES;
        _bSessionPause = YES;

        //: [_session beginConfiguration];
        [_session beginConfiguration];

        //: if ([_session canSetSessionPreset:sessionPreset]) {
        if ([_session canSetSessionPreset:sessionPreset]) {

            //: [_session setSessionPreset:sessionPreset];
            [_session setSessionPreset:sessionPreset];

            //: _sessionPreset = sessionPreset;
            _sessionPreset = sessionPreset;
        }

        // todo max frame rate.
        //: if (_iFPS > 0) {
        if (_iFPS > 0) {

            //: CMTime frameDuration = CMTimeMake(1 , _iFPS);
            CMTime frameDuration = CMTimeMake(1 , _iFPS);

            //: if ([_videoDevice lockForConfiguration:nil]) {
            if ([_videoDevice lockForConfiguration:nil]) {

                //: _videoDevice.activeVideoMaxFrameDuration = frameDuration;
                _videoDevice.activeVideoMaxFrameDuration = frameDuration;
                //: _videoDevice.activeVideoMinFrameDuration = frameDuration;
                _videoDevice.activeVideoMinFrameDuration = frameDuration;

                //: [_videoDevice unlockForConfiguration];
                [_videoDevice unlockForConfiguration];
            }
        }

        //: [_session commitConfiguration];
        [_session commitConfiguration];

        //: self.videoCompressingSettings = [[self.dataOutput recommendedVideoSettingsForAssetWriterWithOutputFileType:AVFileTypeQuickTimeMovie] copy];
        self.videoCompressingSettings = [[self.dataOutput recommendedVideoSettingsForAssetWriterWithOutputFileType:AVFileTypeQuickTimeMovie] copy];

        //: _bSessionPause = NO;
        _bSessionPause = NO;
        //        }
    }

}

//: - (void)setIFPS:(int)iFPS
- (void)setIFPS:(int)iFPS
{
    // todo max frame rate.
    //: if (iFPS > 0) {
    if (iFPS > 0) {

        //: CMTime frameDuration = CMTimeMake(1 , iFPS);
        CMTime frameDuration = CMTimeMake(1 , iFPS);

        //: [_session beginConfiguration];
        [_session beginConfiguration];

        //: if ([_videoDevice lockForConfiguration:nil]) {
        if ([_videoDevice lockForConfiguration:nil]) {

            //: _videoDevice.activeVideoMaxFrameDuration = frameDuration;
            _videoDevice.activeVideoMaxFrameDuration = frameDuration;
            //: _videoDevice.activeVideoMinFrameDuration = frameDuration;
            _videoDevice.activeVideoMinFrameDuration = frameDuration;

            //: [_videoDevice unlockForConfiguration];
            [_videoDevice unlockForConfiguration];
        }

        //: [_session commitConfiguration];
        [_session commitConfiguration];

        //: _iFPS = iFPS;
        _iFPS = iFPS;
    }
}

//: - (void)setIExpectedFPS:(int)iExpectedFPS
- (void)setIExpectedFPS:(int)iExpectedFPS
{
    //: _iExpectedFPS = iExpectedFPS;
    _iExpectedFPS = iExpectedFPS;

    //: if (iExpectedFPS <= 0 || !_dataOutput.videoSettings || !_videoDevice) {
    if (iExpectedFPS <= 0 || !_dataOutput.videoSettings || !_videoDevice) {

        //: return;
        return;
    }

    //: CGFloat fWidth = [[_dataOutput.videoSettings objectForKey:@"Width"] floatValue];
    CGFloat fWidth = [[_dataOutput.videoSettings objectForKey:[[CellData sharedInstance] main_lineTitle]] floatValue];
    //: CGFloat fHeight = [[_dataOutput.videoSettings objectForKey:@"Height"] floatValue];
    CGFloat fHeight = [[_dataOutput.videoSettings objectForKey:[[CellData sharedInstance] main_listData]] floatValue];

    //: AVCaptureDeviceFormat *bestFormat = nil;
    AVCaptureDeviceFormat *bestFormat = nil;
    //: AVFrameRateRange *bestFrameRateRange = nil;
    AVFrameRateRange *bestFrameRateRange = nil;

    //: for (AVCaptureDeviceFormat *format in [_videoDevice formats]) {
    for (AVCaptureDeviceFormat *format in [_videoDevice formats]) {

        //: CMFormatDescriptionRef description = format.formatDescription;
        CMFormatDescriptionRef description = format.formatDescription;

        //: if (CMFormatDescriptionGetMediaSubType(description) != kCVPixelFormatType_420YpCbCr8BiPlanarFullRange) {
        if (CMFormatDescriptionGetMediaSubType(description) != kCVPixelFormatType_420YpCbCr8BiPlanarFullRange) {

            //: continue;
            continue;
        }

        //: CMVideoDimensions videoDimension = CMVideoFormatDescriptionGetDimensions(description);
        CMVideoDimensions videoDimension = CMVideoFormatDescriptionGetDimensions(description);
        //: if ((videoDimension.width == fWidth && videoDimension.height == fHeight)
        if ((videoDimension.width == fWidth && videoDimension.height == fHeight)
            //: ||
            ||
            //: (videoDimension.height == fWidth && videoDimension.width == fHeight)) {
            (videoDimension.height == fWidth && videoDimension.width == fHeight)) {

            //: for (AVFrameRateRange *range in format.videoSupportedFrameRateRanges) {
            for (AVFrameRateRange *range in format.videoSupportedFrameRateRanges) {

                //: if (range.maxFrameRate >= bestFrameRateRange.maxFrameRate) {
                if (range.maxFrameRate >= bestFrameRateRange.maxFrameRate) {
                    //: bestFormat = format;
                    bestFormat = format;
                    //: bestFrameRateRange = range;
                    bestFrameRateRange = range;
                }
            }
        }
    }

    //: if (bestFormat) {
    if (bestFormat) {

        //: CMTime minFrameDuration;
        CMTime minFrameDuration;

        //: if (bestFrameRateRange.minFrameDuration.timescale / bestFrameRateRange.minFrameDuration.value < iExpectedFPS) {
        if (bestFrameRateRange.minFrameDuration.timescale / bestFrameRateRange.minFrameDuration.value < iExpectedFPS) {

            //: minFrameDuration = bestFrameRateRange.minFrameDuration;
            minFrameDuration = bestFrameRateRange.minFrameDuration;
        //: }else{
        }else{

            //: minFrameDuration = CMTimeMake(1, iExpectedFPS);
            minFrameDuration = CMTimeMake(1, iExpectedFPS);
        }

        //: if ([_videoDevice lockForConfiguration:NULL] == YES) {
        if ([_videoDevice lockForConfiguration:NULL] == YES) {
            //: _videoDevice.activeFormat = bestFormat;
            _videoDevice.activeFormat = bestFormat;
            //: _videoDevice.activeVideoMinFrameDuration = minFrameDuration;
            _videoDevice.activeVideoMinFrameDuration = minFrameDuration;
            //: _videoDevice.activeVideoMaxFrameDuration = minFrameDuration;
            _videoDevice.activeVideoMaxFrameDuration = minFrameDuration;
            //: [_videoDevice unlockForConfiguration];
            [_videoDevice unlockForConfiguration];
        }
    }
}

//: - (void)startRunning
- (void)circleRunning
{
    //: if (![self judgeCameraAuthorization]) {
    if (![self judgeViewAuthorization]) {

        //: return;
        return;
    }

    //: if (!self.dataOutput) {
    if (!self.dataOutput) {

        //: return;
        return;
    }

    //: if (self.session && ![self.session isRunning]) {
    if (self.session && ![self.session isRunning]) {
        //: dispatch_async(self.sessionQueue, ^{
        dispatch_async(self.sessionQueue, ^{
            //: [self.session startRunning];
            [self.session startRunning];
            //: self.bSessionPause = NO;
            self.bSessionPause = NO;
        //: });
        });
    }
}

//: - (void)stopRunning
- (void)path
{
    //: if (self.session && [self.session isRunning]) {
    if (self.session && [self.session isRunning]) {
        //: dispatch_async(self.sessionQueue, ^{
        dispatch_async(self.sessionQueue, ^{
            //: [self.session stopRunning];
            [self.session stopRunning];
            //: self.bSessionPause = YES;
            self.bSessionPause = YES;
        //: });
        });
    }
}

//: - (CGRect)getScaleRect:(CGRect)rect scaleToFit:(BOOL)bScaleToFit
- (CGRect)active:(CGRect)rect aid:(BOOL)bScaleToFit
{
    //: CGRect rectRet = rect;
    CGRect rectRet = rect;

    //: if (self.dataOutput.videoSettings) {
    if (self.dataOutput.videoSettings) {

        //: CGFloat fWidth = [[self.dataOutput.videoSettings objectForKey:@"Width"] floatValue];
        CGFloat fWidth = [[self.dataOutput.videoSettings objectForKey:[[CellData sharedInstance] main_lineTitle]] floatValue];
        //: CGFloat fHeight = [[self.dataOutput.videoSettings objectForKey:@"Height"] floatValue];
        CGFloat fHeight = [[self.dataOutput.videoSettings objectForKey:[[CellData sharedInstance] main_listData]] floatValue];

        //: float fScaleX = fWidth / CGRectGetWidth(rect);
        float fScaleX = fWidth / CGRectGetWidth(rect);
        //: float fScaleY = fHeight / CGRectGetHeight(rect);
        float fScaleY = fHeight / CGRectGetHeight(rect);
        //: float fScale = bScaleToFit ? fmaxf(fScaleX, fScaleY) : fminf(fScaleX, fScaleY);
        float fScale = bScaleToFit ? fmaxf(fScaleX, fScaleY) : fminf(fScaleX, fScaleY);

        //: fWidth /= fScale;
        fWidth /= fScale;
        //: fHeight /= fScale;
        fHeight /= fScale;

        //: CGFloat fX = rect.origin.x - (fWidth - rect.size.width) / 2.0f;
        CGFloat fX = rect.origin.x - (fWidth - rect.size.width) / 2.0f;
        //: CGFloat fY = rect.origin.y - (fHeight - rect.size.height) / 2.0f;
        CGFloat fY = rect.origin.y - (fHeight - rect.size.height) / 2.0f;

        //: rectRet = CGRectMake(fX, fY, fWidth, fHeight);
        rectRet = CGRectMake(fX, fY, fWidth, fHeight);
    }

    //: return rectRet;
    return rectRet;
}

//: - (BOOL)judgeCameraAuthorization
- (BOOL)judgeViewAuthorization
{
    //: AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];

    //: if (authStatus == AVAuthorizationStatusRestricted || authStatus == AVAuthorizationStatusDenied) {
    if (authStatus == AVAuthorizationStatusRestricted || authStatus == AVAuthorizationStatusDenied) {

        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: UIAlertController *alertView = [UIAlertController alertControllerWithTitle:@""
            UIAlertController *alertView = [UIAlertController alertControllerWithTitle:@""
                                                                               //: message:@"请打开相机权限"
                                                                               message:[[CellData sharedInstance] dataStreamUrl]
                                                                        //: preferredStyle:(UIAlertControllerStyleAlert)];
                                                                        preferredStyle:(UIAlertControllerStyleAlert)];

            //: UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"好的" style:(UIAlertActionStyleCancel) handler:^(UIAlertAction * _Nonnull action) {
            UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"好的" style:(UIAlertActionStyleCancel) handler:^(UIAlertAction * _Nonnull action) {
            //: }];
            }];

            //: [alertView addAction:cancel];
            [alertView addAction:cancel];

            //: UIViewController *vc = UIApplication.sharedApplication.delegate.window.rootViewController;
            UIViewController *vc = UIApplication.sharedApplication.delegate.window.rootViewController;
            //: [vc presentViewController:alertView animated:YES completion:nil];
            [vc presentViewController:alertView animated:YES completion:nil];
        //: });
        });

        //: return NO;
        return NO;
    }

    //: return YES;
    return YES;
}

//: - (AVCaptureDevice *)cameraDeviceWithPosition:(AVCaptureDevicePosition)position
- (AVCaptureDevice *)deviceOutput:(AVCaptureDevicePosition)position
{
    //: AVCaptureDevice *deviceRet = nil;
    AVCaptureDevice *deviceRet = nil;

    //: if (position != AVCaptureDevicePositionUnspecified) {
    if (position != AVCaptureDevicePositionUnspecified) {

        //: NSArray *devices = [AVCaptureDevice devicesWithMediaType:AVMediaTypeVideo];
        NSArray *devices = [AVCaptureDevice devicesWithMediaType:AVMediaTypeVideo];

        //: for (AVCaptureDevice *device in devices) {
        for (AVCaptureDevice *device in devices) {

            //: if ([device position] == position) {
            if ([device position] == position) {

                //: deviceRet = device;
                deviceRet = device;
            }
        }
    }

    //: return deviceRet;
    return deviceRet;
}

//: - (AVCaptureVideoPreviewLayer *)previewLayer
- (AVCaptureVideoPreviewLayer *)previewLayer
{
    //: if (!_previewLayer) {
    if (!_previewLayer) {

        //: _previewLayer = [[AVCaptureVideoPreviewLayer alloc] initWithSession:self.session];
        _previewLayer = [[AVCaptureVideoPreviewLayer alloc] initWithSession:self.session];
    }

    //: return _previewLayer;
    return _previewLayer;
}



//: - (void)captureOutput:(AVCaptureOutput *)captureOutput didOutputSampleBuffer:(CMSampleBufferRef)sampleBuffer fromConnection:(AVCaptureConnection *)connection
- (void)captureOutput:(AVCaptureOutput *)captureOutput didOutputSampleBuffer:(CMSampleBufferRef)sampleBuffer fromConnection:(AVCaptureConnection *)connection
{
    //: if (!self.bSessionPause) {
    if (!self.bSessionPause) {

        //: if (self.delegate && [self.delegate respondsToSelector:@selector(captureOutput:didOutputSampleBuffer:fromConnection:)]) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(identity:current:no:)]) {
            //: [self.delegate captureOutput:captureOutput didOutputSampleBuffer:sampleBuffer fromConnection:connection];
            [self.delegate identity:captureOutput current:sampleBuffer no:connection];
        }
    }

}

//: @end
@end