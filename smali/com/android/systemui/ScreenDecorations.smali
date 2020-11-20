.class public Lcom/android/systemui/ScreenDecorations;
.super Lcom/android/systemui/SystemUI;
.source "ScreenDecorations.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ScreenDecorations$SettingsObserver;,
        Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;,
        Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_COLOR:Z

.field private static final DEBUG_CUTOUT_CIRCLE_DISPLAY:Z

.field private static final DEBUG_CUTOUT_DISPLAY:Z

.field private static final DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

.field private static final DEBUG_SCREEN_DECORATIONS:Z

.field private static mDisableRoundedCorner:I

.field private static mOpCustRegionRight:I

.field private static mOpCustRegionleft:I


# instance fields
.field private MAX_BLOCK_INTERVAL:I

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasRoundedCorner:Z

.field protected mIsRegistered:Z

.field private mIsRoundedCornerMultipleRadius:Z

.field private mLastSizeBottom:I

.field private mLastSizeTop:I

.field private final mMainHandler:Landroid/os/Handler;

.field private mOpPendingRotationChange:Z

.field private mOpPendingRotationChangeBottom:Z

.field protected mOverlays:[Landroid/view/View;

.field private mPendingRotationChange:Z

.field mResizeRatio:F

.field private mRotation:I

.field protected mRoundedDefault:I

.field protected mRoundedDefaultBottom:I

.field mRoundedDefaultBottomResize:I

.field protected mRoundedDefaultBottomWidth:I

.field mRoundedDefaultBottomWidthResize:I

.field protected mRoundedDefaultTop:I

.field mRoundedDefaultTopResize:I

.field protected mRoundedDefaultTopWidth:I

.field mRoundedDefaultTopWidthResize:I

.field mScreenResolution:I

.field private mShowRunnable:Ljava/lang/Runnable;

.field private final mShutDownBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTempColorInversionDisableSetting:Lcom/oneplus/util/SystemSetting;

.field private mTempDisableInversion:Z

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field private final mUserSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 133
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG:Z

    const-string v0, "debug.screenshot_rounded_corners"

    const/4 v1, 0x0

    .line 140
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    const-string/jumbo v0, "vendor.display.disable_rounded_corner"

    .line 143
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/ScreenDecorations;->mDisableRoundedCorner:I

    .line 146
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_COLOR:Z

    const-string v0, "debug.screen_decorations"

    .line 188
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREEN_DECORATIONS:Z

    const-string v0, "debug.cutout.display.enable"

    .line 221
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_CUTOUT_DISPLAY:Z

    const-string v0, "debug.cutout.display.circle.enable"

    .line 225
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_CUTOUT_CIRCLE_DISPLAY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/tuner/TunerService;)V
    .locals 0

    .line 296
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x4b0

    .line 182
    iput p1, p0, Lcom/android/systemui/ScreenDecorations;->MAX_BLOCK_INTERVAL:I

    const/4 p1, 0x0

    .line 183
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingRotationChange:Z

    .line 184
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingRotationChangeBottom:Z

    .line 193
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mTempDisableInversion:Z

    .line 197
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mHasRoundedCorner:Z

    .line 206
    iput p1, p0, Lcom/android/systemui/ScreenDecorations;->mScreenResolution:I

    const/high16 p1, 0x3f400000    # 0.75f

    .line 214
    iput p1, p0, Lcom/android/systemui/ScreenDecorations;->mResizeRatio:F

    .line 229
    new-instance p1, Lcom/android/systemui/ScreenDecorations$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/ScreenDecorations$1;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mShutDownBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 687
    new-instance p1, Lcom/android/systemui/ScreenDecorations$7;

    invoke-direct {p1, p0}, Lcom/android/systemui/ScreenDecorations$7;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mUserSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 828
    new-instance p1, Lcom/android/systemui/ScreenDecorations$8;

    invoke-direct {p1, p0}, Lcom/android/systemui/ScreenDecorations$8;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mShowRunnable:Ljava/lang/Runnable;

    .line 297
    iput-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mMainHandler:Landroid/os/Handler;

    .line 298
    iput-object p3, p0, Lcom/android/systemui/ScreenDecorations;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 299
    iput-object p4, p0, Lcom/android/systemui/ScreenDecorations;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->removeAllOverlays()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->isRectangleTop()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->isRectangleBottom()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/ScreenDecorations;I)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateView(I)V

    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    .line 127
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREEN_DECORATIONS:Z

    return v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    .line 127
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_CUTOUT_DISPLAY:Z

    return v0
