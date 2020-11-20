.class public final Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/dagger/SystemUIRootComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentImpl;,
        Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentBuilder;,
        Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$StatusBarComponentImpl;,
        Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$StatusBarComponentBuilder;,
        Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;,
        Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;,
        Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;,
        Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$FragmentCreatorImpl;,
        Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;,
        Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;,
        Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$PresentJdkOptionalInstanceProvider;,
        Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$PresentJdkOptionalLazyProvider;
    }
.end annotation


# static fields
.field private static final ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;


# instance fields
.field private accessibilityControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityController;",
            ">;"
        }
    .end annotation
.end field

.field private accessibilityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private actionClickLoggerProvider:Lcom/android/systemui/statusbar/ActionClickLogger_Factory;

.field private actionProxyReceiverProvider:Lcom/android/systemui/screenshot/GlobalScreenshot_ActionProxyReceiver_Factory;

.field private activityIntentHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ActivityIntentHelper;",
            ">;"
        }
    .end annotation
.end field

.field private activityStarterDelegateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ActivityStarterDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private airplaneModeTileProvider:Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

.field private appOpsControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/appops/AppOpsControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private appOpsCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController;",
            ">;"
        }
    .end annotation
.end field

.field private assistHandleLikeHomeBehaviorProvider:Ljavax/inject/Provider;

.field private assistHandleOffBehaviorProvider:Ljavax/inject/Provider;

.field private assistHandleReminderExpBehaviorProvider:Ljavax/inject/Provider;

.field private assistLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistLogger;",
            ">;"
        }
    .end annotation
.end field

.field private assistManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private asyncSensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private authControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/AuthController;",
            ">;"
        }
    .end annotation
.end field

.field private autoTileManagerProvider:Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

.field private batterySaverTileProvider:Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

.field private bindSystemClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/time/SystemClock;",
            ">;"
        }
    .end annotation
.end field

.field private biometricUnlockControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothTileProvider:Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

.field private blurUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/BlurUtils;",
            ">;"
        }
    .end annotation
.end field

.field private bootCompleteCacheImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootCompleteCacheImpl;",
            ">;"
        }
    .end annotation
.end field

.field private brightnessDialogProvider:Lcom/android/systemui/settings/BrightnessDialog_Factory;

.field private broadcastDispatcherLoggerProvider:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger_Factory;

.field private bubbleCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private bubbleDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleData;",
            ">;"
        }
    .end annotation
.end field

.field private bubbleDataRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleDataRepository;",
            ">;"
        }
    .end annotation
.end field

.field private bubbleOverflowActivityProvider:Lcom/android/systemui/bubbles/BubbleOverflowActivity_Factory;

.field private bubblePersistentRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/storage/BubblePersistentRepository;",
            ">;"
        }
    .end annotation
.end field

.field private bubbleVolatileRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;",
            ">;"
        }
    .end annotation
.end field

.field private builderProvider:Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;

.field private builderProvider2:Lcom/android/systemui/util/wakelock/WakeLock_Builder_Factory;

.field private builderProvider3:Lcom/android/systemui/util/wakelock/DelayedWakeLock_Builder_Factory;

.field private builderProvider4:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private builderProvider5:Lcom/android/systemui/qs/AutoAddTracker_Builder_Factory;

.field private bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private castControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/CastControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private castTileProvider:Lcom/android/systemui/qs/tiles/CastTile_Factory;

.field private cellularTileProvider:Lcom/android/systemui/qs/tiles/CellularTile_Factory;

.field private channelEditorDialogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
            ">;"
        }
    .end annotation
.end field

.field private clockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/clock/ClockManager;",
            ">;"
        }
    .end annotation
.end field

.field private colorInversionTileProvider:Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

.field private contextComponentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dagger/ContextComponentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

.field private controlActionCoordinatorImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;",
            ">;"
        }
    .end annotation
.end field

.field private controlsBindingControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private controlsComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/dagger/ControlsComponent;",
            ">;"
        }
    .end annotation
.end field

.field private controlsControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private controlsEditingActivityProvider:Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;

.field private controlsFavoritingActivityProvider:Lcom/android/systemui/controls/management/ControlsFavoritingActivity_Factory;

.field private controlsListingControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/management/ControlsListingControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private controlsProviderSelectorActivityProvider:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity_Factory;

.field private controlsRequestDialogProvider:Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;

.field private controlsUiControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private conversationCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private conversationNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private conversationNotificationProcessorProvider:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor_Factory;

.field private darkIconDispatcherImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;",
            ">;"
        }
    .end annotation
.end field

.field private dataSaverTileProvider:Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

.field private dataSwitchTileProvider:Lcom/android/systemui/qs/tiles/DataSwitchTile_Factory;

.field private dateFormatUtilProvider:Lcom/android/systemui/util/time/DateFormatUtil_Factory;

.field private defaultUiControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/ui/DefaultUiController;",
            ">;"
        }
    .end annotation
.end field

.field private deviceConfigHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/DeviceConfigHelper;",
            ">;"
        }
    .end annotation
.end field

.field private deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private deviceProvisionedCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private dismissCallbackRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private displayControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;"
        }
    .end annotation
.end field

.field private displayImeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/DisplayImeController;",
            ">;"
        }
    .end annotation
.end field

.field private dndTileProvider:Lcom/android/systemui/qs/tiles/DndTile_Factory;

.field private dockManagerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private dozeFactoryProvider:Lcom/android/systemui/doze/DozeFactory_Factory;

.field private dozeLogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeLog;",
            ">;"
        }
    .end annotation
.end field

.field private dozeLoggerProvider:Lcom/android/systemui/doze/DozeLogger_Factory;

.field private dozeParametersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;"
        }
    .end annotation
.end field

.field private dozeScrimControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            ">;"
        }
    .end annotation
.end field

.field private dozeServiceHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            ">;"
        }
    .end annotation
.end field

.field private dozeServiceProvider:Lcom/android/systemui/doze/DozeService_Factory;

.field private dumpHandlerProvider:Lcom/android/systemui/dump/DumpHandler_Factory;

.field private dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;"
        }
    .end annotation
.end field

.field private dynamicChildBindControllerProvider:Lcom/android/systemui/statusbar/notification/DynamicChildBindController_Factory;

.field private dynamicPrivacyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;"
        }
    .end annotation
.end field

.field private enhancedEstimatesImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/EnhancedEstimatesImpl;",
            ">;"
        }
    .end annotation
.end field

.field private expandableNotificationRowComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private expansionStateLoggerProvider:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

.field private extensionControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private falsingManagerProxyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingManagerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private featureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private filesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/io/Files;",
            ">;"
        }
    .end annotation
.end field

.field private flashlightControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private flashlightTileProvider:Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

.field private floatingContentCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/FloatingContentCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundServiceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundServiceDismissalFeatureControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundServiceLifetimeExtenderProvider:Lcom/android/systemui/ForegroundServiceLifetimeExtender_Factory;

.field private foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceNotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundServiceSectionControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/fragments/FragmentService;",
            ">;"
        }
    .end annotation
.end field

.field private gameModeTileProvider:Lcom/android/systemui/qs/tiles/GameModeTile_Factory;

.field private garbageMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private globalActionsComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsComponent;",
            ">;"
        }
    .end annotation
.end field

.field private globalActionsDialogProvider:Lcom/android/systemui/globalactions/GlobalActionsDialog_Factory;

.field private globalActionsImplProvider:Lcom/android/systemui/globalactions/GlobalActionsImpl_Factory;

.field private globalScreenshotProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenshot/GlobalScreenshot;",
            ">;"
        }
    .end annotation
.end field

.field private groupCoalescerLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger_Factory;

.field private groupCoalescerProvider:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer_Factory;

.field private headsUpControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;",
            ">;"
        }
    .end annotation
.end field

.field private headsUpCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private headsUpViewBinderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;",
            ">;"
        }
    .end annotation
.end field

.field private hideNotifsForOtherUsersCoordinatorProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator_Factory;

.field private highPriorityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;",
            ">;"
        }
    .end annotation
.end field

.field private hotspotControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private hotspotTileProvider:Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

.field private iconBuilderProvider:Lcom/android/systemui/statusbar/notification/icon/IconBuilder_Factory;

.field private iconManagerProvider:Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;

.field private initControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/InitController;",
            ">;"
        }
    .end annotation
.end field

.field private injectionInflationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;"
        }
    .end annotation
.end field

.field private instantAppNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/InstantAppNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardBypassControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardDismissUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardEnvironmentImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardIndicationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/KeyguardIndicationController;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardLifecyclesDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardMediaControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/KeyguardMediaController;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardSecurityModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityModel;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardServiceProvider:Lcom/android/systemui/keyguard/KeyguardService_Factory;

.field private keyguardStateControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private latencyTesterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/LatencyTester;",
            ">;"
        }
    .end annotation
.end field

.field private leakReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakReporter;",
            ">;"
        }
    .end annotation
.end field

.field private lightBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;"
        }
    .end annotation
.end field

.field private lightsOutNotifControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightsOutNotifController;",
            ">;"
        }
    .end annotation
.end field

.field private localMediaManagerFactoryProvider:Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;

.field private locationControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/LocationControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private locationTileProvider:Lcom/android/systemui/qs/tiles/LocationTile_Factory;

.field private lockscreenGestureLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            ">;"
        }
    .end annotation
.end field

.field private lockscreenLockIconControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;",
            ">;"
        }
    .end annotation
.end field

.field private lockscreenWallpaperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
            ">;"
        }
    .end annotation
.end field

.field private logBufferEulogizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/LogBufferEulogizer;",
            ">;"
        }
    .end annotation
.end field

.field private logBufferFreezerProvider:Lcom/android/systemui/dump/LogBufferFreezer_Factory;

.field private lowPriorityInflationHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private managedProfileControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mapOfClassOfAndProviderOfActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mapOfClassOfAndProviderOfBroadcastReceiverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/content/BroadcastReceiver;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mapOfClassOfAndProviderOfRecentsImplementationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/RecentsImplementation;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mapOfClassOfAndProviderOfServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Service;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mapOfClassOfAndProviderOfSystemUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SystemUI;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mediaArtworkProcessorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/MediaArtworkProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private mediaCarouselControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaCarouselController;",
            ">;"
        }
    .end annotation
.end field

.field private mediaControlPanelProvider:Lcom/android/systemui/media/MediaControlPanel_Factory;

.field private mediaControllerFactoryProvider:Lcom/android/systemui/media/MediaControllerFactory_Factory;

.field private mediaCoordinatorProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator_Factory;

.field private mediaDataCombineLatestProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataCombineLatest;",
            ">;"
        }
    .end annotation
.end field

.field private mediaDataFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mediaDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private mediaDeviceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDeviceManager;",
            ">;"
        }
    .end annotation
.end field

.field private mediaFeatureFlagProvider:Lcom/android/systemui/media/MediaFeatureFlag_Factory;

.field private mediaHierarchyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHierarchyManager;",
            ">;"
        }
    .end annotation
.end field

.field private mediaHostProvider:Lcom/android/systemui/media/MediaHost_Factory;

.field private mediaHostStatesManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHostStatesManager;",
            ">;"
        }
    .end annotation
.end field

.field private mediaResumeListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaResumeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mediaTimeoutListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaTimeoutListener;",
            ">;"
        }
    .end annotation
.end field

.field private mediaViewControllerProvider:Lcom/android/systemui/media/MediaViewController_Factory;

.field private memoryTileProvider:Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

.field private navigationModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field private networkControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private networkSpeedControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private newBubbleControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;"
        }
    .end annotation
.end field

.field private newKeyguardViewMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;"
        }
    .end annotation
.end field

.field private nextAlarmControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private nfcTileProvider:Lcom/android/systemui/qs/tiles/NfcTile_Factory;

.field private nightDisplayTileProvider:Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

.field private notifBindPipelineInitializerProvider:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer_Factory;

.field private notifBindPipelineLoggerProvider:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger_Factory;

.field private notifBindPipelineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;",
            ">;"
        }
    .end annotation
.end field

.field private notifCollectionLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger_Factory;

.field private notifCollectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifCollection;",
            ">;"
        }
    .end annotation
.end field

.field private notifCoordinatorsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;",
            ">;"
        }
    .end annotation
.end field

.field private notifInflaterImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private notifInflationErrorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;",
            ">;"
        }
    .end annotation
.end field

.field private notifPipelineInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private notifPipelineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;"
        }
    .end annotation
.end field

.field private notifRemoteViewCacheImplProvider:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl_Factory;

.field private notifViewBarnProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn;",
            ">;"
        }
    .end annotation
.end field

.field private notifViewManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationClickNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationClickNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private notificationClickerLoggerProvider:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger_Factory;

.field private notificationContentInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;",
            ">;"
        }
    .end annotation
.end field

.field private notificationEntryManagerLoggerProvider:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger_Factory;

.field private notificationFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            ">;"
        }
    .end annotation
.end field

.field private notificationGroupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationInteractionTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationInteractionTracker;",
            ">;"
        }
    .end annotation
.end field

.field private notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private notificationPersonExtractorPluginBoundaryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;",
            ">;"
        }
    .end annotation
.end field

.field private notificationRankingManagerProvider:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager_Factory;

.field private notificationRoundnessManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationRowBinderImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private notificationRowComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private notificationSectionsFeatureManagerProvider:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;

.field private notificationSectionsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private notificationShadeDepthControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;"
        }
    .end annotation
.end field

.field private notificationShadeWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private notificationsControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private notificationsControllerStubProvider:Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub_Factory;

.field private oPDndCarModeTileProvider:Lcom/android/systemui/qs/tiles/OPDndCarModeTile_Factory;

.field private oPDndTileProvider:Lcom/android/systemui/qs/tiles/OPDndTile_Factory;

.field private oPReverseChargeTileProvider:Lcom/android/systemui/qs/tiles/OPReverseChargeTile_Factory;

.field private oPWLBHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/oneplus/worklife/OPWLBHelper;",
            ">;"
        }
    .end annotation
.end field

.field private opBiometricDialogImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;",
            ">;"
        }
    .end annotation
.end field

.field private opChargingAnimationControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/oneplus/battery/OpChargingAnimationControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private opHighlightHintControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private opNotificationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/oneplus/notification/OpNotificationController;",
            ">;"
        }
    .end annotation
.end field

.field private opSceneModeObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/oneplus/scene/OpSceneModeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private opZenModeControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/oneplus/opzenmode/OpZenModeControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private optionalOfControlsFavoritePersistenceWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private optionalOfDividerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;>;"
        }
    .end annotation
.end field

.field private optionalOfLazyOfRecentsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/Recents;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private optionalOfRecentsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;>;"
        }
    .end annotation
.end field

.field private optionalOfStatusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;"
        }
    .end annotation
.end field

.field private otgTileProvider:Lcom/android/systemui/qs/tiles/OtgTile_Factory;

.field private overviewProxyRecentsImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyRecentsImpl;",
            ">;"
        }
    .end annotation
.end field

.field private overviewProxyServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field private peopleHubDataSourceImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleHubDataSourceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private peopleHubViewAdapterImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private peopleHubViewModelFactoryDataSourceImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleHubViewModelFactoryDataSourceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;",
            ">;"
        }
    .end annotation
.end field

.field private phoneStateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhoneStateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private phoneStatusBarPolicyProvider:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy_Factory;

.field private pipAnimationControllerProvider:Lcom/android/systemui/pip/PipAnimationController_Factory;

.field private pipBoundsHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipBoundsHandler;",
            ">;"
        }
    .end annotation
.end field

.field private pipManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/phone/PipManager;",
            ">;"
        }
    .end annotation
.end field

.field private pipSnapAlgorithmProvider:Lcom/android/systemui/pip/PipSnapAlgorithm_Factory;

.field private pipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipSurfaceTransactionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private pipTaskOrganizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipTaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field private pipUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipUI;",
            ">;"
        }
    .end annotation
.end field

.field private pluginDependencyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;"
        }
    .end annotation
.end field

.field private powerNotificationWarningsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/PowerNotificationWarnings;",
            ">;"
        }
    .end annotation
.end field

.field private powerUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/PowerUI;",
            ">;"
        }
    .end annotation
.end field

.field private preparationCoordinatorLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger_Factory;

.field private preparationCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private protoTracerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tracing/ProtoTracer;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccessibilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideActivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/ActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideActivityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private provideAlarmManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private provideAlwaysOnDisplayPolicyProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;

.field private provideAmbientDisplayConfigurationProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideAmbientDisplayConfigurationFactory;

.field private provideAssistHandleBehaviorControllerMapProvider:Ljavax/inject/Provider;

.field private provideAssistHandleViewControllerProvider:Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;

.field private provideAssistUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;"
        }
    .end annotation
.end field

