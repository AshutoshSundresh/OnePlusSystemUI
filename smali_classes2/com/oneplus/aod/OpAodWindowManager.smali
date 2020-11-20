.class public Lcom/oneplus/aod/OpAodWindowManager;
.super Ljava/lang/Object;
.source "OpAodWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;
    }
.end annotation


# instance fields
.field private mAodBg:Lcom/oneplus/aod/bg/OpAodCanvas;

.field private mAodContainer:Landroid/view/View;

.field private mAodWindowView:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field mDisppearAnimation:Landroid/animation/AnimatorSet;

.field private mDozing:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsWakeAndUnlock:Z

.field private mIsWindowRemoved:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLSState:Lcom/oneplus/plugin/OpLsState;

.field private mMdmReadyReceiver:Landroid/content/BroadcastReceiver;

.field private final mRemoveWindow:Ljava/lang/Runnable;

.field private mSettingsOberver:Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;

.field private mUIHandlerThread:Landroid/os/HandlerThread;

.field private mUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWakingUpReason:Ljava/lang/String;

.field private mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;-><init>(Lcom/oneplus/aod/OpAodWindowManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mSettingsOberver:Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    .line 124
    new-instance v0, Lcom/oneplus/aod/OpAodWindowManager$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodWindowManager$2;-><init>(Lcom/oneplus/aod/OpAodWindowManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mMdmReadyReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    new-instance v0, Lcom/oneplus/aod/OpAodWindowManager$3;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodWindowManager$3;-><init>(Lcom/oneplus/aod/OpAodWindowManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 346
    new-instance v0, Lcom/oneplus/aod/OpAodWindowManager$4;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodWindowManager$4;-><init>(Lcom/oneplus/aod/OpAodWindowManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mRemoveWindow:Ljava/lang/Runnable;

    .line 139
    iput-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mContext:Landroid/content/Context;

    .line 140
    iput-object p2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    const-string v0, "window"

    .line 141
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWm:Landroid/view/WindowManager;

    const-string v0, "power"

    .line 142
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    .line 143
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mLSState:Lcom/oneplus/plugin/OpLsState;

    .line 144
    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mSettingsOberver:Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;->observe()V

    .line 145
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 146
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 147
    iget-object v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 148
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-static {p1, v0}, Lcom/oneplus/aod/OpAodUtils;->init(Landroid/content/Context;I)V

    .line 150
    sget p1, Lcom/android/systemui/R$id;->op_aod_container:I

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodContainer:Landroid/view/View;

    .line 152
    sget p1, Lcom/android/systemui/R$id;->op_aod_bg:I

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/aod/bg/OpAodCanvas;

    iput-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodBg:Lcom/oneplus/aod/bg/OpAodCanvas;

    .line 154
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "AODUIThread"

    const/4 v0, -0x8

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mUIHandlerThread:Landroid/os/HandlerThread;

    .line 156
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 157
    iget-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mUIHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/OpAodWindowManager;->initHandler(Landroid/os/Looper;)V

    .line 159
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.oneplus.intent.action.mdm_provider_ready"

    .line 160
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mMdmReadyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpAodWindowManager;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mDozing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpAodWindowManager;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodWindowManager;->handleStartDozing()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/aod/OpAodWindowManager;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodWindowManager;->removeAodWindow()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/aod/OpAodWindowManager;)Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mSettingsOberver:Lcom/oneplus/aod/OpAodWindowManager$SettingObserver;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/oneplus/aod/OpAodWindowManager;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/OpAodWindowManager;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodWindowManager;->handleStopDozing()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/aod/OpAodWindowManager;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodWindowManager;->reportMDMEvent()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/aod/OpAodWindowManager;)Landroid/content/Context;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/OpAodWindowManager;)Lcom/oneplus/aod/bg/OpAodCanvas;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodBg:Lcom/oneplus/aod/bg/OpAodCanvas;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/OpAodWindowManager;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/aod/OpAodWindowManager;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mIsWakeAndUnlock:Z

    return p0
.end method

.method static synthetic access$702(Lcom/oneplus/aod/OpAodWindowManager;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mIsWakeAndUnlock:Z

    return p1
.end method

.method static synthetic access$802(Lcom/oneplus/aod/OpAodWindowManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/oneplus/aod/OpAodWindowManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method private getAodViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    .line 364
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v0, 0x8ff

    .line 365
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 378
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCtsInputmethodservice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AodWindowManager"

    const-string v1, "no focus flag"

    .line 379
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x1000508

    goto :goto_0

    :cond_0
    const v0, 0x1000500

    :goto_0
    const/16 v1, 0x10

    .line 384
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v2, 0x3

    .line 385
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 388
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_1

    const/high16 v3, 0x200000

    or-int/2addr v1, v3

    .line 389
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 393
    :cond_1
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, -0x2

    .line 394
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v0, -0x1

    .line 395
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 396
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x11

    .line 397
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x1

    .line 398
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-string v0, "OpAodQ"

    .line 400
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 402
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-object p0
.end method

.method private handleStartDozing()V
    .locals 5

    .line 244
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mDozing:Z

    if-eqz v0, :cond_0

    return-void

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartDozing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mLSState:Lcom/oneplus/plugin/OpLsState;

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    :cond_1
    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mDozing:Z

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mIsWakeAndUnlock:Z

    const/4 v2, 0x0

    .line 257
    iput-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    .line 258
    iget-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 260
    iget-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 261
    iget-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 263
    iget-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodBg:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-virtual {v2}, Lcom/oneplus/aod/bg/OpAodCanvas;->reset()V

    .line 265
    iget-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 266
    iget-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oneplus/aod/OpAodWindowManager;->mRemoveWindow:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v2, "mAodView has already been added to window, do not add it again."

    .line 267
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodWindowManager;->getAodViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mIsWindowRemoved:Z

    .line 273
    iget-object v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x700

    .line 279
    iget-object v2, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    .line 280
    iget-object v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 282
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    return-void
.end method

.method private handleStopDozing()V
    .locals 5

    .line 287
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mDozing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 291
    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mDozing:Z

    .line 293
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    .line 294
    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowingLiveWallpaper(Z)Z

    move-result v1

    xor-int/2addr v1, v2

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStopDozing: mIsWakeAndUnlock = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/aod/OpAodWindowManager;->mIsWakeAndUnlock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hasLockWallpaper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AodWindowManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 303
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_1

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStopDozing mWakingUpReason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_1
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 308
    iget-object v3, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    if-eqz v3, :cond_5

    const-string v4, "FINGERPRINT"

    .line 309
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "com.android.systemui:FailedAttempts"

    if-eqz v3, :cond_2

    goto :goto_0

    .line 310
    :cond_2
    iget-object v3, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0x5a

    .line 311
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    .line 318
    :cond_4
    iget-object v3, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    if-eqz v3, :cond_5

    const-string v4, "FINGERPRINT_WALLPAPER"

    .line 319
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v0, 0x64

    .line 324
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aod remove window delay:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_6

    .line 328
    iget-object v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mRemoveWindow:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 330
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodWindowManager;->removeAodWindow()V

    :goto_2
    return-void
.end method

.method private final makeHardwareLayerListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 515
    new-instance v0, Lcom/oneplus/aod/OpAodWindowManager$7;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/aod/OpAodWindowManager$7;-><init>(Lcom/oneplus/aod/OpAodWindowManager;Landroid/view/View;)V

    return-object v0
.end method

.method private removeAodWindow()V
    .locals 2

    .line 354
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mIsWindowRemoved:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AodWindowManager"

    const-string v1, "aod remove window"

    .line 357
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 359
    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mIsWindowRemoved:Z

    return-void
.end method

.method private reportMDMEvent()V
    .locals 10

    .line 210
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 211
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 213
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isMotionAwakeOn()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isSingleTapEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    const-string v4, "aod_smart_display_cur_state"

    .line 214
    invoke-static {p0, v4, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v3, v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    const-string v5, "switch"

    const-string v6, "1"

    const-string v7, "X9HFK50WT7"

    const-string v8, "Smart_AOD"

    if-eqz v1, :cond_8

    const-string v1, "aod_smart_display_music_info_enabled"

    .line 218
    invoke-static {p0, v1, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v3, v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    const-string v9, "aod_smart_display_calendar_enabled"

    .line 219
    invoke-static {p0, v9, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne v3, p0, :cond_4

    move v2, v3

    :cond_4
    const-string p0, "0"

    if-eqz v4, :cond_5

    const-string v0, "2"

    goto :goto_4

    :cond_5
    move-object v0, p0

    .line 221
    :goto_4
    invoke-static {v8, v5, v0, v7}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    move-object v0, v6

    goto :goto_5

    :cond_6
    move-object v0, p0

    :goto_5
    const-string v1, "Media"

    .line 222
    invoke-static {v8, v1, v0, v7}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    move-object v6, p0

    :goto_6
    const-string p0, "Calendar"

    .line 223
    invoke-static {v8, p0, v6, v7}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 225
    :cond_8
    invoke-static {v8, v5, v6, v7}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void
.end method


# virtual methods
.method public genAodDisappearAnimation(Z)Landroid/animation/AnimatorSet;
    .locals 7

    .line 460
    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->isCanvasAodAnimation(Landroid/content/Context;Z)Z

    move-result v0

    .line 463
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mDisppearAnimation:Landroid/animation/AnimatorSet;

    .line 464
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 466
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 469
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 470
    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x177

    .line 471
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 472
    new-instance v5, Lcom/oneplus/aod/OpAodWindowManager$5;

    invoke-direct {v5, p0, v0}, Lcom/oneplus/aod/OpAodWindowManager$5;-><init>(Lcom/oneplus/aod/OpAodWindowManager;Z)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 482
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const/16 v4, 0xe1

    const-string v5, "debug.aod.disappear.animation"

    .line 486
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz p1, :cond_0

    int-to-long v4, v4

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0xe1

    .line 487
    :goto_0
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 488
    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 489
    new-instance p1, Lcom/oneplus/aod/OpAodWindowManager$6;

    invoke-direct {p1, p0, v0}, Lcom/oneplus/aod/OpAodWindowManager$6;-><init>(Lcom/oneplus/aod/OpAodWindowManager;Z)V

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 499
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    .line 502
    iget-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodBg:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-virtual {p1}, Lcom/oneplus/aod/bg/OpAodCanvas;->genAodDisappearAnimation()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 503
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 504
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 507
    :cond_1
    iget-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mDisppearAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 509
    iget-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mDisppearAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpAodWindowManager;->makeHardwareLayerListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 511
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mDisppearAnimation:Landroid/animation/AnimatorSet;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        -0x3d380000    # -100.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getLastAodDisappearAnimation()Landroid/animation/AnimatorSet;
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mDisppearAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public initHandler(Landroid/os/Looper;)V
    .locals 1

    .line 100
    new-instance v0, Lcom/oneplus/aod/OpAodWindowManager$1;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/aod/OpAodWindowManager$1;-><init>(Lcom/oneplus/aod/OpAodWindowManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public isDozing()Z
    .locals 0

    .line 537
    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mDozing:Z

    return p0
.end method

.method public isWakingAndUnlockByFP()Z
    .locals 1

    .line 541
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "FINGERPRINT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onWakingAndUnlocking()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getWakingUpReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mWakingUpReason:Ljava/lang/String;

    const-string p0, "AodWindowManager"

    const-string v0, "onWakingAndUnlocking"

    .line 232
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startDozing()V
    .locals 2

    const-string v0, "AodWindowManager"

    const-string v1, "startDozing"

    .line 335
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopDozing()V
    .locals 2

    const-string v0, "AodWindowManager"

    const-string v1, "stopDozing"

    .line 341
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateView(Landroid/widget/RelativeLayout;)V
    .locals 1

    .line 165
    iput-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    .line 166
    sget v0, Lcom/android/systemui/R$id;->op_aod_container:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodContainer:Landroid/view/View;

    .line 167
    sget v0, Lcom/android/systemui/R$id;->op_aod_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/aod/bg/OpAodCanvas;

    iput-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager;->mAodBg:Lcom/oneplus/aod/bg/OpAodCanvas;

    return-void
.end method
