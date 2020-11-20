.class public Lcom/oneplus/battery/OpSWarpChargingView;
.super Landroid/widget/FrameLayout;
.source "OpSWarpChargingView.java"


# static fields
.field private static final ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

.field static final DEBUG:Z

.field private static mRes:Landroid/content/res/Resources;


# instance fields
.field private isAnimationStart:Z

.field private mAssetLoaded:Z

.field private mAssetLoading:Z

.field private mAssetReleasing:Z

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBatteryLevel:Landroid/widget/TextView;

.field private mBatteryLevelBound:Landroid/widget/TextView;

.field private mBatteryLevelHundredth:Landroid/widget/TextView;

.field private mBatteryLevelHundredthBound:Landroid/widget/TextView;

.field private mBatteryLevelPercent:Landroid/widget/TextView;

.field private mBatteryLevelPercentBound:Landroid/widget/TextView;

.field private mBatteryLevelViewContainer:Landroid/widget/LinearLayout;

.field private mChargeAnimation:Landroid/animation/AnimatorSet;

.field private mChargingAnimP1:Landroid/animation/ValueAnimator;

.field private mChargingAnimP3:Landroid/animation/ValueAnimator;

.field mChargingAnimationAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

.field private mChargingScaleDownAnimSet:Landroid/animation/AnimatorSet;

.field private mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

.field private mChargingType:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHundredLevelAnim:Landroid/animation/ValueAnimator;

.field private mHundredthBoundAnim:Landroid/animation/ValueAnimator;

.field private mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

.field private mInfoView:Landroid/view/View;

.field private mInfoViewContainer:Landroid/widget/RelativeLayout;

.field private mIsAnimationPlaying:Z

.field private mIsPaddingStartAnimation:Z

.field private mIsWarpAnimRunning:Z

.field private mKeyguardShowing:Z

.field private mLevelViewTransTarget:F

.field private mNowPlaying:I

.field private mPrevLevel:I

.field private mSWarpDuration:J

.field private mSWarpLevel:F

.field private mSWarpLevelNext:F

.field private mWarpAnimSet:Landroid/animation/AnimatorSet;

.field private mWarpChargingType:I

.field private mWarpView:Landroid/widget/TextView;

.field private mWarpZoomInAnim:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    .line 54
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/battery/OpSWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    .line 58
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/oneplus/battery/OpSWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/oneplus/battery/OpSWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/battery/OpSWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    .line 85
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 93
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoading:Z

    .line 95
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    .line 96
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    .line 98
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 103
    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingType:I

    .line 107
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    .line 111
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    .line 123
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsAnimationPlaying:Z

    const/4 p3, -0x1

    .line 124
    iput p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mNowPlaying:I

    const/4 p3, 0x0

    .line 133
    iput p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevel:F

    .line 134
    iput p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevelNext:F

    const-wide/16 v0, 0x0

    .line 135
    iput-wide v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpDuration:J

    .line 136
    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    .line 137
    iput p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mLevelViewTransTarget:F

    .line 153
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sput-object p0, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/ImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/oneplus/battery/OpSWarpChargingView;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpDuration:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredLevelAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/oneplus/battery/OpSWarpChargingView;)F
    .locals 0

    .line 43
    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevelNext:F

    return p0
.end method

.method static synthetic access$1500(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsAnimationPlaying:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleDownAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/oneplus/battery/OpSWarpChargingView;)F
    .locals 0

    .line 43
    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mLevelViewTransTarget:F

    return p0
.end method

.method static synthetic access$1902(Lcom/oneplus/battery/OpSWarpChargingView;F)F
    .locals 0

    .line 43
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mLevelViewTransTarget:F

    return p1
.end method

