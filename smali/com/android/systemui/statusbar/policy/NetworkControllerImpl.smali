.class public Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController;
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;
    }
.end annotation


# static fields
.field static final CHATTY:Z

.field static final DEBUG:Z

.field public static SOFTSIM_DISABLE:I

.field public static SOFTSIM_ENABLE:I

.field public static SOFTSIM_ENABLE_PILOT:I

.field private static final SOFTSIM_URL:Landroid/net/Uri;


# instance fields
.field private final mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

.field private mActiveMobileDataSubscription:I

.field private mAirplaneMode:Z

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field private final mClearForceValidated:Ljava/lang/Runnable;

.field private mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field private final mConnectedTransports:Ljava/util/BitSet;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUserId:I

.field private final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field private final mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

.field private mDemoInetCondition:Z

.field private mDemoMode:Z

.field private mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

.field private mEmergencySource:I

.field final mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

.field private mFackPSIcon:Z

.field mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mForceCellularValidated:Z

.field private final mHasMobileDataFeature:Z

.field private mHasNoSubs:Z

.field private final mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private mInetCondition:Z

.field private mIsEmergency:Z

.field private mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field private mLTEstatus:[Z

.field mLastServiceState:Landroid/telephony/ServiceState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mListening:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLocale:Ljava/util/Locale;

.field private final mLock:Ljava/lang/Object;

.field final mMobileSignalControllers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkSpeedController:Lcom/oneplus/networkspeed/NetworkSpeedController;

.field private mOpActionTetherDialogShowing:Z

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProvisionState:[I

.field private final mReceiverHandler:Landroid/os/Handler;

.field private final mRegisterListeners:Ljava/lang/Runnable;

.field private final mSettingObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;

.field private mSimDetected:Z

.field private mSmartlinkEnable:Z

.field private final mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

.field private mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mUserSetup:Z

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mValidatedTransports:Ljava/util/BitSet;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field final mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private softSimState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    .line 134
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    const/4 v0, 0x0

    .line 1771
    sput v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_DISABLE:I

    const/4 v0, 0x1

    .line 1772
    sput v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_ENABLE:I

    const/4 v0, 0x2

    .line 1773
    sput v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_ENABLE_PILOT:I

    const-string v0, "content://com.redteamobile.provider"

    .line 1809
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_URL:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/settingslib/net/DataUsageController;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v8, p0

    move-object v9, p1

    move-object v0, p2

    move-object/from16 v1, p11

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    .line 260
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 153
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLock:Ljava/lang/Object;

    const/4 v2, -0x1

    .line 157
    iput v2, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mActiveMobileDataSubscription:I

    .line 166
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    .line 178
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    iput-object v2, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    .line 179
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    iput-object v2, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    const/4 v2, 0x0

    .line 182
    iput-boolean v2, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    const/4 v3, 0x0

    .line 184
    iput-object v3, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 186
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    .line 213
    iput-boolean v2, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOpActionTetherDialogShowing:Z

    .line 382
    new-instance v3, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$oNWIIIg3gBRqx9jT8qywGtEkW2E;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$oNWIIIg3gBRqx9jT8qywGtEkW2E;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v3, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mClearForceValidated:Ljava/lang/Runnable;

    .line 1463
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$9;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v3, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRegisterListeners:Ljava/lang/Runnable;

    const/4 v3, 0x6

    new-array v3, v3, [Z

    .line 1561
    fill-array-data v3, :array_0

    iput-object v3, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEstatus:[Z

    .line 1562
    array-length v3, v3

    new-array v3, v3, [Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object v3, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 1709
    iput-object v4, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    new-array v3, v3, [I

    .line 1770
    iput-object v3, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->softSimState:[I

    .line 1932
    iput-boolean v2, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSmartlinkEnable:Z

    .line 1960
    iput-boolean v2, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFackPSIcon:Z

    .line 1984
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v3, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSettingObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;

    .line 261
    iput-object v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v3, p7

    .line 262
    iput-object v3, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 263
    new-instance v3, Landroid/os/Handler;

    move-object/from16 v4, p8

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    move-object/from16 v3, p9

    .line 264
    iput-object v3, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    .line 265
    new-instance v3, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    invoke-direct {v3, p1}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 266
    iput-object v11, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v3, p6

    .line 268
    iput-object v3, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v3, p12

    .line 269
    iput-object v3, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    .line 270
    iput-object v0, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 272
    invoke-virtual {p2, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    iput-boolean v0, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v0, p3

    .line 275
    iput-object v0, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p4

    .line 278
    iput-object v0, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 280
    iget-object v0, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v0, p10

    .line 281
    iput-object v0, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    .line 282
    iput-object v1, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 283
    invoke-virtual {v1, p0}, Lcom/android/settingslib/net/DataUsageController;->setNetworkController(Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;)V

    .line 285
    iget-object v0, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->setCallback(Lcom/android/settingslib/net/DataUsageController$Callback;)V

    .line 292
    new-instance v12, Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v1, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-boolean v2, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v3, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v5, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v0, v12

    move-object v4, p0

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/WifiSignalController;-><init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;)V

    iput-object v12, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    .line 295
    new-instance v0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    iget-object v1, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v0, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    const/4 v0, 0x1

    .line 298
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    .line 299
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;

    invoke-direct {v1, p0, v11}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object v1, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 305
    invoke-virtual {v1}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 306
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;

    invoke-direct {v1, p0, v10}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    invoke-interface {v10, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 313
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    move-result-object v1

    iput-object v1, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    .line 314
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 344
    iget-object v2, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 346
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;

    iget-object v2, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/statusbar/policy/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;

    invoke-direct {v3, v2}, Lcom/android/systemui/statusbar/policy/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Ljava/util/concurrent/Executor;)V

    iput-object v1, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 367
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->initProvistionState()V

    .line 371
    const-class v1, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object v1, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 374
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onSmartLinkChange(Z)V

    .line 377
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onFackPSIcon(Z)V

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;)V
    .locals 16

    move-object/from16 v15, p0

    move-object/from16 v1, p1

    .line 240
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v7

    new-instance v9, Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-direct {v9}, Lcom/android/systemui/statusbar/policy/CallbackHandler;-><init>()V

    new-instance v10, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-direct {v10, v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;-><init>(Landroid/content/Context;)V

    new-instance v11, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {v11, v1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    new-instance v12, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-direct {v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v8, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    .line 236
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/settingslib/net/DataUsageController;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 247
    iget-object v0, v15, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    iget-object v1, v15, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRegisterListeners:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Ljava/lang/Runnable;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mClearForceValidated:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOpActionTetherDialogShowing:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onFackPSIcon(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onSmartLinkChange(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyControllersMobileDataChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onUserSwitched(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setUserSetupComplete(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 0

    .line 123
    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mActiveMobileDataSubscription:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 0

    .line 123
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mActiveMobileDataSubscription:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mForceCellularValidated:Z

    return p1
.end method

.method private addSignalController(II)Landroid/telephony/SubscriptionInfo;
    .locals 29

    move-object/from16 v10, p0

    move/from16 v12, p1

    move/from16 v14, p2

    .line 1433
    new-instance v28, Landroid/telephony/SubscriptionInfo;

    move-object/from16 v11, v28

    const-string v13, ""

    const-string v15, ""

    const-string v16, ""

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, ""

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, ""

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v11 .. v27}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;)V

    .line 1435
    new-instance v11, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v3, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    .line 1437
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    iget-object v5, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v8, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    .line 1438
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    move-object v0, v11

    move-object/from16 v6, p0

    move-object/from16 v7, v28

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V

    .line 1439
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1440
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    return-object v28
.end method

.method private checkVirtualSimcard()V
    .locals 7

    .line 1776
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1779
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isSoftSIM(I)Z

    move-result v4

    .line 1781
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getVirtualPilot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1782
    sget v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_DISABLE:I

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 1785
    sget v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_ENABLE_PILOT:I

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    if-nez v5, :cond_1

    .line 1787
    sget v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_ENABLE:I

    .line 1790
    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkVirtualSimcard slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " virtualSimState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NetworkController"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->softSimState:[I

    aget v5, v4, v2

    if-eq v6, v5, :cond_3

    .line 1793
    aput v6, v4, v2

    .line 1794
    sget v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_ENABLE_PILOT:I

    if-ne v6, v3, :cond_2

    .line 1796
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :cond_2
    const/4 v3, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    .line 1805
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->softSimState:[I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifySetVirtualSimstate([I)V

    :cond_5
    return-void
.end method

.method private static final emergencyToString(I)Ljava/lang/String;
    .locals 4

    const/16 v0, 0xc8

    const/16 v1, 0x12c

    const-string v2, ")"

    if-le p0, v1, :cond_0

    .line 1168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASSUMED_VOICE_CONTROLLER("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-le p0, v1, :cond_1

    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NO_SUB("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-le p0, v0, :cond_2

    .line 1173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VOICE_CONTROLLER("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v0, 0x64

    if-le p0, v0, :cond_3

    .line 1175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FIRST_CONTROLLER("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-nez p0, :cond_4

    const-string p0, "NO_CONTROLLERS"

    return-object p0

    :cond_4
    const-string p0, "UNKNOWN_SOURCE"

    return-object p0
.end method

.method private filterMobileSubscriptionInSameGroup(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 832
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 833
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x1

    .line 834
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 835
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 837
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 841
    :cond_0
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "always_show_primary_signal_bar_in_opportunistic_network_boolean"

    .line 842
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 845
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 847
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mActiveMobileDataSubscription:I

    if-ne v2, p0, :cond_3

    move-object v0, v1

    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private getDataController()Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .locals 4

    .line 535
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getActiveDataSubId()I

    move-result v0

    .line 536
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const-string v2, "NetworkController"

    if-nez v1, :cond_1

    .line 537
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "No data sim selected"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    return-object p0

    .line 540
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 541
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    return-object p0

    .line 543
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find controller for data sub: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    return-object p0
.end method

.method private getMultiLTEIcons([I)[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .locals 9

    .line 1625
    array-length v0, p1

    new-array v0, v0, [I

    .line 1626
    array-length v1, p1

    new-array v2, v1, [Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 1631
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    array-length v7, v6

    const/4 v8, 0x1

    if-ge v4, v7, :cond_1

    .line 1632
    aget v6, v6, v4

    if-ne v6, v8, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-le v5, v8, :cond_2

    .line 1638
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-le v4, v8, :cond_2

    move v4, v8

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-lez v5, :cond_9

    .line 1644
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/util/OpUtils;->isSupportShowVoLTE(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1646
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportShowHD()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1648
    aget v5, p1, v3

    if-nez v5, :cond_3

    .line 1649
    sget v5, Lcom/oneplus/signal/OpSignalIcons;->HD_UNAVAILABLE:I

    aput v5, v0, v3

    goto :goto_2

    .line 1650
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/util/OpUtils;->isSupportMultiLTEstatus(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    aget v5, p1, v3

    if-lez v5, :cond_4

    aget v5, p1, v3

    sget-object v6, Lcom/oneplus/signal/OpSignalIcons;->HD_ICONS:[I

    array-length v7, v6

    if-gt v5, v7, :cond_4

    .line 1652
    aget v5, p1, v3

    sub-int/2addr v5, v8

    aget v5, v6, v5

    aput v5, v0, v3

    goto :goto_2

    .line 1654
    :cond_4
    sget v5, Lcom/oneplus/signal/OpSignalIcons;->HD:I

    aput v5, v0, v3

    goto :goto_2

    .line 1658
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/util/OpUtils;->isSupportMultiLTEstatus(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    aget v5, p1, v3

    if-lez v5, :cond_6

    aget v5, p1, v3

    sget-object v6, Lcom/oneplus/signal/OpSignalIcons;->VOLTE_ICONS:[I

    array-length v7, v6

    if-gt v5, v7, :cond_6

    .line 1660
    aget v5, p1, v3

    sub-int/2addr v5, v8

    aget v5, v6, v5

    aput v5, v0, v3

    goto :goto_2

    .line 1662
    :cond_6
    aget v5, p1, v3

    if-lez v5, :cond_7

    .line 1663
    sget v5, Lcom/oneplus/signal/OpSignalIcons;->VOLTE:I

    aput v5, v0, v3

    .line 1669
    :cond_7
    :goto_2
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportShowVoWifi()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1670
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isSupportMultiLTEstatus(Landroid/content/Context;)Z

    move-result p0

    const/4 v5, 0x2

    if-eqz p0, :cond_8

    if-eqz v4, :cond_8

    aget p0, p1, v5

    if-lez p0, :cond_8

    aget p0, p1, v5

    sget-object v4, Lcom/oneplus/signal/OpSignalIcons;->VOWIFI_ICONS:[I

    array-length v6, v4

    if-gt p0, v6, :cond_8

    .line 1672
    aget p0, p1, v5

    sub-int/2addr p0, v8

    aget p0, v4, p0

    aput p0, v0, v5

    goto :goto_3

    .line 1674
    :cond_8
    aget p0, p1, v5

    if-lez p0, :cond_9

    .line 1675
    sget p0, Lcom/oneplus/signal/OpSignalIcons;->VOWIFI:I

    aput p0, v0, v5

    :cond_9
    :goto_3
    move p0, v3

    :goto_4
    if-ge p0, v1, :cond_b

    .line 1683
    aget p1, v0, p0

    if-lez p1, :cond_a

    move p1, v8

    goto :goto_5

    :cond_a
    move p1, v3

    .line 1684
    :goto_5
    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    aget v5, v0, p0

    const/4 v6, 0x0

    invoke-direct {v4, p1, v5, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 1685
    aput-object v4, v2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_b
    return-object v2
.end method

.method private getSlotProvisionStatus(II)I
    .locals 5

    const-string v0, " Exception: "

    const-string v1, "Failed to get pref, slotId: "

    const-string v2, "NetworkController"

    .line 1733
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-nez v3, :cond_0

    const-string v3, "extphone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    :cond_0
    const/4 v3, 0x0

    .line 1736
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    invoke-interface {v4, p1}, Lorg/codeaurora/internal/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I

    move-result p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 1743
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 1744
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v4

    .line 1739
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 1740
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSlotProvisionStatus slotId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", status = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private getVirtualPilot(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9

    const-string p0, "NetworkController"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1849
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "slot=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1850
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_URL:Landroid/net/Uri;

    const-string/jumbo p1, "slot"

    const-string v2, "iccid"

    const-string v5, "permit_package"

    const-string v6, "forbid_package"

    const-string v7, "pilot"

    filled-new-array {p1, v2, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    .line 1851
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string/jumbo v8, "slot"

    .line 1850
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1854
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1855
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    .line 1856
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1857
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1859
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVirtualIccid SQLiteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Virtual sim slot:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pilot = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private handleSetUserSetupComplete(Z)V
    .locals 2

    .line 999
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserSetup:Z

    const/4 p1, 0x0

    .line 1000
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1002
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserSetup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setUserSetupComplete(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private hasAnySim()Z
    .locals 5

    .line 891
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 893
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    if-eqz v3, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private hasSimReady()Z
    .locals 5

    .line 1892
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1894
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private initProvistionState()V
    .locals 3

    const-string v0, "NetworkController"

    const-string v1, "init provision"

    .line 1754
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    invoke-static {}, Lcom/oneplus/util/OpUtils;->getSimCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1760
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1761
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getSlotProvisionStatus(II)I

    move-result v2

    .line 1762
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onProvisionChange(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isSoftSIM(I)Z
    .locals 10

    const-string v0, "isSoftSIM"

    const-string v1, "NetworkController"

    .line 1816
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-nez v2, :cond_0

    const-string v2, "extphone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    :cond_0
    const/4 v2, 0x0

    .line 1818
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-eqz v3, :cond_2

    .line 1819
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "phone"

    .line 1821
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1822
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSoftSIM slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "generalGetter"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    const-class v8, Landroid/os/Bundle;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1824
    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1825
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v2

    aput-object v3, v5, v9

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 1826
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v0, "slot "

    if-eqz p0, :cond_1

    .line 1827
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is softsim"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 1830
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is NOT softsim"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1834
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v2
.end method

.method public static synthetic lambda$kkWH_IrhHJnwynPIgTUQ4s52BA4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 383
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkController"

    const-string v1, ": mClearForceValidated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 384
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mForceCellularValidated:Z

    .line 385
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    return-void
.end method

.method static synthetic lambda$opActionTetherErrorAlertDialog$3(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, -0x1

    .line 1922
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/high16 p1, -0x10000

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private synthetic lambda$registerListeners$1()V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setUserSetupComplete$2(Z)V
    .locals 0

    .line 995
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->handleSetUserSetupComplete(Z)V

    return-void
.end method

.method private notifyAllListeners()V
    .locals 2

    .line 1061
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    const/4 v0, 0x0

    .line 1062
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1063
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1064
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    .line 1067
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    return-void
.end method

.method private notifyControllersMobileDataChanged()V
    .locals 2

    const/4 v0, 0x0

    .line 568
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 570
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->onMobileDataChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyListeners()V
    .locals 6

    .line 1076
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    sget v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FLIGHT_MODE_ICON:I

    sget v4, Lcom/android/systemui/R$string;->accessibility_airplane_mode:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    .line 1078
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setNoSims(ZZ)V

    return-void
.end method

.method private notifySetVirtualSimstate([I)V
    .locals 2

    .line 1870
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setVirtualSimstate([I)V

    const/4 v0, 0x0

    .line 1871
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1872
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1873
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setVirtualSimstate([I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onFackPSIcon(Z)V
    .locals 4

    .line 1963
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 1966
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1968
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const-string v2, "oneplus_fake_ps_icon"

    const/4 v3, 0x0

    .line 1967
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1970
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fakePSIcon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mFackPSIcon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFackPSIcon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFackPSIcon:Z

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_4

    .line 1974
    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFackPSIcon:Z

    .line 1975
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v3, p1, :cond_3

    .line 1976
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1977
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFackPSIcon:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setFakePSIconEnable(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1979
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    :cond_4
    return-void
.end method

.method private onProvisionChange(II)V
    .locals 2

    .line 1717
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    return-void

    .line 1720
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProvisionChange slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " provi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    aput p2, v0, p1

    .line 1723
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onLTEStatusUpdate()V

    .line 1725
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    if-eqz p0, :cond_1

    .line 1726
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setProvision(II)V

    :cond_1
    return-void
.end method

.method private onSmartLinkChange(Z)V
    .locals 6

    .line 1935
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 1938
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1940
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const-string v2, "oneplus_smart_link_selection"

    const/4 v3, 0x0

    .line 1939
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1942
    :goto_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    const-string v5, "download_smart_link_aggregation"

    .line 1941
    invoke-static {v0, v5, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    or-int v0, v1, v2

    .line 1945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " smartLinkStateEnable:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " smartLinkSelection:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " smartLinkAggregation:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSmartlinkEnable:Z

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_5

    .line 1950
    :cond_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSmartlinkEnable:Z

    .line 1951
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v3, p1, :cond_4

    .line 1952
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1953
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSmartlinkEnable:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setSmartlinkEnable(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1955
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    :cond_5
    return-void
.end method

.method private onUserSwitched(I)V
    .locals 1

    .line 673
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentUserId:I

    .line 674
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->onUserSwitched(I)V

    .line 675
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    return-void
.end method

.method private opActionTetherErrorAlertDialog()V
    .locals 5

    .line 1903
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOpActionTetherDialogShowing:Z

    if-eqz v0, :cond_0

    return-void

    .line 1904
    :cond_0
    sget v0, Lcom/android/systemui/R$string;->hotspot_operator_dialog_othererror_title:I

    .line 1905
    sget v1, Lcom/android/systemui/R$string;->hotspot_operator_dialog_othererror_msg:I

    .line 1906
    sget v2, Lcom/android/systemui/R$string;->hotspot_operator_dialog_othererror_button:I

    .line 1908
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1910
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1911
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 1912
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$10;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 1913
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1918
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1919
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7de

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1921
    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$SPi8Wbr19DM3C_1aQLD1glLQZXY;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$SPi8Wbr19DM3C_1aQLD1glLQZXY;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const/4 v1, 0x1

    .line 1924
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOpActionTetherDialogShowing:Z

    .line 1925
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private pushConnectivityToSignals()V
    .locals 4

    const/4 v0, 0x0

    .line 1114
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1115
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1116
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/SignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    .line 1119
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    .line 1122
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkSpeedController:Lcom/oneplus/networkspeed/NetworkSpeedController;

    if-eqz v0, :cond_1

    .line 1123
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-interface {v0, v1, p0}, Lcom/oneplus/networkspeed/NetworkSpeedController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    :cond_1
    return-void
.end method

.method private refreshLocale()V
    .locals 2

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1049
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1050
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 1051
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->refreshLocale()V

    .line 1052
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    :cond_0
    return-void
.end method

.method private setUserSetupComplete(Z)V
    .locals 2

    .line 995
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$Azegj2_SgwoDK-vkYhUnuXri31U;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$Azegj2_SgwoDK-vkYhUnuXri31U;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unregisterListeners()V
    .locals 3

    const/4 v0, 0x0

    .line 488
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    .line 489
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 491
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->unregisterListener()V

    .line 492
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->unregisterFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 498
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSettingObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;->unObserve()V

    return-void
.end method

.method private updateAirplaneMode(Z)V
    .locals 4

    .line 1030
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1033
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAirplaneMode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " new: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " force: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NetworkController"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-ne v1, v0, :cond_2

    if-eqz p1, :cond_4

    .line 1038
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 1039
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_3

    .line 1040
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1041
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setAirplaneMode(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1043
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    :cond_4
    return-void
.end method

.method private updateConnectivity()V
    .locals 10

    .line 1085
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 1086
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 1088
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 1089
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget v8, v5, v7

    .line 1090
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    const/16 v9, 0x10

    .line 1091
    invoke-virtual {v4, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1092
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1097
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mForceCellularValidated:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 1099
    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_4

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateConnectivity: mConnectedTransports="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConnectivity: mValidatedTransports="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    .line 1106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->pushConnectivityToSignals()V

    return-void
.end method

.method private updateMobileControllers()V
    .locals 1

    .line 825
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-nez v0, :cond_0

    return-void

    .line 828
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->doUpdateMobileControllers()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 5

    .line 623
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setSubs(Ljava/util/List;)V

    .line 624
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    sget v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FLIGHT_MODE_ICON:I

    sget v3, Lcom/android/systemui/R$string;->accessibility_airplane_mode:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    .line 626
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNoSims(ZZ)V

    .line 627
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 628
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    const/4 v0, 0x0

    move v1, v0

    .line 629
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 630
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 631
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setListening(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;Z)V

    .line 637
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setLTEStatus([Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    .line 641
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 642
    aget v1, v1, v0

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setProvision(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->softSimState:[I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setVirtualSimstate([I)V

    .line 651
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasSimReady()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setHasAnySimReady(Z)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 122
    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1188
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    const-string v4, "NetworkController"

    const/4 v5, 0x1

    if-nez v3, :cond_1

    const-string v3, "enter"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1189
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Entering demo mode"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->unregisterListeners()V

    .line 1191
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 1192
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    .line 1193
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    const-string v0, "DemoMode"

    .line 1194
    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    goto/16 :goto_20

    .line 1195
    :cond_1
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    const-string v3, "exit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1196
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "Exiting demo mode"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_2
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 1200
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    .line 1201
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v6, v1, :cond_3

    .line 1202
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1203
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SignalController;->resetLastState()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1205
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SignalController;->resetLastState()V

    .line 1206
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRegisterListeners:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1207
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    goto/16 :goto_20

    .line 1208
    :cond_4
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v3, :cond_4e

    const-string v3, "network"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const-string v1, "airplane"

    .line 1209
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "show"

    if-eqz v1, :cond_5

    .line 1211
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1212
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    new-instance v7, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    sget v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FLIGHT_MODE_ICON:I

    sget v9, Lcom/android/systemui/R$string;->accessibility_airplane_mode:I

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v7, v1, v8, v9, v10}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    :cond_5
    const-string v1, "fully"

    .line 1216
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1218
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    .line 1219
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 1221
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    if-eqz v4, :cond_6

    .line 1222
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/SignalController;->mTransportType:I

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 1224
    :cond_6
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v4, v1, v1}, Lcom/android/systemui/statusbar/policy/SignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    move v4, v6

    .line 1225
    :goto_1
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_8

    .line 1226
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1227
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    if-eqz v8, :cond_7

    .line 1228
    iget v8, v7, Lcom/android/systemui/statusbar/policy/SignalController;->mTransportType:I

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 1230
    :cond_7
    invoke-virtual {v7, v1, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    const-string/jumbo v1, "wifi"

    .line 1233
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "inout"

    const-string v8, "out"

    const-string v9, "in"

    const v11, 0x1af4e

    const/16 v12, 0xd25

    const-string v13, "null"

    const-string v14, "activity"

    const-string v15, "level"

    const/16 v16, -0x1

    if-eqz v1, :cond_15

    .line 1235
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1236
    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 1238
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    move/from16 v6, v16

    goto :goto_2

    .line 1239
    :cond_9
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sget v17, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v10, v17, -0x1

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_2
    iput v6, v4, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 1240
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v6, v4, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    if-ltz v6, :cond_a

    move v6, v5

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    :goto_3
    iput-boolean v6, v4, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    .line 1242
    :cond_b
    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 1244
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    if-eq v6, v12, :cond_e

    if-eq v6, v11, :cond_d

    const v10, 0x5fb5409

    if-eq v6, v10, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    goto :goto_5

    :cond_d
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x2

    goto :goto_5

    :cond_e
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v5

    goto :goto_5

    :cond_f
    :goto_4
    move/from16 v4, v16

    :goto_5
    if-eqz v4, :cond_12

    if-eq v4, v5, :cond_11

    const/4 v6, 0x2

    if-eq v4, v6, :cond_10

    .line 1255
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto :goto_6

    .line 1252
    :cond_10
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto :goto_6

    .line 1249
    :cond_11
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto :goto_6

    .line 1246
    :cond_12
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto :goto_6

    .line 1259
    :cond_13
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    :goto_6
    const-string/jumbo v4, "ssid"

    .line 1261
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 1263
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-object v4, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 1265
    :cond_14
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-boolean v1, v4, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    .line 1266
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    :cond_15
    const-string/jumbo v1, "sims"

    .line 1268
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    if-eqz v1, :cond_17

    .line 1270
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v5, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 1271
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1272
    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-eq v1, v10, :cond_17

    .line 1273
    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    .line 1274
    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCountMax()I

    move-result v10

    move v11, v10

    :goto_7
    add-int v12, v10, v1

    if-ge v11, v12, :cond_16

    .line 1276
    invoke-direct {v0, v11, v11}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalController(II)Landroid/telephony/SubscriptionInfo;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1278
    :cond_16
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSubs(Ljava/util/List;)V

    const/4 v1, 0x0

    .line 1279
    :goto_8
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_17

    .line 1280
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 1281
    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1282
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_17
    const-string v1, "nosim"

    .line 1286
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 1288
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    .line 1289
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    invoke-virtual {v6, v1, v10}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setNoSims(ZZ)V

    :cond_18
    const-string v1, "mobile"

    .line 1291
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 1293
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "datatype"

    .line 1294
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "slot"

    .line 1295
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1296
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_19

    const/4 v10, 0x0

    goto :goto_9

    :cond_19
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :goto_9
    const/4 v11, 0x0

    .line 1297
    invoke-static {v10, v11, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v10

    .line 1299
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1300
    :goto_a
    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-gt v12, v10, :cond_1a

    .line 1301
    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1302
    invoke-direct {v0, v12, v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalController(II)Landroid/telephony/SubscriptionInfo;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1304
    :cond_1a
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1b

    .line 1305
    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v12, v11}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSubs(Ljava/util/List;)V

    .line 1308
    :cond_1b
    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1309
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz v6, :cond_1c

    move v12, v5

    goto :goto_b

    :cond_1c
    const/4 v12, 0x0

    :goto_b
    iput-boolean v12, v11, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    .line 1310
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz v6, :cond_1d

    move v12, v5

    goto :goto_c

    :cond_1d
    const/4 v12, 0x0

    :goto_c
    iput-boolean v12, v11, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    .line 1311
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz v6, :cond_1e

    move v12, v5

    goto :goto_d

    :cond_1e
    const/4 v12, 0x0

    :goto_d
    iput-boolean v12, v11, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    const-string v11, "2g"

    const-string v12, "1x"

    const-string v4, "lte+"

    const-string v5, "lte"

    if-eqz v6, :cond_31

    .line 1313
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v18

    move/from16 v19, v1

    move-object/from16 v1, v18

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    .line 1314
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1f

    sget-object v18, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    :goto_e
    move-object/from16 v28, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v28

    goto/16 :goto_f

    .line 1316
    :cond_1f
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_20

    sget-object v18, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_e

    :cond_20
    move-object/from16 v18, v9

    const-string v9, "3g"

    .line 1318
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_f

    :cond_21
    const-string v9, "3g+"

    .line 1320
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_f

    :cond_22
    const-string v9, "4g"

    .line 1322
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_f

    :cond_23
    const-string v9, "4g+"

    .line 1323
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_f

    :cond_24
    const-string v9, "5g"

    .line 1324
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_25

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_f

    :cond_25
    const-string v9, "5ge"

    .line 1325
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_f

    :cond_26
    const-string v9, "5g+"

    .line 1326
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    :cond_27
    const-string v9, "e"

    .line 1327
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_28

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    :cond_28
    const-string v9, "g"

    .line 1328
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    :cond_29
    const-string v9, "h"

    .line 1329
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    :cond_2a
    const-string v9, "h+"

    .line 1330
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    .line 1331
    :cond_2b
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    .line 1332
    :cond_2c
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    :cond_2d
    const-string v9, "dis"

    .line 1333
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2e

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    :cond_2e
    const-string v9, "not"

    .line 1334
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2f

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    :cond_2f
    const-string v9, "4glte"

    .line 1337
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    .line 1339
    :cond_30
    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    :goto_f
    iput-object v9, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_10

    :cond_31
    move/from16 v19, v1

    move-object/from16 v18, v9

    :goto_10
    const-string v1, "roam"

    .line 1341
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 1342
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    .line 1344
    :cond_32
    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 1348
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    move/from16 v1, v16

    goto :goto_11

    .line 1349
    :cond_33
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget v13, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    invoke-static {v1, v13}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_11
    iput v1, v9, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 1351
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v9, v9, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    if-ltz v9, :cond_34

    const/4 v9, 0x1

    goto :goto_12

    :cond_34
    const/4 v9, 0x0

    :goto_12
    iput-boolean v9, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    :cond_35
    const-string v1, "inflate"

    .line 1354
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x0

    .line 1355
    :goto_13
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v1, v9, :cond_36

    .line 1356
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const-string v13, "inflate"

    .line 1357
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "true"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    iput-boolean v13, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_36
    const-string/jumbo v1, "stack"

    .line 1362
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    if-eqz v6, :cond_43

    .line 1364
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1366
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 1367
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    .line 1369
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v13, v13, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-object/from16 v21, v13

    check-cast v21, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1371
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_38

    :cond_37
    const/4 v11, 0x7

    :goto_14
    move/from16 v23, v11

    goto :goto_18

    :cond_38
    const-string v12, "g"

    .line 1372
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_39

    const/16 v23, 0x1

    goto :goto_18

    .line 1373
    :cond_39
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3a

    const/4 v11, 0x4

    goto :goto_14

    :cond_3a
    const-string v11, "3g"

    .line 1374
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3b

    const/16 v11, 0x11

    goto :goto_14

    :cond_3b
    const-string v11, "4g"

    .line 1375
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3c

    :goto_15
    const/16 v11, 0xd

    goto :goto_14

    :cond_3c
    const-string v11, "4g+"

    .line 1376
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3d

    :goto_16
    const/16 v11, 0x13

    goto :goto_14

    :cond_3d
    const-string v11, "h"

    .line 1377
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3e

    :goto_17
    const/16 v23, 0x8

    goto :goto_18

    :cond_3e
    const-string v11, "h+"

    .line 1378
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3f

    goto :goto_17

    .line 1379
    :cond_3f
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_40

    goto :goto_15

    .line 1380
    :cond_40
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_37

    goto :goto_16

    .line 1383
    :goto_18
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    goto :goto_19

    :cond_41
    const/16 v27, 0x0

    goto :goto_1a

    :cond_42
    :goto_19
    const/16 v27, 0x1

    .line 1384
    :goto_1a
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    new-instance v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-object/from16 v20, v5

    move/from16 v22, v23

    move/from16 v24, v1

    move/from16 v25, v1

    move/from16 v26, v9

    invoke-direct/range {v20 .. v27}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;IIIIZZ)V

    iput-object v5, v4, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    :cond_43
    const-string/jumbo v1, "virtual"

    .line 1390
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1391
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string/jumbo v4, "virtual"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isVirtual:Z

    .line 1395
    :cond_44
    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 1397
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 1398
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0xd25

    if-eq v4, v5, :cond_47

    const v5, 0x1af4e

    if-eq v4, v5, :cond_46

    const v5, 0x5fb5409

    if-eq v4, v5, :cond_45

    goto :goto_1b

    :cond_45
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v1, 0x0

    goto :goto_1c

    :cond_46
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v1, 0x2

    goto :goto_1c

    :cond_47
    move-object/from16 v4, v18

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v1, 0x1

    goto :goto_1c

    :cond_48
    :goto_1b
    move/from16 v1, v16

    :goto_1c
    if-eqz v1, :cond_4b

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4a

    const/4 v5, 0x2

    if-eq v1, v5, :cond_49

    const/4 v1, 0x0

    .line 1409
    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto :goto_1d

    :cond_49
    const/4 v1, 0x0

    .line 1406
    invoke-virtual {v10, v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto :goto_1d

    :cond_4a
    const/4 v1, 0x0

    .line 1403
    invoke-virtual {v10, v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto :goto_1d

    :cond_4b
    const/4 v1, 0x0

    const/4 v4, 0x3

    .line 1400
    invoke-virtual {v10, v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto :goto_1d

    :cond_4c
    const/4 v1, 0x0

    .line 1413
    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    .line 1415
    :goto_1d
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move/from16 v5, v19

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    .line 1417
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDemoMode:Z

    .line 1419
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    goto :goto_1e

    :cond_4d
    const/4 v1, 0x0

    :goto_1e
    const-string v4, "carriernetworkchange"

    .line 1421
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 1423
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v6, v1

    .line 1424
    :goto_1f
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v6, v1, :cond_4e

    .line 1425
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1426
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setCarrierNetworkChangeMode(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_4e
    :goto_20
    return-void
.end method

.method doUpdateMobileControllers()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 856
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 857
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 859
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 862
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->filterMobileSubscriptionInSameGroup(Ljava/util/List;)V

    .line 865
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasCorrectMobileControllers(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 869
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSims()V

    return-void

    .line 872
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 873
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setCurrentSubscriptionsLocked(Ljava/util/List;)V

    .line 874
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSims()V

    .line 876
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    return-void

    :catchall_0
    move-exception p0

    .line 874
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "NetworkController state:"

    .line 1129
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  - telephony ------"

    .line 1131
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  hasVoiceCallingFeature()="

    .line 1132
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mListening="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  - connectivity ------"

    .line 1136
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mConnectedTransports="

    .line 1137
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1138
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mValidatedTransports="

    .line 1139
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1140
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mInetCondition="

    .line 1141
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1142
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mAirplaneMode="

    .line 1143
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1144
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mLocale="

    .line 1145
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1146
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mLastServiceState="

    .line 1147
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1148
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mIsEmergency="

    .line 1149
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1150
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsEmergency:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mEmergencySource="

    .line 1151
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1152
    iget p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->emergencyToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  - config ------"

    .line 1154
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1155
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_0

    .line 1156
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1157
    invoke-virtual {p3, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1159
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 1161
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 1163
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
    .locals 0

    .line 509
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    return-object p0
.end method

.method public getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    return-object p0
.end method

.method public getMobileDataController()Lcom/android/settingslib/net/DataUsageController;
    .locals 0

    .line 514
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    return-object p0
.end method

.method public getMobileDataNetworkName()Ljava/lang/String;
    .locals 0

    .line 549
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataController()Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method handleConfigurationChanged()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 816
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    const/4 v0, 0x0

    .line 817
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 818
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 819
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setConfiguration(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 821
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    return-void
.end method

.method hasCorrectMobileControllers(Ljava/util/List;)Z
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1008
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 1011
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 1012
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_2

    return v2

    .line 1017
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    if-eqz v1, :cond_1

    .line 1019
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1020
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "hasCorrectMobileControllers SubId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " change from:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public hasEmergencyCryptKeeperText()Z
    .locals 0

    .line 1445
    sget-boolean p0, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    return p0
.end method

.method public hasMobileDataFeature()Z
    .locals 0

    .line 527
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    return p0
.end method

.method public hasVoiceCallingFeature()Z
    .locals 0

    .line 531
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isDataControllerDisabled()Z
    .locals 0

    .line 559
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataController()Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result p0

    return p0
.end method

.method public isEmergencyOnly()Z
    .locals 7

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 578
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    .line 579
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultVoiceSubId()I

    move-result v0

    .line 582
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    const-string v4, "NetworkController"

    if-nez v3, :cond_4

    move v3, v2

    .line 583
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 584
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 585
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-nez v6, :cond_3

    .line 586
    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 587
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    .line 588
    sget-boolean p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found emergency "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 593
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_6

    add-int/lit16 v1, v0, 0xc8

    .line 594
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    .line 595
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting emergency from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    return p0

    .line 600
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v1, :cond_8

    .line 601
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    .line 602
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x190

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    .line 603
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Getting assumed emergency from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    .line 604
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    return p0

    .line 607
    :cond_8
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find controller for voice sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    add-int/lit16 v0, v0, 0x12c

    .line 608
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    return v1
.end method

.method isInGroupDataSwitch(II)Z
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 390
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 391
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 392
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object p1

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRadioOn()Z
    .locals 0

    .line 1449
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method keepCellularValidationBitInSwitch(II)Z
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isInGroupDataSwitch(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public synthetic lambda$new$0$NetworkControllerImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->lambda$new$0()V

    return-void
.end method

.method public synthetic lambda$registerListeners$1$NetworkControllerImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->lambda$registerListeners$1()V

    return-void
.end method

.method public synthetic lambda$setUserSetupComplete$2$NetworkControllerImpl(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->lambda$setUserSetupComplete$2(Z)V

    return-void
.end method

.method public onLTEStatusUpdate()V
    .locals 11

    .line 1566
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1569
    fill-array-data v1, :array_0

    const-class v2, Z

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    const/4 v2, 0x6

    new-array v3, v2, [I

    .line 1571
    fill-array-data v3, :array_1

    const/4 v4, 0x0

    move v5, v4

    .line 1573
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1574
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1575
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getLTEStatus()[Z

    move-result-object v7

    move v8, v4

    .line 1576
    :goto_1
    array-length v9, v7

    if-ge v8, v9, :cond_2

    .line 1577
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v9

    array-length v10, v1

    if-ge v9, v10, :cond_1

    .line 1578
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v9

    aget-object v9, v1, v9

    aget-boolean v10, v7, v8

    aput-boolean v10, v9, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1583
    :cond_3
    aget-object v5, v1, v4

    aget-boolean v5, v5, v4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    aget-object v5, v1, v7

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_4

    aput v6, v3, v4

    goto :goto_2

    .line 1585
    :cond_4
    aget-object v5, v1, v4

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_5

    aget-object v5, v1, v7

    aget-boolean v5, v5, v4

    if-nez v5, :cond_5

    aput v7, v3, v4

    goto :goto_2

    .line 1587
    :cond_5
    aget-object v5, v1, v4

    aget-boolean v5, v5, v4

    if-nez v5, :cond_6

    aget-object v5, v1, v7

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_6

    aput v0, v3, v4

    .line 1591
    :cond_6
    :goto_2
    aget-object v5, v1, v4

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_7

    aget-object v5, v1, v7

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_7

    aput v6, v3, v0

    goto :goto_3

    .line 1593
    :cond_7
    aget-object v5, v1, v4

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_8

    aget-object v5, v1, v7

    aget-boolean v5, v5, v0

    if-nez v5, :cond_8

    aput v7, v3, v0

    goto :goto_3

    .line 1595
    :cond_8
    aget-object v5, v1, v4

    aget-boolean v5, v5, v0

    if-nez v5, :cond_9

    aget-object v1, v1, v7

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_9

    aput v0, v3, v0

    .line 1600
    :cond_9
    :goto_3
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1602
    aget v1, v3, v0

    if-lez v1, :cond_a

    aput v4, v3, v4

    .line 1608
    :cond_a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move v5, v4

    :goto_4
    if-ge v5, v2, :cond_b

    .line 1610
    aget v6, v3, v5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1613
    :cond_b
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getMultiLTEIcons([I)[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-result-object v2

    .line 1615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " multiLTEstatus:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ShowHD:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportShowHD()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetworkController"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    aget-object v3, v1, v4

    aget-object v4, v2, v4

    if-ne v3, v4, :cond_c

    aget-object v1, v1, v0

    aget-object v0, v2, v0

    if-eq v1, v0, :cond_d

    .line 1618
    :cond_c
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 1619
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setLTEStatus([Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    :cond_d
    return-void

    :array_0
    .array-data 4
        0x2
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 680
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    const-string v0, "NetworkController"

    if-eqz p1, :cond_0

    .line 681
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: intent="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 684
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "android.intent.action.setupDataError_tether"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_2
    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_7
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    :sswitch_8
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xa

    goto :goto_1

    :sswitch_9
    const-string v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_a
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    :goto_1
    packed-switch p1, :pswitch_data_0

    const-string p1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 797
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 799
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 800
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_9

    .line 801
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 787
    :pswitch_0
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "Receive ACTION_SCREEN_ON."

    .line 788
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->queryNrIconType()V

    goto/16 :goto_5

    .line 769
    :pswitch_1
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 770
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "TetherError callback"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "data_call_error"

    .line 772
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string/jumbo p1, "setTetherError "

    .line 776
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p1, v3}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    .line 778
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->opActionTetherErrorAlertDialog()V

    goto/16 :goto_5

    :pswitch_2
    const-string p1, "phone"

    .line 758
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "newProvisionState"

    .line 760
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProvisionChange provisionedState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onProvisionChange(II)V

    goto/16 :goto_5

    .line 753
    :pswitch_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 754
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/policy/-$$Lambda$ybM43k5QVX_SxWbQACu1XwL3Knk;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ybM43k5QVX_SxWbQACu1XwL3Knk;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 745
    :pswitch_4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    .line 746
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_b

    .line 749
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    goto/16 :goto_5

    :pswitch_5
    const-string p1, "rebroadcastOnUnlock"

    .line 709
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_5

    .line 713
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    const-string/jumbo p1, "ss"

    .line 717
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ABSENT"

    .line 718
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "READY"

    .line 719
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    const-string p2, "LOADED"

    .line 723
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 725
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->initProvistionState()V

    .line 727
    invoke-static {}, Lcom/oneplus/util/OpUtils;->setSimType()V

    .line 729
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 730
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->queryNrIconType()V

    goto :goto_3

    .line 720
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->initProvistionState()V

    .line 722
    invoke-static {}, Lcom/oneplus/util/OpUtils;->setSimType()V

    .line 737
    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->checkVirtualSimcard()V

    .line 740
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasSimReady()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setHasAnySimReady(Z)V

    goto :goto_5

    .line 700
    :goto_4
    :pswitch_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v3, p1, :cond_8

    .line 701
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 702
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 704
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 705
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/policy/-$$Lambda$ybM43k5QVX_SxWbQACu1XwL3Knk;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ybM43k5QVX_SxWbQACu1XwL3Knk;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 695
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    goto :goto_5

    .line 690
    :pswitch_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    .line 691
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    goto :goto_5

    .line 687
    :pswitch_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    goto :goto_5

    .line 804
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    goto :goto_5

    .line 808
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->handleBroadcast(Landroid/content/Intent;)V

    :cond_b
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d6de25e -> :sswitch_a
        -0x5753691f -> :sswitch_9
        -0x56ac2893 -> :sswitch_8
        -0x45e5283a -> :sswitch_7
        -0x43dd7a3f -> :sswitch_6
        -0x402b4235 -> :sswitch_5
        -0xdb21ee7 -> :sswitch_4
        -0x18365bb -> :sswitch_3
        0x2524f753 -> :sswitch_2
        0x4b871beb -> :sswitch_1
        0x7a525f0b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method recalculateEmergency()V
    .locals 1

    .line 618
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsEmergency:Z

    .line 619
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setEmergencyCallsOnly(Z)V

    return-void
.end method

.method registerListeners()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 406
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 408
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerListener()V

    .line 409
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    if-nez v0, :cond_1

    .line 412
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/high16 v2, 0x400000

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 418
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    .line 419
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 420
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 421
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 422
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 423
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    .line 424
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SERVICE_STATE"

    .line 425
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    .line 426
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 427
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    .line 428
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 429
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 430
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    .line 431
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 435
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.setupDataError_tether"

    .line 438
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isReallyHasOneSim()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    .line 448
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v0, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    .line 454
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$kkWH_IrhHJnwynPIgTUQ4s52BA4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$kkWH_IrhHJnwynPIgTUQ4s52BA4;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/statusbar/policy/-$$Lambda$k1PbTpG_zEeb84NzDtu0B5A435o;

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$k1PbTpG_zEeb84NzDtu0B5A435o;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$y01JBs_73T3u8BmqanYAWT8JvK0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$y01JBs_73T3u8BmqanYAWT8JvK0;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSettingObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;->observe()V

    .line 480
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    .line 484
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$w0FuAr6MDKkUIV1rcwwlRClXFUs;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$w0FuAr6MDKkUIV1rcwwlRClXFUs;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 1

    .line 658
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setListening(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;Z)V

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 122
    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method

.method public setCurrentSubscriptionsLocked(Ljava/util/List;)V
    .locals 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 905
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$8;

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$8;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 913
    iput-object v11, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    .line 915
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    .line 917
    :goto_0
    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 918
    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    .line 919
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 918
    invoke-virtual {v12, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 921
    :cond_0
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 922
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_4

    .line 924
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    .line 931
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 932
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v0

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 934
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 935
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->remove(I)V

    move/from16 v17, v14

    goto/16 :goto_2

    .line 937
    :cond_1
    new-instance v8, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v3, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    .line 938
    invoke-virtual {v0, v9}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    iget-object v5, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    .line 939
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    iget-object v6, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    .line 940
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    move-object v0, v8

    move-object/from16 v17, v6

    move-object/from16 v6, p0

    move-object v13, v8

    move-object/from16 v8, v17

    move/from16 v17, v14

    move v14, v9

    move-object/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V

    .line 941
    iget-boolean v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserSetup:Z

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setUserSetupComplete(Z)V

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create controller SubId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " SlotIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 947
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    if-nez v0, :cond_2

    .line 948
    iput-object v13, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 950
    :cond_2
    iget-boolean v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-eqz v0, :cond_3

    .line 951
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerListener()V

    .line 952
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    :cond_3
    :goto_2
    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v17

    goto/16 :goto_1

    .line 956
    :cond_4
    iget-boolean v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 957
    :goto_3
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 958
    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 959
    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    if-ne v2, v3, :cond_5

    const/4 v2, 0x0

    .line 960
    iput-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 962
    :cond_5
    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->unregisterListener()V

    .line 963
    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->unregisterFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 966
    :cond_6
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSubs(Ljava/util/List;)V

    .line 970
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setLTEStatus([Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    const/4 v13, 0x0

    .line 971
    :goto_4
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    array-length v1, v0

    if-ge v13, v1, :cond_7

    .line 972
    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    aget v0, v0, v13

    invoke-virtual {v1, v13, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setProvision(II)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 974
    :cond_7
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->softSimState:[I

    invoke-direct {v10, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifySetVirtualSimstate([I)V

    .line 977
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    .line 981
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->pushConnectivityToSignals()V

    const/4 v0, 0x1

    .line 982
    invoke-direct {v10, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    .line 985
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportShowDualChannel()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 986
    invoke-direct {v10, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onSmartLinkChange(Z)V

    .line 990
    :cond_8
    invoke-direct {v10, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onFackPSIcon(Z)V

    return-void
.end method

.method public setNetworkSpeedController(Lcom/oneplus/networkspeed/NetworkSpeedController;)V
    .locals 1

    .line 1883
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkSpeedController:Lcom/oneplus/networkspeed/NetworkSpeedController;

    if-eqz p1, :cond_0

    .line 1885
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-interface {p1, v0, p0}, Lcom/oneplus/networkspeed/NetworkSpeedController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    :cond_0
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 1

    .line 663
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 669
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected updateNoSims()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 881
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 882
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasAnySim()Z

    move-result v1

    .line 883
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    if-ne v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    if-eq v1, v2, :cond_2

    .line 884
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    .line 885
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    .line 886
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setNoSims(ZZ)V

    :cond_2
    return-void
.end method
