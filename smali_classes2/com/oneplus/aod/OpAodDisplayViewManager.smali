.class public Lcom/oneplus/aod/OpAodDisplayViewManager;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;
    }
.end annotation


# static fields
.field private static mIsNoneFodAnimation:Z


# instance fields
.field private mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

.field private mAodMainView:Lcom/oneplus/aod/OpAodMain;

.field private mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private mHandler:Landroid/os/Handler;

.field private mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

.field private mIndication:Lcom/oneplus/aod/OpFpAodIndicationText;

.field public mIsPlayFingerprintUnlockAnimation:Z

.field private mIsPress:Z

.field private mIsScreenTurnedOff:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLayoutDir:I

.field private mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

.field private mNotificationIconCtrl:Lcom/oneplus/aod/OpAodNotificationIconAreaController;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRealDisplaySize:Landroid/graphics/Point;

.field private mResetIndicationRunnable:Ljava/lang/Runnable;

.field private mScreenTurnedOn:Z

.field private mScrimView:Landroid/view/View;

.field private final mSettingObserver:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

.field private mShouldPlayLightEffect:Z

.field private mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

.field private mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

.field private mStatus:I

.field private mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sys.c.aod.move_delay"

    const v1, 0xea60

    .line 92
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    const/4 v0, 0x0

    .line 155
    sput-boolean v0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsNoneFodAnimation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 3

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 101
    iput v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    .line 116
    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V

    iput-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSettingObserver:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    .line 126
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mRealDisplaySize:Landroid/graphics/Point;

    .line 127
    const-class v1, Landroid/util/DisplayMetrics;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/DisplayMetrics;

    iput-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 131
    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mShouldPlayLightEffect:Z

    .line 135
    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$1;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$1;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V

    iput-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mResetIndicationRunnable:Ljava/lang/Runnable;

    .line 302
    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$2;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$2;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V

    iput-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    const/4 v1, 0x0

    .line 490
    iput-boolean v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPress:Z

    .line 525
    new-instance v2, Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    invoke-direct {v2, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$4;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 160
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    .line 161
    iput-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 162
    iget-object v2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {p3, v2}, Lcom/android/systemui/doze/DozeHost;->addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    .line 163
    iput-object p4, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 164
    invoke-virtual {p4}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getAodWindowManager()Lcom/oneplus/aod/OpAodWindowManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oneplus/aod/OpAodWindowManager;->getUIHandler()Landroid/os/Handler;

    move-result-object p3

    iput-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    const-string p3, "power"

    .line 165
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManager;

    iput-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mPowerManager:Landroid/os/PowerManager;

    .line 166
    new-instance p3, Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-direct {p3, p1, p2}, Lcom/oneplus/aod/OpClockViewCtrl;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    .line 168
    invoke-direct {p0, p2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->initViews(Landroid/view/ViewGroup;)V

    .line 170
    new-instance p3, Lcom/oneplus/aod/slice/OpSliceManager;

    iget-object p4, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$id;->slice_info_container:I

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p3, p4, p2, v2}, Lcom/oneplus/aod/slice/OpSliceManager;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    .line 172
    iget-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-virtual {p2, p3}, Lcom/oneplus/aod/OpClockViewCtrl;->addOnChangeListener(Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;)V

    .line 176
    const-class p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 177
    iget-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 179
    new-instance p2, Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    iget-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    iget-object p4, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-direct {p2, p1, p3, p4}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/oneplus/aod/OpClockViewCtrl;)V

    iput-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mNotificationIconCtrl:Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    .line 181
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "aod_clock_style"

    .line 182
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSettingObserver:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    const/4 p4, -0x1

    .line 181
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 183
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "aod_display_text"

    .line 184
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSettingObserver:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    .line 183
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 185
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "op_custom_horizon_light_animation_style"

    .line 186
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSettingObserver:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    .line 185
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 190
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "op_custom_unlock_animation_style"

    .line 191
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object v2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSettingObserver:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    .line 190
    invoke-virtual {p1, p3, v1, v2, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 192
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p3, -0x2

    invoke-static {p1, p2, v1, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/16 p2, 0x9

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsNoneFodAnimation:Z

    .line 196
    invoke-virtual {p5, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpFpAodIndicationText;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIndication:Lcom/oneplus/aod/OpFpAodIndicationText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodThreeKeyStatusView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodNotificationIconAreaController;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mNotificationIconCtrl:Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oneplus/aod/OpAodDisplayViewManager;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mScreenTurnedOn:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/oneplus/aod/OpAodDisplayViewManager;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mScreenTurnedOn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsScreenTurnedOff:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/oneplus/aod/OpAodDisplayViewManager;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsScreenTurnedOff:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/oneplus/aod/OpAodDisplayViewManager;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/aod/OpAodDisplayViewManager;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->userActivityInAlwaysOn(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Ljava/lang/Runnable;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mResetIndicationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodLightEffectContainer;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    return-object p0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0

    .line 68
    sput-boolean p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsNoneFodAnimation:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpSingleNotificationView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/oneplus/aod/OpAodDisplayViewManager;I)I
    .locals 0

    .line 68
    iput p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/os/Handler;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/oneplus/aod/OpAodDisplayViewManager;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPress:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/oneplus/aod/OpAodDisplayViewManager;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mShouldPlayLightEffect:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/aod/OpAodDisplayViewManager;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->handleUpdateView()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/slice/OpSliceManager;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodMain;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/bg/OpAodCanvas;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    return-object p0
.end method

.method private getStateString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "threekey"

    return-object p0

    :cond_1
    const-string p0, "notification"

    return-object p0

    :cond_2
    const-string p0, "main"

    return-object p0

    :cond_3
    const-string p0, "none"

    return-object p0
.end method

.method private handleUpdateView()V
    .locals 5

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    invoke-direct {p0, v1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIsPlayFingerprintUnlockAnimation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPlayFingerprintUnlockAnimation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsPress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsScreenTurnedOff:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsScreenTurnedOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodDisplayViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsScreenTurnedOff:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x4

    if-nez v0, :cond_0

    const-string v0, "screen is not turned off yet."

    .line 428
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mScrimView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 430
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 433
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 438
    :cond_0
    iget v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mScrimView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 440
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 445
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->resetNotificationAnimView()V

    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mScrimView:Landroid/view/View;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 453
    iget v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    const/4 v2, 0x1

    const/4 v4, 0x2

    if-ne v0, v2, :cond_4

    .line 455
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isAlwaysOnEnabledWithTimer()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 456
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 462
    :goto_1
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_4
    if-ne v0, v4, :cond_5

    .line 465
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 470
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 476
    :cond_6
    :goto_2
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isNotificationLightEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 478
    iget v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    if-ne v0, v4, :cond_7

    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mShouldPlayLightEffect:Z

    if-eqz v0, :cond_7

    .line 480
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->showLight()V

    .line 481
    iput-boolean v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mShouldPlayLightEffect:Z

    goto :goto_3

    .line 483
    :cond_7
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->resetNotificationAnimView()V

    :cond_8
    :goto_3
    return-void
.end method

.method private initViews(Landroid/view/ViewGroup;)V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/oneplus/aod/bg/OpAodCanvas;->release()V

    .line 204
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->op_aod_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContainer:Landroid/view/ViewGroup;

    .line 205
    sget v0, Lcom/android/systemui/R$id;->op_aod_bg:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/bg/OpAodCanvas;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodCanvas:Lcom/oneplus/aod/bg/OpAodCanvas;

    .line 206
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/bg/OpAodCanvas;->setHandler(Landroid/os/Handler;)V

    .line 208
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpClockViewCtrl;->removeOnChangeListener(Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;)V

    .line 209
    sget v0, Lcom/android/systemui/R$id;->op_aod_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpAodMain;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    .line 210
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-virtual {v1, v0}, Lcom/oneplus/aod/OpClockViewCtrl;->addOnChangeListener(Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;)V

    .line 211
    sget v0, Lcom/android/systemui/R$id;->single_notification_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpSingleNotificationView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    .line 213
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLayoutDir:I

    .line 215
    sget v0, Lcom/android/systemui/R$id;->three_key_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    .line 216
    sget v0, Lcom/android/systemui/R$id;->aod_scrim:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mScrimView:Landroid/view/View;

    .line 218
    sget v0, Lcom/android/systemui/R$id;->notification_animation_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpAodLightEffectContainer;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    .line 219
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_custom_horizon_light_animation_style"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setLightIndex(I)V

    .line 226
    sget v0, Lcom/android/systemui/R$id;->op_aod_fp_indication_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/aod/OpFpAodIndicationText;

    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIndication:Lcom/oneplus/aod/OpFpAodIndicationText;

    .line 227
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/aod/OpFpAodIndicationText;->init(Lcom/oneplus/aod/OpAodDisplayViewManager;Landroid/os/Handler;)V

    .line 228
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateIndication()V

    return-void
.end method

.method private isAodMode()Z
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onUserTrigger(I)V
    .locals 2

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserTrigger: reason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodDisplayViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$9;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager$9;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private updateIndication()V
    .locals 5

    .line 272
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIndication:Lcom/oneplus/aod/OpFpAodIndicationText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_3

    .line 276
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 278
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 279
    iget-object v2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 280
    iget-object v2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mRealDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 281
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mRealDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 282
    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v2

    .line 283
    iget-object v3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 284
    sget v4, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_location_y_2k:I

    goto :goto_0

    :cond_0
    sget v4, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_location_y_1080p:I

    .line 283
    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 287
    iget-object v4, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    iget-object v4, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/util/OpUtils;->getCutoutPathdataHeight(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 292
    :cond_1
    iget-object v4, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v2, :cond_2

    .line 293
    sget v2, Lcom/android/systemui/R$dimen;->op_keyguard_indication_padding_bottom_2k:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/android/systemui/R$dimen;->op_keyguard_indication_padding_bottom_1080p:I

    .line 292
    :goto_1
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    .line 295
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 296
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIndication:Lcom/oneplus/aod/OpFpAodIndicationText;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private updateView()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$3;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$3;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private userActivityInAlwaysOn(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 842
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->userActivityInAlwaysOn(Ljava/lang/String;Z)V

    return-void
.end method

.method private userActivityInAlwaysOn(Ljava/lang/String;Z)V
    .locals 2

    .line 847
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->isAodMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/aod/OpAodDisplayViewManager$8;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 808
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/slice/OpSliceManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAodDisplayViewState()I
    .locals 0

    .line 917
    iget p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    return p0
.end method

.method public getAodNotificationIconCtrl()Lcom/oneplus/aod/OpAodNotificationIconAreaController;
    .locals 0

    .line 522
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mNotificationIconCtrl:Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    return-object p0
.end method

.method public handleUserUnlocked()V
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->onTimeChanged()V

    return-void
.end method

.method public hasHintText()Z
    .locals 0

    .line 929
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIndication:Lcom/oneplus/aod/OpFpAodIndicationText;

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNoneFodAnimationStyle()Z
    .locals 0

    .line 923
    sget-boolean p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsNoneFodAnimation:Z

    return p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 333
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    .line 334
    iget v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLayoutDir:I

    if-eq v0, p1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OpAodMain;->updateRTL(I)V

    .line 336
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OpSingleNotificationView;->updateRTL(I)V

    .line 337
    iput p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLayoutDir:I

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged(Landroid/view/ViewGroup;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpClockViewCtrl;->removeOnChangeListener(Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;)V

    .line 238
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->initViews(Landroid/view/ViewGroup;)V

    .line 239
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OpClockViewCtrl;->initViews(Landroid/view/ViewGroup;)V

    .line 240
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    sget v1, Lcom/android/systemui/R$id;->slice_info_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/slice/OpSliceManager;->initViews(Landroid/view/View;)V

    .line 241
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mNotificationIconCtrl:Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {p1, v0}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->initViews(Landroid/view/ViewGroup;)V

    .line 242
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {p1}, Lcom/oneplus/aod/OpAodMain;->onDensityOrFontScaleChanged()V

    .line 243
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->oneplus_contorl_text_size_body1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateIndicationTextSize(II)V

    return-void
.end method

.method public onFingerPressed(Z)V
    .locals 0

    .line 495
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPress:Z

    .line 496
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateView()V

    return-void
.end method

.method public onFodIndicationVisibilityChanged(Z)V
    .locals 2

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFodIndicationVisibilityChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodDisplayViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFodIconVisibility()V

    .line 936
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/OpClockViewCtrl;->onFodIndicationVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public onFodShowOrHideOnAod(Z)V
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$7;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager$7;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 838
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIndication:Lcom/oneplus/aod/OpFpAodIndicationText;

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/OpFpAodIndicationText;->showOrHide(Z)V

    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    .line 732
    iget-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozingCustom()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 733
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/OpSingleNotificationView;->onNotificationHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    return-void
.end method

.method public onPlayFingerprintUnlockAnimation(Z)V
    .locals 2

    const-string v0, "AodDisplayViewManager"

    const-string v1, "onPlayFingerprintUnlockAnimation"

    .line 504
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPlayFingerprintUnlockAnimation:Z

    .line 506
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateView()V

    return-void
.end method

.method public playAodWakingUpAnimation()Z
    .locals 1

    .line 800
    iget v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsNoneFodAnimation:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public quickHideNotificationBeforeScreenOff(Lcom/android/systemui/doze/DozeHost$PulseCallback;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "AodDisplayViewManager"

    const-string v1, "quickHideNotificationBeforeScreenOff"

    .line 886
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/aod/OpAodDisplayViewManager$10;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;Lcom/android/systemui/doze/DozeHost$PulseCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public recoverFromBurnInScreen()V
    .locals 0

    .line 878
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    return-void
.end method

.method public resetStatus()V
    .locals 2

    const-string v0, "AodDisplayViewManager"

    const-string v1, "resetStatus"

    .line 398
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 400
    iput v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    .line 403
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPress:Z

    .line 405
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateView()V

    const/4 v0, 0x1

    .line 407
    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mShouldPlayLightEffect:Z

    return-void
.end method

.method public startDozing()V
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$5;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$5;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopDozing()V
    .locals 1

    .line 727
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/slice/OpSliceManager;->setListening(Z)V

    return-void
.end method

.method public updateForPulseReason(I)V
    .locals 8

    .line 343
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozingCustom()Z

    move-result v0

    const-string v1, "AodDisplayViewManager"

    if-nez v0, :cond_0

    const-string p0, "setState: don\'t set view if not dozing"

    .line 344
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "setState: don\'t set view if waking up"

    .line 351
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/16 v3, 0xa

    const/16 v4, 0xc

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq p1, v2, :cond_6

    const/16 v2, 0xb

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    if-eq p1, v5, :cond_7

    if-ne p1, v4, :cond_3

    goto :goto_1

    :cond_3
    if-ne p1, v6, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    if-ne p1, v3, :cond_5

    move v0, v5

    goto :goto_2

    :cond_5
    const/16 v2, 0xd

    if-ne p1, v2, :cond_8

    return-void

    .line 360
    :cond_6
    :goto_0
    iput-boolean v6, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mShouldPlayLightEffect:Z

    :cond_7
    :goto_1
    move v0, v6

    .line 373
    :cond_8
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setState="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getStateString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", from="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    invoke-direct {p0, v7}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getStateString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    if-eq v1, v0, :cond_a

    .line 375
    iput v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    if-ne v0, v6, :cond_9

    .line 377
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/slice/OpSliceManager;->onInitiativePulse()V

    .line 380
    :cond_9
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateView()V

    .line 385
    :cond_a
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eq p1, v5, :cond_b

    if-eq p1, v4, :cond_b

    if-ne p1, v3, :cond_c

    .line 389
    :cond_b
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->onUserTrigger(I)V

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pulse reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    .line 391
    invoke-static {v0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->isCanvasAodEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 390
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->userActivityInAlwaysOn(Ljava/lang/String;Z)V

    :cond_c
    return-void
.end method

.method public updateIndicationTextSize(II)V
    .locals 2

    .line 813
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/aod/OpAodDisplayViewManager$6;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
