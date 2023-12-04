#ifdef RCT_NEW_ARCH_ENABLED
#import "InputKitView.h"

#import <react/renderer/components/RNInputKitViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNInputKitViewSpec/EventEmitters.h>
#import <react/renderer/components/RNInputKitViewSpec/Props.h>
#import <react/renderer/components/RNInputKitViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "Utils.h"

using namespace facebook::react;

@interface InputKitView () <RCTInputKitViewViewProtocol>

@end

@implementation InputKitView {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<InputKitViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const InputKitViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<InputKitViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<InputKitViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor: [Utils hexStringToColor:colorToConvert]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> InputKitViewCls(void)
{
    return InputKitView.class;
}

@end
#endif
