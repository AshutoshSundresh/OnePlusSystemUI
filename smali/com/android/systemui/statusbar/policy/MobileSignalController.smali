.class public Lcom/android/systemui/statusbar/policy/MobileSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$OpMobilePhoneStateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController<",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final LTE_DEFAULT_STATUS:[Z

.field private static SHOW_LTE_OPERATORS:[Ljava/lang/String;


# instance fields
.field private MAX_NOTIFYLISTENER_INTERVAL:I

.field private mCallState:I

.field private mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

.field private mCellSignalStrengthNr:Landroid/telephony/CellSignalStrengthNr;

.field private mClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

.field private mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field private mDataState:I

.field private mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field private final mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

.field private mFeatureConnector:Lcom/android/ims/FeatureConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/FeatureConnector<",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field

.field mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mFiveGStateListener:Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mImsListening:Z

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private final mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

.field mInflateSignalStrengths:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLTEStatus:[Z

.field private mLastUpdateActivityTime:J

.field private mLastUpdateTime:J

.field private mListening:Z

.field private mMMSDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field private mMccmnc:Ljava/lang/String;

.field private final mNetworkNameDefault:Ljava/lang/String;

.field private final mNetworkNameSeparator:Ljava/lang/String;

.field final mNetworkToIconLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field mOPMoblileReceiver:Landroid/content/BroadcastReceiver;

.field private final mObserver:Landroid/database/ContentObserver;

.field final mOpPhoneStateListener:Landroid/telephony/OpPhoneStateListener;

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field final mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field private final mVolteSwitchObserver:Landroid/content/BroadcastReceiver;

.field private mWwanAccessNetworkType:I


# direct methods
.method static constructor <clinit>()V
    .locals 42

    const/4 v0, 0x6

    new-array v0, v0, [Z

    .line 165
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->LTE_DEFAULT_STATUS:[Z

    const-string v1, "310004"

    const-string v2, "310005"

    const-string v3, "310012"

    const-string v4, "311480"

    const-string v5, "311481-9"

    const-string v6, "310026"

    const-string v7, "310160"

    const-string v8, "310170"

    const-string v9, "310200"

    const-string v10, "310210"

    const-string v11, "310220"

    const-string v12, "310230"

    const-string v13, "310240"

    const-string v14, "310250"

    const-string v15, "310260"

    const-string v16, "310270"

    const-string v17, "310280"

    const-string v18, "310290"

    const-string v19, "310310"

    const-string v20, "310330"

    const-string v21, "310490"

    const-string v22, "310580"

    const-string v23, "310660"

    const-string v24, "310800"

    const-string v25, "310090"

    const-string v26, "310150"

    const-string v27, "310380"

    const-string v28, "310410"

    const-string v29, "310560"

    const-string v30, "310680"

    const-string v31, "310980"

    const-string v32, "310990"

    const-string v33, "310120"

    const-string v34, "316010"

    const-string v35, "310020"

    const-string v36, "23203"

    const-string v37, "23207"

    const-string v38, "26002"

    const-string v39, "26201"

    const-string v40, "23001"

    const-string v41, "26006"

    .line 172
    filled-new-array/range {v1 .. v41}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->SHOW_LTE_OPERATORS:[Ljava/lang/String;

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

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V
    .locals 9

    move-object v6, p0

    move v7, p3

    move-object/from16 v8, p9

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileSignalController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    const/4 v0, 0x0

    .line 121
    iput v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    .line 122
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMMSDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 123
    new-instance v1, Landroid/telephony/TelephonyDisplayInfo;

    invoke-direct {v1, v0, v0}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 130
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    .line 133
    iput v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCallState:I

    .line 147
    iput v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mWwanAccessNetworkType:I

    const-wide/16 v1, 0x0

    .line 155
    iput-wide v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastUpdateActivityTime:J

    const/16 v3, 0x64

    .line 160
    iput v3, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->MAX_NOTIFYLISTENER_INTERVAL:I

    .line 161
    iput-wide v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastUpdateTime:J

    .line 166
    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->LTE_DEFAULT_STATUS:[Z

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLTEStatus:[Z

    .line 230
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mListening:Z

    const-string v1, ""

    .line 233
    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMccmnc:Ljava/lang/String;

    .line 241
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsListening:Z

    .line 2048
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$4;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 2067
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    .line 2109
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$6;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVolteSwitchObserver:Landroid/content/BroadcastReceiver;

    .line 2415
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOPMoblileReceiver:Landroid/content/BroadcastReceiver;

    .line 258
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() info.getSubscriptionId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    move-object v0, p2

    .line 261
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-object v0, p4

    .line 262
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p8

    .line 263
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    move-object/from16 v0, p7

    .line 264
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 265
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGStateListener:Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;

    .line 266
    new-instance v1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;-><init>()V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    .line 267
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/systemui/statusbar/policy/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;

    invoke-direct {v3, v2}, Lcom/android/systemui/statusbar/policy/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Ljava/util/concurrent/Executor;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 269
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$OpMobilePhoneStateListener;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/systemui/statusbar/policy/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;

    invoke-direct {v3, v2}, Lcom/android/systemui/statusbar/policy/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController$OpMobilePhoneStateListener;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Ljava/util/concurrent/Executor;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOpPhoneStateListener:Landroid/telephony/OpPhoneStateListener;

    .line 271
    sget v1, Lcom/android/systemui/R$string;->status_bar_network_name_separator:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 272
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    const v1, 0x1040449

    .line 273
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 274
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 278
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;

    invoke-direct {v1, p0, v8}, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Looper;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->customizeIconsMap()V

    .line 314
    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 316
    :goto_0
    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v0, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 317
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v0, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 318
    move-object v0, v1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-object v2, v3

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v7, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    .line 319
    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v0, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 321
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    .line 324
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getNumLevels(Landroid/content/Context;)I

    .line 353
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController$2;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Handler;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/TelephonyDisplayInfo;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/TelephonyDisplayInfo;)Landroid/telephony/TelephonyDisplayInfo;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/MobileSignalController;J)J
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCellSignalStrengthNrValid()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mWwanAccessNetworkType:I

    return p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0

    .line 100
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mWwanAccessNetworkType:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0

    .line 100
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0

    .line 100
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCallState:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsListening:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/os/Handler;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->customizeIconsMap()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/MobileSignalController;J)J
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastUpdateActivityTime:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/MobileSignalController;Lcom/android/ims/ImsManager;)Lcom/android/ims/ImsManager;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setListeners()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->removeListeners()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/MobileSignalController;)[Z
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLTEStatus:[Z

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/policy/MobileSignalController;[Z)[Z
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLTEStatus:[Z

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/SignalStrength;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/CellSignalStrengthNr;)Landroid/telephony/CellSignalStrengthNr;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCellSignalStrengthNr:Landroid/telephony/CellSignalStrengthNr;

    return-object p1
.end method

.method private checkDefaultData()V
    .locals 3

    .line 1566
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-eq v1, v2, :cond_0

    .line 1567
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->defaultDataOff:Z

    return-void

    .line 1571
    :cond_0
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isDataControllerDisabled()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->defaultDataOff:Z

    return-void
.end method

.method private cleanLTEStatus()V
    .locals 1

    .line 2359
    sget-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->LTE_DEFAULT_STATUS:[Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLTEStatus:[Z

    .line 2360
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v0, "cleanLTEStatus"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private customizeIconsMap()V
    .locals 16

    move-object/from16 v0, p0

    .line 2514
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    return-void

    .line 2519
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMccmnc:Ljava/lang/String;

    .line 2521
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    .line 2523
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showLTE()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isBouygues()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEESim()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v2, v3

    .line 2525
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mapIconSets()V

    const/16 v4, 0x8

    const/16 v5, 0x9

    const/4 v6, 0x2

    const/16 v7, 0xa

    const/4 v8, 0x3

    const/16 v9, 0xf

    const/16 v10, 0xd

    const/16 v11, 0x13

    if-eqz v2, :cond_7

    .line 2529
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showLTE()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2530
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2531
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2533
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2537
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isBouygues()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2538
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2539
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2540
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2541
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2542
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2543
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2544
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2545
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2546
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2548
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2554
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEESim()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2555
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2557
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    if-eqz v1, :cond_c

    .line 2569
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2570
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    if-eqz v1, :cond_8

    .line 2571
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2573
    :cond_8
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2575
    :goto_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2578
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2579
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2584
    :cond_9
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportShow4GLTE()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2585
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2586
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2588
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2595
    :cond_a
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v1

    const/16 v2, 0x11

    const/16 v6, 0xe

    const/16 v12, 0xc

    const/4 v13, 0x6

    const/4 v14, 0x5

    if-eqz v1, :cond_b

    .line 2597
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v15

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2598
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v9

    sget-object v15, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2599
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v9

    sget-object v15, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2600
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v9

    sget-object v15, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2601
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v9

    sget-object v15, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2602
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v9

    sget-object v15, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2603
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/4 v9, 0x4

    invoke-direct {v0, v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v9

    sget-object v15, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2604
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/4 v9, 0x7

    invoke-direct {v0, v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v9

    sget-object v15, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2606
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2607
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2609
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2616
    :cond_b
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2618
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2619
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2620
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2621
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2622
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2623
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2624
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2625
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2626
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v3, 0xf

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2627
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2629
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v2, 0x12

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method private getAlternateLteLevel(Landroid/telephony/SignalStrength;)I
    .locals 3

    .line 1636
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 1638
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    .line 1639
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1640
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAlternateLteLevel lteRsrp:INVALID  signalStrengthLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p1

    :cond_1
    const/16 p1, -0x2c

    const/4 v1, 0x0

    if-le v0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, -0x61

    if-lt v0, p1, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const/16 p1, -0x69

    if-lt v0, p1, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    const/16 p1, -0x71

    if-lt v0, p1, :cond_5

    const/4 v1, 0x2

    goto :goto_0

    :cond_5
    const/16 p1, -0x78

    if-lt v0, p1, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/16 p1, -0x8c

    .line 1653
    :goto_0
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz p1, :cond_7

    .line 1654
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAlternateLteLevel lteRsrp:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " rsrpLevel = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v1
.end method

.method private final getCdmaLevel()I
    .locals 2

    .line 1347
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-class v0, Landroid/telephony/CellSignalStrengthCdma;

    .line 1348
    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 1349
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1350
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method private getDataNetworkType()I
    .locals 0

    .line 1631
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_0

    .line 1632
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getDisableDataIcon()I
    .locals 4

    .line 2676
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v0

    .line 2678
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->is5GConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/32 v0, 0x80000

    .line 2682
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisableDataIcon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    invoke-static {v0, v1}, Lcom/oneplus/signal/OpSignalIcons;->getDisableDataIcon(J)I

    move-result p0

    return p0
.end method

.method private getEnhancementDataRatIcon()I
    .locals 1

    .line 1791
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showDataRatIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1793
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isSideCarValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1794
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object p0

    goto :goto_0

    .line 1796
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNetworkTypeIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object p0

    .line 1798
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private getIconKey()Ljava/lang/String;
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIdleDataIcon()I
    .locals 4

    .line 2655
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v0

    .line 2656
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->is5GConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/32 v0, 0x80000

    .line 2659
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIdleDataIcon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    invoke-static {v0, v1}, Lcom/oneplus/signal/OpSignalIcons;->getIdleDataIcon(J)I

    move-result p0

    return p0
.end method

.method private getNetworkTypeIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 2

    .line 1762
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1773
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1767
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    if-nez v0, :cond_2

    .line 1769
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v0

    .line 1771
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v0

    .line 1776
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0
.end method

.method private getNrLevel()I
    .locals 0

    .line 1757
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCellSignalStrengthNr:Landroid/telephony/CellSignalStrengthNr;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->getLevel()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getNumLevels()I
    .locals 0

    .line 811
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    if-eqz p0, :cond_0

    .line 812
    sget p0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 814
    :cond_0
    sget p0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    return p0
.end method

.method private getVoiceNetworkType()I
    .locals 0

    .line 1626
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_0

    .line 1627
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getVoiceSignalLevel()I
    .locals 2

    .line 2393
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2402
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showStacked()Z

    move-result v0

    .line 2404
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSmoothSignalLevelAll()[I

    move-result-object p0

    aget p0, p0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p0

    .line 2405
    :goto_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportFiveBar()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    if-le p0, v0, :cond_2

    move p0, v0

    :cond_2
    return p0
.end method

.method private getVolteResId()I
    .locals 3

    .line 914
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v0

    .line 915
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    if-nez v2, :cond_0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    if-eqz v1, :cond_1

    .line 917
    sget p0, Lcom/android/systemui/R$drawable;->ic_volte:I

    goto :goto_0

    .line 918
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 919
    invoke-virtual {p0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result p0

    const/16 v1, 0x13

    if-ne p0, v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    .line 921
    sget p0, Lcom/android/systemui/R$drawable;->ic_volte_no_voice:I

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getVowifiIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 1

    .line 1809
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVowifiAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCallIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1810
    sget-object p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->VOWIFI_CALLING:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0

    .line 1811
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVowifiAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1812
    sget-object p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->VOWIFI:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private is5GConnected()Z
    .locals 2

    .line 1722
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1723
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v0, "mFiveGState is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1727
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->isConnectedOnSaMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    .line 1729
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->isConnectedOnNsaMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataRegisteredOnLteNr()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isBouygues()Z
    .locals 2

    .line 2487
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2490
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMccmnc:Ljava/lang/String;

    const-string v0, "20820"

    .line 2491
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private isCallIdle()Z
    .locals 0

    .line 1622
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCallState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCarrierNetworkChangeActive()Z
    .locals 0

    .line 1227
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    return p0
.end method

.method private isCdma()Z
    .locals 0

    .line 1187
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCellSignalStrengthNrValid()Z
    .locals 0

    .line 1753
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCellSignalStrengthNr:Landroid/telephony/CellSignalStrengthNr;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDataNetworkTypeAvailable()Z
    .locals 4

    .line 1596
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1599
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result v0

    .line 1600
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    const/16 v3, 0xe

    if-eq v0, v3, :cond_1

    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    const/16 v3, 0x13

    if-ne v0, v3, :cond_3

    :cond_1
    const/16 v3, 0x10

    if-eq v2, v3, :cond_2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 1609
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCallIdle()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 1612
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->isGlobalROM(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x12

    if-ne v0, v2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private isDataRegisteredOnLte()Z
    .locals 1

    .line 1696
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result p0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isDataRegisteredOnLteNr()Z
    .locals 1

    .line 1708
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result p0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isEESim()Z
    .locals 2

    .line 2500
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2503
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMccmnc:Ljava/lang/String;

    const-string v0, "23430"

    .line 2504
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "23433"

    .line 2505
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isRoaming()Z
    .locals 5

    .line 1196
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_1

    return v1

    .line 1204
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isRoaming iconMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " EriIconIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1205
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isRoaming:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1204
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_3
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1209
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1

    .line 1213
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_8

    .line 1214
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCdmaEriInformation()Landroid/telephony/CdmaEriInformation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CdmaEriInformation;->getEriIconMode()I

    move-result v0

    .line 1215
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCdmaEriInformation()Landroid/telephony/CdmaEriInformation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CdmaEriInformation;->getEriIconIndex()I

    move-result v3

    if-eq v3, v2, :cond_7

    if-eqz v0, :cond_6

    if-ne v0, v2, :cond_7

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1219
    invoke-static {p0}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result p0

    if-eqz p0, :cond_7

    move v1, v2

    :cond_7
    return v1

    .line 1222
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p0

    if-eqz p0, :cond_9

    move v1, v2

    :cond_9
    return v1
.end method

.method private isSideCarNsaValid()Z
    .locals 1

    .line 1749
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->isNrIconTypeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataRegisteredOnLte()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSideCarSaValid()Z
    .locals 2

    .line 1744
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getNrConfigType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    .line 1745
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->isNrIconTypeValid()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSideCarValid()Z
    .locals 3

    .line 1736
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1737
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSideCarSaValid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isSideCarSaValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isSideCarNsaValid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isSideCarNsaValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isSideCarSaValid()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isSideCarNsaValid()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isVirtualSim()Z
    .locals 1

    .line 2387
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isVirtual:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->simstate:Ljava/lang/String;

    const-string v0, "ABSENT"

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isVolteSwitchOn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private isVowifiAvailable()Z
    .locals 2

    .line 1804
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    if-eqz v0, :cond_0

    .line 1805
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result p0

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private mapIconSets()V
    .locals 0

    .line 565
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->opMapIconSets()V

    return-void
.end method

.method private mayNotifyListeners()V
    .locals 5

    .line 1004
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1005
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastUpdateTime:J

    sub-long/2addr v0, v2

    .line 1006
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x3e8

    .line 1007
    iput v3, v2, Landroid/os/Message;->what:I

    .line 1009
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1011
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->MAX_NOTIFYLISTENER_INTERVAL:I

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    .line 1012
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1014
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private opMapIconSets()V
    .locals 7

    .line 701
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 703
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_SA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-nez v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_0

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 742
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 743
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 746
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v6, 0x9

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v3, 0xf

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v2, 0x13

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private queryImsState()V
    .locals 4

    .line 955
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 956
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVolteAvailable()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    .line 957
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoTelephonyAvailable()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    .line 958
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isImsRegistered(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    .line 959
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 960
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryImsState tm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " phone="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " voiceCapable="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " videoCapable="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " imsResitered="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method private removeListeners()V
    .locals 5

    const-string v0, " from "

    .line 969
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    const-string/jumbo v2, "slot:"

    if-nez v1, :cond_0

    .line 974
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " removeListeners mImsManager is null"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 981
    :try_start_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsListening:Z

    .line 983
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v1, v3}, Lcom/android/ims/ImsManager;->removeCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V

    .line 984
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v1, v3}, Lcom/android/ims/ImsManager;->removeRegistrationListener(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 992
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " removeCapabilitiesCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " removeRegistrationCallback "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 998
    :catch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "unable to remove callback."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setListeners()V
    .locals 5

    const-string v0, " into "

    const-string/jumbo v1, "slot:"

    .line 927
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v2, :cond_0

    .line 928
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v0, "setListeners mImsManager is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 934
    :try_start_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsListening:Z

    .line 936
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v2, v3}, Lcom/android/ims/ImsManager;->addCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V

    .line 937
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v2, v3}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 944
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "addCapabilitiesCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "addRegistrationCallback "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 949
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "unable to addCapabilitiesCallback callback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->queryImsState()V

    return-void
.end method

.method private showDataConnectedIconForVzw()Z
    .locals 1

    .line 2670
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showDataIconForVzw()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isWifiConnected:Z

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showDataIconForVzw()Z
    .locals 1

    .line 2665
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showDataRatIcon()Z
    .locals 1

    .line 1781
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->mobileDataEnabled:Z

    if-eqz v0, :cond_1

    .line 1782
    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roamingDataEnabled:Z

    if-nez v0, :cond_0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showIdleDataIcon()Z
    .locals 1

    .line 2651
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showDataIconForVzw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showDataConnectedIconForVzw()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showStacked()Z
    .locals 1

    .line 2638
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2639
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2641
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2644
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private toDisplayIconKey(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xd

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-string/jumbo p0, "unsupported"

    return-object p0

    :cond_0
    const-string p0, "5G_Plus"

    return-object p0

    :cond_1
    const-string p0, "5G"

    return-object p0

    .line 689
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_CA_Plus"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 687
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_CA"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private toIconKey(I)Ljava/lang/String;
    .locals 0

    .line 681
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateDataSim()V
    .locals 3

    .line 1266
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getActiveDataSubId()I

    move-result v0

    .line 1267
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1268
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    goto :goto_1

    .line 1277
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    :goto_1
    return-void
.end method

.method private updateInflateSignalStrength()V
    .locals 0

    return-void
.end method

.method private final updateTelephony()V
    .locals 13

    .line 1361
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTelephonySignalStrength: hasService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1363
    invoke-static {v2}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " displayInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1362
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->checkDefaultData()V

    .line 1367
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    .line 1368
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v0, :cond_8

    .line 1369
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowCdmaRssi:Z

    if-eqz v0, :cond_2

    .line 1370
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCdmaLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    goto/16 :goto_3

    .line 1374
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showStacked()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getSmoothSignalLevelAll()[I

    move-result-object v1

    aget v1, v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getSmoothSignalLevel()I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 1376
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showRsrpSignalLevelforLTE:Z

    if-eqz v0, :cond_8

    .line 1377
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 1378
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTelephony CS:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1380
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v5

    .line 1379
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", PS:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1381
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1383
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v4

    .line 1382
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1378
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_7

    const/16 v4, 0x13

    if-ne v0, v4, :cond_5

    goto :goto_2

    :cond_5
    if-nez v0, :cond_8

    .line 1390
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    if-eq v0, v1, :cond_6

    if-ne v0, v4, :cond_8

    .line 1393
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getAlternateLteLevel(Landroid/telephony/SignalStrength;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    goto :goto_3

    .line 1388
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getAlternateLteLevel(Landroid/telephony/SignalStrength;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 1400
    :cond_8
    :goto_3
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportFiveBar()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1401
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    const/4 v5, 0x4

    if-le v4, v5, :cond_9

    goto :goto_4

    :cond_9
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v5, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    :goto_4
    iput v5, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 1405
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIconKey()Ljava/lang/String;

    move-result-object v0

    .line 1407
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 1408
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTelephony iconKey "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1414
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showStacked()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1415
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    new-instance v12, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result v6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceSignalLevel()I

    move-result v8

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v9, v4, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showLTE()Z

    move-result v11

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;IIIIZZ)V

    iput-object v12, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1416
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " showStacked dataType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " getCurrentPhoneType:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 1417
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " SubscriptionId:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1416
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1419
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_5

    .line 1423
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1426
    :cond_e
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_11

    .line 1427
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->isNrIconTypeValid()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1428
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1429
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 1430
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v1, "get 5G SA icon from side-car"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNrLevel()I

    move-result v0

    .line 1434
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getSignalLevel()I

    move-result v1

    if-le v0, v1, :cond_10

    .line 1435
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput v0, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 1436
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 1437
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v1, "get 5G SA sinal strength from AOSP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1440
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getSignalLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 1441
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 1442
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v1, "get 5G SA sinal strength from side-car"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_11
    :goto_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isSideCarValid()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1450
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1452
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getRsrp()I

    move-result v0

    const/16 v1, -0x8000

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getSignalLevel()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    if-le v0, v1, :cond_15

    .line 1453
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_12

    .line 1454
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "5g level: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getSignalLevel()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " current level: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getSignalLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    goto :goto_7

    .line 1460
    :cond_13
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showStacked()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_7

    .line 1464
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNetworkTypeIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1467
    :cond_15
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMMSDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, v4, :cond_16

    goto :goto_8

    :cond_16
    move v2, v3

    :cond_17
    :goto_8
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 1473
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v0

    .line 1474
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    if-eq v2, v0, :cond_18

    .line 1475
    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    .line 1476
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->customizeIconsMap()V

    .line 1481
    :cond_18
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTelephony, isDataDisabled():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_19
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1485
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_9

    .line 1486
    :cond_1a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    if-nez v0, :cond_1c

    .line 1488
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1491
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultDataSubId()I

    move-result v1

    if-eq v0, v1, :cond_1b

    .line 1492
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_9

    .line 1494
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1497
    :cond_1c
    :goto_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eq v0, v2, :cond_1d

    .line 1498
    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    .line 1499
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    .line 1502
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1e

    .line 1503
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1504
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1507
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    if-eqz v1, :cond_1f

    .line 1509
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1510
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 1514
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    if-eqz v0, :cond_24

    .line 1515
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isSideCarValid()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1516
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_b

    .line 1518
    :cond_20
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showStacked()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_b

    .line 1535
    :cond_21
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v0

    .line 1536
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v1, :cond_23

    .line 1537
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataNetworkTypeAvailable()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1538
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIconKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 1540
    :cond_22
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v0

    .line 1543
    :cond_23
    :goto_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1548
    :goto_b
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTelephony, alwaysShowNetworkTypeIcon iconGroup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :cond_24
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->mobileDataEnabled:Z

    .line 1552
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataRoamingEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roamingDataEnabled:Z

    .line 1558
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mayNotifyListeners()V

    return-void
.end method


# virtual methods
.method protected cleanState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    .locals 0

    .line 1183
    new-instance p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1820
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 1821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSignalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTelephonyDisplayInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDataState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInflateSignalStrengths="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isDataDisabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFiveGState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentIconId()I
    .locals 4

    .line 819
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v0, v1, :cond_0

    .line 820
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result p0

    invoke-static {p0}, Lcom/android/settingslib/graph/SignalDrawable;->getCarrierChangeState(I)I

    move-result p0

    return p0

    .line 823
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVirtualSim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getOneplusVirtualSimSignalIconId(I)I

    move-result p0

    return p0

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showStacked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 831
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isRemoveRoamingIcon()Z

    move-result v0

    if-nez v0, :cond_2

    .line 833
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getOneplusRoamingSignalIconId(I)I

    move-result p0

    return p0

    .line 836
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v1, :cond_8

    .line 839
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->is5GConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getSignalLevel()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 841
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->is5GConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getRsrp()I

    move-result v1

    const/16 v2, -0x8000

    if-ne v1, v2, :cond_4

    .line 842
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 846
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 850
    :cond_5
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 851
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentIconId level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 5GState level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getSignalLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Current level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readIconsFromXml:Z

    if-eqz v1, :cond_7

    .line 868
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSingleSignalIcon:I

    return p0

    .line 870
    :cond_7
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    aget-object p0, v1, p0

    aget p0, p0, v0

    return p0

    .line 873
    :cond_8
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    if-eqz p0, :cond_9

    .line 876
    sget p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getDefaultDataSubId()I
    .locals 1

    .line 2454
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultDataSubId()I

    move-result p0

    .line 2455
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const p0, 0x7fffffff

    :cond_0
    return p0
.end method

.method public getLTEStatus()[Z
    .locals 0

    .line 2355
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLTEStatus:[Z

    return-object p0
.end method

.method public getQsCurrentIconId()I
    .locals 0

    .line 900
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result p0

    return p0
.end method

.method public getSimSlotIndex()I
    .locals 3

    .line 2367
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    .line 2368
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 2370
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimSlotIndex, slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public getSubId()I
    .locals 3

    .line 2463
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    .line 2464
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 2466
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubId, subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 8

    .line 1231
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    .line 1232
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "android.telephony.extra.SHOW_SPN"

    const/4 v1, 0x0

    .line 1233
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v0, "android.telephony.extra.SPN"

    .line 1234
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "android.telephony.extra.DATA_SPN"

    .line 1235
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "android.telephony.extra.SHOW_PLMN"

    .line 1236
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v0, "android.telephony.extra.PLMN"

    .line 1237
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 1233
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1242
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mayNotifyListeners()V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 1244
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1245
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    .line 1250
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mayNotifyListeners()V

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    .line 1252
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "apnType"

    .line 1253
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state"

    .line 1254
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "mms"

    .line 1255
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1256
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1257
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBroadcast MMS connection state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMMSDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 1260
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    :cond_3
    :goto_0
    return-void
.end method

.method isDataDisabled()Z
    .locals 2

    .line 1585
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1588
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isEmergencyOnly()Z
    .locals 0

    .line 1191
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 25

    move-object/from16 v0, p0

    .line 1022
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mListening:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDemoMode:Z

    if-nez v1, :cond_0

    .line 1023
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v1, " Controller already unregister listener, don\'t notify change"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1027
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1028
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_1

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v6

    .line 1032
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getContentDescription()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1033
    iget v4, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1039
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1038
    invoke-static {v4, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v4

    .line 1039
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1040
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    if-nez v7, :cond_3

    .line 1041
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_3
    move-object/from16 v17, v4

    .line 1045
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-nez v4, :cond_5

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v4, v6

    goto :goto_2

    :cond_5
    :goto_1
    move v4, v5

    .line 1046
    :goto_2
    new-instance v7, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    if-eqz v9, :cond_6

    check-cast v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-nez v8, :cond_6

    move v8, v5

    goto :goto_3

    :cond_6
    move v8, v6

    .line 1051
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result v9

    invoke-direct {v7, v8, v9, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 1057
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-nez v9, :cond_8

    if-nez v2, :cond_8

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->smartlinkEnable:Z

    if-nez v9, :cond_8

    check-cast v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->fakePSIcon:Z

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_7
    move v8, v6

    goto :goto_5

    :cond_8
    :goto_4
    move v8, v5

    :goto_5
    and-int/2addr v4, v8

    if-eqz v4, :cond_9

    if-eqz v2, :cond_9

    .line 1061
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/oneplus/util/OpUtils;->isSupportShowDisabledIcon(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_9

    move v4, v6

    .line 1067
    :cond_9
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v9, :cond_b

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-nez v9, :cond_a

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->smartlinkEnable:Z

    if-nez v9, :cond_a

    check-cast v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->fakePSIcon:Z

    if-eqz v8, :cond_b

    :cond_a
    move v8, v5

    goto :goto_6

    :cond_b
    move v8, v6

    .line 1077
    :goto_6
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_10

    if-nez v4, :cond_d

    .line 1078
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    if-eqz v9, :cond_c

    goto :goto_7

    :cond_c
    move v9, v6

    goto :goto_8

    :cond_d
    :goto_7
    iget v9, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsDataType:I

    .line 1079
    :goto_8
    new-instance v11, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v13, v12

    check-cast v13, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v13, v13, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    if-eqz v13, :cond_e

    check-cast v12, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-nez v12, :cond_e

    move v12, v5

    goto :goto_9

    :cond_e
    move v12, v6

    .line 1080
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getQsCurrentIconId()I

    move-result v13

    invoke-direct {v11, v12, v13, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 1081
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v12, v3

    check-cast v12, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v12, :cond_f

    goto :goto_a

    :cond_f
    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v10, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    :goto_a
    move-object/from16 v19, v10

    move-object/from16 v24, v11

    move v11, v9

    move-object/from16 v9, v24

    goto :goto_b

    :cond_10
    move v11, v6

    move-object v9, v10

    move-object/from16 v19, v9

    .line 1083
    :goto_b
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v10, v3

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v10, :cond_11

    move-object v10, v3

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    if-nez v10, :cond_11

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    if-eqz v3, :cond_11

    move v12, v5

    goto :goto_c

    :cond_11
    move v12, v6

    .line 1086
    :goto_c
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v10, v3

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v10, :cond_12

    move-object v10, v3

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    if-nez v10, :cond_12

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    if-eqz v3, :cond_12

    move v13, v5

    goto :goto_d

    :cond_12
    move v13, v6

    :goto_d
    if-nez v4, :cond_14

    .line 1094
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v10, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    if-nez v10, :cond_14

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    if-eqz v3, :cond_13

    goto :goto_e

    :cond_13
    move v3, v6

    goto :goto_f

    .line 1095
    :cond_14
    :goto_e
    iget v3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    .line 1096
    :goto_f
    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->enableRatIconEnhancement:Z

    if-eqz v10, :cond_15

    .line 1097
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getEnhancementDataRatIcon()I

    move-result v3

    .line 1102
    :cond_15
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 1103
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showDataIconForVzw()Z

    move-result v4

    .line 1105
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showIdleDataIcon()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIdleDataIcon()I

    move-result v2

    :goto_10
    move v3, v2

    goto :goto_12

    :cond_16
    if-eqz v2, :cond_17

    .line 1106
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDisableDataIcon()I

    move-result v2

    goto :goto_10

    :cond_17
    if-nez v4, :cond_19

    .line 1107
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    if-nez v3, :cond_19

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    if-nez v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    .line 1109
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->isConnectedOnSaMode()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_11

    :cond_18
    move v3, v6

    goto :goto_12

    :cond_19
    :goto_11
    iget v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    goto :goto_10

    .line 1111
    :goto_12
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showDataConnectedIconForVzw()Z

    move-result v2

    if-eqz v2, :cond_1a

    if-lez v3, :cond_1a

    move v2, v5

    goto :goto_13

    :cond_1a
    move v2, v6

    goto :goto_13

    :cond_1b
    move v2, v8

    .line 1118
    :goto_13
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showVolteIcon:Z

    if-eqz v8, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVolteSwitchOn()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVolteResId()I

    move-result v6

    .line 1119
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVowifiIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v8

    .line 1120
    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showVowifiIcon:Z

    if-eqz v10, :cond_1e

    if-eqz v8, :cond_1e

    .line 1121
    iget v3, v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    .line 1122
    new-instance v8, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 1123
    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v14, v10

    check-cast v14, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v14, v14, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    if-eqz v14, :cond_1d

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-nez v10, :cond_1d

    iget v10, v7, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    goto :goto_14

    :cond_1d
    const/4 v10, -0x1

    :goto_14
    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    invoke-direct {v8, v5, v10, v7}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    move v10, v3

    goto :goto_15

    :cond_1e
    move v10, v3

    move-object v8, v7

    .line 1126
    :goto_15
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v3, :cond_1f

    .line 1127
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyListeners mConfig.alwaysShowNetworkTypeIcon="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  getNetworkType:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 1128
    invoke-virtual {v7}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 1129
    invoke-virtual {v14}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v14

    invoke-static {v14}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " voiceNetType="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v7

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " showDataIcon="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mConfig.alwaysShowDataRatIcon="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " icons.mDataType="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mConfig.showVolteIcon="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showVolteIcon:Z

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isVolteSwitchOn="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVolteSwitchOn()Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " volteIcon="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mSubscriptionInfo.getSubscriptionId():"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 1139
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mCurrentState.roaming:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " showDataConnectedIcon:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isUST:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isUSS:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isUsvMode:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isInService:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1146
    invoke-static {v4}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " is5GConnected:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->is5GConnected()Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " phoneId:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isWifiConnected:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isWifiConnected:Z

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " showIdleDataIcon:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showIdleDataIcon()Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " showDataConnectedIconForVzw:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showDataConnectedIconForVzw()Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " showDataIconForVzw:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showDataIconForVzw()Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1127
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v14, 0x0

    .line 1171
    iget-object v15, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mStackedDataIcon:[I

    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mStackedVoiceIcon:[I

    move-object/from16 v16, v3

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mIsWide:Z

    move/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 1176
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v21

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    move/from16 v22, v0

    move-object/from16 v7, p1

    move/from16 v23, v2

    .line 1171
    invoke-interface/range {v7 .. v23}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZI[I[ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V

    return-void
.end method

.method onMobileDataChanged()V
    .locals 0

    .line 1575
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->checkDefaultData()V

    .line 1576
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public registerFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .locals 2

    .line 1683
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 1684
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGStateListener:Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->registerListener(ILcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;)V

    .line 1685
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    return-void
.end method

.method public registerListener()V
    .locals 6

    const/4 v0, 0x1

    .line 433
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const v3, 0x5101e1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 443
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOpPhoneStateListener:Landroid/telephony/OpPhoneStateListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/OpPhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 446
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerListener exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 454
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 456
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOPMoblileReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 462
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 464
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 465
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 473
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mListening:Z

    .line 477
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 479
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 480
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 482
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 484
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 485
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVolteSwitchObserver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "org.codeaurora.intent.action.ACTION_ENHANCE_4G_SWITCH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 491
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 492
    new-instance v1, Lcom/android/ims/FeatureConnector;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)V

    const-string v4, "?"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/ims/FeatureConnector;-><init>(Landroid/content/Context;ILcom/android/ims/FeatureConnector$Listener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFeatureConnector:Lcom/android/ims/FeatureConnector;

    .line 512
    invoke-virtual {v1}, Lcom/android/ims/FeatureConnector;->connect()V

    return-void
.end method

.method setActivity(I)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1661
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    .line 1663
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    .line 1669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1670
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastUpdateActivityTime:J

    sub-long/2addr v0, v2

    .line 1671
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x66

    .line 1672
    iput v2, p1, Landroid/os/Message;->what:I

    .line 1673
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    .line 1675
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    sub-long/2addr v2, v0

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 1677
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void
.end method

.method public setAirplaneMode(Z)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mayNotifyListeners()V

    return-void
.end method

.method public setCarrierNetworkChangeMode(Z)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method public setConfiguration(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 363
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateInflateSignalStrength()V

    .line 366
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->customizeIconsMap()V

    .line 368
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method public setFakePSIconEnable(Z)V
    .locals 3

    .line 2699
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->fakePSIcon:Z

    .line 2700
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2701
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFakePSIconEnable: fakePSIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " type="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2702
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2701
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method public setSmartlinkEnable(Z)V
    .locals 3

    .line 2689
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->smartlinkEnable:Z

    .line 2690
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2691
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmartLinkEnable: smartlinkEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " type="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2692
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2691
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    .line 387
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mayNotifyListeners()V

    return-void
.end method

.method public setVirtualSimstate([I)V
    .locals 2

    .line 2378
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v0

    .line 2379
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_1

    .line 2380
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    aget p1, p1, v0

    sget v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_DISABLE:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isVirtual:Z

    .line 2381
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    :cond_1
    return-void
.end method

.method public showLTE()Z
    .locals 4

    .line 2474
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2477
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMccmnc:Ljava/lang/String;

    move v0, v1

    .line 2478
    :goto_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->SHOW_LTE_OPERATORS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 2479
    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public unregisterFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .locals 0

    .line 1689
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    .line 1690
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->unregisterListener(I)V

    return-void
.end method

.method public unregisterListener()V
    .locals 4

    .line 522
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterListener mListening: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mListening:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " FeatureConnector exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFeatureConnector:Lcom/android/ims/FeatureConnector;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mListening:Z

    if-eqz v0, :cond_3

    .line 527
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 529
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOpPhoneStateListener:Landroid/telephony/OpPhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/OpPhoneStateListener;I)V

    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVolteSwitchObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 534
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFeatureConnector:Lcom/android/ims/FeatureConnector;

    if-eqz v0, :cond_1

    .line 535
    invoke-virtual {v0}, Lcom/android/ims/FeatureConnector;->disconnect()V

    .line 536
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->removeListeners()V

    :cond_1
    const/4 v0, 0x0

    .line 538
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFeatureConnector:Lcom/android/ims/FeatureConnector;

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOPMoblileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 547
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->cleanLTEStatus()V

    .line 548
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v0, :cond_2

    .line 549
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onLTEStatusUpdate()V

    goto :goto_1

    .line 551
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "unregisterListener mNetworkController is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 4

    .line 393
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTransportType:I

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTransportType:I

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isWifiConnected:Z

    .line 402
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDefaultDataSubId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSubId()I

    move-result v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefaultDataSubId:Z

    .line 404
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->isGlobalROM(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefaultDataSubId:Z

    if-eqz v0, :cond_3

    .line 406
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-nez p2, :cond_2

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :cond_2
    :goto_1
    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    goto :goto_2

    .line 408
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput v1, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    .line 419
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mayNotifyListeners()V

    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    .line 1286
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateNetworkName showSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " spn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dataSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " showPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " plmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierLabel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 1294
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p4, ")"

    const-string p5, "("

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1301
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1305
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1310
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-eqz p2, :cond_5

    .line 1315
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_1

    .line 1317
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    :goto_1
    if-eqz p1, :cond_8

    if-eqz p3, :cond_8

    .line 1322
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_6

    .line 1323
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1327
    :cond_6
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_7

    .line 1332
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    :cond_7
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_9

    .line 1337
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    goto :goto_3

    .line 1339
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    :goto_3
    return-void
.end method
