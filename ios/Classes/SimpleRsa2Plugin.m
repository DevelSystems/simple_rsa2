#import "SimpleRsa2Plugin.h"
#if __has_include(<simple_rsa2/simple_rsa2-Swift.h>)
#import <simple_rsa2/simple_rsa2-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "simple_rsa2-Swift.h"
#endif

@implementation SimpleRsa2Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSimpleRsa2Plugin registerWithRegistrar:registrar];
}
@end
