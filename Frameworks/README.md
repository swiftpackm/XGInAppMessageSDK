## 使用说明

1：xcframework是为了满足Apple新的库类型所推出的，集成时与原有SDK二选一。

2：如果您由原有SDK改为使用xcframework，使用步骤如下：

2.1：删除原有SDK
2.2：将xcframework拖入项目（XGExtension.xcframework为扩展插件使用无需放入主工程）
2.3：在原来的头文件引用处改为xcframework引用，示例：#import <XG_SDK_Cloud/XG_SDK_Cloud.h>