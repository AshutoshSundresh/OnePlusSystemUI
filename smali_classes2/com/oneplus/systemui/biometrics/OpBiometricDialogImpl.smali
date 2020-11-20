.class public Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;
.super Lcom/android/systemui/SystemUI;
.source "OpBiometricDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFodImeListener;,
        Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;,
        Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field public static final SHOW_TRANSPARENT_ICON_VIEW:Z


# instance fields
.field private mAuthenticatedSuccess:Z

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mDialogShowingRequest:Z

.field private final mFingerprintClientActiveCallback:Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

.field protected mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

.field protected mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

.field protected mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

.field private mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

.field private mIsFaceUnlocked:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field protected mQLController:Lcom/oneplus/systemui/biometrics/OpQLController;

.field private final mQLStateListener:Lcom/oneplus/systemui/biometrics/OpQLController$QLStateListener;

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mTransparentIconView:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 86
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    const-string v0, "debug.show_transparent_icon_view"

    const/4 v1, 0x0

    .line 99
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->SHOW_TRANSPARENT_ICON_VIEW:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 0

    .line 292
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsFaceUnlocked:Z

    .line 127
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mDialogShowingRequest:Z

    .line 244
    new-instance p1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$1;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$1;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerprintClientActiveCallback:Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    .line 282
    new-instance p1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$2;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$2;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 1005
    new-instance p1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$6;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$6;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLStateListener:Lcom/oneplus/systemui/biometrics/OpQLController$QLStateListener;

    .line 294
    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Lcom/android/internal/os/SomeArgs;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->opHandleHideFodDialog(Lcom/android/internal/os/SomeArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->opHandleFingerprintError(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedSuccess:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->shouldShowQL()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->handleFingerprintPressUp()V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->shouldRemoveTransparentIconView()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;II)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->handleFingerprintAcquire(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->handleFingerprintEnroll(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->handleFingerprintAuthenticatedFail()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Z)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->handleUpdateTransparentIconLayoutParams(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->handleUpdateTransparentIconVisibility(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->cancelQLShowing()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    return-object p0
.end method

.method private cancelQLShowing()V
    .locals 1

    .line 938
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isQLEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLController:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLController;->interruptShowingQLView()V

    :cond_0
    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 0

    .line 952
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    return-object p0
.end method

.method private handleFingerprintAcquire(II)V
    .locals 4

    .line 766
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 767
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isPendingHideDialog()Z

    move-result v1

    .line 769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFingerprintAcquire: acquireInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", vendorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", interactive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    .line 772
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", dialogShowing = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowing()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pendingHideDialog = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pressState = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    .line 775
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricDialogImpl"

    .line 769
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    .line 780
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->onFpEventCancel()V

    return-void

    :cond_0
    if-ne p1, v0, :cond_4

    if-nez p2, :cond_1

    .line 788
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->removePressTimeOutMessage()V

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLController:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpQLController;->isQLShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 795
    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->validateFingerAction(II)Z

    move-result p1

    .line 796
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleFingerprintAcquire: validate= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pressState:= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 798
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->isFingerDown()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 800
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->doFingerprintPressDown(I)V

    goto :goto_0

    .line 802
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->handleFingerprintPressUp()V

    :cond_4
    :goto_0
    return-void
.end method

.method private handleFingerprintAuthenticatedFail()V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-nez v0, :cond_0

    const-string p0, "OpBiometricDialogImpl"

    const-string v0, "handleFingerprintAuthenticatedFail mFodDialogView doesn\'t init yet"

    .line 861
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 865
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->onFpEventCancel()V

    .line 867
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->collapseTransparentLayout()V

    return-void
.end method

.method private handleFingerprintEnroll(I)V
    .locals 4

    .line 839
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const-string v1, "OpBiometricDialogImpl"

    if-nez v0, :cond_0

    const-string p0, "handleFingerprintEnroll mFodDialogView doesn\'t init yet"

    .line 840
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 844
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->onFpEventCancel()V

    .line 846
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->isFingerDownOnSensor()Z

    move-result v0

    .line 847
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFingerprintEnroll: remaining= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pressState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    .line 848
    invoke-virtual {v3}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 847
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 852
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->resetTouchFromSensor()V

    .line 853
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->handleFingerprintPressUp()V

    :cond_1
    return-void
.end method

.method private handleFingerprintPressUp()V
    .locals 3

    .line 810
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v0

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFingerprintPressUp: isEmptyClient= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callers= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 812
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpBiometricDialogImpl"

    .line 811
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->collapseTransparentLayout()V

    if-eqz v0, :cond_0

    const-string v0, "handleFingerprintPressUp: finger press up and client is empty."

    .line 823
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->shouldRemoveTransparentIconView()Z

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isPendingHideDialog()Z

    move-result v0

    if-nez v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->doFingerprintPressUp()V

    .line 834
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->cancelQLShowing()V

    return-void
.end method

.method private handleUpdateTransparentIconLayoutParams(Z)V
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLController:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpQLController;->isQLShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 722
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->handleUpdateTransparentIconLayoutParams(Z)V

    return-void
.end method

.method private handleUpdateTransparentIconVisibility(I)V
    .locals 5

    .line 735
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->isFingerDown()Z

    move-result v0

    .line 736
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintSuspended()Z

    move-result v1

    .line 737
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isDoingEnroll()Z

    move-result v2

    .line 738
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateTransparentIconVisibility: pressState= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {v4}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isEnrollClient= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isFpSuspended= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpBiometricDialogImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "handleUpdateTransparentIconVisibility: finger down do not hide it"

    .line 748
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 754
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUpdateTransparentIconVisibility: visibility= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_2

    const-string v0, "handleUpdateTransparentIconVisibility: collapse transparent icon layout while visibility set to gone"

    .line 757
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->collapseTransparentLayout()V

    .line 760
    :cond_2
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private isQLEnabled()Z
    .locals 0

    .line 909
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLController:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLController;->isQLEnabled()Z

    move-result p0

    return p0
.end method

.method private opHandleFingerprintError(I)V
    .locals 3

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "opHandleFingerprintError: errorCode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->onFpEventCancel()V

    :cond_0
    const/16 v0, 0x9

    const/4 v2, 0x5

    if-ne p1, v0, :cond_1

    const-string v0, "opHandleFingerprintError: in lockout state."

    .line 556
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    sget-object v1, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->LOCKOUT:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->changeState(Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;)V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 559
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    sget-object v1, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->STOP:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->changeState(Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;)V

    :cond_2
    :goto_0
    if-eq p1, v2, :cond_3

    .line 564
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->collapseTransparentLayout()V

    .line 566
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->shouldRemoveTransparentIconView()Z

    :cond_3
    return-void
.end method

.method private opHandleHideFodDialog(Lcom/android/internal/os/SomeArgs;)V
    .locals 7

    .line 576
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 577
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "key_suspend"

    .line 580
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 583
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "opHandleHideFodDialog: do hide dialog. reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", suspend: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "OpBiometricDialogImpl"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mDialogShowingRequest:Z

    if-nez p1, :cond_1

    const-string p0, "opHandleHideFodDialog: Dialog already dismissed."

    .line 588
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 593
    :cond_1
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->onFpEventCancel()V

    .line 595
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getAodWindowManager()Lcom/oneplus/aod/OpAodWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/aod/OpAodWindowManager;->isDozing()Z

    move-result p1

    .line 596
    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    .line 597
    sget-boolean v5, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 598
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "opHandleHideFodDialog: aodAppear= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isInteractive= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_2
    const-class v5, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 605
    invoke-virtual {v5}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p1, :cond_6

    if-nez v4, :cond_6

    .line 613
    :cond_3
    invoke-virtual {v5}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintAlreadyAuthenticated()Z

    move-result p1

    if-nez p1, :cond_6

    .line 615
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-virtual {v5, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 617
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result p1

    if-nez p1, :cond_6

    .line 621
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result p1

    if-nez p1, :cond_4

    .line 622
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 623
    :cond_4
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const-string p0, "opHandleHideFodDialog: don\'t hide window since keyguard is showing"

    .line 625
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 630
    :cond_6
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isPendingHideDialog()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p0, "opHandleHideFodDialog: don\'t hide window since pending hide dialog until animation end"

    .line 631
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    if-eqz v2, :cond_8

    const-string p0, "opHandleHideFodDialog: suspend return"

    .line 638
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->updateOwner(Landroid/os/Bundle;)V

    return-void

    .line 644
    :cond_8
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mDialogShowingRequest:Z

    .line 645
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->updateOwner(Landroid/os/Bundle;)V

    .line 646
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedSuccess:Z

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->startDismiss(Z)V

    .line 647
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "opHandleHideFodDialog: removeTransparentIconView , isRequestShowing= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    .line 648
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->isRequestShowing()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mAuthenticatedSuccess= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedSuccess:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    .line 650
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpBiometricDialogImpl:removeTransparentIconView"

    .line 647
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->isRequestShowing()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    .line 654
    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->isFingerDown()Z

    move-result p1

    if-nez p1, :cond_9

    .line 658
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->collapseTransparentLayout()V

    .line 660
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->shouldRemoveTransparentIconView()Z

    :cond_9
    return-void
.end method

.method private removeTransparentIconView()V
    .locals 0

    .line 945
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    if-eqz p0, :cond_0

    .line 946
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->removeFromWindow()V

    :cond_0
    return-void
.end method

.method private shouldRemoveTransparentIconView()Z
    .locals 3

    .line 1065
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->isFingerDown()Z

    move-result v0

    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldRemoveTransparentIconView: isFingerDownOnView= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callers= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 1067
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpBiometricDialogImpl:removeTransparentIconView"

    .line 1066
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 1069
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->removeTransparentIconView()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private shouldShowQL()Z
    .locals 2

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldShowQL: mAuthenticatedSuccess= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isKeyguardUnlocked= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardUnlocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFaceUnlocked= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsFaceUnlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricDialogImpl"

    .line 1052
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedSuccess:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsFaceUnlocked:Z

    if-nez v0, :cond_0

    .line 1058
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLController:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLController;->shouldShowQL()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateTransparentIconLayoutParams(Z)V
    .locals 2

    .line 710
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 711
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 712
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 713
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public collapseTransparentLayout()V
    .locals 1

    const/4 v0, 0x0

    .line 705
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconLayoutParams(Z)V

    return-void
.end method

.method public expandTransparentLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 701
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconLayoutParams(Z)V

    return-void
.end method

.method public forceShowFodDialog(Landroid/os/Bundle;)V
    .locals 3

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceShowFodDialog callers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpBiometricDialogImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 454
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 455
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 456
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 458
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 459
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    const-string p1, "force show"

    .line 460
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 461
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method getMainLooper()Landroid/os/Looper;
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public hideFodDialog(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 215
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideFodDialog: reason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 221
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 222
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 223
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public hideFodDialogInner(Ljava/lang/String;)V
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideFodDialogInner: reason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->hideFodDialog(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public hideFodImmediately()V
    .locals 3

    .line 990
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isBiometricPromptReadyToShow()Z

    move-result v0

    .line 991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideFodImmediately: shouldForceHideByBiometric= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpBiometricDialogImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 993
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method inFingerprintDialogUiThread()Z
    .locals 1

    .line 442
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FingerprintDialogUI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isAuthenticateSuccess()Z
    .locals 0

    .line 897
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedSuccess:Z

    return p0
.end method

.method isDialogShowing()Z
    .locals 0

    .line 956
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isDialogShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isDialogShowingRequest()Z
    .locals 0

    .line 960
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mDialogShowingRequest:Z

    return p0
.end method

.method isFaceUnlocked()Z
    .locals 0

    .line 985
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsFaceUnlocked:Z

    return p0
.end method

.method isFingerDown()Z
    .locals 0

    .line 981
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->isFingerDown()Z

    move-result p0

    return p0
.end method

.method public onBiometricPromptReady(I)V
    .locals 1

    .line 998
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->updateBiometricPromptReady(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1000
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 668
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 671
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 672
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLController:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpQLController;->isQLShowing()Z

    move-result p1

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: landscape , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    .line 674
    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mQLShowing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pressState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    .line 675
    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authenticated= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", faceUnlocked= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsFaceUnlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricDialogImpl"

    .line 673
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->isFingerDown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->isRequestShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 680
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->reset()V

    const/4 p1, 0x0

    .line 681
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsFaceUnlocked:Z

    .line 683
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->collapseTransparentLayout()V

    .line 684
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 685
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    new-instance v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$4;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$4;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 874
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    new-instance v1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$5;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$5;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onFaceUnlocked()V
    .locals 2

    const/4 v0, 0x1

    .line 930
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsFaceUnlocked:Z

    .line 931
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFaceUnlocked mIsEnableQL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isQLEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->cancelQLShowing()V

    return-void
.end method

.method public onFingerprintAcquired(II)V
    .locals 2

    .line 468
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFingerprintAcquired: acquireInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFingerprintAuthenticatedFail()V
    .locals 2

    .line 480
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpBiometricDialogImpl"

    const-string v1, "onFingerprintAuthenticatedFail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFingerprintAuthenticatedSuccess()V
    .locals 2

    .line 228
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpBiometricDialogImpl"

    const-string v1, "onFingerprintAuthenticatedSuccess"

    .line 229
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFingerprintDialogDismissDone()V
    .locals 2

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFingerprintDialogDismissDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pressState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    .line 888
    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authenticated= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", faceUnlocked= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsFaceUnlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricDialogImpl"

    .line 887
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->shouldShowQL()Z

    const/4 v0, 0x0

    .line 893
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsFaceUnlocked:Z

    return-void
.end method

.method public onFingerprintEnrollResult(I)V
    .locals 2

    .line 474
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFingerprintEnrollResult: remaining= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFingerprintError(I)V
    .locals 2

    .line 237
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFingerprintError: errorCode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFingerprintStateChanged()V
    .locals 1

    .line 435
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintSuspended()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isDoingEnroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->reset()V

    :cond_0
    return-void
.end method

.method public onOverlayChanged()V
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->onOverlayChanged()V

    .line 973
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->isRequestShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->isTransparentViewExpanded()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconLayoutParams(Z)V

    :cond_0
    return-void
.end method

.method protected opHandleFingerprintAuthenticatedSuccess()V
    .locals 2

    const-string v0, "OpBiometricDialogImpl"

    const-string v1, "opHandleFingerprintAuthenticatedSuccess"

    .line 537
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 538
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedSuccess:Z

    .line 539
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->notifyFingerprintAuthenticated()V

    return-void
.end method

.method protected opHandleShowDialog(Lcom/android/internal/os/SomeArgs;)V
    .locals 6

    .line 487
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const-string v1, "OpBiometricDialogImpl"

    if-nez v0, :cond_0

    const-string p0, "opHandleShowDialog mFodDialogView doesn\'t init yet"

    .line 488
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 493
    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "key_fingerprint_package_name"

    const-string v3, ""

    .line 494
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 496
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v3, "key_resume"

    .line 498
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "opHandleShowDialog authenticatedPkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", resume: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "opHandleShowDialog: ownerString empty return"

    .line 505
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 509
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mIsFaceUnlocked:Z

    .line 510
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mAuthenticatedSuccess:Z

    .line 512
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->updateOwner(Landroid/os/Bundle;)V

    .line 514
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isAnimatingAway()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "opHandleShowDialog: Dialog is doing animating away, force remove first."

    .line 515
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->forceRemove()V

    goto :goto_0

    .line 517
    :cond_2
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mDialogShowingRequest:Z

    if-eqz p1, :cond_3

    .line 518
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "opHandleShowDialog: Dialog already showing. , really added ? "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowing()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 518
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 524
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mDialogShowingRequest:Z

    .line 526
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->addToWindow()V

    .line 528
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->addToWindow()V

    return-void
.end method

.method public showFodDialog(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .line 183
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    const-string v1, "OpBiometricDialogImpl"

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFodDialog: reason= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mDialogShowingRequest:Z

    if-nez v0, :cond_1

    const-string v0, "showFodDialog: !mDialogShowingRequest"

    .line 189
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 199
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 200
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 203
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public start()V
    .locals 9

    const-string v0, "OpBiometricDialogImpl"

    const-string v1, "start"

    .line 299
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 302
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->init(Landroid/content/Context;)V

    .line 303
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->addFingerprintStateChangeListener(Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;)V

    .line 304
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "FingerprintDialogUI"

    const/4 v4, -0x8

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 306
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 307
    new-instance v3, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    const-string v2, "android.hardware.fingerprint"

    .line 309
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 311
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 312
    const-class v1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 313
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "fingerprint"

    .line 319
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 323
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFingerprintClientActiveCallback:Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "addClientActiveCallback: "

    .line 325
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 332
    :try_start_1
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v2

    new-instance v3, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFodImeListener;

    invoke-direct {v3, p0, v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFodImeListener;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$1;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->addPinnedStackListener(Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "addPinnedStackListener: "

    .line 334
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    :goto_1
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;-><init>(Landroid/content/Context;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    .line 341
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-direct {v0, v2, p0, v3}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;-><init>(Landroid/content/Context;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    .line 342
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    .line 344
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$layout;->op_fingerprint_icon:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    .line 345
    new-instance v1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 414
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->setDialog(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    .line 417
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->SHOW_TRANSPARENT_ICON_VIEW:Z

    if-eqz v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 419
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mTransparentIconView:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 424
    :cond_2
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpQLController;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$FingerprintUIHandler;

    iget-object v6, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-object v7, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    iget-object v8, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLStateListener:Lcom/oneplus/systemui/biometrics/OpQLController$QLStateListener;

    move-object v2, v0

    move-object v5, p0

    invoke-direct/range {v2 .. v8}, Lcom/oneplus/systemui/biometrics/OpQLController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;Lcom/oneplus/systemui/biometrics/OpQLController$QLStateListener;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLController:Lcom/oneplus/systemui/biometrics/OpQLController;

    .line 429
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public updateTransparentIconVisibility(I)V
    .locals 2

    .line 727
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 728
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 729
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 730
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