.field private provideAudioManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/media/AudioManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideAutoHideControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;"
        }
    .end annotation
.end field

.field private provideBackgroundDelayableExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideBackgroundExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideBackgroundHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideBackgroundRepeatableExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/RepeatableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideBatteryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;"
        }
    .end annotation
.end field

.field private provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

.field private provideBgLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private provideBroadcastDispatcherLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private provideCommandQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;"
        }
    .end annotation
.end field

.field private provideCommonNotifCollectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            ">;"
        }
    .end annotation
.end field

.field private provideConfigurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation
.end field

.field private provideConnectivityManagagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideContentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

.field private provideCurrentUserContextTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/CurrentUserContextTracker;",
            ">;"
        }
    .end annotation
.end field

.field private provideDataSaverControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;"
        }
    .end annotation
.end field

.field private provideDelayableExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideDevicePolicyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/admin/DevicePolicyManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private provideDisplayIdProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideDisplayIdFactory;

.field private provideDisplayMetricsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private provideDividerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;"
        }
    .end annotation
.end field

.field private provideDozeLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private provideExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;"
        }
    .end annotation
.end field

.field private provideIActivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIBatteryStatsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/IBatteryStats;",
            ">;"
        }
    .end annotation
.end field

.field private provideIDreamManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/service/dreams/IDreamManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideINotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIPackageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/IPackageManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIStatusBarServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;"
        }
    .end annotation
.end field

.field private provideIWindowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideKeyguardLiftControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
            ">;"
        }
    .end annotation
.end field

.field private provideKeyguardManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/KeyguardManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideLatencyTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/util/LatencyTracker;",
            ">;"
        }
    .end annotation
.end field

.field private provideLauncherAppsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;"
        }
    .end annotation
.end field

.field private provideLeakDetectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            ">;"
        }
    .end annotation
.end field

.field private provideLeakReportEmailProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideLockPatternUtilsProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

.field private provideLogcatEchoTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogcatEchoTracker;",
            ">;"
        }
    .end annotation
.end field

.field private provideLongRunningExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideLongRunningLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private provideMainDelayableExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

.field private provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

.field private provideMediaRouter2ManagerProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideMediaRouter2ManagerFactory;

.field private provideMetricsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideNavigationBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            ">;"
        }
    .end annotation
.end field

.field private provideNetworkScoreManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/NetworkScoreManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNightDisplayListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotifInteractionLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotifRemoteViewCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationBlockingHelperManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationEntryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationGutsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationMediaManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationMessagingUtilProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;

.field private provideNotificationPanelLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationSectionLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationViewHierarchyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationsLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private providePackageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/PackageManager;",
            ">;"
        }
    .end annotation
.end field

.field private providePackageManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private providePluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;"
        }
    .end annotation
.end field

.field private providePowerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideQuickSettingsLogBufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private provideRecentsImplProvider:Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;

.field private provideRecentsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/Recents;",
            ">;"
        }
    .end annotation
.end field

.field private provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

.field private provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorPrivacyManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideSharePreferencesProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideSharePreferencesFactory;

.field private provideShortcutManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/ShortcutManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideSmartReplyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;"
        }
    .end annotation
.end field

.field private provideStatusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private provideSysUiStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;"
        }
    .end annotation
.end field

.field private provideSystemClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/slice/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private provideTelecomManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/telecom/TelecomManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideTelephonyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/telephony/TelephonyManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideTimeTickHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideTrustManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/trust/TrustManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideUiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideUserManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideVibratorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field private provideVisualStabilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideWallpaperManagerProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideWallpaperManagerFactory;

.field private provideWifiManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/wifi/WifiManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideWindowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesBroadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private providesChoreographerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field

.field private providesControlsFeatureEnabledProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private providesViewMediatorCallbackProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;

.field private proximityCheckProvider:Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;

.field private proximitySensorProvider:Lcom/android/systemui/util/sensors/ProximitySensor_Factory;

.field private pulseExpansionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private qSFactoryImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private qSLoggerProvider:Lcom/android/systemui/qs/logging/QSLogger_Factory;

.field private qSTileHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;"
        }
    .end annotation
.end field

.field private rankingCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private readModeTileProvider:Lcom/android/systemui/qs/tiles/ReadModeTile_Factory;

.field private recordingControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            ">;"
        }
    .end annotation
.end field

.field private recordingServiceProvider:Lcom/android/systemui/screenrecord/RecordingService_Factory;

.field private remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;"
        }
    .end annotation
.end field

.field private remoteInputUriControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputUriController;",
            ">;"
        }
    .end annotation
.end field

.field private ringerModeTrackerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/RingerModeTrackerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private rotationLockControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private rotationLockTileProvider:Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

.field private rowContentBindStageLoggerProvider:Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger_Factory;

.field private rowContentBindStageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;",
            ">;"
        }
    .end annotation
.end field

.field private screenDecorationsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ScreenDecorations;",
            ">;"
        }
    .end annotation
.end field

.field private screenLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private screenPinningRequestProvider:Lcom/android/systemui/recents/ScreenPinningRequest_Factory;

.field private screenRecordDialogProvider:Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;

.field private screenRecordTileProvider:Lcom/android/systemui/qs/tiles/ScreenRecordTile_Factory;

.field private screenshotNotificationsControllerProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;

.field private scrimControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            ">;"
        }
    .end annotation
.end field

.field private securityControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private seekBarViewModelProvider:Lcom/android/systemui/media/SeekBarViewModel_Factory;

.field private sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private serviceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$Service;",
            ">;"
        }
    .end annotation
.end field

.field private shadeControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private shadeListBuilderLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger_Factory;

.field private shadeListBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private sharedCoordinatorLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger_Factory;

.field private shortcutKeyDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private sizeCompatModeActivityControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SizeCompatModeActivityController;",
            ">;"
        }
    .end annotation
.end field

.field private sliceBroadcastRelayHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SliceBroadcastRelayHandler;",
            ">;"
        }
    .end annotation
.end field

.field private smartReplyConstantsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SmartReplyConstants;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarIconControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarNotificationActivityStarterLoggerProvider:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger_Factory;

.field private statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarStateControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private superStatusBarViewFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;",
            ">;"
        }
    .end annotation
.end field

.field private systemActionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/SystemActions;",
            ">;"
        }
    .end annotation
.end field

.field private systemUIAuxiliaryDumpServiceProvider:Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;

.field private systemUIRootComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dagger/SystemUIRootComponent;",
            ">;"
        }
    .end annotation
.end field

.field private systemUIServiceProvider:Lcom/android/systemui/SystemUIService_Factory;

.field private systemWindowsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wm/SystemWindows;",
            ">;"
        }
    .end annotation
.end field

.field private sysuiColorExtractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;"
        }
    .end annotation
.end field

.field private takeScreenshotServiceProvider:Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;

.field private targetSdkResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;",
            ">;"
        }
    .end annotation
.end field

.field private themeOverlayControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/theme/ThemeOverlayController;",
            ">;"
        }
    .end annotation
.end field

.field private toastUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/toast/ToastUI;",
            ">;"
        }
    .end annotation
.end field

.field private transactionPoolProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/TransactionPool;",
            ">;"
        }
    .end annotation
.end field

.field private tunablePaddingServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;",
            ">;"
        }
    .end annotation
.end field

.field private tunerServiceImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private tvStatusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/tv/TvStatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private uiModeNightTileProvider:Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

.field private uiOffloadThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;"
        }
    .end annotation
.end field

.field private usbDebuggingActivityProvider:Lcom/android/systemui/usb/UsbDebuggingActivity_Factory;

.field private usbDebuggingSecondaryUserActivityProvider:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity_Factory;

.field private userInfoControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private userSwitcherControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;"
        }
    .end annotation
.end field

.field private userTileProvider:Lcom/android/systemui/qs/tiles/UserTile_Factory;

.field private vPNTileProvider:Lcom/android/systemui/qs/tiles/VPNTile_Factory;

.field private vibratorHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private volumeDialogComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeDialogComponent;",
            ">;"
        }
    .end annotation
.end field

.field private volumeDialogControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeDialogControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private volumeUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeUI;",
            ">;"
        }
    .end annotation
.end field

.field private wLBSwitchControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/WLBSwitchController;",
            ">;"
        }
    .end annotation
.end field

.field private wakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private wifiTileProvider:Lcom/android/systemui/qs/tiles/WifiTile_Factory;

.field private windowMagnificationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/WindowMagnification;",
            ">;"
        }
    .end annotation
.end field

.field private workLifeBalanceTileProvider:Lcom/android/systemui/qs/tiles/WorkLifeBalanceTile_Factory;

.field private workLockActivityProvider:Lcom/android/systemui/keyguard/WorkLockActivity_Factory;

.field private workModeTileProvider:Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

.field private zenModeControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 756
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)V
    .locals 0

    .line 1655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1656
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->initialize(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)V

    .line 1657
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->initialize2(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)V

    .line 1658
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->initialize3(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)V

    .line 1659
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->initialize4(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)V

    .line 1660
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->initialize5(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;)V
    .locals 0

    .line 752
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)V

    return-void
.end method

.method private static absentJdkOptionalProvider()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 4225
    sget-object v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideTimeTickHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLeakReportEmailProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->clockManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePackageManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSysUiStateProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardSecurityModelProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideRecentsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->displayControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->systemWindowsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->displayImeControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->recordingControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->protoTracerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDividerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->opZenModeControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->opBiometricDialogImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->opSceneModeObserverProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->opChargingAnimationControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->networkSpeedControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->wLBSwitchControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->oPWLBHelperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->opNotificationControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->opHighlightHintControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideExecutorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/SystemUIFactory$ContextHolder;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    return-object p0
.end method

