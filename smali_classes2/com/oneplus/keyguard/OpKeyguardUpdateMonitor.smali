.class public Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "OpKeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field public static final IS_SUPPORT_BOOT_TO_ENTER_BOUNCER:Z

.field private static final IS_SUPPORT_CUSTOM_FINGERPRINT:Z

.field public static final IS_SUPPORT_FACE_UNLOCK:Z

.field private static final IS_SUPPORT_FINGERPRINT_POCKET:Z

.field public static final IS_SUPPORT_MOTOR_CAMERA:Z


# instance fields
.field private FOD_UI_DEBUG:Ljava/lang/String;

.field protected mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

.field private mAutoFacelockEnabled:Z

.field private mBouncerRecognizeEnabled:Z

.field protected mCameraLaunched:Z

.field private mClockCtrl:Lcom/oneplus/keyguard/clock/OpClockCtrl;

.field private final mContext:Landroid/content/Context;

.field protected mDuringAcquired:Z

.field private mFacelockEnabled:Z

.field private mFacelockLightingEnabled:Z

.field private mFacelockRunningType:I

.field private mFacelockSettingsObserver:Landroid/database/ContentObserver;

.field private mFacelockSuccessTimes:I

.field private mFacelockUnlocking:Z

.field private mFailedAttempts:Landroid/util/SparseIntArray;

.field private mFakeLocking:Z

.field private mFingerprintAlreadyAuthenticated:Z

.field protected mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

.field protected mFodBurnInProtectionHelper:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

.field private mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

.field private mFodOnAodStateObserver:Landroid/database/ContentObserver;

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGoingToSleepReason:I

.field private mImeShow:Z

.field private mIsFaceAdded:Z

.field protected mIsInBrickMode:Z

.field private mIsKeyguardDone:Z

.field private mIsUserUnlocked:Z

.field private mKeyguardShowing:Z

.field private mLaunchingCamera:Z

.field private mLaunchingLeftAffordance:Z

.field private mLidOpen:Z

.field protected mLockoutState:Z

.field private mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

.field protected mPendingSubInfoChange:Z

.field mPocketListener:Landroid/hardware/SensorEventListener;

.field private mPocketSensor:Landroid/hardware/Sensor;

.field private mPocketSensorEnabled:Z

.field private mPocketState:I

.field protected mPowerManager:Landroid/os/PowerManager;

.field private mPreventModeActive:Z

.field private mQSExpanded:Z

.field private mResetAttempsTimeInMillis:J

.field private mScreenTurningOn:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShowFodOnAodEnabled:Z

.field private mShutdownDialogShow:Z

.field private mShutingDown:Z

.field protected mSimUnlockSlot0:Z

.field protected mSimUnlockSlot1:Z

.field private mSkipBouncerByFacelock:Z

.field private mTimeTickListener:Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;

.field private mWakingUpReason:Ljava/lang/String;