.end method

.method static synthetic access$1900()Z
    .locals 1

    .line 127
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_CUTOUT_CIRCLE_DISPLAY:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/ScreenDecorations;)I
    .locals 0

    .line 127
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/ScreenDecorations;I)I
    .locals 0

    .line 127
    iput p1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    return p0
.end method

.method static synthetic access$2400(II)I
    .locals 0

    .line 127
    invoke-static {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$2500()I
    .locals 1

    .line 127
    sget v0, Lcom/android/systemui/ScreenDecorations;->mOpCustRegionleft:I

    return v0
.end method

.method static synthetic access$2600()I
    .locals 1

    .line 127
    sget v0, Lcom/android/systemui/ScreenDecorations;->mOpCustRegionRight:I

    return v0
.end method

.method static synthetic access$2700(I)Ljava/lang/String;
    .locals 0

    .line 127
    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowTitleByPos(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingRotationChange:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/ScreenDecorations;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingRotationChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingRotationChangeBottom:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/ScreenDecorations;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingRotationChangeBottom:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/ScreenDecorations;I)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateColorInversion(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/systemui/ScreenDecorations;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mTempDisableInversion:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/qs/SecureSetting;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    return-object p0
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 127
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG:Z

    return v0
.end method

.method private createOverlay(I)V
    .locals 4

    .line 532
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    new-array v0, v1, [Landroid/view/View;

    .line 533
    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    if-nez v0, :cond_1

    new-array v0, v1, [Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 537
    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v1, v0, p1

    if-eqz v1, :cond_2

    return-void

    .line 543
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->rounded_corners:I

    const/4 v3, 0x0

    .line 544
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, p1

    .line 546
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    new-instance v1, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;ILcom/android/systemui/ScreenDecorations;)V

    aput-object v1, v0, p1

    .line 547
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 549
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 551
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 553
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateView(I)V

    .line 555
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    new-instance v1, Lcom/android/systemui/ScreenDecorations$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ScreenDecorations$6;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 574
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-direct {v1, p0, v2, p1}, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private static getBoundPositionFromRotation(II)I
    .locals 0

    sub-int/2addr p0, p1

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x4

    :cond_0
    return p0
.end method

.method private getHeightLayoutParamByPos(I)I
    .locals 0

    .line 634
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {p1, p0}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x2

    :goto_1
    return p0
.end method

.method private getOpRoundedCornerGravity(IIZ)I
    .locals 4

    const/16 p0, 0x33

    const/16 v0, 0x53

    const/4 v1, 0x1

    if-eqz p2, :cond_c

    const/16 v2, 0x35

    if-eq p2, v1, :cond_8

    const/4 p0, 0x2

    const/16 v3, 0x55

    if-eq p2, p0, :cond_4

    const/4 p0, 0x3

    if-ne p2, p0, :cond_3

    if-ne p1, v1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    return v0

    .line 1035
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Incorrect position: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-ne p1, v1, :cond_6

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    return v2

    :cond_6
    if-nez p3, :cond_7

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    return v2

    :cond_8
    if-ne p1, v1, :cond_a

    if-eqz p3, :cond_9

    goto :goto_4

    :cond_9
    move p0, v2

    :goto_4
    return p0

    :cond_a
    if-nez p3, :cond_b

    goto :goto_5

    :cond_b
    move p0, v2

    :goto_5
    return p0

    :cond_c
    if-ne p1, v1, :cond_e

    if-nez p3, :cond_d

    goto :goto_6

    :cond_d
    move p0, v0

    :goto_6
    return p0

    :cond_e
    if-eqz p3, :cond_f

    goto :goto_7

    :cond_f
    move p0, v0

    :goto_7
    return p0
.end method

.method private getOpRoundedCornerRotation(II)I
    .locals 5

    const/16 p0, 0x10e

    const/16 v0, 0x5a

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    const/4 v2, 0x0

    const/16 v3, 0xb4

    if-eq p1, v1, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 p0, 0x3

    if-ne p1, p0, :cond_1

    if-ne p2, v1, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 1050
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Incorrect position: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-ne p2, v1, :cond_3

    move p0, v0

    :cond_3
    return p0

    :cond_4
    if-ne p2, v1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v3

    :goto_0
    return v2

    :cond_6
    if-ne p2, v1, :cond_7

    goto :goto_1

    :cond_7
    move p0, v0

    :goto_1
    return p0
.end method

.method private getOverlayWindowGravity(I)I
    .locals 2

    .line 655
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {p1, p0}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result p0

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x50

    return p0

    .line 666
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown bound position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/16 p0, 0x30

    return p0

    :cond_3
    return v0
.end method

.method private getRoundedCornerRotationX(IZ)I
    .locals 0

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0
.end method

.method private getRoundedCornerRotationY(IZ)I
    .locals 0

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    return p0

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0
.end method

.method private getWidthLayoutParamByPos(I)I
    .locals 0

    .line 628
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {p1, p0}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method private static getWindowTitleByPos(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "ScreenDecorOverlayBottom"

    return-object p0

    .line 650
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown bound position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "ScreenDecorOverlayRight"

    return-object p0

    :cond_2
    const-string p0, "ScreenDecorOverlay"

    return-object p0

    :cond_3
    const-string p0, "ScreenDecorOverlayLeft"

    return-object p0
.end method

.method private hasRoundedCorners()Z
    .locals 0

    .line 1090
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mHasRoundedCorner:Z

    return p0
.end method

.method private initRoundCornerView()V
    .locals 5

    .line 1900
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    const/4 v3, 0x3

    if-eqz v2, :cond_2

    aget-object v2, v0, v3

    if-nez v2, :cond_0

    goto :goto_0

    .line 1905
    :cond_0
    aget-object v0, v0, v1

    sget v2, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1906
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v1, v2, v1

    sget v2, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1907
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v2, v2, v3

    sget v4, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1908
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v3, v4, v3

    sget v4, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1911
    sget v4, Lcom/android/systemui/R$drawable;->rounded_top:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1912
    sget v0, Lcom/android/systemui/R$drawable;->rounded_top:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1913
    sget v0, Lcom/android/systemui/R$drawable;->rounded_bottom:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1914
    sget v0, Lcom/android/systemui/R$drawable;->rounded_bottom:I

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1918
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1919
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mResizeRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopResize:I

    .line 1920
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomResize:I

    .line 1922
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidthResize:I

    .line 1923
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidthResize:I

    .line 1927
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateDecorSize()V

    return-void

    .line 1901
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRoundCornerView failed, top null: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v2, v2, v1

    const/4 v4, 0x0

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " bottom null: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object p0, p0, v3

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenDecorations"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isOverlaysVisibility()Z
    .locals 4

    .line 809
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 811
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    goto :goto_1

    .line 814
    :cond_0
    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private isRectangleBottom()Z
    .locals 1

    .line 2056
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidth:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRectangleTop()Z
    .locals 1

    .line 2052
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidth:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$IfAux2ksmJXT9o9i38WaSEQXJTQ(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->startOnScreenDecorationsThread()V

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$2(Landroid/content/res/Configuration;)V
    .locals 3

    .line 743
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive onConfigurationChanged, newConfig.orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", getRotation:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 745
    invoke-static {p1}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenDecorations"

    .line 744
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 749
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x2

    const-string v2, "oneplus_screen_resolution_adjust"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/ScreenDecorations;->mScreenResolution:I

    .line 751
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateDecorSize()V

    .line 754
    :cond_0
    iget p1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v1, 0x0

    .line 755
    iput-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    .line 756
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    .line 757
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    .line 758
    sget-boolean v1, Lcom/android/systemui/ScreenDecorations;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigChanged from rot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 760
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-eqz p1, :cond_2

    .line 765
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onTuningChanged$3(Ljava/lang/String;)V
    .locals 0

    .line 1142
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string/jumbo p0, "sysui_rounded_size"

    .line 1143
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$setupDecorations$0()V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_rounded_size"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setupDecorations$1()V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method private postShow()V
    .locals 3

    .line 824
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 825
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static rectsToRegion(Ljava/util/List;)Landroid/graphics/Region;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Region;"
        }
    .end annotation

    .line 280
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 282
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private removeAllOverlays()V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 516
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 517
    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->removeOverlay(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 520
    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    return-void
.end method

.method private removeOverlay(I)V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-eqz v0, :cond_1

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    aget-object v0, v0, p1

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 528
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    const/4 v0, 0x0

    aput-object v0, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method private setSize(Landroid/view/View;II)V
    .locals 0

    .line 1207
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 1208
    iput p3, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1209
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1210
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupCameraListener()V
    .locals 1

    .line 677
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 678
    sget v0, Lcom/android/systemui/R$bool;->config_enableDisplayCutoutProtection:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    return-void
.end method

.method private setupDecorations()V
    .locals 9

    .line 408
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->removeAllOverlays()V

    goto :goto_4

    .line 409
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 410
    :cond_2
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v0

    :goto_1
    move v2, v1

    :goto_2
    const/4 v3, 0x4

    if-ge v2, v3, :cond_6

    .line 413
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {v2, v3}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result v3

    if-eqz v0, :cond_3

    .line 414
    aget-object v3, v0, v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 415
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/systemui/ScreenDecorations;->shouldShowRoundedCorner(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 416
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/systemui/ScreenDecorations;->createOverlay(I)V

    goto :goto_3

    .line 418
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/systemui/ScreenDecorations;->removeOverlay(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 424
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->initRoundCornerView()V

    .line 426
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREEN_DECORATIONS:Z

    if-eqz v0, :cond_7

    const/16 v0, -0x100

    .line 427
    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateColorInversion(I)V

    .line 435
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->hasOverlays()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 436
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    if-eqz v0, :cond_8

    return-void

    .line 439
    :cond_8
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 440
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/-$$Lambda$ScreenDecorations$ItnW8ZEHeCqCHue6f8abcXewifU;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$ItnW8ZEHeCqCHue6f8abcXewifU;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 446
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    const/4 v2, 0x1

    if-nez v0, :cond_9

    .line 447
    new-instance v0, Lcom/android/systemui/ScreenDecorations$4;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    const-string v5, "accessibility_display_inversion_enabled"

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/android/systemui/ScreenDecorations$4;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 454
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->onChange(Z)V

    .line 460
    :cond_9
    new-instance v0, Lcom/android/systemui/ScreenDecorations$5;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    const-string/jumbo v7, "temp_disable_inversion"

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/ScreenDecorations$5;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mTempColorInversionDisableSetting:Lcom/oneplus/util/SystemSetting;

    .line 468
    invoke-virtual {v0, v2}, Lcom/oneplus/util/SystemSetting;->setListening(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mTempColorInversionDisableSetting:Lcom/oneplus/util/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/oneplus/util/SystemSetting;->onChange(Z)V

    .line 473
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 474
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mUserSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/os/HandlerExecutor;

    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 477
    iput-boolean v2, p0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    goto :goto_5

    .line 479
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/-$$Lambda$ScreenDecorations$CTk_RNSSvwUoNV8CfAa6W3y0c0A;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$CTk_RNSSvwUoNV8CfAa6W3y0c0A;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 481
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    if-eqz v0, :cond_b

    .line 482
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 485
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mUserSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 486
    iput-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    :goto_5
    return-void
.end method

.method private shouldDrawCutout()Z
    .locals 0

    .line 1115
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static shouldDrawCutout(Landroid/content/Context;)Z
    .locals 2

    .line 1119
    sget v0, Lcom/android/systemui/ScreenDecorations;->mDisableRoundedCorner:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1123
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110087

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private shouldShowRoundedCorner(I)Z
    .locals 6

    .line 1095
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1099
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1101
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isBoundsEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    .line 1104
    :goto_1
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {v2, v4}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result v4

    .line 1105
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v5, 0x3

    invoke-static {v5, p0}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result p0

    if-nez v3, :cond_6

    .line 1106
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1107
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v0

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1

    :cond_6
    :goto_2
    if-eq p1, v2, :cond_7

    if-ne p1, v5, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    return v1
.end method

.method private startOnScreenDecorationsThread()V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 325
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 326
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 327
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_roundedCornerMultipleRadius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mIsRoundedCornerMultipleRadius:Z

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    const/4 v0, 0x1

    .line 333
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mHasRoundedCorner:Z

    .line 337
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_cust_statusbar_cutout_show_region_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/systemui/ScreenDecorations;->mOpCustRegionleft:I

    .line 338
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_cust_statusbar_cutout_show_region_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/systemui/ScreenDecorations;->mOpCustRegionRight:I

    .line 343
    new-instance v0, Lcom/android/systemui/ScreenDecorations$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$SettingsObserver;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_screen_resolution_adjust"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenResolution:I

    .line 349
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 350
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupCameraListener()V

    .line 352
    new-instance v0, Lcom/android/systemui/ScreenDecorations$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$3;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 403
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 404
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    return-void
.end method

.method private updateColorInversion(I)V
    .locals 7

    const/high16 v0, -0x1000000

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 702
    :goto_0
    sget-boolean v1, Lcom/android/systemui/ScreenDecorations;->DEBUG_COLOR:Z

    if-eqz v1, :cond_1

    const/high16 p1, -0x10000

    .line 708
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mTempDisableInversion:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, p1

    .line 712
    :goto_1
    sget-boolean p1, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREEN_DECORATIONS:Z

    if-eqz p1, :cond_3

    const/16 v0, -0x100

    .line 717
    :cond_3
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 719
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez v1, :cond_4

    return-void

    :cond_4
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    const/4 v3, 0x4

    if-ge v2, v3, :cond_9

    .line 723
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v4, v3, v2

    if-nez v4, :cond_5

    goto :goto_5

    .line 726
    :cond_5
    aget-object v3, v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_8

    .line 729
    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v5, v5, v2

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 730
    instance-of v6, v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_6

    .line 731
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    .line 732
    :cond_6
    instance-of v6, v5, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    if-eqz v6, :cond_7

    .line 733
    check-cast v5, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v5, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setColor(I)V

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method private updateLayoutParams()V
    .locals 4

    .line 1128
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 1132
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    goto :goto_1

    .line 1135
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    aget-object v1, v1, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateOrientation()V
    .locals 4

    .line 771
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "must call on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 772
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", but was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 771
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 774
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    if-eqz v0, :cond_1

    return-void

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 783
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->isOverlaysVisibility()Z

    move-result v1

    if-nez v1, :cond_5

    .line 785
    :cond_2
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 787
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-eqz v0, :cond_5

    .line 788
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    :goto_1
    const/4 v0, 0x4

    if-ge v2, v0, :cond_4

    .line 790
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v1, v0, v2

    if-nez v1, :cond_3

    goto :goto_2

    .line 797
    :cond_3
    aget-object v0, v0, v2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 801
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->postShow()V

    :cond_5
    return-void
.end method

.method private updateRoundedCornerRadii()V
    .locals 9

    .line 896
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 898
    sget v1, Lcom/android/systemui/ScreenDecorations;->mDisableRoundedCorner:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v0, v2

    .line 908
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/systemui/R$dimen;->rounded_corner_radius_top:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 910
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->rounded_corner_radius_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 913
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$dimen;->rounded_corner_radius_top_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 915
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$dimen;->rounded_corner_radius_bottom_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 918
    sget-boolean v7, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREEN_DECORATIONS:Z

    if-eqz v7, :cond_1

    .line 919
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "newRoundedDefaultTop:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "newRoundedDefaultBottom:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", newRoundedDefaultBottomWidth:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ScreenDecorations"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_1
    iget v7, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    if-ne v7, v0, :cond_2

    iget v7, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-ne v7, v4, :cond_2

    iget v7, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    if-eq v7, v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    if-eqz v2, :cond_5

    .line 931
    iget-boolean v2, p0, Lcom/android/systemui/ScreenDecorations;->mIsRoundedCornerMultipleRadius:Z

    if-eqz v2, :cond_4

    .line 932
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->rounded:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    .line 933
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    .line 934
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    goto :goto_0

    .line 936
    :cond_4
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    .line 937
    iput v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    .line 938
    iput v4, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    .line 943
    :goto_0
    iput v5, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidth:I

    .line 944
    iput v6, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidth:I

    const/4 v0, 0x0

    const-string/jumbo v1, "sysui_rounded_size"

    .line 948
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/ScreenDecorations;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private updateRoundedCornerView(II)V
    .locals 6

    .line 953
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 957
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 958
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->shouldShowRoundedCorner(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 960
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {p1, v1}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result v1

    .line 966
    sget v2, Lcom/android/systemui/R$id;->left:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/ScreenDecorations;->getOpRoundedCornerGravity(IIZ)I

    move-result v2

    .line 967
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 968
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/ScreenDecorations;->getOpRoundedCornerRotation(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 969
    sget p1, Lcom/android/systemui/R$id;->left:I

    if-ne p2, p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v4

    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/ScreenDecorations;->getRoundedCornerRotationX(IZ)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationX(F)V

    .line 970
    sget p1, Lcom/android/systemui/R$id;->left:I

    if-ne p2, p1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    invoke-direct {p0, v1, v3}, Lcom/android/systemui/ScreenDecorations;->getRoundedCornerRotationY(IZ)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setRotationY(F)V

    .line 972
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private updateView(I)V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-eqz v0, :cond_1

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 586
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->left:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerView(II)V

    .line 587
    sget v0, Lcom/android/systemui/R$id;->right:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerView(II)V

    .line 589
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateDecorSize()V

    .line 595
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    if-eqz v0, :cond_1

    aget-object v1, v0, p1

    if-eqz v1, :cond_1

    .line 596
    aget-object p1, v0, p1

    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setRotation(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method getCutout()Landroid/view/DisplayCutout;
    .locals 0

    .line 492
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method getWindowLayoutParams(I)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 602
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 603
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getWidthLayoutParamByPos(I)I

    move-result v1

    .line 604
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getHeightLayoutParamByPos(I)I

    move-result v2

    const/16 v3, 0x7e8

    const v4, 0x20800128

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 612
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x50

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 615
    sget-boolean v1, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    if-nez v1, :cond_0

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    .line 616
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 619
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->getWindowTitleByPos(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 620
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getOverlayWindowGravity(I)I

    move-result p0

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p0, 0x3

    .line 621
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 p0, 0x0

    .line 622
    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 623
    iget p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 p1, 0x1000000

    or-int/2addr p0, p1

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v6
.end method

.method hasOverlays()Z
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 502
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 506
    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    return v1
.end method

.method public synthetic lambda$onConfigurationChanged$2$ScreenDecorations(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->lambda$onConfigurationChanged$2(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public synthetic lambda$onTuningChanged$3$ScreenDecorations(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->lambda$onTuningChanged$3(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setupDecorations$0$ScreenDecorations()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->lambda$setupDecorations$0()V

    return-void
.end method

.method public synthetic lambda$setupDecorations$1$ScreenDecorations()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->lambda$setupDecorations$1()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 741
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$NfhIKJZ6L4jkc7cEhc50RJtdE1g;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$NfhIKJZ6L4jkc7cEhc50RJtdE1g;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1141
    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$SUGiySfRKK3_sOKVTApzHsRl4l4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$SUGiySfRKK3_sOKVTApzHsRl4l4;-><init>(Lcom/android/systemui/ScreenDecorations;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected setSize(Landroid/view/View;I)V
    .locals 0

    .line 1199
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 1200
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1201
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1202
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public start()V
    .locals 4

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->startHandlerThread()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 305
    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$IfAux2ksmJXT9o9i38WaSEQXJTQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$IfAux2ksmJXT9o9i38WaSEQXJTQ;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 309
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mShutDownBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/os/HandlerExecutor;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0, v3, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method startHandlerThread()Landroid/os/Handler;
    .locals 1

    .line 318
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "ScreenDecorations"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 320
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method updateDecorSize()V
    .locals 11

    .line 1940
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    const/4 v3, 0x3

    .line 1941
    aget-object v0, v0, v3

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    .line 1945
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_2

    .line 1946
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mScreenResolution:I

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 1953
    :cond_0
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopResize:I

    .line 1954
    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomResize:I

    .line 1956
    iget v6, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidthResize:I

    .line 1957
    iget v7, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidthResize:I

    goto :goto_1

    .line 1947
    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    .line 1948
    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    .line 1950
    iget v6, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidth:I

    .line 1951
    iget v7, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidth:I

    goto :goto_1

    .line 1960
    :cond_2
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    .line 1961
    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    .line 1962
    iget v6, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidth:I

    .line 1963
    iget v7, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidth:I

    .line 1966
    :goto_1
    iget v8, p0, Lcom/android/systemui/ScreenDecorations;->mLastSizeTop:I

    if-ne v8, v3, :cond_3

    iget v8, p0, Lcom/android/systemui/ScreenDecorations;->mLastSizeBottom:I

    if-ne v8, v5, :cond_3

    return-void

    .line 1970
    :cond_3
    iput v3, p0, Lcom/android/systemui/ScreenDecorations;->mLastSizeTop:I

    .line 1971
    iput v5, p0, Lcom/android/systemui/ScreenDecorations;->mLastSizeBottom:I

    .line 1972
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateDecorSize top "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/systemui/ScreenDecorations;->mLastSizeTop:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " bottom "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/systemui/ScreenDecorations;->mLastSizeBottom:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ScreenDecorations"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_6

    .line 1976
    iget v8, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-eq v8, v1, :cond_4

    if-ne v8, v4, :cond_5

    :cond_4
    move v10, v6

    move v6, v3

    move v3, v10

    .line 1981
    :cond_5
    sget v8, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8, v3, v6}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;II)V

    .line 1982
    sget v8, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v3, v6}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;II)V

    goto :goto_2

    .line 1984
    :cond_6
    sget v6, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6, v3}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    .line 1985
    sget v6, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    :goto_2
    if-eqz v7, :cond_9

    .line 1990
    iget v2, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-eq v2, v1, :cond_7

    if-ne v2, v4, :cond_8

    :cond_7
    move v10, v7

    move v7, v5

    move v5, v10

    .line 1995
    :cond_8
    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v5, v7}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;II)V

    .line 1996
    sget v1, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v5, v7}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;II)V

    goto :goto_3

    .line 1998
    :cond_9
    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    .line 1999
    sget v1, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    :cond_a
    :goto_3
    return-void
.end method