.method static synthetic access$13300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Landroid/content/res/Resources;
    .locals 0

    .line 752
    invoke-direct {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->getMainResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$13400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Landroid/os/Handler;
    .locals 0

    .line 752
    invoke-direct {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$13500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->systemActionsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Landroid/os/Handler;
    .locals 0

    .line 752
    invoke-direct {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->getMainHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$13700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->peopleHubViewAdapterImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardMediaControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;
    .locals 0

    .line 752
    invoke-direct {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->getNotificationSectionsFeatureManager()Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$14400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationSectionsLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 752
    invoke-direct {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$14600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->ringerModeTrackerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->foregroundServiceSectionControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->foregroundServiceDismissalFeatureControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifPipelineProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifCollectionProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$15900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/qs/logging/QSLogger;
    .locals 0

    .line 752
    invoke-direct {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->getQSLogger()Lcom/android/systemui/qs/logging/QSLogger;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$16000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/media/MediaHost;
    .locals 0

    .line 752
    invoke-direct {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->getMediaHost()Lcom/android/systemui/media/MediaHost;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$16300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$16500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    return-object p0
.end method

.method static synthetic access$16900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bindSystemClockProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeLogProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLatencyTrackerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$17800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideDisplayIdFactory;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDisplayIdProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideDisplayIdFactory;

    return-object p0
.end method

.method static synthetic access$17900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideActivityManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$18000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$18100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->conversationNotificationManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$18200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$18300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$18400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$18500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$18600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->superStatusBarViewFactoryProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->flashlightControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->accessibilityControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->assistManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->securityControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->leakReporterProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->garbageMonitorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->fragmentServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->extensionControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pluginDependencyProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->volumeDialogControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->tunablePaddingServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->powerNotificationWarningsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->lightBarControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->enhancedEstimatesImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->vibratorHelperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardEnvironmentImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->shadeControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationGutsManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationBlockingHelperManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationFilterProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSmartReplyControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAutoHideControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    return-object p0
.end method

.method static synthetic access$9900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    return-object p0
.end method

.method public static builder()Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;
    .locals 2

    .line 1664
    new-instance v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;)V

    return-object v0
.end method

.method private getBackgroundHandler()Landroid/os/Handler;
    .locals 0

    .line 1673
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 1674
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    .line 1673
    invoke-static {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;->proxyProvideBgHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method private getMainExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    .line 1701
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    .line 1702
    invoke-static {p0}, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Landroid/content/Context;

    move-result-object p0

    .line 1701
    invoke-static {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;->proxyProvideMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method private getMainHandler()Landroid/os/Handler;
    .locals 0

    .line 1669
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->proxyProvideMainLooper()Landroid/os/Looper;

    move-result-object p0

    .line 1668
    invoke-static {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;->proxyProvideMainHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method private getMainResources()Landroid/content/res/Resources;
    .locals 0

    .line 1678
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    .line 1679
    invoke-static {p0}, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Landroid/content/Context;

    move-result-object p0

    .line 1678
    invoke-static {p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;->proxyProvideResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method private getMediaHost()Lcom/android/systemui/media/MediaHost;
    .locals 4

    .line 1693
    new-instance v0, Lcom/android/systemui/media/MediaHost;

    new-instance v1, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-direct {v1}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    .line 1695
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaHierarchyManager;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaDataFilterProvider:Ljavax/inject/Provider;

    .line 1696
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaDataFilter;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaHostStatesManagerProvider:Ljavax/inject/Provider;

    .line 1697
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/media/MediaHost;-><init>(Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/media/MediaDataFilter;Lcom/android/systemui/media/MediaHostStatesManager;)V

    return-object v0
.end method

.method private getNotificationSectionsFeatureManager()Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;
    .locals 2

    .line 1683
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    new-instance v1, Lcom/android/systemui/util/DeviceConfigProxy;

    invoke-direct {v1}, Lcom/android/systemui/util/DeviceConfigProxy;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    .line 1685
    invoke-static {p0}, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;-><init>(Lcom/android/systemui/util/DeviceConfigProxy;Landroid/content/Context;)V

    return-object v0
.end method

.method private getQSLogger()Lcom/android/systemui/qs/logging/QSLogger;
    .locals 1

    .line 1689
    new-instance v0, Lcom/android/systemui/qs/logging/QSLogger;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideQuickSettingsLogBufferProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/logging/QSLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    return-object v0
.end method

.method private initialize(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)V
    .locals 12

    .line 1707
    invoke-static {}, Lcom/android/systemui/dump/DumpManager_Factory;->create()Lcom/android/systemui/dump/DumpManager_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 1709
    invoke-static {v0}, Lcom/android/systemui/BootCompleteCacheImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/BootCompleteCacheImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bootCompleteCacheImplProvider:Ljavax/inject/Provider;

    .line 1711
    invoke-static {p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory$ContextHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->create(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1715
    invoke-static {p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1714
    invoke-static {v0, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideConfigurationControllerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideConfigurationControllerFactory;

    move-result-object v0

    .line 1713
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 1717
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgLooperFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 1720
    invoke-static {v0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundExecutorFactory;

    move-result-object v0

    .line 1719
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 1721
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1723
    invoke-static {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideContentResolverFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideContentResolverFactory;

    move-result-object v0

    .line 1722
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    .line 1728
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v1

    .line 1726
    invoke-static {v0, v1}, Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;

    move-result-object v0

    .line 1725
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLogcatEchoTrackerProvider:Ljavax/inject/Provider;

    .line 1729
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 1731
    invoke-static {v0, v1}, Lcom/android/systemui/log/dagger/LogModule_ProvideBroadcastDispatcherLogBufferFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideBroadcastDispatcherLogBufferFactory;

    move-result-object v0

    .line 1730
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBroadcastDispatcherLogBufferProvider:Ljavax/inject/Provider;

    .line 1734
    invoke-static {v0}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->broadcastDispatcherLoggerProvider:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger_Factory;

    .line 1738
    invoke-static {p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->broadcastDispatcherLoggerProvider:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger_Factory;

    .line 1737
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;

    move-result-object v0

    .line 1736
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 1745
    invoke-static {v0}, Lcom/android/systemui/keyguard/WorkLockActivity_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/WorkLockActivity_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->workLockActivityProvider:Lcom/android/systemui/keyguard/WorkLockActivity_Factory;

    .line 1746
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 1747
    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDialog_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/settings/BrightnessDialog_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->brightnessDialogProvider:Lcom/android/systemui/settings/BrightnessDialog_Factory;

    .line 1748
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 1750
    invoke-static {v0}, Lcom/android/systemui/screenrecord/RecordingController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/screenrecord/RecordingController_Factory;

    move-result-object v0

    .line 1749
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->recordingControllerProvider:Ljavax/inject/Provider;

    .line 1751
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 1753
    invoke-static {v0, v1}, Lcom/android/systemui/settings/dagger/SettingsModule_ProvideCurrentUserContextTrackerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/settings/dagger/SettingsModule_ProvideCurrentUserContextTrackerFactory;

    move-result-object v0

    .line 1752
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCurrentUserContextTrackerProvider:Ljavax/inject/Provider;

    .line 1755
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->recordingControllerProvider:Ljavax/inject/Provider;

    .line 1756
    invoke-static {v1, v0}, Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->screenRecordDialogProvider:Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;

    .line 1758
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1760
    invoke-static {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideWindowManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideWindowManagerFactory;

    move-result-object v0

    .line 1759
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    .line 1762
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIActivityManagerFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIActivityManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIActivityManagerProvider:Ljavax/inject/Provider;

    .line 1763
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1764
    invoke-static {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    .line 1767
    invoke-static {p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1766
    invoke-static {v0, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAmbientDisplayConfigurationFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideAmbientDisplayConfigurationFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAmbientDisplayConfigurationProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideAmbientDisplayConfigurationFactory;

    .line 1770
    invoke-static {p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1769
    invoke-static {v0, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAlwaysOnDisplayPolicyProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;

    .line 1771
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1773
    invoke-static {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvidePowerManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvidePowerManagerFactory;

    move-result-object v0

    .line 1772
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    .line 1776
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v0

    .line 1775
    invoke-static {v0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    .line 1779
    invoke-static {p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideLeakDetectorFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideLeakDetectorFactory;

    move-result-object v0

    .line 1778
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    .line 1780
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 1782
    invoke-static {v1, v2, v0, v3}, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunerServiceImpl_Factory;

    move-result-object v0

    .line 1781
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 1787
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAmbientDisplayConfigurationProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideAmbientDisplayConfigurationFactory;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAlwaysOnDisplayPolicyProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    .line 1789
    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;

    move-result-object v0

    .line 1788
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 1796
    invoke-static {}, Lcom/android/systemui/dagger/DependencyProvider_ProvideUiEventLoggerFactory;->create()Lcom/android/systemui/dagger/DependencyProvider_ProvideUiEventLoggerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 1799
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;

    move-result-object v0

    .line 1798
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1803
    invoke-static {p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1802
    invoke-static {v0, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvidePluginManagerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvidePluginManagerFactory;

    move-result-object v0

    .line 1801
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 1804
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1805
    invoke-static {v0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    .line 1809
    invoke-static {p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    .line 1808
    invoke-static {v0, v1, v2}, Lcom/android/systemui/dagger/DependencyProvider_ProvideDisplayMetricsFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideDisplayMetricsFactory;

    move-result-object v0

    .line 1807
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    .line 1810
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 1812
    invoke-static {v0, v1}, Lcom/android/systemui/util/sensors/AsyncSensorManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/AsyncSensorManager_Factory;

    move-result-object v0

    .line 1811
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    .line 1814
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    .line 1815
    invoke-static {v1, v0}, Lcom/android/systemui/util/sensors/ProximitySensor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/ProximitySensor_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->proximitySensorProvider:Lcom/android/systemui/util/sensors/ProximitySensor_Factory;

    .line 1816
    invoke-static {}, Lcom/android/systemui/dock/DockManagerImpl_Factory;->create()Lcom/android/systemui/dock/DockManagerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    .line 1817
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1819
    invoke-static {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideAudioManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideAudioManagerFactory;

    move-result-object v0

    .line 1818
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAudioManagerProvider:Ljavax/inject/Provider;

    .line 1820
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 1822
    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/RingerModeTrackerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/RingerModeTrackerImpl_Factory;

    move-result-object v0

    .line 1821
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->ringerModeTrackerImplProvider:Ljavax/inject/Provider;

    .line 1828
    invoke-static {p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1827
    invoke-static {v0, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLockPatternUtilsProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

    .line 1829
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1833
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->ringerModeTrackerImplProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLockPatternUtilsProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

    .line 1831
    invoke-static/range {v1 .. v8}, Lcom/android/keyguard/KeyguardUpdateMonitor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/KeyguardUpdateMonitor_Factory;

    move-result-object v0

    .line 1830
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 1841
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideUiBackgroundExecutorFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideUiBackgroundExecutorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 1842
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->proximitySensorProvider:Lcom/android/systemui/util/sensors/ProximitySensor_Factory;

    .line 1850
    invoke-static {}, Lcom/android/systemui/util/DeviceConfigProxy_Factory;->create()Lcom/android/systemui/util/DeviceConfigProxy_Factory;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1844
    invoke-static/range {v1 .. v11}, Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;

    move-result-object v0

    .line 1843
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 1856
    new-instance v0, Ldagger/internal/DelegateFactory;

    invoke-direct {v0}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    .line 1859
    invoke-static {p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    .line 1858
    invoke-static {v0, v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesViewMediatorCallbackProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;

    .line 1860
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 1862
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl_Factory;

    move-result-object v0

    .line 1861
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    .line 1866
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 1868
    invoke-static {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;

    move-result-object v0

    .line 1867
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 1873
    new-instance v0, Ldagger/internal/DelegateFactory;

    invoke-direct {v0}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    .line 1874
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLockPatternUtilsProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

    .line 1876
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl_Factory;

    move-result-object v0

    .line 1875
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1880
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 1881
    invoke-static {v0}, Lcom/android/systemui/statusbar/FeatureFlags_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/FeatureFlags_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 1882
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1884
    invoke-static {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideNotificationManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideNotificationManagerFactory;

    move-result-object v0

    .line 1883
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    .line 1885
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    .line 1887
    invoke-static {v1, v0, v2}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationListenerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationListenerFactory;

    move-result-object v0

    .line 1886
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    .line 1891
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLogcatEchoTrackerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 1893
    invoke-static {v0, v1}, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationsLogBufferFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationsLogBufferFactory;

    move-result-object v0

    .line 1892
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    .line 1896
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationEntryManagerLoggerProvider:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger_Factory;

    .line 1897
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 1899
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl_Factory;

    move-result-object v0

    .line 1898
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->extensionControllerImplProvider:Ljavax/inject/Provider;

    .line 1907
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary_Factory;

    move-result-object v0

    .line 1906
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationPersonExtractorPluginBoundaryProvider:Ljavax/inject/Provider;

    .line 1909
    new-instance v0, Ldagger/internal/DelegateFactory;

    invoke-direct {v0}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    .line 1910
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationPersonExtractorPluginBoundaryProvider:Ljavax/inject/Provider;

    .line 1912
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl_Factory;

    move-result-object v0

    .line 1911
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    .line 1915
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 1917
    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1919
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;

    move-result-object v0

    .line 1918
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    .line 1922
    invoke-virtual {v1, v0}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 1923
    new-instance v0, Ldagger/internal/DelegateFactory;

    invoke-direct {v0}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    .line 1924
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1926
    invoke-static {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideDevicePolicyManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideDevicePolicyManagerFactory;

    move-result-object v0

    .line 1925
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDevicePolicyManagerProvider:Ljavax/inject/Provider;

    .line 1927
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1929
    invoke-static {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideUserManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideUserManagerFactory;

    move-result-object v0

    .line 1928
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    .line 1931
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIStatusBarServiceFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIStatusBarServiceFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 1932
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    .line 1934
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationClickNotifier_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationClickNotifier_Factory;

    move-result-object v0

    .line 1933
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationClickNotifierProvider:Ljavax/inject/Provider;

    .line 1936
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1938
    invoke-static {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideKeyguardManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideKeyguardManagerFactory;

    move-result-object v0

    .line 1937
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideKeyguardManagerProvider:Ljavax/inject/Provider;

    .line 1939
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDevicePolicyManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationClickNotifierProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v9, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1941
    invoke-static/range {v1 .. v10}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl_Factory;

    move-result-object v0

    .line 1940
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    .line 1952
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 1954
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController_Factory;

    move-result-object v0

    .line 1953
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 1961
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 1963
    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;

    move-result-object v0

    .line 1962
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    .line 1969
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    invoke-static {v0}, Lcom/android/systemui/media/MediaFeatureFlag_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaFeatureFlag_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaFeatureFlagProvider:Lcom/android/systemui/media/MediaFeatureFlag_Factory;

    .line 1970
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1972
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;

    move-result-object v0

    .line 1971
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationFilterProvider:Ljavax/inject/Provider;

    .line 1976
    invoke-static {}, Lcom/android/systemui/util/DeviceConfigProxy_Factory;->create()Lcom/android/systemui/util/DeviceConfigProxy_Factory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1975
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationSectionsFeatureManagerProvider:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;

    .line 1977
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    .line 1979
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider_Factory;

    move-result-object v0

    .line 1978
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->highPriorityProvider:Ljavax/inject/Provider;

    .line 1982
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationFilterProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationEntryManagerLoggerProvider:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger_Factory;

    iget-object v6, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationSectionsFeatureManagerProvider:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;

    iget-object v7, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    .line 1983
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationRankingManagerProvider:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager_Factory;

    .line 1993
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl_Factory;->create()Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardEnvironmentImplProvider:Ljavax/inject/Provider;

    .line 1996
    invoke-static {p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1995
    invoke-static {p1, v0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationMessagingUtilProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;

    .line 1997
    new-instance p1, Ldagger/internal/DelegateFactory;

    invoke-direct {p1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 1998
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationClickNotifierProvider:Ljavax/inject/Provider;

    .line 2000
    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideSmartReplyControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideSmartReplyControllerFactory;

    move-result-object p1

    .line 1999
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSmartReplyControllerProvider:Ljavax/inject/Provider;

    .line 2004
    new-instance p1, Ldagger/internal/DelegateFactory;

    invoke-direct {p1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    .line 2005
    iget-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 2007
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputUriController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/RemoteInputUriController_Factory;

    move-result-object p1

    .line 2006
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->remoteInputUriControllerProvider:Ljavax/inject/Provider;

    .line 2008
    iget-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLogcatEchoTrackerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2010
    invoke-static {p1, v0}, Lcom/android/systemui/log/dagger/LogModule_ProvideNotifInteractionLogBufferFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideNotifInteractionLogBufferFactory;

    move-result-object p1

    .line 2009
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotifInteractionLogBufferProvider:Ljavax/inject/Provider;

    .line 2013
    invoke-static {p1}, Lcom/android/systemui/statusbar/ActionClickLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/ActionClickLogger_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->actionClickLoggerProvider:Lcom/android/systemui/statusbar/ActionClickLogger_Factory;

    .line 2014
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSmartReplyControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 2023
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->remoteInputUriControllerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationClickNotifierProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->actionClickLoggerProvider:Lcom/android/systemui/statusbar/ActionClickLogger_Factory;

    .line 2016
    invoke-static/range {v0 .. v9}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;

    move-result-object p1

    .line 2015
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    .line 2028
    invoke-static {}, Lcom/android/systemui/util/time/SystemClockImpl_Factory;->create()Lcom/android/systemui/util/time/SystemClockImpl_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bindSystemClockProvider:Ljavax/inject/Provider;

    .line 2029
    iget-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    .line 2030
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifCollectionLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger_Factory;

    .line 2031
    invoke-static {}, Lcom/android/systemui/util/io/Files_Factory;->create()Lcom/android/systemui/util/io/Files_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->filesProvider:Ljavax/inject/Provider;

    .line 2032
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bindSystemClockProvider:Ljavax/inject/Provider;

    .line 2034
    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/dump/LogBufferEulogizer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dump/LogBufferEulogizer_Factory;

    move-result-object p1

    .line 2033
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->logBufferEulogizerProvider:Ljavax/inject/Provider;

    .line 2039
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bindSystemClockProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifCollectionLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger_Factory;

    iget-object v5, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2041
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection_Factory;

    move-result-object p1

    .line 2040
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifCollectionProvider:Ljavax/inject/Provider;

    .line 2048
    iget-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    .line 2049
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->shadeListBuilderLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger_Factory;

    .line 2050
    iget-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationClickNotifierProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 2052
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/NotificationInteractionTracker_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationInteractionTracker_Factory;

    move-result-object p1

    .line 2051
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationInteractionTrackerProvider:Ljavax/inject/Provider;

    .line 2054
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bindSystemClockProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->shadeListBuilderLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger_Factory;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2056
    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder_Factory;

    move-result-object p1

    .line 2055
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->shadeListBuilderProvider:Ljavax/inject/Provider;

    .line 2061
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifCollectionProvider:Ljavax/inject/Provider;

    .line 2063
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotifPipeline_Factory;

    move-result-object p1

    .line 2062
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifPipelineProvider:Ljavax/inject/Provider;

    .line 2064
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 2066
    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideCommonNotifCollectionFactory;

    move-result-object p1

    .line 2065
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommonNotifCollectionProvider:Ljavax/inject/Provider;

    .line 2070
    iget-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    .line 2071
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifBindPipelineLoggerProvider:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger_Factory;

    .line 2072
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommonNotifCollectionProvider:Ljavax/inject/Provider;

    .line 2077
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v1

    .line 2074
    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline_Factory;

    move-result-object p1

    .line 2073
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifBindPipelineProvider:Ljavax/inject/Provider;

    .line 2078
    iget-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommonNotifCollectionProvider:Ljavax/inject/Provider;

    .line 2079
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifRemoteViewCacheImplProvider:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl_Factory;

    .line 2081
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotifRemoteViewCacheProvider:Ljavax/inject/Provider;

    .line 2082
    iget-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2087
    invoke-static {}, Lcom/android/systemui/util/DeviceConfigProxy_Factory;->create()Lcom/android/systemui/util/DeviceConfigProxy_Factory;

    move-result-object v1

    .line 2084
    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SmartReplyConstants_Factory;

    move-result-object p1

    .line 2083
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    .line 2088
    iget-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2090
    invoke-static {p1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideLauncherAppsFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideLauncherAppsFactory;

    move-result-object p1

    .line 2089
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    .line 2091
    iget-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    .line 2093
    invoke-static {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/ConversationNotificationManager_Factory;

    move-result-object p1

    .line 2092
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->conversationNotificationManagerProvider:Ljavax/inject/Provider;

    .line 2098
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    .line 2099
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor_Factory;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->conversationNotificationProcessorProvider:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor_Factory;

    .line 2101
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotifRemoteViewCacheProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSmartReplyControllerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 2103
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater_Factory;

    move-result-object p1

    .line 2102
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationContentInflaterProvider:Ljavax/inject/Provider;

    .line 2111
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;->create()Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifInflationErrorManagerProvider:Ljavax/inject/Provider;

    .line 2112
    iget-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    .line 2113
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->rowContentBindStageLoggerProvider:Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger_Factory;

    return-void
.end method

.method private initialize2(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)V
    .locals 19

    move-object/from16 v0, p0

    .line 2118
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationContentInflaterProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifInflationErrorManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->rowContentBindStageLoggerProvider:Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger_Factory;

    .line 2120
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;

    move-result-object v1

    .line 2119
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->rowContentBindStageProvider:Ljavax/inject/Provider;

    .line 2125
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIDreamManagerFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIDreamManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIDreamManagerProvider:Ljavax/inject/Provider;

    .line 2127
    invoke-static {}, Lcom/android/systemui/power/EnhancedEstimatesImpl_Factory;->create()Lcom/android/systemui/power/EnhancedEstimatesImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->enhancedEstimatesImplProvider:Ljavax/inject/Provider;

    .line 2128
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 2129
    invoke-static {v1}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    .line 2130
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->enhancedEstimatesImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    .line 2132
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideBatteryControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideBatteryControllerFactory;

    move-result-object v1

    .line 2131
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    .line 2139
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIDreamManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAmbientDisplayConfigurationProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideAmbientDisplayConfigurationFactory;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationFilterProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    .line 2141
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl_Factory;

    move-result-object v1

    .line 2140
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    .line 2151
    new-instance v1, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)V

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->expandableNotificationRowComponentBuilderProvider:Ljavax/inject/Provider;

    .line 2158
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/icon/IconBuilder_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/icon/IconBuilder_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->iconBuilderProvider:Lcom/android/systemui/statusbar/notification/icon/IconBuilder_Factory;

    .line 2159
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommonNotifCollectionProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    .line 2160
    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->iconManagerProvider:Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;

    .line 2162
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->rowContentBindStageProvider:Ljavax/inject/Provider;

    .line 2164
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper_Factory;

    move-result-object v1

    .line 2163
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->lowPriorityInflationHelperProvider:Ljavax/inject/Provider;

    .line 2168
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationMessagingUtilProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifBindPipelineProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->rowContentBindStageProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    .line 2178
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask_Factory;->create()Lcom/android/systemui/statusbar/notification/row/RowInflaterTask_Factory;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->expandableNotificationRowComponentBuilderProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->iconManagerProvider:Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->lowPriorityInflationHelperProvider:Ljavax/inject/Provider;

    .line 2170
    invoke-static/range {v2 .. v12}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;

    move-result-object v1

    .line 2169
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationRowBinderImplProvider:Ljavax/inject/Provider;

    .line 2185
    invoke-static {}, Lcom/android/systemui/util/DeviceConfigProxy_Factory;->create()Lcom/android/systemui/util/DeviceConfigProxy_Factory;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2184
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController_Factory;

    move-result-object v1

    .line 2183
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->foregroundServiceDismissalFeatureControllerProvider:Ljavax/inject/Provider;

    .line 2186
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 2188
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationEntryManagerLoggerProvider:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger_Factory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationRankingManagerProvider:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager_Factory;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardEnvironmentImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationRowBinderImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    .line 2190
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationEntryManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationEntryManagerFactory;

    move-result-object v2

    .line 2189
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 2200
    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 2202
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2203
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->targetSdkResolverProvider:Ljavax/inject/Provider;

    .line 2207
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v1

    .line 2206
    invoke-static {v1}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainDelayableExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainDelayableExecutorFactory;

    move-result-object v1

    .line 2205
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 2208
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    .line 2209
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->groupCoalescerLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger_Factory;

    .line 2210
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bindSystemClockProvider:Ljavax/inject/Provider;

    .line 2211
    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->groupCoalescerProvider:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer_Factory;

    .line 2215
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    .line 2216
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->sharedCoordinatorLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger_Factory;

    .line 2217
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    .line 2218
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->hideNotifsForOtherUsersCoordinatorProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator_Factory;

    .line 2221
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2225
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->highPriorityProvider:Ljavax/inject/Provider;

    .line 2223
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator_Factory;

    move-result-object v1

    .line 2222
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardCoordinatorProvider:Ljavax/inject/Provider;

    .line 2232
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 2234
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator_Factory;

    move-result-object v1

    .line 2233
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->rankingCoordinatorProvider:Ljavax/inject/Provider;

    .line 2235
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2237
    invoke-static {v1, v2, v3}, Lcom/android/systemui/appops/AppOpsControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/appops/AppOpsControllerImpl_Factory;

    move-result-object v1

    .line 2236
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    .line 2239
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    .line 2241
    invoke-static {v2, v1, v3}, Lcom/android/systemui/ForegroundServiceController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ForegroundServiceController_Factory;

    move-result-object v1

    .line 2240
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    .line 2245
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 2247
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator_Factory;

    move-result-object v1

    .line 2246
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->appOpsCoordinatorProvider:Ljavax/inject/Provider;

    .line 2252
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIPackageManagerFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIPackageManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIPackageManagerProvider:Ljavax/inject/Provider;

    .line 2253
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    .line 2255
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator_Factory;

    move-result-object v1

    .line 2254
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->deviceProvisionedCoordinatorProvider:Ljavax/inject/Provider;

    .line 2258
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    .line 2259
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifCollectionProvider:Ljavax/inject/Provider;

    .line 2261
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator_Factory;

    move-result-object v1

    .line 2260
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bubbleCoordinatorProvider:Ljavax/inject/Provider;

    .line 2262
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationMessagingUtilProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideNotificationMessagingUtilFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->rowContentBindStageProvider:Ljavax/inject/Provider;

    .line 2264
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder_Factory;

    move-result-object v1

    .line 2263
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->headsUpViewBinderProvider:Ljavax/inject/Provider;

    .line 2266
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    .line 2268
    invoke-static {v2, v1, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator_Factory;

    move-result-object v1

    .line 2267
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->headsUpCoordinatorProvider:Ljavax/inject/Provider;

    .line 2274
    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator_Factory;->create()Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->conversationCoordinatorProvider:Ljavax/inject/Provider;

    .line 2275
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationsLogBufferProvider:Ljavax/inject/Provider;

    .line 2276
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->preparationCoordinatorLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger_Factory;

    .line 2277
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifCollectionProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifInflationErrorManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifPipelineProvider:Ljavax/inject/Provider;

    .line 2279
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl_Factory;

    move-result-object v1

    .line 2278
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifInflaterImplProvider:Ljavax/inject/Provider;

    .line 2284
    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn_Factory;->create()Lcom/android/systemui/statusbar/notification/collection/NotifViewBarn_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifViewBarnProvider:Ljavax/inject/Provider;

    .line 2285
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->preparationCoordinatorLoggerProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger_Factory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifInflaterImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifInflationErrorManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 2287
    invoke-static {v2, v3, v4, v1, v5}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator_Factory;

    move-result-object v1

    .line 2286
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->preparationCoordinatorProvider:Ljavax/inject/Provider;

    .line 2293
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaFeatureFlagProvider:Lcom/android/systemui/media/MediaFeatureFlag_Factory;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator_Factory;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaCoordinatorProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator_Factory;

    .line 2294
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->hideNotifsForOtherUsersCoordinatorProvider:Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator_Factory;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->rankingCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->appOpsCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->deviceProvisionedCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bubbleCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->headsUpCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->conversationCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->preparationCoordinatorProvider:Ljavax/inject/Provider;

    .line 2296
    invoke-static/range {v2 .. v13}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators_Factory;

    move-result-object v1

    .line 2295
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifCoordinatorsProvider:Ljavax/inject/Provider;

    .line 2309
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 2313
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;

    move-result-object v2

    .line 2311
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideVisualStabilityManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideVisualStabilityManagerFactory;

    move-result-object v1

    .line 2310
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    .line 2314
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifViewBarnProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 2316
    invoke-static {v2, v1, v3}, Lcom/android/systemui/statusbar/notification/collection/NotifViewManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/NotifViewManager_Factory;

    move-result-object v1

    .line 2315
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifViewManagerProvider:Ljavax/inject/Provider;

    .line 2320
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->groupCoalescerProvider:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer_Factory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifCollectionProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->shadeListBuilderProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifCoordinatorsProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifInflaterImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 2322
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer_Factory;

    move-result-object v1

    .line 2321
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifPipelineInitializerProvider:Ljavax/inject/Provider;

    .line 2332
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifBindPipelineProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->rowContentBindStageProvider:Ljavax/inject/Provider;

    .line 2333
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifBindPipelineInitializerProvider:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer_Factory;

    .line 2335
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->rowContentBindStageProvider:Ljavax/inject/Provider;

    .line 2338
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideNotificationGroupAlertTransferHelperFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule_ProvideNotificationGroupAlertTransferHelperFactory;

    move-result-object v1

    .line 2336
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;

    .line 2339
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->headsUpViewBinderProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    .line 2341
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController_Factory;

    move-result-object v1

    .line 2340
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->headsUpControllerProvider:Ljavax/inject/Provider;

    .line 2349
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotifInteractionLogBufferProvider:Ljavax/inject/Provider;

    .line 2350
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationClickerLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationClickerLoggerProvider:Lcom/android/systemui/statusbar/notification/NotificationClickerLogger_Factory;

    .line 2351
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    .line 2352
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->builderProvider:Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;

    .line 2354
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->targetSdkResolverProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifPipelineInitializerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifBindPipelineInitializerProvider:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer_Factory;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationRowBinderImplProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->remoteInputUriControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->headsUpControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->headsUpViewBinderProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    .line 2356
    invoke-static/range {v3 .. v18}, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;

    move-result-object v1

    .line 2355
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationsControllerImplProvider:Ljavax/inject/Provider;

    .line 2373
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    .line 2374
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationsControllerStubProvider:Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub_Factory;

    .line 2375
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationsControllerImplProvider:Ljavax/inject/Provider;

    .line 2377
    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;

    move-result-object v1

    .line 2376
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationsControllerProvider:Ljavax/inject/Provider;

    .line 2381
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2383
    invoke-static {v1, v2}, Lcom/android/systemui/tracing/ProtoTracer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/tracing/ProtoTracer_Factory;

    move-result-object v1

    .line 2382
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->protoTracerProvider:Ljavax/inject/Provider;

    .line 2384
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2386
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideCommandQueueFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideCommandQueueFactory;

    move-result-object v1

    .line 2385
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 2388
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2390
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl_Factory;

    move-result-object v1

    .line 2389
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    .line 2392
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 2394
    invoke-static {v2, v1, v3, v4}, Lcom/android/systemui/statusbar/phone/LightBarController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LightBarController_Factory;

    move-result-object v1

    .line 2393
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->lightBarControllerProvider:Ljavax/inject/Provider;

    .line 2400
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWindowManagerFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWindowManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 2404
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 2403
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;

    move-result-object v1

    .line 2402
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAutoHideControllerProvider:Ljavax/inject/Provider;

    .line 2408
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 2410
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl_Factory;

    move-result-object v1

    .line 2409
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    .line 2412
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 2414
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;

    move-result-object v1

    .line 2413
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    .line 2419
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationSectionsFeatureManagerProvider:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;

    .line 2421
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;

    move-result-object v1

    .line 2420
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    .line 2423
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 2425
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;

    move-result-object v1

    .line 2424
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    .line 2433
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 2435
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;

    move-result-object v1

    .line 2434
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 2439
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 2441
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier_Factory;

    move-result-object v1

    .line 2440
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;

    .line 2450
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 2452
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler_Factory;

    move-result-object v1

    .line 2451
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    .line 2456
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2458
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideAccessibilityManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideAccessibilityManagerFactory;

    move-result-object v1

    .line 2457
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    .line 2462
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    .line 2461
    invoke-static {v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideINotificationManagerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideINotificationManagerFactory;

    move-result-object v1

    .line 2460
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    .line 2463
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2465
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideShortcutManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideShortcutManagerFactory;

    move-result-object v1

    .line 2464
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideShortcutManagerProvider:Ljavax/inject/Provider;

    .line 2466
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    .line 2471
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog_Builder_Factory;->create()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog_Builder_Factory;

    move-result-object v3

    .line 2468
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;

    move-result-object v1

    .line 2467
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v12

    iput-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->channelEditorDialogControllerProvider:Ljavax/inject/Provider;

    .line 2472
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->highPriorityProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideShortcutManagerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCurrentUserContextTrackerProvider:Ljavax/inject/Provider;

    .line 2487
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController_Builder_Factory;->create()Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController_Builder_Factory;

    move-result-object v14

    iget-object v15, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    .line 2474
    invoke-static/range {v2 .. v16}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationGutsManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationGutsManagerFactory;

    move-result-object v1

    .line 2473
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationGutsManagerProvider:Ljavax/inject/Provider;

    .line 2490
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 2491
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->expansionStateLoggerProvider:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

    .line 2493
    invoke-static {}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationPanelLoggerFactory;->create()Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationPanelLoggerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationPanelLoggerProvider:Ljavax/inject/Provider;

    .line 2494
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->expansionStateLoggerProvider:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

    .line 2496
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;

    move-result-object v1

    .line 2495
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationLoggerProvider:Ljavax/inject/Provider;

    .line 2503
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->foregroundServiceDismissalFeatureControllerProvider:Ljavax/inject/Provider;

    .line 2505
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController_Factory;

    move-result-object v1

    .line 2504
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->foregroundServiceSectionControllerProvider:Ljavax/inject/Provider;

    .line 2508
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->rowContentBindStageProvider:Ljavax/inject/Provider;

    .line 2509
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/DynamicChildBindController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/DynamicChildBindController_Factory;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dynamicChildBindControllerProvider:Lcom/android/systemui/statusbar/notification/DynamicChildBindController_Factory;

    .line 2510
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->foregroundServiceSectionControllerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->lowPriorityInflationHelperProvider:Ljavax/inject/Provider;

    .line 2512
    invoke-static/range {v2 .. v14}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;

    move-result-object v1

    .line 2511
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    .line 2528
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideMetricsLoggerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideMetricsLoggerFactory;

    move-result-object v1

    .line 2527
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 2529
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    .line 2530
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$PresentJdkOptionalLazyProvider;->access$400(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    .line 2533
    invoke-static {v1}, Lcom/android/systemui/ActivityStarterDelegate_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/ActivityStarterDelegate_Factory;

    move-result-object v1

    .line 2532
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 2534
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 2536
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/UserSwitcherController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/UserSwitcherController_Factory;

    move-result-object v1

    .line 2535
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    .line 2543
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2545
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideConnectivityManagagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideConnectivityManagagerFactory;

    move-result-object v1

    .line 2544
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConnectivityManagagerProvider:Ljavax/inject/Provider;

    .line 2547
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2549
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideTelephonyManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideTelephonyManagerFactory;

    move-result-object v1

    .line 2548
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideTelephonyManagerProvider:Ljavax/inject/Provider;

    .line 2550
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2552
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideWifiManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideWifiManagerFactory;

    move-result-object v1

    .line 2551
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideWifiManagerProvider:Ljavax/inject/Provider;

    .line 2553
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2555
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideNetworkScoreManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideNetworkScoreManagerFactory;

    move-result-object v1

    .line 2554
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNetworkScoreManagerProvider:Ljavax/inject/Provider;

    .line 2556
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConnectivityManagagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideTelephonyManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideWifiManagerProvider:Ljavax/inject/Provider;

    .line 2558
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;

    move-result-object v1

    .line 2557
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 2567
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 2569
    invoke-static {v1, v2}, Lcom/android/systemui/colorextraction/SysuiColorExtractor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/colorextraction/SysuiColorExtractor_Factory;

    move-result-object v1

    .line 2568
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    .line 2571
    invoke-static {}, Lcom/android/systemui/keyguard/ScreenLifecycle_Factory;->create()Lcom/android/systemui/keyguard/ScreenLifecycle_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 2572
    invoke-static {}, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->create()Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 2573
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2574
    invoke-static {v1}, Lcom/android/systemui/statusbar/VibratorHelper_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/VibratorHelper_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->vibratorHelperProvider:Ljavax/inject/Provider;

    .line 2578
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 2577
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;

    move-result-object v1

    .line 2576
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    .line 2582
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2583
    invoke-static {v1}, Lcom/android/systemui/assist/AssistModule_ProvideAssistUtilsFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistModule_ProvideAssistUtilsFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAssistUtilsProvider:Ljavax/inject/Provider;

    .line 2585
    invoke-static {}, Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;->create()Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundHandlerProvider:Ljavax/inject/Provider;

    .line 2586
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    .line 2587
    invoke-static {v1}, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAssistHandleViewControllerProvider:Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;

    .line 2589
    invoke-static {}, Lcom/android/systemui/assist/DeviceConfigHelper_Factory;->create()Lcom/android/systemui/assist/DeviceConfigHelper_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->deviceConfigHelperProvider:Ljavax/inject/Provider;

    .line 2591
    invoke-static {}, Lcom/android/systemui/assist/AssistHandleOffBehavior_Factory;->create()Lcom/android/systemui/assist/AssistHandleOffBehavior_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->assistHandleOffBehaviorProvider:Ljavax/inject/Provider;

    .line 2593
    invoke-static {}, Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;->create()Lcom/android/systemui/dagger/SystemUIModule_ProvideSysUiStateFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSysUiStateProvider:Ljavax/inject/Provider;

    .line 2594
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 2596
    invoke-static {v2, v3, v1}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;

    move-result-object v1

    .line 2595
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->assistHandleLikeHomeBehaviorProvider:Ljavax/inject/Provider;

    .line 2601
    invoke-static {}, Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;->create()Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSystemClockProvider:Ljavax/inject/Provider;

    .line 2605
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    .line 2604
    invoke-static {v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideActivityManagerWrapperFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideActivityManagerWrapperFactory;

    move-result-object v1

    .line 2603
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    .line 2606
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 2608
    invoke-static {v1, v2, v3}, Lcom/android/systemui/wm/DisplayController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wm/DisplayController_Factory;

    move-result-object v1

    .line 2607
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->displayControllerProvider:Ljavax/inject/Provider;

    .line 2611
    invoke-static {}, Lcom/android/systemui/util/FloatingContentCoordinator_Factory;->create()Lcom/android/systemui/util/FloatingContentCoordinator_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->floatingContentCoordinatorProvider:Ljavax/inject/Provider;

    .line 2612
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    invoke-static {v1}, Lcom/android/systemui/pip/PipSnapAlgorithm_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/pip/PipSnapAlgorithm_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pipSnapAlgorithmProvider:Lcom/android/systemui/pip/PipSnapAlgorithm_Factory;

    .line 2613
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->displayControllerProvider:Ljavax/inject/Provider;

    .line 2615
    invoke-static {v2, v1, v3}, Lcom/android/systemui/pip/PipBoundsHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/PipBoundsHandler_Factory;

    move-result-object v1

    .line 2614
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pipBoundsHandlerProvider:Ljavax/inject/Provider;

    .line 2617
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 2619
    invoke-static {v1, v2}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper_Factory;

    move-result-object v1

    .line 2618
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private initialize3(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)V
    .locals 79

    move-object/from16 v0, p0

    .line 2625
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->contextComponentResolverProvider:Ljavax/inject/Provider;

    .line 2626
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2627
    invoke-static {v2, v1}, Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideRecentsImplProvider:Lcom/android/systemui/recents/RecentsModule_ProvideRecentsImplFactory;

    .line 2629
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 2631
    invoke-static {v2, v1, v3}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideRecentsFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideRecentsFactory;

    move-result-object v1

    .line 2630
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideRecentsProvider:Ljavax/inject/Provider;

    .line 2634
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$PresentJdkOptionalLazyProvider;->access$400(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->optionalOfLazyOfRecentsProvider:Ljavax/inject/Provider;

    .line 2635
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->displayControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 2637
    invoke-static {v1, v2, v3}, Lcom/android/systemui/wm/SystemWindows_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wm/SystemWindows_Factory;

    move-result-object v1

    .line 2636
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->systemWindowsProvider:Ljavax/inject/Provider;

    .line 2639
    invoke-static {}, Lcom/android/systemui/TransactionPool_Factory;->create()Lcom/android/systemui/TransactionPool_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->transactionPoolProvider:Ljavax/inject/Provider;

    .line 2640
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->systemWindowsProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->displayControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    .line 2642
    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/wm/DisplayImeController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wm/DisplayImeController_Factory;

    move-result-object v1

    .line 2641
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->displayImeControllerProvider:Ljavax/inject/Provider;

    .line 2647
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->optionalOfLazyOfRecentsProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->displayControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->systemWindowsProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->transactionPoolProvider:Ljavax/inject/Provider;

    .line 2649
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/stackdivider/DividerModule_ProvideDividerFactory;

    move-result-object v1

    .line 2648
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDividerProvider:Ljavax/inject/Provider;

    .line 2658
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    .line 2659
    invoke-static {v1, v2}, Lcom/android/systemui/pip/PipAnimationController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/PipAnimationController_Factory;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pipAnimationControllerProvider:Lcom/android/systemui/pip/PipAnimationController_Factory;

    .line 2661
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pipBoundsHandlerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDividerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->displayControllerProvider:Ljavax/inject/Provider;

    .line 2663
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/pip/PipTaskOrganizer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/PipTaskOrganizer_Factory;

    move-result-object v1

    .line 2662
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pipTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 2670
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->displayControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->floatingContentCoordinatorProvider:Ljavax/inject/Provider;

    .line 2677
    invoke-static {}, Lcom/android/systemui/util/DeviceConfigProxy_Factory;->create()Lcom/android/systemui/util/DeviceConfigProxy_Factory;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pipBoundsHandlerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pipSnapAlgorithmProvider:Lcom/android/systemui/pip/PipSnapAlgorithm_Factory;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pipTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSysUiStateProvider:Ljavax/inject/Provider;

    .line 2672
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/pip/phone/PipManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/phone/PipManager_Factory;

    move-result-object v1

    .line 2671
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pipManagerProvider:Ljavax/inject/Provider;

    .line 2682
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 2684
    invoke-static {v2, v3, v1}, Lcom/android/systemui/pip/PipUI_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/pip/PipUI_Factory;

    move-result-object v1

    .line 2683
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pipUIProvider:Ljavax/inject/Provider;

    .line 2688
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDividerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$PresentJdkOptionalInstanceProvider;->access$500(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->optionalOfDividerProvider:Ljavax/inject/Provider;

    .line 2689
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSysUiStateProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pipUIProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 2691
    invoke-static/range {v2 .. v11}, Lcom/android/systemui/recents/OverviewProxyService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/OverviewProxyService_Factory;

    move-result-object v1

    .line 2690
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    .line 2703
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvidePackageManagerWrapperFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvidePackageManagerWrapperFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePackageManagerWrapperProvider:Ljavax/inject/Provider;

    .line 2704
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSystemClockProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->deviceConfigHelperProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSysUiStateProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bootCompleteCacheImplProvider:Ljavax/inject/Provider;

    .line 2706
    invoke-static/range {v2 .. v12}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;

    move-result-object v1

    .line 2705
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->assistHandleReminderExpBehaviorProvider:Ljavax/inject/Provider;

    .line 2718
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->assistHandleOffBehaviorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->assistHandleLikeHomeBehaviorProvider:Ljavax/inject/Provider;

    .line 2720
    invoke-static {v2, v3, v1}, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;

    move-result-object v1

    .line 2719
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAssistHandleBehaviorControllerMapProvider:Ljavax/inject/Provider;

    .line 2724
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAssistUtilsProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundHandlerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAssistHandleViewControllerProvider:Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleViewControllerFactory;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->deviceConfigHelperProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2726
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;

    move-result-object v1

    .line 2725
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;

    .line 2736
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bootCompleteCacheImplProvider:Ljavax/inject/Provider;

    .line 2738
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/assist/PhoneStateMonitor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/PhoneStateMonitor_Factory;

    move-result-object v1

    .line 2737
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->phoneStateMonitorProvider:Ljavax/inject/Provider;

    .line 2743
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAssistUtilsProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;

    .line 2745
    invoke-static {v2, v3, v4, v1, v5}, Lcom/android/systemui/assist/AssistLogger_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistLogger_Factory;

    move-result-object v1

    .line 2744
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->assistLoggerProvider:Ljavax/inject/Provider;

    .line 2751
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2753
    invoke-static {v2, v1}, Lcom/android/systemui/assist/ui/DefaultUiController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/ui/DefaultUiController_Factory;

    move-result-object v1

    .line 2752
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->defaultUiControllerProvider:Ljavax/inject/Provider;

    .line 2754
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAssistUtilsProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->phoneStateMonitorProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSysUiStateProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->assistLoggerProvider:Ljavax/inject/Provider;

    .line 2756
    invoke-static/range {v2 .. v12}, Lcom/android/systemui/assist/AssistManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistManager_Factory;

    move-result-object v1

    .line 2755
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->assistManagerProvider:Ljavax/inject/Provider;

    .line 2769
    invoke-static {}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;->create()Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    .line 2770
    new-instance v5, Ldagger/internal/DelegateFactory;

    invoke-direct {v5}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    .line 2771
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->assistManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    .line 2773
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/ShadeControllerImpl_Factory;

    move-result-object v1

    .line 2772
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->shadeControllerImplProvider:Ljavax/inject/Provider;

    .line 2782
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2783
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/AccessibilityController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/AccessibilityController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->accessibilityControllerProvider:Ljavax/inject/Provider;

    .line 2784
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    invoke-static {v1}, Lcom/android/systemui/util/wakelock/WakeLock_Builder_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/wakelock/WakeLock_Builder_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->builderProvider2:Lcom/android/systemui/util/wakelock/WakeLock_Builder_Factory;

    .line 2786
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIBatteryStatsFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIBatteryStatsFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIBatteryStatsProvider:Ljavax/inject/Provider;

    .line 2787
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->builderProvider2:Lcom/android/systemui/util/wakelock/WakeLock_Builder_Factory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDevicePolicyManagerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    .line 2789
    invoke-static/range {v2 .. v11}, Lcom/android/systemui/statusbar/KeyguardIndicationController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/KeyguardIndicationController_Factory;

    move-result-object v1

    .line 2788
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardIndicationControllerProvider:Ljavax/inject/Provider;

    .line 2800
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLockPatternUtilsProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->shadeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->accessibilityControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    iget-object v15, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    .line 2802
    invoke-static/range {v2 .. v15}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LockscreenLockIconController_Factory;

    move-result-object v1

    .line 2801
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->lockscreenLockIconControllerProvider:Ljavax/inject/Provider;

    .line 2817
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2819
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideAlarmManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideAlarmManagerFactory;

    move-result-object v1

    .line 2818
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    .line 2820
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    invoke-static {v1}, Lcom/android/systemui/util/wakelock/DelayedWakeLock_Builder_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/wakelock/DelayedWakeLock_Builder_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->builderProvider3:Lcom/android/systemui/util/wakelock/DelayedWakeLock_Builder_Factory;

    .line 2821
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2823
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/BlurUtils_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/BlurUtils_Factory;

    move-result-object v1

    .line 2822
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->blurUtilsProvider:Ljavax/inject/Provider;

    .line 2824
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->lightBarControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->builderProvider3:Lcom/android/systemui/util/wakelock/DelayedWakeLock_Builder_Factory;

    .line 2832
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->blurUtilsProvider:Ljavax/inject/Provider;

    .line 2826
    invoke-static/range {v2 .. v11}, Lcom/android/systemui/statusbar/phone/ScrimController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/ScrimController_Factory;

    move-result-object v1

    .line 2825
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->scrimControllerProvider:Ljavax/inject/Provider;

    .line 2837
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2839
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;

    move-result-object v1

    .line 2838
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideKeyguardLiftControllerProvider:Ljavax/inject/Provider;

    .line 2845
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2846
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideWallpaperManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideWallpaperManagerFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideWallpaperManagerProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideWallpaperManagerFactory;

    .line 2851
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    .line 2849
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;

    move-result-object v1

    .line 2848
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->lockscreenWallpaperProvider:Ljavax/inject/Provider;

    .line 2856
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLogcatEchoTrackerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2858
    invoke-static {v1, v2}, Lcom/android/systemui/log/dagger/LogModule_ProvideDozeLogBufferFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideDozeLogBufferFactory;

    move-result-object v1

    .line 2857
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDozeLogBufferProvider:Ljavax/inject/Provider;

    .line 2860
    invoke-static {v1}, Lcom/android/systemui/doze/DozeLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeLogger_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeLoggerProvider:Lcom/android/systemui/doze/DozeLogger_Factory;

    .line 2861
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2863
    invoke-static {v2, v3, v1}, Lcom/android/systemui/doze/DozeLog_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeLog_Factory;

    move-result-object v1

    .line 2862
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeLogProvider:Ljavax/inject/Provider;

    .line 2865
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 2867
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;

    move-result-object v1

    .line 2866
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeScrimControllerProvider:Ljavax/inject/Provider;

    .line 2868
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->scrimControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->shadeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 2879
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideHandlerFactory;

    move-result-object v10

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    iget-object v13, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    .line 2870
    invoke-static/range {v2 .. v16}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController_Factory;

    move-result-object v1

    .line 2869
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object v10, v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    .line 2886
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeLogProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->scrimControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->assistManagerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeScrimControllerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->lockscreenLockIconControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    .line 2888
    invoke-static/range {v2 .. v19}, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;

    move-result-object v1

    .line 2887
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeServiceHostProvider:Ljavax/inject/Provider;

    .line 2907
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    .line 2908
    invoke-static {v1, v2}, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/ScreenPinningRequest_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->screenPinningRequestProvider:Lcom/android/systemui/recents/ScreenPinningRequest_Factory;

    .line 2910
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->ringerModeTrackerImplProvider:Ljavax/inject/Provider;

    .line 2912
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/volume/VolumeDialogControllerImpl_Factory;

    move-result-object v1

    .line 2911
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->volumeDialogControllerImplProvider:Ljavax/inject/Provider;

    .line 2917
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    .line 2919
    invoke-static {v2, v3, v1}, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/volume/VolumeDialogComponent_Factory;

    move-result-object v1

    .line 2918
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->volumeDialogComponentProvider:Ljavax/inject/Provider;

    .line 2923
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideRecentsProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$PresentJdkOptionalInstanceProvider;->access$500(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->optionalOfRecentsProvider:Ljavax/inject/Provider;

    .line 2924
    new-instance v1, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$2;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)V

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarComponentBuilderProvider:Ljavax/inject/Provider;

    .line 2931
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 2933
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;

    move-result-object v1

    .line 2932
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->lightsOutNotifControllerProvider:Ljavax/inject/Provider;

    .line 2937
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->shadeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->actionClickLoggerProvider:Lcom/android/systemui/statusbar/ActionClickLogger_Factory;

    .line 2939
    invoke-static/range {v2 .. v11}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback_Factory;

    move-result-object v1

    .line 2938
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;

    .line 2950
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 2951
    invoke-static {v1}, Lcom/android/systemui/ActivityIntentHelper_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/ActivityIntentHelper_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityIntentHelperProvider:Ljavax/inject/Provider;

    .line 2952
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotifInteractionLogBufferProvider:Ljavax/inject/Provider;

    .line 2953
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger_Factory;

    move-result-object v1

    move-object/from16 v30, v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarNotificationActivityStarterLoggerProvider:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger_Factory;

    .line 2955
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifCollectionProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationClickNotifierProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideKeyguardManagerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIDreamManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->assistManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->shadeControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLockPatternUtilsProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityIntentHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v1

    .line 2957
    invoke-static/range {v2 .. v30}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;

    move-result-object v1

    .line 2956
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->builderProvider4:Ljavax/inject/Provider;

    .line 2987
    invoke-static/range {p0 .. p0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->systemUIRootComponentProvider:Ljavax/inject/Provider;

    .line 2990
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/InjectionInflationController_Factory;

    move-result-object v1

    .line 2989
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    .line 2991
    new-instance v1, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$3;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)V

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationRowComponentBuilderProvider:Ljavax/inject/Provider;

    .line 2998
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->lockscreenLockIconControllerProvider:Ljavax/inject/Provider;

    .line 3000
    invoke-static {v2, v3, v1, v4}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/SuperStatusBarViewFactory_Factory;

    move-result-object v1

    .line 2999
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->superStatusBarViewFactoryProvider:Ljavax/inject/Provider;

    .line 3005
    invoke-static {}, Lcom/android/systemui/InitController_Factory;->create()Lcom/android/systemui/InitController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->initControllerProvider:Ljavax/inject/Provider;

    .line 3008
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideTimeTickHandlerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideTimeTickHandlerFactory;

    move-result-object v1

    .line 3007
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideTimeTickHandlerProvider:Ljavax/inject/Provider;

    .line 3009
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 3010
    invoke-static {v1}, Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pluginDependencyProvider:Ljavax/inject/Provider;

    .line 3011
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil_Factory;->create()Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    .line 3012
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3013
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    .line 3014
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3015
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/CastControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    .line 3016
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    .line 3018
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/HotspotControllerImpl_Factory;

    move-result-object v1

    .line 3017
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    .line 3020
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    .line 3022
    invoke-static {v1, v2}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideLocalBluetoothControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideLocalBluetoothControllerFactory;

    move-result-object v1

    .line 3021
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    .line 3024
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 3029
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    .line 3026
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;

    move-result-object v1

    .line 3025
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    .line 3031
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3032
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    .line 3033
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3034
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    .line 3038
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 3037
    invoke-static {v1, v2}, Lcom/android/systemui/dagger/DependencyProvider_ProvideDataSaverControllerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideDataSaverControllerFactory;

    move-result-object v1

    .line 3036
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    .line 3039
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3041
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;

    move-result-object v1

    .line 3040
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    .line 3045
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3049
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bootCompleteCacheImplProvider:Ljavax/inject/Provider;

    .line 3047
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;

    move-result-object v1

    .line 3046
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    .line 3053
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3054
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;

    .line 3055
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3057
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideTelecomManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideTelecomManagerFactory;

    move-result-object v1

    .line 3056
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideTelecomManagerProvider:Ljavax/inject/Provider;

    .line 3058
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3059
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideDisplayIdFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideDisplayIdFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDisplayIdProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideDisplayIdFactory;

    .line 3062
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3061
    invoke-static {v1, v2}, Lcom/android/systemui/dagger/DependencyProvider_ProvideSharePreferencesFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideSharePreferencesFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSharePreferencesProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideSharePreferencesFactory;

    .line 3063
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    invoke-static {v1}, Lcom/android/systemui/util/time/DateFormatUtil_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/time/DateFormatUtil_Factory;

    move-result-object v1

    move-object/from16 v27, v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dateFormatUtilProvider:Lcom/android/systemui/util/time/DateFormatUtil_Factory;

    .line 3064
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIActivityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->recordingControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideTelecomManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDisplayIdProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideDisplayIdFactory;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSharePreferencesProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideSharePreferencesFactory;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->ringerModeTrackerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    .line 3065
    invoke-static/range {v2 .. v28}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->phoneStatusBarPolicyProvider:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy_Factory;

    .line 3095
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvidesChoreographerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvidesChoreographerFactory;

    move-result-object v1

    .line 3094
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesChoreographerProvider:Ljavax/inject/Provider;

    .line 3096
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->blurUtilsProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideWallpaperManagerProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideWallpaperManagerFactory;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 3098
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/statusbar/NotificationShadeDepthController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationShadeDepthController_Factory;

    move-result-object v1

    .line 3097
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    .line 3108
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 3110
    invoke-static {v1}, Lcom/android/systemui/keyguard/DismissCallbackRegistry_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/DismissCallbackRegistry_Factory;

    move-result-object v1

    .line 3109
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dismissCallbackRegistryProvider:Ljavax/inject/Provider;

    .line 3111
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    .line 3113
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager_Factory;

    move-result-object v1

    .line 3112
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v78, v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;

    .line 3118
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 3119
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationsControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->lightBarControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAutoHideControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationGutsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v35, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->vibratorHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v36, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v37, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v38, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v39, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v40, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v41, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->assistManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v42, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v43, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v44, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->lockscreenLockIconControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v45, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    move-object/from16 v46, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->scrimControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v47, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideKeyguardLiftControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v48, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->lockscreenWallpaperProvider:Ljavax/inject/Provider;

    move-object/from16 v49, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v50, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeServiceHostProvider:Ljavax/inject/Provider;

    move-object/from16 v51, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v52, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->screenPinningRequestProvider:Lcom/android/systemui/recents/ScreenPinningRequest_Factory;

    move-object/from16 v53, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeScrimControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v54, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->volumeDialogComponentProvider:Ljavax/inject/Provider;

    move-object/from16 v55, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    move-object/from16 v56, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->optionalOfRecentsProvider:Ljavax/inject/Provider;

    move-object/from16 v57, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarComponentBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v58, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v59, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->optionalOfDividerProvider:Ljavax/inject/Provider;

    move-object/from16 v60, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->lightsOutNotifControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v61, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->builderProvider4:Ljavax/inject/Provider;

    move-object/from16 v62, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->shadeControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v63, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->superStatusBarViewFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v64, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v65, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesViewMediatorCallbackProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;

    move-object/from16 v66, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->initControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v67, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    move-object/from16 v68, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideTimeTickHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v69, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pluginDependencyProvider:Ljavax/inject/Provider;

    move-object/from16 v70, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    move-object/from16 v71, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->extensionControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v72, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v73, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->phoneStatusBarPolicyProvider:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy_Factory;

    move-object/from16 v74, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardIndicationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v75, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v76, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dismissCallbackRegistryProvider:Ljavax/inject/Provider;

    move-object/from16 v77, v1

    .line 3121
    invoke-static/range {v2 .. v78}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;

    move-result-object v1

    .line 3120
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    move-object/from16 v2, p1

    .line 3199
    invoke-virtual {v2, v1}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3201
    invoke-static {}, Lcom/android/systemui/statusbar/MediaArtworkProcessor_Factory;->create()Lcom/android/systemui/statusbar/MediaArtworkProcessor_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaArtworkProcessorProvider:Ljavax/inject/Provider;

    .line 3202
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3203
    invoke-static {v1}, Lcom/android/systemui/media/MediaControllerFactory_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaControllerFactory_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaControllerFactoryProvider:Lcom/android/systemui/media/MediaControllerFactory_Factory;

    .line 3204
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 3206
    invoke-static {v1, v2}, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaTimeoutListener_Factory;

    move-result-object v1

    .line 3205
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaTimeoutListenerProvider:Ljavax/inject/Provider;

    .line 3208
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 3210
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/media/MediaResumeListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaResumeListener_Factory;

    move-result-object v1

    .line 3209
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaResumeListenerProvider:Ljavax/inject/Provider;

    .line 3215
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaControllerFactoryProvider:Lcom/android/systemui/media/MediaControllerFactory_Factory;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaTimeoutListenerProvider:Ljavax/inject/Provider;

    .line 3217
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/media/MediaDataManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaDataManager_Factory;

    move-result-object v1

    .line 3216
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaDataManagerProvider:Ljavax/inject/Provider;

    .line 3226
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 3228
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaArtworkProcessorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 3238
    invoke-static {}, Lcom/android/systemui/util/DeviceConfigProxy_Factory;->create()Lcom/android/systemui/util/DeviceConfigProxy_Factory;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaDataManagerProvider:Ljavax/inject/Provider;

    .line 3230
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationMediaManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationMediaManagerFactory;

    move-result-object v2

    .line 3229
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    .line 3240
    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3242
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 3244
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesViewMediatorCallbackProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLockPatternUtilsProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    .line 3246
    invoke-static/range {v2 .. v12}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager_Factory;

    move-result-object v2

    .line 3245
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    .line 3258
    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3260
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3262
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideTrustManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideTrustManagerFactory;

    move-result-object v1

    .line 3261
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideTrustManagerProvider:Ljavax/inject/Provider;

    .line 3263
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 3265
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLockPatternUtilsProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dismissCallbackRegistryProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 3279
    invoke-static {}, Lcom/android/systemui/util/DeviceConfigProxy_Factory;->create()Lcom/android/systemui/util/DeviceConfigProxy_Factory;

    move-result-object v13

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 3267
    invoke-static/range {v2 .. v14}, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;

    move-result-object v2

    .line 3266
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    .line 3281
    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3282
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 3284
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIActivityManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 3286
    invoke-static/range {v2 .. v11}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController_Factory;

    move-result-object v2

    .line 3285
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    .line 3297
    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3299
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3300
    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleData_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/BubbleData_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bubbleDataProvider:Ljavax/inject/Provider;

    .line 3301
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    .line 3302
    invoke-static {v1}, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bubbleVolatileRepositoryProvider:Ljavax/inject/Provider;

    .line 3303
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3304
    invoke-static {v1}, Lcom/android/systemui/bubbles/storage/BubblePersistentRepository_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/storage/BubblePersistentRepository_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bubblePersistentRepositoryProvider:Ljavax/inject/Provider;

    .line 3305
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bubbleVolatileRepositoryProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    .line 3307
    invoke-static {v2, v1, v3}, Lcom/android/systemui/bubbles/BubbleDataRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/BubbleDataRepository_Factory;

    move-result-object v1

    .line 3306
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v17, v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bubbleDataRepositoryProvider:Ljavax/inject/Provider;

    .line 3311
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 3313
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->shadeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bubbleDataProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->floatingContentCoordinatorProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSysUiStateProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    .line 3315
    invoke-static/range {v2 .. v22}, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;

    move-result-object v1

    .line 3314
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v2, p1

    .line 3337
    invoke-virtual {v2, v1}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3338
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newBubbleControllerProvider:Ljavax/inject/Provider;

    .line 3339
    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleOverflowActivity_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/BubbleOverflowActivity_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bubbleOverflowActivityProvider:Lcom/android/systemui/bubbles/BubbleOverflowActivity_Factory;

    .line 3340
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3341
    invoke-static {v1}, Lcom/android/systemui/usb/UsbDebuggingActivity_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/usb/UsbDebuggingActivity_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->usbDebuggingActivityProvider:Lcom/android/systemui/usb/UsbDebuggingActivity_Factory;

    .line 3342
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3343
    invoke-static {v1}, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->usbDebuggingSecondaryUserActivityProvider:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity_Factory;

    return-void
.end method

.method private initialize4(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)V
    .locals 34

    move-object/from16 v0, p0

    .line 3348
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 3350
    invoke-static {v1}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideExecutorFactory;

    move-result-object v1

    .line 3349
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideExecutorProvider:Ljavax/inject/Provider;

    .line 3351
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3353
    invoke-static {v2, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsListingControllerImpl_Factory;

    move-result-object v1

    .line 3352
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    .line 3355
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 3357
    invoke-static {v1}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundDelayableExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundDelayableExecutorFactory;

    move-result-object v1

    .line 3356
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 3359
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    .line 3360
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 3362
    invoke-static {v1}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideDelayableExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideDelayableExecutorFactory;

    move-result-object v1

    .line 3361
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 3363
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->globalActionsComponentProvider:Ljavax/inject/Provider;

    .line 3364
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3366
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideVibratorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideVibratorFactory;

    move-result-object v1

    .line 3365
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideVibratorProvider:Ljavax/inject/Provider;

    .line 3367
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3369
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvidePackageManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvidePackageManagerFactory;

    move-result-object v1

    .line 3368
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    .line 3372
    invoke-static {v1}, Lcom/android/systemui/controls/dagger/ControlsModule_ProvidesControlsFeatureEnabledFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/controls/dagger/ControlsModule_ProvidesControlsFeatureEnabledFactory;

    move-result-object v1

    .line 3371
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesControlsFeatureEnabledProvider:Ljavax/inject/Provider;

    .line 3374
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsUiControllerImplProvider:Ljavax/inject/Provider;

    .line 3375
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesControlsFeatureEnabledProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    .line 3377
    invoke-static {v2, v3, v1, v4}, Lcom/android/systemui/controls/dagger/ControlsComponent_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/dagger/ControlsComponent_Factory;

    move-result-object v1

    .line 3376
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v32, v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsComponentProvider:Ljavax/inject/Provider;

    .line 3382
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->globalActionsComponentProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAudioManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIDreamManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDevicePolicyManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLockPatternUtilsProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideLockPatternUtilsFactory;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConnectivityManagagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideTelephonyManagerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideVibratorProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideTrustManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIActivityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideTelecomManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->ringerModeTrackerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSysUiStateProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCurrentUserContextTrackerProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v1

    .line 3383
    invoke-static/range {v2 .. v33}, Lcom/android/systemui/globalactions/GlobalActionsDialog_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/globalactions/GlobalActionsDialog_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->globalActionsDialogProvider:Lcom/android/systemui/globalactions/GlobalActionsDialog_Factory;

    .line 3416
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->blurUtilsProvider:Ljavax/inject/Provider;

    .line 3417
    invoke-static {v2, v3, v1, v4}, Lcom/android/systemui/globalactions/GlobalActionsImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/globalactions/GlobalActionsImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->globalActionsImplProvider:Lcom/android/systemui/globalactions/GlobalActionsImpl_Factory;

    .line 3422
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->globalActionsComponentProvider:Ljavax/inject/Provider;

    check-cast v2, Ldagger/internal/DelegateFactory;

    .line 3424
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->extensionControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    .line 3426
    invoke-static {v3, v4, v5, v1, v6}, Lcom/android/systemui/globalactions/GlobalActionsComponent_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/globalactions/GlobalActionsComponent_Factory;

    move-result-object v1

    .line 3425
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->globalActionsComponentProvider:Ljavax/inject/Provider;

    .line 3432
    invoke-virtual {v2, v1}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3433
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->globalActionsComponentProvider:Ljavax/inject/Provider;

    .line 3435
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;

    move-result-object v1

    .line 3434
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlActionCoordinatorImplProvider:Ljavax/inject/Provider;

    .line 3442
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsUiControllerImplProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 3444
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSharePreferencesProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideSharePreferencesFactory;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->shadeControllerImplProvider:Ljavax/inject/Provider;

    .line 3446
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/ui/ControlsUiControllerImpl_Factory;

    move-result-object v2

    .line 3445
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsUiControllerImplProvider:Ljavax/inject/Provider;

    .line 3456
    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3457
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    .line 3459
    invoke-static {v1, v2, v3}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl_Factory;

    move-result-object v1

    .line 3458
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsBindingControllerImplProvider:Ljavax/inject/Provider;

    .line 3463
    invoke-static {}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->absentJdkOptionalProvider()Ljavax/inject/Provider;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->optionalOfControlsFavoritePersistenceWrapperProvider:Ljavax/inject/Provider;

    .line 3464
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 3466
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsUiControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsBindingControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 3468
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/controls/controller/ControlsControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/controller/ControlsControllerImpl_Factory;

    move-result-object v2

    .line 3467
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    .line 3477
    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3478
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->globalActionsComponentProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3479
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsProviderSelectorActivityProvider:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity_Factory;

    .line 3486
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->globalActionsComponentProvider:Ljavax/inject/Provider;

    .line 3487
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsFavoritingActivity_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsFavoritingActivityProvider:Lcom/android/systemui/controls/management/ControlsFavoritingActivity_Factory;

    .line 3493
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->globalActionsComponentProvider:Ljavax/inject/Provider;

    .line 3494
    invoke-static {v1, v2, v3}, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsEditingActivityProvider:Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;

    .line 3498
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsListingControllerImplProvider:Ljavax/inject/Provider;

    .line 3499
    invoke-static {v1, v2, v3}, Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsRequestDialogProvider:Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;

    const/16 v1, 0xc

    .line 3504
    invoke-static {v1}, Ldagger/internal/MapProviderFactory;->builder(I)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/tuner/TunerActivity;

    .line 3505
    invoke-static {}, Lcom/android/systemui/tuner/TunerActivity_Factory;->create()Lcom/android/systemui/tuner/TunerActivity_Factory;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/ForegroundServicesDialog;

    .line 3508
    invoke-static {}, Lcom/android/systemui/ForegroundServicesDialog_Factory;->create()Lcom/android/systemui/ForegroundServicesDialog_Factory;

    move-result-object v3

    .line 3506
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/keyguard/WorkLockActivity;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->workLockActivityProvider:Lcom/android/systemui/keyguard/WorkLockActivity_Factory;

    .line 3509
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/settings/BrightnessDialog;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->brightnessDialogProvider:Lcom/android/systemui/settings/BrightnessDialog_Factory;

    .line 3510
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/screenrecord/ScreenRecordDialog;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->screenRecordDialogProvider:Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;

    .line 3511
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/bubbles/BubbleOverflowActivity;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bubbleOverflowActivityProvider:Lcom/android/systemui/bubbles/BubbleOverflowActivity_Factory;

    .line 3512
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/usb/UsbDebuggingActivity;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->usbDebuggingActivityProvider:Lcom/android/systemui/usb/UsbDebuggingActivity_Factory;

    .line 3513
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->usbDebuggingSecondaryUserActivityProvider:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity_Factory;

    .line 3514
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsProviderSelectorActivityProvider:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity_Factory;

    .line 3517
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsFavoritingActivityProvider:Lcom/android/systemui/controls/management/ControlsFavoritingActivity_Factory;

    .line 3520
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/controls/management/ControlsEditingActivity;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsEditingActivityProvider:Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;

    .line 3521
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/controls/management/ControlsRequestDialog;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->controlsRequestDialogProvider:Lcom/android/systemui/controls/management/ControlsRequestDialog_Factory;

    .line 3522
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    .line 3523
    invoke-virtual {v1}, Ldagger/internal/MapProviderFactory$Builder;->build()Ldagger/internal/MapProviderFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mapOfClassOfAndProviderOfActivityProvider:Ljavax/inject/Provider;

    .line 3524
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->proximitySensorProvider:Lcom/android/systemui/util/sensors/ProximitySensor_Factory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 3525
    invoke-static {v1, v2}, Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->proximityCheckProvider:Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;

    .line 3527
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeLogProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    .line 3538
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;

    move-result-object v11

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->proximitySensorProvider:Lcom/android/systemui/util/sensors/ProximitySensor_Factory;

    iget-object v13, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->proximityCheckProvider:Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->builderProvider3:Lcom/android/systemui/util/wakelock/DelayedWakeLock_Builder_Factory;

    iget-object v15, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeServiceHostProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    .line 3528
    invoke-static/range {v2 .. v18}, Lcom/android/systemui/doze/DozeFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeFactory_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeFactoryProvider:Lcom/android/systemui/doze/DozeFactory_Factory;

    .line 3546
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 3547
    invoke-static {v1, v2}, Lcom/android/systemui/doze/DozeService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeService_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeServiceProvider:Lcom/android/systemui/doze/DozeService_Factory;

    .line 3548
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 3550
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;

    move-result-object v1

    .line 3549
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardLifecyclesDispatcherProvider:Ljavax/inject/Provider;

    .line 3552
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    .line 3553
    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/KeyguardService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/KeyguardService_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardServiceProvider:Lcom/android/systemui/keyguard/KeyguardService_Factory;

    .line 3555
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->logBufferEulogizerProvider:Ljavax/inject/Provider;

    .line 3556
    invoke-static {v1, v2, v3}, Lcom/android/systemui/dump/DumpHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dump/DumpHandler_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpHandlerProvider:Lcom/android/systemui/dump/DumpHandler_Factory;

    .line 3558
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 3559
    invoke-static {v1, v2}, Lcom/android/systemui/dump/LogBufferFreezer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dump/LogBufferFreezer_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->logBufferFreezerProvider:Lcom/android/systemui/dump/LogBufferFreezer_Factory;

    .line 3560
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpHandlerProvider:Lcom/android/systemui/dump/DumpHandler_Factory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3561
    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/SystemUIService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIService_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->systemUIServiceProvider:Lcom/android/systemui/SystemUIService_Factory;

    .line 3566
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpHandlerProvider:Lcom/android/systemui/dump/DumpHandler_Factory;

    .line 3567
    invoke-static {v1}, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->systemUIAuxiliaryDumpServiceProvider:Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;

    .line 3568
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    .line 3569
    invoke-static {v1, v2}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->screenshotNotificationsControllerProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationsController_Factory;

    .line 3571
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 3573
    invoke-static {v2, v3, v1, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/GlobalScreenshot_Factory;

    move-result-object v1

    .line 3572
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->globalScreenshotProvider:Ljavax/inject/Provider;

    .line 3578
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 3579
    invoke-static {v1, v2, v3}, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->takeScreenshotServiceProvider:Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;

    .line 3582
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideLongRunningLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideLongRunningLooperFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLongRunningLooperProvider:Ljavax/inject/Provider;

    .line 3585
    invoke-static {v1}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideLongRunningExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideLongRunningExecutorFactory;

    move-result-object v1

    .line 3584
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLongRunningExecutorProvider:Ljavax/inject/Provider;

    .line 3587
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->recordingControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCurrentUserContextTrackerProvider:Ljavax/inject/Provider;

    .line 3588
    invoke-static {v2, v1, v3, v4, v5}, Lcom/android/systemui/screenrecord/RecordingService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenrecord/RecordingService_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->recordingServiceProvider:Lcom/android/systemui/screenrecord/RecordingService_Factory;

    const/4 v1, 0x7

    .line 3595
    invoke-static {v1}, Ldagger/internal/MapProviderFactory;->builder(I)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/doze/DozeService;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeServiceProvider:Lcom/android/systemui/doze/DozeService_Factory;

    .line 3596
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/ImageWallpaper;

    .line 3597
    invoke-static {}, Lcom/android/systemui/ImageWallpaper_Factory;->create()Lcom/android/systemui/ImageWallpaper_Factory;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/keyguard/KeyguardService;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardServiceProvider:Lcom/android/systemui/keyguard/KeyguardService_Factory;

    .line 3598
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/SystemUIService;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->systemUIServiceProvider:Lcom/android/systemui/SystemUIService_Factory;

    .line 3599
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->systemUIAuxiliaryDumpServiceProvider:Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService_Factory;

    .line 3600
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/screenshot/TakeScreenshotService;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->takeScreenshotServiceProvider:Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;

    .line 3602
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/screenrecord/RecordingService;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->recordingServiceProvider:Lcom/android/systemui/screenrecord/RecordingService_Factory;

    .line 3603
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    .line 3604
    invoke-virtual {v1}, Ldagger/internal/MapProviderFactory$Builder;->build()Ldagger/internal/MapProviderFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mapOfClassOfAndProviderOfServiceProvider:Ljavax/inject/Provider;

    .line 3605
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 3607
    invoke-static {v1, v2}, Lcom/android/systemui/biometrics/AuthController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/biometrics/AuthController_Factory;

    move-result-object v1

    .line 3606
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->authControllerProvider:Ljavax/inject/Provider;

    .line 3609
    invoke-static {}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;->create()Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLeakReportEmailProvider:Ljavax/inject/Provider;

    .line 3610
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    .line 3612
    invoke-static {v2, v3, v1}, Lcom/android/systemui/util/leak/LeakReporter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/LeakReporter_Factory;

    move-result-object v1

    .line 3611
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->leakReporterProvider:Ljavax/inject/Provider;

    .line 3616
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    .line 3618
    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/util/leak/GarbageMonitor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor_Factory;

    move-result-object v1

    .line 3617
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->garbageMonitorProvider:Ljavax/inject/Provider;

    .line 3623
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3625
    invoke-static {v2, v1}, Lcom/android/systemui/util/leak/GarbageMonitor_Service_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor_Service_Factory;

    move-result-object v1

    .line 3624
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->serviceProvider:Ljavax/inject/Provider;

    .line 3626
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDividerProvider:Ljavax/inject/Provider;

    .line 3628
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/InstantAppNotifier_Factory;

    move-result-object v1

    .line 3627
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->instantAppNotifierProvider:Ljavax/inject/Provider;

    .line 3633
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3635
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/LatencyTester_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/LatencyTester_Factory;

    move-result-object v1

    .line 3634
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->latencyTesterProvider:Ljavax/inject/Provider;

    .line 3640
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    .line 3642
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/power/PowerUI_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/power/PowerUI_Factory;

    move-result-object v1

    .line 3641
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->powerUIProvider:Ljavax/inject/Provider;

    .line 3647
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 3649
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/ScreenDecorations_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ScreenDecorations_Factory;

    move-result-object v1

    .line 3648
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->screenDecorationsProvider:Ljavax/inject/Provider;

    .line 3654
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDividerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideRecentsProvider:Ljavax/inject/Provider;

    .line 3656
    invoke-static {v1, v2, v3}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;

    move-result-object v1

    .line 3655
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->shortcutKeyDispatcherProvider:Ljavax/inject/Provider;

    .line 3658
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 3660
    invoke-static {v1, v2, v3}, Lcom/android/systemui/SizeCompatModeActivityController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/SizeCompatModeActivityController_Factory;

    move-result-object v1

    .line 3659
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->sizeCompatModeActivityControllerProvider:Ljavax/inject/Provider;

    .line 3664
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3666
    invoke-static {v1, v2}, Lcom/android/systemui/SliceBroadcastRelayHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/SliceBroadcastRelayHandler_Factory;

    move-result-object v1

    .line 3665
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->sliceBroadcastRelayHandlerProvider:Ljavax/inject/Provider;

    .line 3668
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3669
    invoke-static {v1}, Lcom/android/systemui/accessibility/SystemActions_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/accessibility/SystemActions_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->systemActionsProvider:Ljavax/inject/Provider;

    .line 3670
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    .line 3672
    invoke-static {v1, v2, v3}, Lcom/android/systemui/theme/ThemeOverlayController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/theme/ThemeOverlayController_Factory;

    move-result-object v1

    .line 3671
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->themeOverlayControllerProvider:Ljavax/inject/Provider;

    .line 3676
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 3678
    invoke-static {v1, v2}, Lcom/android/systemui/toast/ToastUI_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/toast/ToastUI_Factory;

    move-result-object v1

    .line 3677
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->toastUIProvider:Ljavax/inject/Provider;

    .line 3679
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->assistManagerProvider:Ljavax/inject/Provider;

    .line 3681
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/tv/TvStatusBar_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/tv/TvStatusBar_Factory;

    move-result-object v1

    .line 3680
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->tvStatusBarProvider:Ljavax/inject/Provider;

    .line 3683
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->volumeDialogComponentProvider:Ljavax/inject/Provider;

    .line 3685
    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeUI_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/volume/VolumeUI_Factory;

    move-result-object v1

    .line 3684
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->volumeUIProvider:Ljavax/inject/Provider;

    .line 3686
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    .line 3688
    invoke-static {v1, v2}, Lcom/android/systemui/accessibility/WindowMagnification_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/accessibility/WindowMagnification_Factory;

    move-result-object v1

    .line 3687
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->windowMagnificationProvider:Ljavax/inject/Provider;

    .line 3689
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 3691
    invoke-static {v1, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl_Factory;

    move-result-object v1

    .line 3690
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->opBiometricDialogImplProvider:Ljavax/inject/Provider;

    const/16 v1, 0x16

    .line 3694
    invoke-static {v1}, Ldagger/internal/MapProviderFactory;->builder(I)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/biometrics/AuthController;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->authControllerProvider:Ljavax/inject/Provider;

    .line 3695
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/stackdivider/Divider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDividerProvider:Ljavax/inject/Provider;

    .line 3696
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/util/leak/GarbageMonitor$Service;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->serviceProvider:Ljavax/inject/Provider;

    .line 3697
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->globalActionsComponentProvider:Ljavax/inject/Provider;

    .line 3698
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->instantAppNotifierProvider:Ljavax/inject/Provider;

    .line 3699
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->newKeyguardViewMediatorProvider:Ljavax/inject/Provider;

    .line 3700
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/LatencyTester;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->latencyTesterProvider:Ljavax/inject/Provider;

    .line 3701
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/pip/PipUI;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->pipUIProvider:Ljavax/inject/Provider;

    .line 3702
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/power/PowerUI;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->powerUIProvider:Ljavax/inject/Provider;

    .line 3703
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/recents/Recents;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideRecentsProvider:Ljavax/inject/Provider;

    .line 3704
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/ScreenDecorations;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->screenDecorationsProvider:Ljavax/inject/Provider;

    .line 3705
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->shortcutKeyDispatcherProvider:Ljavax/inject/Provider;

    .line 3706
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/SizeCompatModeActivityController;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->sizeCompatModeActivityControllerProvider:Ljavax/inject/Provider;

    .line 3707
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/SliceBroadcastRelayHandler;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->sliceBroadcastRelayHandlerProvider:Ljavax/inject/Provider;

    .line 3710
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    .line 3711
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/accessibility/SystemActions;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->systemActionsProvider:Ljavax/inject/Provider;

    .line 3712
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->themeOverlayControllerProvider:Ljavax/inject/Provider;

    .line 3713
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/toast/ToastUI;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->toastUIProvider:Ljavax/inject/Provider;

    .line 3714
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/statusbar/tv/TvStatusBar;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->tvStatusBarProvider:Ljavax/inject/Provider;

    .line 3715
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/volume/VolumeUI;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->volumeUIProvider:Ljavax/inject/Provider;

    .line 3716
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/android/systemui/accessibility/WindowMagnification;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->windowMagnificationProvider:Ljavax/inject/Provider;

    .line 3717
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    const-class v2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->opBiometricDialogImplProvider:Ljavax/inject/Provider;

    .line 3718
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    .line 3719
    invoke-virtual {v1}, Ldagger/internal/MapProviderFactory$Builder;->build()Ldagger/internal/MapProviderFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mapOfClassOfAndProviderOfSystemUIProvider:Ljavax/inject/Provider;

    .line 3720
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->optionalOfDividerProvider:Ljavax/inject/Provider;

    .line 3722
    invoke-static {v1, v2}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;

    move-result-object v1

    .line 3721
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->overviewProxyRecentsImplProvider:Ljavax/inject/Provider;

    const/4 v1, 0x1

    .line 3725
    invoke-static {v1}, Ldagger/internal/MapProviderFactory;->builder(I)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v2

    const-class v3, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->overviewProxyRecentsImplProvider:Ljavax/inject/Provider;

    .line 3726
    invoke-virtual {v2, v3, v4}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    .line 3727
    invoke-virtual {v2}, Ldagger/internal/MapProviderFactory$Builder;->build()Ldagger/internal/MapProviderFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mapOfClassOfAndProviderOfRecentsImplementationProvider:Ljavax/inject/Provider;

    .line 3728
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->optionalOfLazyOfStatusBarProvider:Ljavax/inject/Provider;

    .line 3729
    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot_ActionProxyReceiver_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/GlobalScreenshot_ActionProxyReceiver_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->actionProxyReceiverProvider:Lcom/android/systemui/screenshot/GlobalScreenshot_ActionProxyReceiver_Factory;

    .line 3731
    invoke-static {v1}, Ldagger/internal/MapProviderFactory;->builder(I)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v1

    const-class v2, Lcom/android/systemui/screenshot/GlobalScreenshot$ActionProxyReceiver;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->actionProxyReceiverProvider:Lcom/android/systemui/screenshot/GlobalScreenshot_ActionProxyReceiver_Factory;

    .line 3732
    invoke-virtual {v1, v2, v3}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    .line 3733
    invoke-virtual {v1}, Ldagger/internal/MapProviderFactory$Builder;->build()Ldagger/internal/MapProviderFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mapOfClassOfAndProviderOfBroadcastReceiverProvider:Ljavax/inject/Provider;

    .line 3734
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->contextComponentResolverProvider:Ljavax/inject/Provider;

    check-cast v2, Ldagger/internal/DelegateFactory;

    .line 3736
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mapOfClassOfAndProviderOfActivityProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mapOfClassOfAndProviderOfServiceProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mapOfClassOfAndProviderOfSystemUIProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mapOfClassOfAndProviderOfRecentsImplementationProvider:Ljavax/inject/Provider;

    .line 3738
    invoke-static {v3, v4, v5, v6, v1}, Lcom/android/systemui/dagger/ContextComponentResolver_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/ContextComponentResolver_Factory;

    move-result-object v1

    .line 3737
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->contextComponentResolverProvider:Ljavax/inject/Provider;

    .line 3744
    invoke-virtual {v2, v1}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 3747
    invoke-static {}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;->create()Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;

    move-result-object v1

    .line 3746
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;

    .line 3748
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3749
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->flashlightControllerImplProvider:Ljavax/inject/Provider;

    .line 3753
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    .line 3752
    invoke-static {v1, v2, v3}, Lcom/android/systemui/dagger/DependencyProvider_ProvideNightDisplayListenerFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideNightDisplayListenerFactory;

    move-result-object v1

    .line 3751
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    .line 3754
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3756
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;

    move-result-object v1

    .line 3755
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    .line 3758
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 3760
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SecurityControllerImpl_Factory;

    move-result-object v1

    .line 3759
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->securityControllerImplProvider:Ljavax/inject/Provider;

    .line 3765
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->superStatusBarViewFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideResourcesProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideResourcesFactory;

    .line 3767
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;

    move-result-object v1

    .line 3766
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    .line 3772
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->systemUIRootComponentProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 3774
    invoke-static {v1, v2}, Lcom/android/systemui/fragments/FragmentService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/fragments/FragmentService_Factory;

    move-result-object v1

    .line 3773
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->fragmentServiceProvider:Ljavax/inject/Provider;

    .line 3776
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3777
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    .line 3778
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 3780
    invoke-static {v1}, Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;

    move-result-object v1

    .line 3779
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->tunablePaddingServiceProvider:Ljavax/inject/Provider;

    .line 3782
    invoke-static {}, Lcom/android/systemui/UiOffloadThread_Factory;->create()Lcom/android/systemui/UiOffloadThread_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    .line 3783
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 3785
    invoke-static {v1, v2}, Lcom/android/systemui/power/PowerNotificationWarnings_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/power/PowerNotificationWarnings_Factory;

    move-result-object v1

    .line 3784
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->powerNotificationWarningsProvider:Ljavax/inject/Provider;

    .line 3787
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationGutsManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 3789
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;

    move-result-object v1

    .line 3788
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationBlockingHelperManagerProvider:Ljavax/inject/Provider;

    .line 3794
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3796
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideSensorPrivacyManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideSensorPrivacyManagerFactory;

    move-result-object v1

    .line 3795
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    .line 3797
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationInteractionTrackerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bindSystemClockProvider:Ljavax/inject/Provider;

    .line 3798
    invoke-static {v1, v2}, Lcom/android/systemui/ForegroundServiceLifetimeExtender_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ForegroundServiceLifetimeExtender_Factory;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->foregroundServiceLifetimeExtenderProvider:Lcom/android/systemui/ForegroundServiceLifetimeExtender_Factory;

    .line 3800
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bindSystemClockProvider:Ljavax/inject/Provider;

    .line 3802
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;

    move-result-object v1

    .line 3801
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;

    .line 3809
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3811
    invoke-static/range {v2 .. v7}, Lcom/android/keyguard/clock/ClockManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/clock/ClockManager_Factory;

    move-result-object v1

    .line 3810
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->clockManagerProvider:Ljavax/inject/Provider;

    .line 3821
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/dagger/DependencyProvider;

    move-result-object v1

    .line 3820
    invoke-static {v1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideDevicePolicyManagerWrapperFactory;->create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideDevicePolicyManagerWrapperFactory;

    move-result-object v1

    .line 3819
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;

    .line 3822
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3823
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecurityModel_Factory;->create(Ljavax/inject/Provider;)Lcom/android/keyguard/KeyguardSecurityModel_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardSecurityModelProvider:Ljavax/inject/Provider;

    .line 3824
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3825
    invoke-static {v1}, Lcom/oneplus/opzenmode/OpZenModeControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/oneplus/opzenmode/OpZenModeControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->opZenModeControllerImplProvider:Ljavax/inject/Provider;

    .line 3826
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3827
    invoke-static {v1}, Lcom/oneplus/scene/OpSceneModeObserver_Factory;->create(Ljavax/inject/Provider;)Lcom/oneplus/scene/OpSceneModeObserver_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->opSceneModeObserverProvider:Ljavax/inject/Provider;

    .line 3828
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3830
    invoke-static {v1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/oneplus/battery/OpChargingAnimationControllerImpl_Factory;

    move-result-object v1

    .line 3829
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->opChargingAnimationControllerImplProvider:Ljavax/inject/Provider;

    .line 3831
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3832
    invoke-static {v1}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->networkSpeedControllerImplProvider:Ljavax/inject/Provider;

    .line 3833
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3834
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/WLBSwitchController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->wLBSwitchControllerProvider:Ljavax/inject/Provider;

    .line 3835
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3836
    invoke-static {v1}, Lcom/oneplus/worklife/OPWLBHelper_Factory;->create(Ljavax/inject/Provider;)Lcom/oneplus/worklife/OPWLBHelper_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->oPWLBHelperProvider:Ljavax/inject/Provider;

    .line 3837
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 3838
    invoke-static {v1}, Lcom/oneplus/notification/OpNotificationController_Factory;->create(Ljavax/inject/Provider;)Lcom/oneplus/notification/OpNotificationController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->opNotificationControllerProvider:Ljavax/inject/Provider;

    .line 3840
    invoke-static {}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl_Factory;->create()Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->opHighlightHintControllerImplProvider:Ljavax/inject/Provider;

    .line 3841
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 3842
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 3843
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/WifiTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/WifiTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->wifiTileProvider:Lcom/android/systemui/qs/tiles/WifiTile_Factory;

    .line 3847
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 3848
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bluetoothTileProvider:Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

    .line 3852
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 3853
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/CellularTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/CellularTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->cellularTileProvider:Lcom/android/systemui/qs/tiles/CellularTile_Factory;

    .line 3857
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideSharePreferencesProvider:Lcom/android/systemui/dagger/DependencyProvider_ProvideSharePreferencesFactory;

    .line 3858
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/qs/tiles/DndTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/DndTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dndTileProvider:Lcom/android/systemui/qs/tiles/DndTile_Factory;

    .line 3864
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 3865
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->colorInversionTileProvider:Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

    .line 3866
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3867
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->airplaneModeTileProvider:Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

    .line 3871
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    .line 3872
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->workModeTileProvider:Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

    .line 3874
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    .line 3875
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->rotationLockTileProvider:Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

    return-void
.end method

.method private initialize5(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)V
    .locals 32

    move-object/from16 v0, p0

    .line 3881
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->flashlightControllerImplProvider:Ljavax/inject/Provider;

    .line 3882
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->flashlightTileProvider:Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

    .line 3884
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 3885
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/LocationTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/LocationTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->locationTileProvider:Lcom/android/systemui/qs/tiles/LocationTile_Factory;

    .line 3890
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 3891
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/qs/tiles/CastTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/CastTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->castTileProvider:Lcom/android/systemui/qs/tiles/CastTile_Factory;

    .line 3897
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    .line 3898
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/HotspotTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->hotspotTileProvider:Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

    .line 3902
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    .line 3903
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/UserTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/UserTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->userTileProvider:Lcom/android/systemui/qs/tiles/UserTile_Factory;

    .line 3907
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    .line 3908
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->batterySaverTileProvider:Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

    .line 3910
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 3911
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dataSaverTileProvider:Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

    .line 3913
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    .line 3914
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->nightDisplayTileProvider:Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

    .line 3916
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 3917
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/NfcTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/NfcTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->nfcTileProvider:Lcom/android/systemui/qs/tiles/NfcTile_Factory;

    .line 3918
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->garbageMonitorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 3919
    invoke-static {v1, v2, v3}, Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->memoryTileProvider:Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    .line 3923
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    .line 3924
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->uiModeNightTileProvider:Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

    .line 3929
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->recordingControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    .line 3930
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/ScreenRecordTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/ScreenRecordTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->screenRecordTileProvider:Lcom/android/systemui/qs/tiles/ScreenRecordTile_Factory;

    .line 3934
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ReadModeTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/ReadModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->readModeTileProvider:Lcom/android/systemui/qs/tiles/ReadModeTile_Factory;

    .line 3935
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/GameModeTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/GameModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->gameModeTileProvider:Lcom/android/systemui/qs/tiles/GameModeTile_Factory;

    .line 3936
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/OPDndCarModeTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/OPDndCarModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->oPDndCarModeTileProvider:Lcom/android/systemui/qs/tiles/OPDndCarModeTile_Factory;

    .line 3937
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/OtgTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/OtgTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->otgTileProvider:Lcom/android/systemui/qs/tiles/OtgTile_Factory;

    .line 3938
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DataSwitchTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/DataSwitchTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dataSwitchTileProvider:Lcom/android/systemui/qs/tiles/DataSwitchTile_Factory;

    .line 3939
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VPNTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/VPNTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->vPNTileProvider:Lcom/android/systemui/qs/tiles/VPNTile_Factory;

    .line 3940
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/OPDndTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/OPDndTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->oPDndTileProvider:Lcom/android/systemui/qs/tiles/OPDndTile_Factory;

    .line 3941
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    .line 3942
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/OPReverseChargeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->oPReverseChargeTileProvider:Lcom/android/systemui/qs/tiles/OPReverseChargeTile_Factory;

    .line 3944
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 3945
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WorkLifeBalanceTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/WorkLifeBalanceTile_Factory;

    move-result-object v1

    move-object/from16 v31, v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->workLifeBalanceTileProvider:Lcom/android/systemui/qs/tiles/WorkLifeBalanceTile_Factory;

    .line 3946
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->wifiTileProvider:Lcom/android/systemui/qs/tiles/WifiTile_Factory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bluetoothTileProvider:Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->cellularTileProvider:Lcom/android/systemui/qs/tiles/CellularTile_Factory;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dndTileProvider:Lcom/android/systemui/qs/tiles/DndTile_Factory;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->colorInversionTileProvider:Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->airplaneModeTileProvider:Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->workModeTileProvider:Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->rotationLockTileProvider:Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->flashlightTileProvider:Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->locationTileProvider:Lcom/android/systemui/qs/tiles/LocationTile_Factory;

    iget-object v13, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->castTileProvider:Lcom/android/systemui/qs/tiles/CastTile_Factory;

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->hotspotTileProvider:Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

    iget-object v15, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->userTileProvider:Lcom/android/systemui/qs/tiles/UserTile_Factory;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->batterySaverTileProvider:Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dataSaverTileProvider:Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->nightDisplayTileProvider:Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->nfcTileProvider:Lcom/android/systemui/qs/tiles/NfcTile_Factory;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->memoryTileProvider:Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->uiModeNightTileProvider:Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->screenRecordTileProvider:Lcom/android/systemui/qs/tiles/ScreenRecordTile_Factory;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->readModeTileProvider:Lcom/android/systemui/qs/tiles/ReadModeTile_Factory;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->gameModeTileProvider:Lcom/android/systemui/qs/tiles/GameModeTile_Factory;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->oPDndCarModeTileProvider:Lcom/android/systemui/qs/tiles/OPDndCarModeTile_Factory;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->otgTileProvider:Lcom/android/systemui/qs/tiles/OtgTile_Factory;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dataSwitchTileProvider:Lcom/android/systemui/qs/tiles/DataSwitchTile_Factory;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->vPNTileProvider:Lcom/android/systemui/qs/tiles/VPNTile_Factory;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->oPDndTileProvider:Lcom/android/systemui/qs/tiles/OPDndTile_Factory;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->oPReverseChargeTileProvider:Lcom/android/systemui/qs/tiles/OPReverseChargeTile_Factory;

    move-object/from16 v30, v1

    .line 3948
    invoke-static/range {v2 .. v31}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;

    move-result-object v1

    .line 3947
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSFactoryImplProvider:Ljavax/inject/Provider;

    .line 3979
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    invoke-static {v1}, Lcom/android/systemui/qs/AutoAddTracker_Builder_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/AutoAddTracker_Builder_Factory;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->builderProvider5:Lcom/android/systemui/qs/AutoAddTracker_Builder_Factory;

    .line 3980
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    .line 3981
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->autoTileManagerProvider:Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

    .line 3991
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideStatusBarProvider:Ljavax/inject/Provider;

    .line 3992
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$PresentJdkOptionalInstanceProvider;->access$500(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->optionalOfStatusBarProvider:Ljavax/inject/Provider;

    .line 3993
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLogcatEchoTrackerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 3995
    invoke-static {v1, v2}, Lcom/android/systemui/log/dagger/LogModule_ProvideQuickSettingsLogBufferFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideQuickSettingsLogBufferFactory;

    move-result-object v1

    .line 3994
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideQuickSettingsLogBufferProvider:Ljavax/inject/Provider;

    .line 3997
    invoke-static {v1}, Lcom/android/systemui/qs/logging/QSLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/logging/QSLogger_Factory;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSLoggerProvider:Lcom/android/systemui/qs/logging/QSLogger_Factory;

    .line 3998
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 3999
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSFactoryImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->autoTileManagerProvider:Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->optionalOfStatusBarProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 4001
    invoke-static/range {v2 .. v14}, Lcom/android/systemui/qs/QSTileHost_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QSTileHost_Factory;

    move-result-object v2

    .line 4000
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 4015
    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 4016
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;->access$100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory$ContextHolder;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    .line 4018
    invoke-static {}, Lcom/android/systemui/media/MediaHostStatesManager_Factory;->create()Lcom/android/systemui/media/MediaHostStatesManager_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaHostStatesManagerProvider:Ljavax/inject/Provider;

    .line 4019
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 4020
    invoke-static {v2, v3, v1}, Lcom/android/systemui/media/MediaViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaViewController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaViewControllerProvider:Lcom/android/systemui/media/MediaViewController_Factory;

    .line 4024
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 4026
    invoke-static {v1}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundRepeatableExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundRepeatableExecutorFactory;

    move-result-object v1

    .line 4025
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundRepeatableExecutorProvider:Ljavax/inject/Provider;

    .line 4029
    invoke-static {v1}, Lcom/android/systemui/media/SeekBarViewModel_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/media/SeekBarViewModel_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->seekBarViewModelProvider:Lcom/android/systemui/media/SeekBarViewModel_Factory;

    .line 4030
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaViewControllerProvider:Lcom/android/systemui/media/MediaViewController_Factory;

    .line 4031
    invoke-static {v2, v3, v4, v5, v1}, Lcom/android/systemui/media/MediaControlPanel_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaControlPanel_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaControlPanelProvider:Lcom/android/systemui/media/MediaControlPanel_Factory;

    .line 4037
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    .line 4038
    invoke-static {v1, v2}, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->localMediaManagerFactoryProvider:Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;

    .line 4040
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 4041
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideMediaRouter2ManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideMediaRouter2ManagerFactory;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMediaRouter2ManagerProvider:Lcom/android/systemui/dagger/SystemServicesModule_ProvideMediaRouter2ManagerFactory;

    .line 4042
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->localMediaManagerFactoryProvider:Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaDataManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 4044
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/media/MediaDeviceManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaDeviceManager_Factory;

    move-result-object v1

    .line 4043
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaDeviceManagerProvider:Ljavax/inject/Provider;

    .line 4051
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaDataManagerProvider:Ljavax/inject/Provider;

    .line 4053
    invoke-static {v2, v1}, Lcom/android/systemui/media/MediaDataCombineLatest_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaDataCombineLatest_Factory;

    move-result-object v1

    .line 4052
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaDataCombineLatestProvider:Ljavax/inject/Provider;

    .line 4055
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providesBroadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaResumeListenerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaDataManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    .line 4057
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/media/MediaDataFilter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaDataFilter_Factory;

    move-result-object v1

    .line 4056
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaDataFilterProvider:Ljavax/inject/Provider;

    .line 4064
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaControlPanelProvider:Lcom/android/systemui/media/MediaControlPanel_Factory;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaHostStatesManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 4066
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/media/MediaCarouselController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaCarouselController_Factory;

    move-result-object v1

    .line 4065
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaCarouselControllerProvider:Ljavax/inject/Provider;

    .line 4076
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 4078
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/media/MediaHierarchyManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaHierarchyManager_Factory;

    move-result-object v1

    .line 4077
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    .line 4088
    invoke-static {}, Lcom/android/systemui/media/MediaHost_MediaHostStateHolder_Factory;->create()Lcom/android/systemui/media/MediaHost_MediaHostStateHolder_Factory;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaDataFilterProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaHostStatesManagerProvider:Ljavax/inject/Provider;

    .line 4087
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/media/MediaHost_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaHost_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->mediaHostProvider:Lcom/android/systemui/media/MediaHost_Factory;

    .line 4092
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    .line 4094
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/media/KeyguardMediaController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/KeyguardMediaController_Factory;

    move-result-object v1

    .line 4093
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardMediaControllerProvider:Ljavax/inject/Provider;

    .line 4099
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationPersonExtractorPluginBoundaryProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideMainExecutorProvider:Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    .line 4101
    invoke-static/range {v2 .. v12}, Lcom/android/systemui/statusbar/notification/people/PeopleHubDataSourceImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/people/PeopleHubDataSourceImpl_Factory;

    move-result-object v1

    .line 4100
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->peopleHubDataSourceImplProvider:Ljavax/inject/Provider;

    .line 4113
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 4115
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/people/PeopleHubViewModelFactoryDataSourceImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/people/PeopleHubViewModelFactoryDataSourceImpl_Factory;

    move-result-object v1

    .line 4114
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->peopleHubViewModelFactoryDataSourceImplProvider:Ljavax/inject/Provider;

    .line 4120
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl_Factory;

    move-result-object v1

    .line 4119
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->peopleHubViewAdapterImplProvider:Ljavax/inject/Provider;

    .line 4122
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLogcatEchoTrackerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 4124
    invoke-static {v1, v2}, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationSectionLogBufferFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationSectionLogBufferFactory;

    move-result-object v1

    .line 4123
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationSectionLogBufferProvider:Ljavax/inject/Provider;

    .line 4128
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger_Factory;

    move-result-object v1

    .line 4127
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->notificationSectionsLoggerProvider:Ljavax/inject/Provider;

    .line 4129
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 4131
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideLatencyTrackerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideLatencyTrackerFactory;

    move-result-object v1

    .line 4130
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideLatencyTrackerProvider:Ljavax/inject/Provider;

    .line 4132
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 4134
    invoke-static {v1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideActivityManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideActivityManagerFactory;

    move-result-object v1

    .line 4133
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideActivityManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectKeyguardSliceProvider(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)Lcom/android/systemui/keyguard/KeyguardSliceProvider;
    .locals 1

    .line 4203
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 4204
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 4203
    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMDozeParameters(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    .line 4205
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    .line 4206
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 4205
    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMZenModeController(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 4207
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    .line 4208
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 4207
    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMNextAlarmController(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/policy/NextAlarmController;)V

    .line 4209
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    .line 4210
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4209
    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMAlarmManager(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Landroid/app/AlarmManager;)V

    .line 4211
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    .line 4212
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 4211
    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMContentResolver(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Landroid/content/ContentResolver;)V

    .line 4213
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    .line 4214
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 4213
    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMMediaManager(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    .line 4215
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 4216
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 4215
    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMStatusBarStateController(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    .line 4217
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 4218
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 4217
    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;->injectMKeyguardBypassController(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    return-object p1
.end method

.method private injectSystemUIAppComponentFactory(Lcom/android/systemui/SystemUIAppComponentFactory;)Lcom/android/systemui/SystemUIAppComponentFactory;
    .locals 0

    .line 4197
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->contextComponentResolverProvider:Ljavax/inject/Provider;

    .line 4198
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dagger/ContextComponentHelper;

    .line 4197
    invoke-static {p1, p0}, Lcom/android/systemui/SystemUIAppComponentFactory_MembersInjector;->injectMComponentHelper(Lcom/android/systemui/SystemUIAppComponentFactory;Lcom/android/systemui/dagger/ContextComponentHelper;)V

    return-object p1
.end method


# virtual methods
.method public createDependency()Lcom/android/systemui/Dependency$DependencyInjector;
    .locals 2

    .line 4182
    new-instance v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;)V

    return-object v0
.end method

.method public createDumpManager()Lcom/android/systemui/dump/DumpManager;
    .locals 0

    .line 4154
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    return-object p0
.end method

.method public createFragmentCreator()Lcom/android/systemui/fragments/FragmentService$FragmentCreator;
    .locals 2

    .line 4187
    new-instance v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$FragmentCreatorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$FragmentCreatorImpl;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;)V

    return-object v0
.end method

.method public createViewCreator()Lcom/android/systemui/util/InjectionInflationController$ViewCreator;
    .locals 2

    .line 4192
    new-instance v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;)V

    return-object v0
.end method

.method public getConfigurationController()Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .locals 0

    .line 4144
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    return-object p0
.end method

.method public getContextComponentHelper()Lcom/android/systemui/dagger/ContextComponentHelper;
    .locals 0

    .line 4149
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->contextComponentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dagger/ContextComponentHelper;

    return-object p0
.end method

.method public getInitController()Lcom/android/systemui/InitController;
    .locals 0

    .line 4159
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->initControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/InitController;

    return-object p0
.end method

.method public inject(Landroid/content/ContentProvider;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/android/systemui/SystemUIAppComponentFactory;)V
    .locals 0

    .line 4169
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->injectSystemUIAppComponentFactory(Lcom/android/systemui/SystemUIAppComponentFactory;)Lcom/android/systemui/SystemUIAppComponentFactory;

    return-void
.end method

.method public inject(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V
    .locals 0

    .line 4177
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->injectKeyguardSliceProvider(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    return-void
.end method

.method public provideBootCacheImpl()Lcom/android/systemui/BootCompleteCacheImpl;
    .locals 0

    .line 4139
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->bootCompleteCacheImplProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/BootCompleteCacheImpl;

    return-object p0
.end method