.method static synthetic access$2000(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/oneplus/battery/OpSWarpChargingView;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mNowPlaying:I

    return p1
.end method

.method static synthetic access$2100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelViewContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/oneplus/battery/OpSWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/oneplus/battery/OpSWarpChargingView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->preloadAnimationList()V

    return-void
.end method

.method static synthetic access$2700(Lcom/oneplus/battery/OpSWarpChargingView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->releaseAnimationList()V

    return-void
.end method

.method static synthetic access$2802(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoading:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/battery/OpSWarpChargingView;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->animationEnd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsPaddingStartAnimation:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/oneplus/battery/OpSWarpChargingView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingType:I

    return p0
.end method

.method static synthetic access$3302(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->isWarp()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    return p0
.end method

.method static synthetic access$502(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    return p1
.end method

.method static synthetic access$600(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$602(Lcom/oneplus/battery/OpSWarpChargingView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpAnimSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$700(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->isSWarp()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/oneplus/battery/OpSWarpChargingView;)F
    .locals 0

    .line 43
    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevel:F

    return p0
.end method

.method private animationEnd(Ljava/lang/String;)V
    .locals 2

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animationEnd from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpSWarpChargingView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 919
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 921
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 922
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 923
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 924
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 925
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 927
    iget p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mPrevLevel:I

    const/4 v0, 0x0

    .line 928
    iput v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mPrevLevel:I

    .line 929
    invoke-virtual {p0, p1, v0, v0}, Lcom/oneplus/battery/OpSWarpChargingView;->onBatteryLevelChanged(IZZ)V

    .line 931
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    if-eqz p1, :cond_0

    const/16 v1, 0x67

    .line 932
    invoke-interface {p1, v1}, Lcom/oneplus/battery/OpChargingAnimationController;->animationEnd(I)V

    .line 935
    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    .line 936
    iput v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    .line 937
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    .line 938
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 939
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 941
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->releaseAsset()V

    return-void
.end method

.method private genWarpAnimation()V
    .locals 4

    .line 676
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

    .line 677
    sget-object v1, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$integer;->op_control_time_325:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 678
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$interpolator;->op_control_interpolator_fast_out_slow_in_standard:I

    .line 679
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 678
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 680
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$12;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$12;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 689
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    .line 690
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 691
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$integer;->op_control_time_325:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 692
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$interpolator;->op_control_interpolator_fast_out_slow_in_standard:I

    .line 693
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 692
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 694
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/battery/OpSWarpChargingView$13;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpSWarpChargingView$13;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 717
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/battery/OpSWarpChargingView$14;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpSWarpChargingView$14;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 730
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    .line 731
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 732
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$integer;->op_control_time_325:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 733
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$interpolator;->op_control_interpolator_fast_out_slow_in_standard:I

    .line 734
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 733
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 735
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$15;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$15;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 745
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$16;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$16;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 767
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredLevelAnim:Landroid/animation/ValueAnimator;

    .line 768
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 769
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredLevelAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$17;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$17;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getChargeAnimation()Landroid/animation/AnimatorSet;
    .locals 8

    .line 408
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/16 v2, 0x6a

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x75

    aput v4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 409
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v4, 0x1a0

    int-to-long v4, v4

    .line 410
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 411
    new-instance v4, Lcom/oneplus/battery/OpSWarpChargingView$1;

    invoke-direct {v4, p0}, Lcom/oneplus/battery/OpSWarpChargingView$1;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 418
    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v4, v0, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 419
    sget-object v5, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v6, Lcom/android/systemui/R$integer;->op_control_time_225:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 420
    iget-object v5, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$interpolator;->op_control_interpolator_fast_out_slow_in_standard:I

    .line 421
    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 420
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 422
    new-instance v5, Lcom/oneplus/battery/OpSWarpChargingView$2;

    invoke-direct {v5, p0}, Lcom/oneplus/battery/OpSWarpChargingView$2;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 433
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleDownAnimSet:Landroid/animation/AnimatorSet;

    new-array v6, v0, [Landroid/animation/Animator;

    aput-object v1, v6, v3

    aput-object v4, v6, v2

    .line 434
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 435
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleDownAnimSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/oneplus/battery/OpSWarpChargingView$3;

    invoke-direct {v4, p0}, Lcom/oneplus/battery/OpSWarpChargingView$3;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 460
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v1, v0, [I

    const/16 v4, 0x1e

    aput v4, v1, v3

    const/16 v4, 0x69

    aput v4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    .line 461
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 462
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    const/16 v4, 0x9a0

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 463
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oneplus/battery/OpSWarpChargingView$4;

    invoke-direct {v4, p0}, Lcom/oneplus/battery/OpSWarpChargingView$4;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 512
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oneplus/battery/OpSWarpChargingView$5;

    invoke-direct {v4, p0}, Lcom/oneplus/battery/OpSWarpChargingView$5;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 542
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v1, v0, [I

    const/16 v4, 0xe

    aput v4, v1, v3

    const/16 v4, 0x1d

    aput v4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 543
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v4, 0x220

    int-to-long v4, v4

    .line 544
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 545
    new-instance v4, Lcom/oneplus/battery/OpSWarpChargingView$6;

    invoke-direct {v4, p0}, Lcom/oneplus/battery/OpSWarpChargingView$6;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 552
    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v4, v0, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const/16 v5, 0xbe

    int-to-long v5, v5

    .line 553
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 554
    new-instance v5, Lcom/oneplus/battery/OpSWarpChargingView$7;

    invoke-direct {v5, p0}, Lcom/oneplus/battery/OpSWarpChargingView$7;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 565
    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v5, v0, [F

    fill-array-data v5, :array_2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const/16 v6, 0x140

    int-to-long v6, v6

    .line 566
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 567
    new-instance v6, Lcom/oneplus/battery/OpSWarpChargingView$8;

    invoke-direct {v6, p0}, Lcom/oneplus/battery/OpSWarpChargingView$8;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 576
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 577
    sget-object v7, Lcom/oneplus/battery/OpSWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 578
    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 580
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v0, [Landroid/animation/Animator;

    aput-object v1, v5, v3

    aput-object v6, v5, v2

    .line 581
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 582
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/oneplus/battery/OpSWarpChargingView$9;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpSWarpChargingView$9;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 611
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    .line 612
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 613
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    const/16 v1, 0x1c0

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 614
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$10;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$10;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 621
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$11;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$11;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 670
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 671
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_1
    .array-data 4
        0x3e75c28f    # 0.24f
        0x3f8ccccd    # 1.1f
    .end array-data

    :array_2
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0xd
    .end array-data
.end method

.method private isSWarp()Z
    .locals 1

    .line 964
    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    const-string v0, "persist.test.warp"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWarp()Z
    .locals 4

    .line 968
    iget v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    const-string v1, "persist.test.warp"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_1

    const/4 v0, 0x2

    iget v3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    .line 969
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v0, v3, :cond_1

    const/4 v0, 0x3

    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    .line 970
    invoke-static {v1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private preloadAnimationList()V
    .locals 9

    .line 829
    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    const-string v1, "OpSWarpChargingView"

    if-eqz v0, :cond_0

    const-string v0, "preloadAnimationList()"

    .line 830
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 835
    iget v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingType:I

    if-nez v0, :cond_1

    .line 836
    sget-object v0, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$array;->swarpcharge_wired_anim:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 837
    :cond_1
    sget-object v0, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$array;->warpcharge_wireless_anim:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_0
    const/4 v4, 0x0

    move v5, v4

    .line 841
    :goto_1
    iget-object v6, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 842
    iget-object v6, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    .line 844
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 849
    :cond_3
    iget-object v5, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v5, v4

    .line 851
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 852
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 854
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 855
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 856
    iget-object v8, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_4

    .line 859
    :try_start_0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 867
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 868
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 869
    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preloadAnimationList: cost Time"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mChargingAnimationAssets size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_6
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$20;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$20;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private refreshUI()V
    .locals 5

    .line 225
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 227
    sget-object v1, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_view_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 228
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    const/16 v1, 0x438

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 232
    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_battery_level_percent_text_size:I

    .line 233
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 232
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 234
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_control_margin_space2:I

    .line 235
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    .line 234
    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercentBound:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_battery_level_percent_text_size:I

    .line 240
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 239
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 241
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercentBound:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_control_margin_space2:I

    .line 242
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    .line 241
    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 246
    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_battery_level_text_size:I

    .line 247
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 246
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 250
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_battery_level_text_size:I

    .line 251
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 250
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 253
    :cond_4
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 254
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_battery_level_text_size:I

    .line 255
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 254
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 257
    :cond_5
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 258
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_battery_level_text_size:I

    .line 259
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 258
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 261
    :cond_6
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    if-eqz p0, :cond_7

    .line 262
    sget-object v0, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_warp_text_size:I

    .line 263
    invoke-static {v0, v3, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v0

    int-to-float v0, v0

    .line 262
    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_7
    return-void
.end method

.method private releaseAnimationList()V
    .locals 2

    .line 894
    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpSWarpChargingView"

    const-string v1, "releaseAnimationList()"

    .line 895
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 898
    :goto_0
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 899
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 901
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 905
    :cond_2
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 907
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$21;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$21;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public notifyWarpCharging(I)V
    .locals 2

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Notify Warp Charging : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 176
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 178
    sget v0, Lcom/android/systemui/R$id;->info_view_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    .line 179
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 180
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 181
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 183
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 184
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v0, :cond_0

    move v0, v1

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 187
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 188
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 190
    sget v0, Lcom/android/systemui/R$id;->battery_level:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    .line 192
    sget v0, Lcom/android/systemui/R$id;->warp_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    .line 194
    sget v0, Lcom/android/systemui/R$id;->background_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    .line 195
    sget v0, Lcom/android/systemui/R$id;->info_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    .line 196
    sget v0, Lcom/android/systemui/R$id;->scrim_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 199
    sget v0, Lcom/android/systemui/R$id;->battery_level_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelViewContainer:Landroid/widget/LinearLayout;

    .line 200
    sget v0, Lcom/android/systemui/R$id;->battery_level_bound:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    .line 201
    sget v0, Lcom/android/systemui/R$id;->battery_level_hundredth_bound:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    .line 202
    sget v0, Lcom/android/systemui/R$id;->battery_level_hundredth:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    .line 203
    sget v0, Lcom/android/systemui/R$id;->battery_level_percent:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    .line 204
    sget v0, Lcom/android/systemui/R$id;->battery_level_percent_bound:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    .line 207
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->refreshUI()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 3

    .line 275
    iget p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mPrevLevel:I

    const-string p3, "]"

    const-string v0, "OpSWarpChargingView"

    if-ne p2, p1, :cond_0

    iget-object p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 276
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 277
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "level is same as latest one ["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 281
    :cond_0
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mPrevLevel:I

    .line 285
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 287
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update level ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :cond_1
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    .line 292
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->refreshUI()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 212
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 213
    invoke-virtual {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->stopAnimation()V

    return-void
.end method

.method public onSWarpBatteryLevelChanged(FFJ)V
    .locals 0

    .line 298
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevel:F

    .line 299
    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevelNext:F

    .line 300
    iput-wide p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpDuration:J

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 218
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public prepareAsset(I)V
    .locals 2

    .line 784
    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareAsset() / mAssetLoading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAssetLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " chargingType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_0
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingType:I

    .line 791
    iget-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoading:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    if-nez p1, :cond_1

    .line 792
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoading:Z

    .line 794
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    .line 796
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/battery/OpSWarpChargingView$18;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/OpSWarpChargingView$18;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 803
    :cond_1
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    :goto_0
    return-void
.end method

.method public releaseAsset()V
    .locals 2

    .line 809
    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseAsset() / mAssetLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / isAnimationStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAssetReleasing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 813
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    .line 815
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 816
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$19;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$19;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public setChargingAnimationController(Lcom/oneplus/battery/OpChargingAnimationController;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    return-void
.end method

.method public startAnimation(I)V
    .locals 4

    .line 306
    iget v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingType:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 307
    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    .line 315
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    const-string v2, "OpSWarpChargingView"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    if-nez v0, :cond_2

    .line 317
    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 318
    iget-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    if-nez p1, :cond_5

    const-string p1, "startAnimation"

    .line 319
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    .line 321
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->genWarpAnimation()V

    .line 325
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->getChargeAnimation()Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    .line 331
    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    .line 332
    iput-boolean v3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsAnimationPlaying:Z

    .line 335
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 338
    :cond_2
    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "startAnimation / else / prepareAsset"

    .line 339
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    .line 344
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 346
    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    .line 347
    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    .line 352
    :cond_4
    iput-boolean v3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 354
    invoke-virtual {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->prepareAsset(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    const/4 v0, 0x0

    .line 361
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    .line 366
    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    const-string v2, "OpSWarpChargingView"

    if-eqz v1, :cond_0

    const-string v1, "stop warp animation"

    .line 367
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 375
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    if-eqz v1, :cond_4

    const-string v1, "stop charging animation"

    .line 376
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsAnimationPlaying:Z

    .line 379
    iget v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mNowPlaying:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 391
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 387
    :cond_1
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleDownAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 384
    :cond_2
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 381
    :cond_3
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    :goto_0
    return-void
.end method