.field private mWakingUpTime:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 110
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x23

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 136
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_BOOT_TO_ENTER_BOUNCER:Z

    new-array v1, v0, [I

    const/16 v2, 0x22

    aput v2, v1, v3

    .line 189
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FACE_UNLOCK:Z

    new-array v1, v0, [I

    const/16 v2, 0x3d

    aput v2, v1, v3

    .line 232
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v0, [I

    const/16 v2, 0x74

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    new-array v0, v0, [I

    const/16 v1, 0x5b

    aput v1, v0, v3

    .line 235
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    .line 237
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sys.prop.fod_ui_test"

    .line 116
    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->FOD_UI_DEBUG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    .line 132
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 135
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsUserUnlocked:Z

    const/4 v1, 0x0

    .line 140
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    .line 141
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    .line 142
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 143
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    .line 146
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutdownDialogShow:Z

    .line 151
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    .line 153
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    .line 158
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

    .line 164
    iput v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 169
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpReason:Ljava/lang/String;

    .line 175
    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    const-wide/16 v2, 0x0

    .line 180
    iput-wide v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mResetAttempsTimeInMillis:J

    .line 191
    iput v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    .line 192
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    .line 193
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockEnabled:Z

    .line 194
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    .line 195
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    .line 197
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    .line 198
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    .line 201
    iput v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    .line 239
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutingDown:Z

    const/4 v2, -0x1

    .line 241
    iput v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mGoingToSleepReason:I

    .line 262
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    .line 263
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    .line 264
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    .line 277
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsInBrickMode:Z

    .line 286
    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    .line 295
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShowFodOnAodEnabled:Z

    .line 400
    invoke-static {}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->getInstance()Lcom/oneplus/keyguard/clock/OpClockCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mClockCtrl:Lcom/oneplus/keyguard/clock/OpClockCtrl;

    .line 401
    new-instance v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$2;

    invoke-direct {v0, p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$2;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mTimeTickListener:Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;

    .line 718
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    .line 979
    new-instance v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$3;

    invoke-direct {v0, p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$3;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketListener:Landroid/hardware/SensorEventListener;

    .line 356
    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fingerprint"

    .line 359
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_0
    const-string v0, "power"

    .line 361
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    .line 364
    sget-boolean p1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz p1, :cond_1

    .line 365
    sget-object p1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {p1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/display/IOneplusColorDisplayManager;

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    .line 371
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->startClockCtrl()V

    .line 375
    new-instance p1, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    .line 377
    sget-boolean p1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz p1, :cond_2

    .line 378
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->watchForFodOnAodSettings()V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleFingerprintTimeout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;IZ)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFPStateBySensor(IZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFacelockSettings()V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockEnabled:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    return p0
.end method

.method static synthetic access$1800(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Ljava/util/ArrayList;
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFacelockTrustState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handlePreventModeChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleLidSwitchChanged(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShowFodOnAodEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Landroid/hardware/Sensor;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    return p0
.end method

.method static synthetic access$900(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    return p0
.end method

.method private checkDozeSettings()V
    .locals 4

    .line 2238
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isSupportAlwaysOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2239
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_always_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 2241
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    return-void
.end method

.method private clearFailedFacelockAttempts()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1699
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1700
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    .line 1702
    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onClearFailedFacelockAttempts()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1705
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    return-void
.end method

.method private clearFingerprintFailedUnlockAttempts()V
    .locals 1

    .line 1338
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method private getBatteryStatus()Lcom/android/settingslib/fuelgauge/BatteryStatus;
    .locals 2

    .line 2139
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mBatteryStatus"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;

    return-object p0
.end method

.method private getCallbacks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation

    .line 2021
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mCallbacks"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method private getCurrentUser()I
    .locals 2

    .line 2093
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "sCurrentUser"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;
    .locals 2

    .line 2011
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mHandler"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    return-object p0
.end method

.method private getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 2

    .line 2099
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mLockPatternUtils"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method private getServiceStates()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation

    .line 2178
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mServiceStates"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method private getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    .locals 2

    .line 2104
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mStrongAuthTracker"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    return-object p0
.end method

.method private getUpdateBiometricListeningStateRunnable()Ljava/lang/Runnable;
    .locals 2

    .line 2016
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mUpdateBiometricListeningState"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method private getUserCanSkipBouncer(I)Z
    .locals 5

    .line 2161
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getUserCanSkipBouncer"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private handleFingerprintTimeout()V
    .locals 2

    .line 1347
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpKeyguardUpdateMonitor"

    const-string v1, "handleFingerprintTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 1349
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1350
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_1

    .line 1352
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onFingerprintTimeout()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleLidSwitchChanged(Z)V
    .locals 1

    .line 1098
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    if-eq p1, v0, :cond_0

    .line 1099
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFPStateBySensor(IZ)V

    :cond_0
    return-void
.end method

.method private handlePreventModeChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1182
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1183
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1185
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onPreventModeChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1190
    :cond_1
    sget-boolean p1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    if-eqz p1, :cond_2

    .line 1191
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_2
    return-void
.end method

.method private handleSimStateChange(III)V
    .locals 7

    .line 2171
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "handleSimStateChange"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private handleSimSubscriptionInfoChanged()V
    .locals 3

    .line 2166
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handleSimSubscriptionInfoChanged"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isBouncer()Z
    .locals 2

    .line 2124
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mBouncer"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isDeviceInteractive()Z
    .locals 2

    .line 2031
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mDeviceInteractive"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .line 2149
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isDeviceProvisioned"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isDreaming()Z
    .locals 2

    .line 2036
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mIsDreaming"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isFingerprintDetectionRunning()Z
    .locals 3

    .line 2109
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isFingerprintDetectionRunning"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isForegroundApp(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1855
    :cond_0
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 1856
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 1857
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private isKeyguardGoingAway()Z
    .locals 2

    .line 2087
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mKeyguardGoingAway"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isKeyguardIsVisible()Z
    .locals 2

    .line 2144
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mKeyguardIsVisible"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isKeyguardOccluded()Z
    .locals 2

    .line 2042
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mKeyguardOccluded"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isKeyguardVisible()Z
    .locals 3

    .line 2026
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isKeyguardVisible"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isMotorCameraSupported()Z
    .locals 1

    .line 1726
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    return v0
.end method

.method private isScreenOn()Z
    .locals 3

    .line 2119
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isScreenOn"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isScreenSaverActivatedOnDock()Z
    .locals 3

    .line 1990
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1992
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x2

    const-string v2, "screensaver_activate_on_dock"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isScreenSaverEnabled()Z
    .locals 3

    .line 1982
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1984
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x2

    const-string v2, "screensaver_enabled"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSensorNear(IZ)Z
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private onScreenStatusChanged(Z)V
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mClockCtrl:Lcom/oneplus/keyguard/clock/OpClockCtrl;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->onScreenTurnedOn()V

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->onScreenTurnedOff()V

    :cond_1
    :goto_0
    return-void
.end method

.method private reportMDMEvent()V
    .locals 4

    .line 2185
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportMDMEvent: mWakingUpTime is null = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    if-nez v1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    :cond_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 2189
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2193
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2195
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2196
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 2197
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, "keyguard_temp"

    const-string v1, "YLTI9SVG4L"

    invoke-static {v0, v0, p0, v1}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private setPocketSensorEnabled(Z)V
    .locals 6

    .line 1045
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isPreventModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1048
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    const-string v1, "OpKeyguardUpdateMonitor"

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const-string p0, "not register when Lid closed"

    .line 1049
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1053
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1056
    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v4

    .line 1058
    :goto_0
    sget-boolean v2, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1059
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listen pocket-sensor: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", current="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", FP enabled="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1062
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    if-nez p1, :cond_8

    .line 1063
    iput-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    .line 1064
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketListener:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, p0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1

    .line 1068
    :cond_4
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    if-eqz p1, :cond_7

    .line 1069
    iput-boolean v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    .line 1070
    iget p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    invoke-direct {p0, p1, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1071
    iput v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 1074
    iput-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    .line 1076
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1078
    :cond_5
    iput v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 1080
    iput-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    .line 1083
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_6

    .line 1084
    invoke-virtual {p1, v4}, Landroid/hardware/fingerprint/FingerprintManager;->updateStatus(I)I

    .line 1087
    :cond_6
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1

    .line 1090
    :cond_7
    invoke-direct {p0, v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleLidSwitchChanged(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method private setSwitchingUser(Z)V
    .locals 5

    .line 2134
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setSwitchingUser"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2135
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private startClockCtrl()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mClockCtrl:Lcom/oneplus/keyguard/clock/OpClockCtrl;

    if-eqz v0, :cond_0

    .line 414
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mTimeTickListener:Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->onStartCtrl(Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private updateFPStateBySensor(IZ)V
    .locals 4

    .line 1010
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 1011
    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    .line 1013
    iput p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 1014
    iput-boolean p2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, p1

    .line 1021
    :goto_0
    iget-object v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_1

    .line 1022
    invoke-virtual {v3, v2}, Landroid/hardware/fingerprint/FingerprintManager;->updateStatus(I)I

    .line 1026
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1028
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    goto :goto_1

    .line 1029
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1031
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateFacelockSettings()V
    .locals 6

    .line 1555
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockEnabled:Z

    .line 1557
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1558
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object v0

    iget-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockEnabled:Z

    invoke-virtual {v0, v3}, Lcom/oneplus/faceunlock/OpFacelockController;->onFacelockEnableChanged(Z)V

    .line 1562
    :cond_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oneplus_auto_face_unlock_enable"

    invoke-static {v0, v3, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    .line 1564
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oneplus_face_unlock_assistive_lighting_enable"

    invoke-static {v0, v3, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    .line 1565
    :goto_2
    iget-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    if-eq v0, v3, :cond_5

    .line 1566
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    .line 1567
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_3
    if-ge v4, v3, :cond_5

    .line 1569
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v5, :cond_4

    .line 1571
    invoke-virtual {v5, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onFacelockLightingChanged(Z)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1577
    :cond_5
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oneplus_face_unlock_powerkey_recognize_enable"

    invoke-static {v0, v3, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    .line 1580
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_success_times"

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    return-void
.end method

.method private updateFacelockTrustState(Z)V
    .locals 2

    .line 1628
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FacelockTrust,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpKeyguardUpdateMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1630
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1631
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    .line 1633
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateFingerprintListeningState()V
    .locals 3

    .line 2006
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "updateFingerprintListeningState"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private watchForFodOnAodSettings()V
    .locals 5

    .line 385
    new-instance v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$1;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$1;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodOnAodStateObserver:Landroid/database/ContentObserver;

    .line 393
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_fod_on_aod_enabled"

    .line 394
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodOnAodStateObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 393
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 395
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodOnAodStateObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public allowShowingLock()Z
    .locals 2

    .line 1839
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1842
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oneplus.camera"

    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isForegroundApp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public canSkipBouncerByFacelock()Z
    .locals 0

    .line 1802
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    return p0
.end method

.method public clearFailedUnlockAttempts(Z)V
    .locals 4

    const-string v0, "OpKeyguardUpdateMonitor"

    if-eqz p1, :cond_0

    .line 1298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResetAttempsTimeInMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mResetAttempsTimeInMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mResetAttempsTimeInMillis:J

    .line 1303
    :cond_0
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1305
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->clearFingerprintFailedUnlockAttempts()V

    .line 1309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockDisabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isWeakFaceUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 1312
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockDisabled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1313
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->clearFailedFacelockAttempts()V

    goto :goto_0

    .line 1316
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->clearFailedFacelockAttempts()V

    :cond_3
    :goto_0
    return-void
.end method

.method public dispatchAuthenticateChanged(ZIII)V
    .locals 3

    .line 725
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 727
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    .line 729
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onAuthenticateChanged(ZIII)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchSystemReady()V
    .locals 1

    .line 943
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    const/16 v0, 0x1f7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public earlyNotifySwitchingUser()V
    .locals 2

    const-string v0, "OpKeyguardUpdateMonitor"

    const-string v1, "earlyNotifySwitchingUser"

    .line 711
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->hideFODDim()V

    const/4 v0, 0x1

    .line 713
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setSwitchingUser(Z)V

    return-void
.end method

.method public getAodAlwaysOnController()Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;
    .locals 0

    .line 2219
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    return-object p0
.end method

.method public getFacelockNoticeEnabled()Z
    .locals 2

    .line 1872
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1875
    :cond_0
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    const/4 v0, 0x3

    if-ge p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getFacelockNotifyMsgId(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 1780
    :pswitch_0
    sget p0, Lcom/android/systemui/R$string;->face_unlock_retry_other:I

    goto :goto_0

    .line 1777
    :pswitch_1
    sget p0, Lcom/android/systemui/R$string;->face_unlock_retry_other:I

    goto :goto_0

    .line 1774
    :pswitch_2
    sget p0, Lcom/android/systemui/R$string;->face_unlock_no_permission:I

    goto :goto_0

    .line 1771
    :pswitch_3
    sget p0, Lcom/android/systemui/R$string;->face_unlock_camera_error:I

    goto :goto_0

    .line 1768
    :pswitch_4
    sget p0, Lcom/android/systemui/R$string;->face_unlock_fail:I

    goto :goto_0

    .line 1765
    :pswitch_5
    sget p0, Lcom/android/systemui/R$string;->face_unlock_no_face:I

    goto :goto_0

    .line 1762
    :pswitch_6
    sget p0, Lcom/android/systemui/R$string;->face_unlock_tap_to_retry:I

    goto :goto_0

    .line 1758
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->face_unlock_timeout:I

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getFacelockRunningType()I
    .locals 0

    .line 1639
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    return p0
.end method

.method public getFailedUnlockAttempts(I)I
    .locals 1

    .line 1324
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getFingerprintFailedUnlockAttempts()I
    .locals 2

    .line 1342
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getGoingToSleepReason()I
    .locals 0

    .line 753
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mGoingToSleepReason:I

    return p0
.end method

.method public getWakingUpReason()Ljava/lang/String;
    .locals 0

    .line 1884
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpReason:Ljava/lang/String;

    return-object p0
.end method

.method public handleScreenTurningOn()V
    .locals 3

    .line 680
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_0

    .line 681
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 684
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 686
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_1

    .line 688
    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onScreenTurningOn()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 694
    :cond_2
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_3

    .line 695
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 696
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    :cond_3
    return-void
.end method

.method protected handleStartedWakingUp()V
    .locals 2

    .line 430
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 431
    invoke-direct {p0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 435
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    .line 439
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-nez v0, :cond_1

    .line 440
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->setLowLightEnvironment(Z)V

    .line 451
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mClockCtrl:Lcom/oneplus/keyguard/clock/OpClockCtrl;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->onStartedWakingUp()V

    return-void
.end method

.method public handleSystemReady()V
    .locals 2

    const/4 v0, 0x0

    .line 948
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 949
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 951
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onSystemReady()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hideFODDim()V
    .locals 0

    .line 735
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p0, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->hideFODDim()V

    :cond_0
    return-void
.end method

.method protected init()V
    .locals 3

    .line 458
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2651

    const/4 v2, 0x1

    .line 459
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensor:Landroid/hardware/Sensor;

    .line 461
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->checkDozeSettings()V

    return-void
.end method

.method public isAlwaysOnEnabled()Z
    .locals 0

    .line 2215
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    invoke-virtual {p0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->isAlwaysOnEnabled()Z

    move-result p0

    return p0
.end method

.method public isAutoCheckPinEnabled()Z
    .locals 0

    .line 973
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->keyguardPinPasswordLength()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAutoFacelockEnabled()Z
    .locals 1

    .line 1713
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    if-eqz v0, :cond_0

    .line 1714
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 1717
    :cond_0
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    return p0
.end method

.method public isBouncerRecognizeEnabled()Z
    .locals 0

    .line 1722
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    return p0
.end method

.method public isCameraErrorState()Z
    .locals 1

    .line 1688
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isCameraLaunched()Z
    .locals 0

    .line 835
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCameraLaunched:Z

    return p0
.end method

.method public isFaceAdded()Z
    .locals 0

    .line 1824
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    return p0
.end method

.method public isFacelockAllowed()Z
    .locals 2

    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFacelockAllowed, visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", inter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bouncer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", done:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", switching:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", added:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", simpin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fp authenticated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", on:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isWeakFaceTimeout()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    .line 1735
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->allowShowingLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isWeakFaceTimeout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1744
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockWithFacelockPossible()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public isFacelockAvailable()Z
    .locals 1

    .line 1652
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isFacelockDisabled()Z
    .locals 1

    .line 1662
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFacelockEnabled()Z
    .locals 0

    .line 1709
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockEnabled:Z

    return p0
.end method

.method public isFacelockLightingEnabled()Z
    .locals 0

    .line 1731
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    return p0
.end method

.method public isFacelockRecognizing()Z
    .locals 1

    .line 1669
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFacelockUnlocking()Z
    .locals 0

    .line 1810
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockUnlocking:Z

    return p0
.end method

.method public isFacelockWaitingTap()Z
    .locals 1

    .line 1644
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFingerprintAlreadyAuthenticated()Z
    .locals 0

    .line 1373
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    return p0
.end method

.method public isFingerprintEnrolled(I)Z
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 795
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFingerprintLockout()Z
    .locals 0

    .line 1384
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    return p0
.end method

.method public isFirstUnlock()Z
    .locals 0

    .line 1176
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isFodHintShowing()Z
    .locals 0

    .line 2261
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2262
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->hasHintText()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFodShouldHiddenOnAod()Z
    .locals 1

    .line 2229
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodBurnInProtectionHelper:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->isFodHiddenOnAod()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShowFodOnAodEnabled:Z

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

.method public isFodSupportOnAod()Z
    .locals 0

    .line 2249
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShowFodOnAodEnabled:Z

    return p0
.end method

.method public isGoingToSleep()Z
    .locals 3

    .line 2072
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isGoingToSleep"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isImeShow()Z
    .locals 0

    .line 586
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    return p0
.end method

.method public isKeyguardDone()Z
    .locals 0

    .line 880
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    return p0
.end method

.method public isLaunchingCamera()Z
    .locals 0

    .line 840
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    return p0
.end method

.method public isLaunchingLeftAffordance()Z
    .locals 0

    .line 1367
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingLeftAffordance:Z

    return p0
.end method

.method public isOpFingerprintDisabled(I)Z
    .locals 5

    .line 2253
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "isFingerprintDisabled"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2255
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isPreventModeActivte()Z
    .locals 0

    .line 721
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    return p0
.end method

.method public isPreventModeEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 1162
    sget-boolean p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1167
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "oem_acc_anti_misoperation_screen"

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public isQSExpanded()Z
    .locals 0

    .line 614
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    return p0
.end method

.method public isScreenTurningOn()Z
    .locals 0

    .line 705
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    return p0
.end method

.method public isSensorDetectedNear()Z
    .locals 2

    .line 1893
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    invoke-direct {p0, v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isPreventModeEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShutdownDialogVisible()Z
    .locals 0

    .line 642
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutdownDialogShow:Z

    return p0
.end method

.method public isShuttingDown()Z
    .locals 0

    .line 663
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutingDown:Z

    return p0
.end method

.method public isSimPinSecure()Z
    .locals 3

    .line 2082
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isSimPinSecure"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSwitchingUser()Z
    .locals 3

    .line 2077
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isSwitchingUser"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isUnlockWithFacelockPossible()Z
    .locals 2

    .line 1815
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    if-eqz v0, :cond_0

    .line 1816
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1817
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUnlockingWithBiometricAllowed()Z
    .locals 6

    const/4 v0, 0x0

    .line 2052
    :try_start_0
    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v2, "isUnlockingWithBiometricAllowed"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-static {v1, v2, v4}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 2054
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    invoke-static {p0, v1, v2}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "OpKeyguardUpdateMonitor"

    const-string v2, "isUnlockingWithBiometricAllowed occur error"

    .line 2056
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isUserUnlocked()Z
    .locals 2

    .line 529
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_BOOT_TO_ENTER_BOUNCER:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsUserUnlocked:Z

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isWeakFaceTimeout()Z
    .locals 4

    .line 2063
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "isWeakFaceTimeout"

    invoke-static {v0, p0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2066
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public keyguardPinPasswordLength()I
    .locals 5

    const/4 v0, 0x0

    .line 960
    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string v2, "lockscreen.pin_password_length"

    const-wide/16 v3, 0x0

    .line 961
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    .line 960
    invoke-interface {v1, v2, v3, v4, p0}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLong error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OpKeyguardUpdateMonitor"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    :goto_0
    const/4 v1, 0x4

    if-lt p0, v1, :cond_0

    return p0

    :cond_0
    return v0
.end method

.method public notifyBrightnessChange()V
    .locals 0

    .line 768
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p0, :cond_0

    .line 769
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->notifyBrightnessChange()V

    :cond_0
    return-void
.end method

.method public notifyDisplayKeyguardUnlockSuccess()V
    .locals 2

    .line 1899
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_1

    .line 1900
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    if-eqz v0, :cond_1

    .line 1902
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpKeyguardUpdateMonitor"

    const-string v1, "unlock keyguard and notify display"

    .line 1903
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_0
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oneplus/display/IOneplusColorDisplayManager;->setExitFingerPrintModeWay(Z)V

    :cond_1
    return-void
.end method

.method public notifyFacelockStateChanged(I)V
    .locals 4

    .line 1584
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    .line 1585
    iput p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    .line 1587
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v2, "OpKeyguardUpdateMonitor"

    if-eqz v1, :cond_0

    .line 1588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyFacelockStateChanged, type:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isWeak:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isWeakFaceTimeout()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockWaitingTap()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isWeakFaceTimeout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1593
    iput v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const-string p1, "[WeakFace] change to not running"

    .line 1594
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1599
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1601
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v1

    const/16 v2, 0x150

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1605
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$5;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyFakeLocking(Z)V
    .locals 0

    .line 743
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFakeLocking:Z

    return-void
.end method

.method public notifyKeyguardDone(Z)V
    .locals 3

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyKeyguardDone isKeyguardDone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 850
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v0

    const/16 v2, 0x1f5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 851
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    .line 855
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    .line 858
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 859
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->reportMDMEvent()V

    const/4 v0, 0x0

    .line 860
    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    .line 864
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 866
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_2

    .line 868
    invoke-virtual {v2, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onKeyguardDoneChanged(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 873
    :cond_3
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-eqz p0, :cond_4

    .line 874
    const-class p0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyKeyguardDone()V

    :cond_4
    return-void
.end method

.method public notifyPasswordLockout()V
    .locals 2

    const/4 v0, 0x0

    .line 1829
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1830
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1832
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onPasswordLockout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyPreventModeChange(Z)V
    .locals 3

    xor-int/lit8 v0, p1, 0x1

    .line 1200
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    .line 1201
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    const/16 v1, 0x1f8

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1202
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1203
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyShutDownOrReboot()V
    .locals 2

    const/4 v0, 0x1

    .line 648
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutingDown:Z

    .line 649
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    const/4 v0, 0x0

    .line 651
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 652
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 654
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onShuttingDown()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBrickModeChanged(Z)V
    .locals 0

    .line 1888
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsInBrickMode:Z

    return-void
.end method

.method public onFacelockUnlocking(Z)V
    .locals 0

    .line 1806
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockUnlocking:Z

    return-void
.end method

.method public onImeShow(Z)V
    .locals 3

    .line 555
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_3

    .line 556
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImeShow: show:( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ), mLockoutState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isUnlockingWithBiometricAllowed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpKeyguardUpdateMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    if-eq v1, p1, :cond_3

    .line 562
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    .line 564
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    if-nez p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "onImeShow: update fingerprint listening state"

    .line 571
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getUpdateBiometricListeningStateRunnable()Ljava/lang/Runnable;

    move-result-object v0

    .line 573
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0xfa

    .line 572
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "onImeShow: in lockout state, just update ui."

    .line 569
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :goto_2
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 578
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_3
    return-void
.end method

.method protected opDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1914
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 1915
    iget-object p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1917
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 1919
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    FingerprintFailedAttempts="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1920
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mPocketSensorEnabled="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1921
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mPocketState="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1922
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mLaunchingCamera="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1923
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mDuringAcquired="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1924
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mLockoutState="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1925
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mFingerprintAlreadyAuthenticated="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1926
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    EnrollSize="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1931
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mBatteryStatus="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/settingslib/fuelgauge/BatteryStatus;

    move-result-object v0

    iget v0, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", level="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/settingslib/fuelgauge/BatteryStatus;

    move-result-object v0

    iget v0, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", health="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/settingslib/fuelgauge/BatteryStatus;

    move-result-object v0

    iget v0, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->health:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maxChargingWattage="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/settingslib/fuelgauge/BatteryStatus;

    move-result-object v0

    iget v0, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1931
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1936
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mKeyguardIsVisible="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardIsVisible()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1937
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mGoingToSleep="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1938
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    isPreventModeEnabled="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isPreventModeEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1939
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mPreventModeActive="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1940
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mDeviceProvisioned="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1941
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    getFailedUnlockAttempts="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1942
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    getUserCanSkipBouncer="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1943
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mDeviceInteractive="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1944
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mScreenOn="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenOn()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1945
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mIsKeyguardDone="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1947
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    IS_SUPPORT_BOOT_TO_ENTER_BOUNCER="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_BOOT_TO_ENTER_BOUNCER:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1948
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mIsUserUnlocked="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1950
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mSimUnlockSlot0="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1951
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mSimUnlockSlot1="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1952
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mPendingSubInfoChange="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1956
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    IS_SUPPORT_FACE_UNLOCK="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FACE_UNLOCK:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1957
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mIsFaceAdded="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1958
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mIsWeakFaceTimeout="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isWeakFaceTimeout()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1959
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mFacelockRunningType="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1960
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    isSecure="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p3

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1961
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    getCurrentUser="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1962
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mSkipBouncerByFacelock="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1963
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mFacelockUnlocking="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockUnlocking:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1964
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mBouncerRecognizeEnabled="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1965
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mFacelockTimes="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1966
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    IS_SUPPORT_FINGERPRINT_POCKET="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1967
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    IS_SUPPORT_MOTOR_CAMERA="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1968
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    isFacelockDisabled="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockDisabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1969
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    isUnlockWithFacelockPossible="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockWithFacelockPossible()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1970
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    isWeakFaceUnlockEnabled="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isWeakFaceUnlockEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1973
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    isFodShouldHiddenOnAod= "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFodShouldHiddenOnAod()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1974
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string p3, "sys.debug.systemui.pin"

    .line 1976
    invoke-static {p3, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 p3, 0x38

    if-ne p1, p3, :cond_2

    .line 1977
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    length="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->keyguardPinPasswordLength()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public opGetServiceStates()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation

    .line 2000
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getServiceStates()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method protected opHandleFingerprintAcquired(I)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 473
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    .line 474
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v0

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 475
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v0

    sget-boolean v2, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0xbb8

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x5dc

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    .line 478
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 479
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_2

    .line 482
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onFingerprintAcquired(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected opHandleFingerprintError1(I)V
    .locals 4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 1121
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 1123
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mResetAttempsTimeInMillis:J

    sub-long/2addr v0, v2

    .line 1124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "diff = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OpKeyguardUpdateMonitor"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x7d0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    .line 1127
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    .line 1131
    :cond_1
    sget-boolean p1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz p1, :cond_2

    const-string p1, "fingerprint on error"

    .line 1133
    invoke-virtual {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->showFodAndCountdownToHide(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected opHandleFingerprintLockoutReset()V
    .locals 1

    const/4 v0, 0x0

    .line 1238
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    return-void
.end method

.method protected opHandlePendingSubInfoChange(I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 491
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 493
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    .line 495
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    if-nez p1, :cond_3

    .line 496
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    if-eqz p1, :cond_2

    const-string p1, "OpKeyguardUpdateMonitor"

    const-string v1, "handle pending subinfo change"

    .line 497
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleSimSubscriptionInfoChanged()V

    .line 500
    :cond_2
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    :cond_3
    return-void
.end method

.method protected opHandleScreenTurnedOff()V
    .locals 3

    const/4 v0, 0x0

    .line 1264
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    .line 1267
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1268
    invoke-direct {p0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    goto :goto_0

    .line 1271
    :cond_0
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    invoke-virtual {v1}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->isAlwaysOnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1272
    invoke-direct {p0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    goto :goto_0

    .line 1274
    :cond_1
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    .line 1284
    :goto_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1285
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1289
    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    return-void
.end method

.method protected opHandleScreenTurnedOn()V
    .locals 3

    const/4 v0, 0x0

    .line 1242
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    .line 1245
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1246
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    goto :goto_0

    .line 1247
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1248
    invoke-direct {p0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    .line 1253
    :cond_1
    :goto_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1254
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1259
    :cond_2
    invoke-direct {p0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    return-void
.end method

.method protected opHandleStartedGoingToSleep()V
    .locals 2

    const/4 v0, 0x0

    .line 886
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    .line 892
    sget-boolean v1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    .line 898
    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    .line 902
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-nez v0, :cond_1

    .line 903
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->reportMDMEvent()V

    const/4 v0, 0x0

    .line 904
    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    :cond_1
    return-void
.end method

.method protected opHandleUserSwitch(I)V
    .locals 3

    const-string v0, "OpKeyguardUpdateMonitor"

    const-string v1, "opHandleUserSwitch"

    .line 2274
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_fod_on_aod_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShowFodOnAodEnabled:Z

    return-void
.end method

.method protected opOnFingerprintAuthenticated(I)V
    .locals 1

    .line 1209
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    .line 1213
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1214
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oneplus.systemui.aod_unlock"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.oneplus.wallpaper"

    .line 1215
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1216
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1230
    :cond_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1231
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->onFingerprintAuthenticated()V

    :cond_1
    return-void
.end method

.method public opOnKeyguardVisibilityChanged(Z)V
    .locals 4

    .line 911
    const-class v0, Lcom/android/systemui/recents/OverviewProxyService;

    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mKeyguardShowing:Z

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 915
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    goto :goto_0

    .line 916
    :cond_0
    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->FOD_UI_DEBUG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 923
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyguard showing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isOnePlusHomeApp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isOnePlusHomeApp()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isBouncer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mLaunchingCamera="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mLaunchingLeftAffordance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingLeftAffordance:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpKeyguardUpdateMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 925
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/recents/OverviewProxyService;->notifyNavBarButtonAlphaChanged(FZ)V

    .line 928
    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->setRecentUnlockBiometricFace(Z)V

    .line 929
    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->setRecentUnlockBiometricFinger(Z)V

    goto :goto_1

    .line 932
    :cond_1
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isOnePlusHomeApp()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    if-nez p1, :cond_2

    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingLeftAffordance:Z

    if-eqz p0, :cond_3

    .line 934
    :cond_2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/recents/OverviewProxyService;->notifyNavBarButtonAlphaChanged(FZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public opReportSimUnlocked(I)V
    .locals 5

    .line 507
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportSimUnlocked(subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpKeyguardUpdateMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 514
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 516
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    .line 518
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v1

    .line 519
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v2

    const/16 v3, 0x2bd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    .line 518
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v1, 0x5

    .line 521
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleSimStateChange(III)V

    return-void
.end method

.method protected opShouldListenForFingerprint()Z
    .locals 5

    .line 1390
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    const/4 v1, 0x1

    const-string v2, "OpKeyguardUpdateMonitor"

    const/4 v3, 0x0

    if-eqz v0, :cond_e

    .line 1391
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 1392
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    if-nez v0, :cond_1

    const-string p0, "opShouldListenForFingerprint false: screen off"

    .line 1393
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1399
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    if-nez v0, :cond_2

    .line 1400
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    const-string p0, "opShouldListenForFingerprint false: disableByQSExpanded"

    .line 1403
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1407
    :cond_3
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    .line 1408
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1410
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-nez v0, :cond_4

    const-string p0, "opShouldListenForFingerprint false: disableByPanelExpanded"

    .line 1412
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1419
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v0

    if-nez v0, :cond_5

    const-string p0, "opShouldListenForFingerprint false: biometric not allowed"

    .line 1420
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1424
    :cond_5
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutingDown:Z

    if-eqz v0, :cond_6

    const-string p0, "opShouldListenForFingerprint false: Shuting Down"

    .line 1425
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1430
    :cond_6
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutdownDialogShow:Z

    if-eqz v0, :cond_7

    const-string p0, "opShouldListenForFingerprint false: Shutdown Dialog showing"

    .line 1431
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1436
    :cond_7
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_8

    const-string p0, "opShouldListenForFingerprint false: Facelock RECOGNIZED_OK"

    .line 1437
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1441
    :cond_8
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFakeLocking:Z

    if-nez v0, :cond_9

    const-string p0, "opShouldListenForFingerprint false: Keyguard Done and not fake locking"

    .line 1442
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1446
    :cond_9
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockUnlocking:Z

    if-eqz v0, :cond_a

    const-string p0, "opShouldListenForFingerprint false: FacelockUnlocking"

    .line 1447
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1452
    :cond_a
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardOccluded()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1453
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenSaverEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenSaverActivatedOnDock()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const-string p0, "opShouldListenForFingerprint false: screen saver is enabled"

    .line 1454
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1459
    :cond_c
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1461
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardOccluded()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-nez v0, :cond_d

    const-string p0, "opShouldListenForFingerprint false: start to wake up and keyguard is occluded."

    .line 1463
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1465
    :cond_d
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-eqz v0, :cond_e

    const-string p0, "opShouldListenForFingerprint false: start to wake up and keyguard is done."

    .line 1467
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1474
    :cond_e
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    if-eqz v0, :cond_f

    const-string p0, "opShouldListenForFingerprint false: IME show"

    .line 1475
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1480
    :cond_f
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    if-eqz v0, :cond_10

    const-string p0, "opShouldListenForFingerprint false: FingerprintAlreadyAuthenticated"

    .line 1481
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1486
    :cond_10
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    iget-boolean v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    invoke-direct {p0, v0, v4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isPreventModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "opShouldListenForFingerprint false: prevent mode"

    .line 1487
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1492
    :cond_11
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "opShouldListenForFingerprint false: going to sleep"

    .line 1493
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1499
    :cond_12
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1500
    :cond_13
    iput-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    .line 1503
    :cond_14
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    if-eqz v0, :cond_15

    const-string p0, "opShouldListenForFingerprint false: Launching Camera"

    .line 1504
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1509
    :cond_15
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingLeftAffordance:Z

    if-eqz v0, :cond_16

    const-string p0, "opShouldListenForFingerprint false: LaunchingLeftAffordance"

    .line 1510
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1514
    :cond_16
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsInBrickMode:Z

    if-eqz p0, :cond_17

    const-string p0, "opShouldListenForFingerprint false: Brick Mode"

    .line 1515
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_17
    return v1
.end method

.method public reportFaceUnlock()V
    .locals 4

    .line 1863
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    return-void

    .line 1866
    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const-string v3, "oneplus_face_unlock_success_times"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1867
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    return-void
.end method

.method public reportFailedStrongAuthUnlockAttempt(I)V
    .locals 3

    .line 1328
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1330
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v1, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 1331
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setFodDialogView(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    .line 549
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodBurnInProtectionHelper:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->setFodDialogView(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    return-void
.end method

.method public setGoingToSleepReason(I)V
    .locals 0

    .line 749
    iput p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mGoingToSleepReason:I

    return-void
.end method

.method public setIsFaceAdded(Z)V
    .locals 0

    .line 1751
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    return-void
.end method

.method public setQSExpanded(Z)V
    .locals 2

    .line 592
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-nez v0, :cond_0

    return-void

    .line 596
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    if-eq p1, v0, :cond_3

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setQSExpanded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 598
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    .line 597
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    .line 601
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_1
    const/4 v0, 0x0

    .line 604
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 605
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_2

    .line 607
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onQSExpendChanged(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setShutdownDialogVisible(Z)V
    .locals 2

    .line 620
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-nez v0, :cond_0

    return-void

    .line 624
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutdownDialogShow:Z

    if-eq p1, v0, :cond_3

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShutdownDialogVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 626
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    .line 625
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutdownDialogShow:Z

    .line 629
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_1
    const/4 v0, 0x0

    .line 632
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 633
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_2

    .line 635
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onShutdownDialogVisibilityChanged(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setUserUnlocked(Z)V
    .locals 1

    .line 537
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsUserUnlocked:Z

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 538
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->handleUserUnlocked()V

    .line 541
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsUserUnlocked:Z

    return-void
.end method

.method public setWakingUpReason(Ljava/lang/String;)V
    .locals 0

    .line 1880
    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpReason:Ljava/lang/String;

    return-void
.end method

.method public shouldPlayFacelockFailAnim()Z
    .locals 2

    .line 1789
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    const/16 v1, 0xb

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public shouldShowFacelockIcon()Z
    .locals 1

    .line 1676
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public showFodAndCountdownToHide(Ljava/lang/String;)V
    .locals 0

    .line 2225
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodBurnInProtectionHelper:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->startSchedule(Ljava/lang/String;)V

    return-void
.end method

.method public updateFodIconVisibility()V
    .locals 1

    .line 2268
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    return-void
.end method

.method public updateLaunchingCameraState(Z)V
    .locals 2

    .line 819
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    if-eq v0, p1, :cond_0

    .line 820
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    .line 821
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 823
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 824
    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    .line 828
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCameraLaunched:Z

    .line 829
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateLaunchingCameraState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCameraLaunched:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpKeyguardUpdateMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateLaunchingLeftAffordance(Z)V
    .locals 0

    .line 1359
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingLeftAffordance:Z

    .line 1360
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1361
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 1362
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method protected watchForFacelockSettings()V
    .locals 4

    .line 1524
    new-instance v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$4;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$4;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1533
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_enable"

    .line 1534
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 1533
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1536
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_auto_face_unlock_enable"

    .line 1537
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1536
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1540
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_assistive_lighting_enable"

    .line 1541
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1540
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1544
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_powerkey_recognize_enable"

    .line 1545
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1544
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1548
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_success_times"

    .line 1549
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1548
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1551
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFacelockSettings()V

    return-void
.end method
