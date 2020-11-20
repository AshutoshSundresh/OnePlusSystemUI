.class public Lcom/android/keyguard/KeyguardPatternView;
.super Lcom/oneplus/keyguard/OpKeyguardPatternView;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/keyguard/OpKeyguardPatternView;",
        "Lcom/android/keyguard/KeyguardSecurityView;",
        "Lcom/android/settingslib/animation/AppearAnimationCreator<",
        "Lcom/android/internal/widget/LockPatternView$CellState;",
        ">;",
        "Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;"
    }
.end annotation


# instance fields
.field private MAX_RETRY_TIMES:I

.field private final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private final mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private final mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mEcaView:Landroid/view/View;

.field private mEmergencyBubblePanel:Landroid/view/View;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

.field private mEmergencyPanelShow:Z

.field private mFingerprintIcon:Landroid/view/View;

.field private mFinishRunnable:Ljava/lang/Runnable;

.field private mIsMonitorRegistered:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastPokeTime:J

.field private mLockOut:Z

.field private final mLockPatternScreenBounds:Landroid/graphics/Rect;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mMaxCountdownTimes:I

.field mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field mOrientation:I

.field final mPanelCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSetRetryTimes:I

.field private final mStartWhenRelayoutFinishRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTmpPosition:[I

.field private mUsedScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v0, p0

    .line 221
    invoke-direct/range {p0 .. p2}, Lcom/oneplus/keyguard/OpKeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 127
    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mTmpPosition:[I

    .line 128
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    .line 129
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternScreenBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 131
    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    .line 141
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mIsMonitorRegistered:Z

    const-wide/16 v2, -0x1b58

    .line 149
    iput-wide v2, v0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 154
    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$1;

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardPatternView$1;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 169
    iput v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mMaxCountdownTimes:I

    .line 172
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mLockOut:Z

    .line 186
    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$2;

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardPatternView$2;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardPatternView;->mPanelCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    .line 834
    iput v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mSetRetryTimes:I

    const/4 v1, 0x5

    .line 835
    iput v1, v0, Lcom/android/keyguard/KeyguardPatternView;->MAX_RETRY_TIMES:I

    .line 841
    new-instance v1, Lcom/android/keyguard/KeyguardPatternView$4;

    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardPatternView$4;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mStartWhenRelayoutFinishRunnable:Ljava/lang/Runnable;

    .line 967
    new-instance v1, Lcom/android/keyguard/KeyguardPatternView$6;

    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardPatternView$6;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const/4 v1, 0x1

    .line 1027
    iput v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mOrientation:I

    .line 222
    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 231
    new-instance v1, Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v2, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v3, 0x10c000e

    .line 233
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v8

    const-wide/16 v4, 0x1f4

    const/high16 v6, 0x3fc00000    # 1.5f

    const/high16 v7, 0x40000000    # 2.0f

    move-object v2, v1

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 236
    new-instance v1, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v2, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v3, 0x10c000f

    .line 238
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v15

    const-wide/16 v11, 0x7d

    const v13, 0x3f99999a    # 1.2f

    const v14, 0x3f19999a    # 0.6f

    move-object v9, v1

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 240
    new-instance v1, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v2, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 242
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v10

    const-wide/16 v6, 0xbb

    const v8, 0x3f99999a    # 1.2f

    const v9, 0x3f19999a    # 0.6f

    move-object v4, v1

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->disappear_y_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardPatternView;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->showEmergencyPanel(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 0

    .line 100
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 0

    .line 100
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 0

    .line 100
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 0

    .line 100
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 0

    .line 100
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 0

    .line 100
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 0

    .line 100
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardPatternView;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mMaxCountdownTimes:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/EmergencyButton;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardPatternView;J)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardPatternView;I)Ljava/lang/String;
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->getMessageWithCount(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 0

    .line 100
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 0

    .line 100
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 0

    .line 100
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 0

    .line 100
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/keyguard/KeyguardPatternView;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockOut:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardPatternView;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSetRetryTimes:I

    return p0
.end method

.method static synthetic access$2802(Lcom/android/keyguard/KeyguardPatternView;I)I
    .locals 0

    .line 100
    iput p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSetRetryTimes:I

    return p1
.end method

.method static synthetic access$2808(Lcom/android/keyguard/KeyguardPatternView;)I
    .locals 2

    .line 100
    iget v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSetRetryTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSetRetryTimes:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/keyguard/KeyguardPatternView;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/android/keyguard/KeyguardPatternView;->MAX_RETRY_TIMES:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->doStartAppearAnimation()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mStartWhenRelayoutFinishRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/keyguard/KeyguardPatternView;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->startFinishRunnable()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/AsyncTask;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 0

    .line 100
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 0

    .line 100
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private displayDefaultSecurityMessage()V
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFirstUnlock()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$string;->kg_first_unlock_instructions:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$string;->kg_pattern_instructions:I

    .line 402
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v1

    .line 403
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 404
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->getMessageWithCount(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private doStartAppearAnimation()V
    .locals 12

    const/4 v0, 0x0

    .line 866
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 867
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 868
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getStartTranslation()F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 869
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 870
    invoke-virtual {v1}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1f4

    const/4 v7, 0x0

    move-object v2, p0

    .line 869
    invoke-static/range {v2 .. v8}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    .line 871
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 872
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/KeyguardPatternView$5;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardPatternView$5;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    .line 871
    invoke-virtual {v1, v2, v3, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 880
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 881
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xdc

    .line 883
    invoke-virtual {v2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getStartTranslation()F

    move-result v8

    const/4 v9, 0x1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 885
    invoke-virtual {v1}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v10

    const/4 v11, 0x0

    .line 881
    invoke-virtual/range {v2 .. v11}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 890
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mFingerprintIcon:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 891
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mFingerprintIcon:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/oneolus/anim/OpFadeAnim;->getFadeInOutVisibilityAnimation(Landroid/view/View;ILjava/lang/Float;Z)Landroid/animation/AnimatorSet;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 893
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method

.method private enableClipping(Z)V
    .locals 1

    .line 986
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 987
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 988
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method private getMessageWithCount(I)Ljava/lang/String;
    .locals 4

    .line 621
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 622
    iget v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mMaxCountdownTimes:I

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 623
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 624
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 623
    invoke-virtual {v1, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 625
    iget v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mMaxCountdownTimes:I

    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->kg_remaining_attempts:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 627
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    .line 626
    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private handleAttemptLockout(J)V
    .locals 7

    .line 634
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 635
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 638
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 642
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyPasswordLockout()V

    .line 643
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 644
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->hideSecurityIcon()V

    :cond_0
    const/4 v0, 0x1

    .line 648
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockOut:Z

    .line 651
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    .line 652
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    .line 654
    new-instance v6, Lcom/android/keyguard/KeyguardPatternView$3;

    const-wide/16 v0, 0x3e8

    mul-long v2, p1, v0

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardPatternView$3;-><init>(Lcom/android/keyguard/KeyguardPatternView;JJ)V

    .line 677
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private isInArea(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1051
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1052
    aget v1, v0, p0

    const/4 v2, 0x1

    .line 1053
    aget v0, v0, v2

    .line 1054
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1055
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 1056
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 1057
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    add-int/2addr v3, v1

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_1

    int-to-float v1, v1

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_1

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, v4, p1

    if-gtz p1, :cond_1

    int-to-float p1, v0

    cmpl-float p1, v4, p1

    if-ltz p1, :cond_1

    return v2

    :cond_1
    :goto_0
    return p0
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 0

    .line 301
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 302
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onCancelClicked()V

    return-void
.end method

.method private synthetic lambda$startDisappearAnimation$1()V
    .locals 2

    const/4 v0, 0x1

    .line 934
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    .line 941
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "SecurityPatternView"

    const-string v1, " disappearAnimationUtils end:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->startFinishRunnable()V

    return-void
.end method

.method private notifyEmergencyPanelTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1105
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyBubblePanel:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1108
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1109
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyBubblePanel:Landroid/view/View;

    invoke-direct {p0, v1, p1}, Lcom/android/keyguard/KeyguardPatternView;->isInArea(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 1110
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->showEmergencyPanel(Z)V

    goto :goto_0

    .line 1112
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    invoke-virtual {p0, p1}, Lcom/oneplus/keyguard/OpEmergencyPanel;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private postAnimationDelay()V
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mStartWhenRelayoutFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showEmergencyPanel(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1067
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPatternView;->showEmergencyPanel(ZZ)V

    return-void
.end method

.method private showEmergencyPanel(ZZ)V
    .locals 3

    .line 1072
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    const-string v1, "SecurityPatternView"

    if-nez v0, :cond_0

    const-string/jumbo p0, "showEmergencyPanel is null"

    .line 1073
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1076
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showEmergencyPanel:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mEmergencyPanelShow:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyPanelShow:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    .line 1077
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyPanelShow:Z

    if-eq p2, p1, :cond_3

    .line 1078
    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyPanelShow:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 1080
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1081
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpEmergencyPanel;->onStart()V

    .line 1082
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardPatternView;->mPanelCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    invoke-virtual {p1, p2}, Lcom/oneplus/keyguard/OpEmergencyPanel;->addCallback(Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;)V

    .line 1083
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p0, :cond_3

    .line 1085
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    goto :goto_0

    .line 1088
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1089
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpEmergencyPanel;->onStop()V

    .line 1090
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpEmergencyPanel;->removeCallback()V

    .line 1091
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private startFinishRunnable()V
    .locals 2

    .line 977
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 978
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "SecurityPatternView"

    const-string/jumbo v1, "startFinishRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 980
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mFinishRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method private updateLayoutParamForDisplayWidth()V
    .locals 6

    .line 1125
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/assist/ui/DisplayUtils;->getWidth(Landroid/content/Context;)I

    move-result v0

    .line 1126
    iget v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mUsedScreenWidth:I

    if-ne v1, v0, :cond_0

    return-void

    .line 1129
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLayoutParamForDisplayWidth, displayWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mUsedScreenWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mUsedScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecurityPatternView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "op_keyguard_clock_YRegular:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->op_keyguard_clock_YRegular:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iput v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mUsedScreenWidth:I

    const/16 v1, 0x438

    if-le v0, v1, :cond_2

    .line 1134
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .line 1135
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->keyguard_security_max_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v1}, Lcom/oneplus/util/OpUtils;->convertPxByResolutionProportion(FI)I

    move-result v3

    iput v3, v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    .line 1136
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->keyguard_security_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v1}, Lcom/oneplus/util/OpUtils;->convertPxByResolutionProportion(FI)I

    move-result v3

    iput v3, v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    .line 1138
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1141
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$dimen;->fingerprint_icon_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, v1}, Lcom/oneplus/util/OpUtils;->convertPxByResolutionProportion(FI)I

    move-result v0

    .line 1142
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mFingerprintIcon:Landroid/view/View;

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1143
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mFingerprintIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1144
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->keyguard_pattern_view_fingerprint_icon_framelayout_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v1}, Lcom/oneplus/util/OpUtils;->convertPxByResolutionProportion(FI)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1145
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mFingerprintIcon:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1148
    sget v0, Lcom/android/systemui/R$id;->security_image:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1149
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1150
    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->keyguard_security_image_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4, v1}, Lcom/oneplus/util/OpUtils;->convertPxByResolutionProportion(FI)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1151
    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->keyguard_security_image_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4, v1}, Lcom/oneplus/util/OpUtils;->convertPxByResolutionProportion(FI)I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1152
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1156
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_2

    .line 1157
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "relayout mContainer"

    .line 1158
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearAnimation()V

    .line 1161
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->callOnClick()Z

    .line 1162
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_2
    return-void
.end method


# virtual methods
.method public createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 15

    move-object v0, p0

    .line 996
    iget-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p7, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz p7, :cond_1

    move/from16 v5, p6

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-eqz p7, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move/from16 v6, p6

    :goto_2
    if-eqz p7, :cond_3

    move v7, v3

    goto :goto_3

    :cond_3
    move v7, v2

    :goto_3
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v1 .. v14}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    if-eqz p9, :cond_4

    .line 1003
    iget-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    const/4 v9, 0x0

    move-object v0, v1

    move-object v1, v2

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 0

    .line 100
    check-cast p1, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-virtual/range {p0 .. p9}, Lcom/android/keyguard/KeyguardPatternView;->createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1015
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x10403f5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCheckingPassword()Z
    .locals 0

    .line 1022
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowEmergencyPanel()Z
    .locals 0

    .line 1101
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportEmergencyPanel()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$onFinishInflate$0$KeyguardPatternView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$startDisappearAnimation$1$KeyguardPatternView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->lambda$startDisappearAnimation$1()V

    return-void
.end method

.method public needsInput()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 316
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 317
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1030
    iget v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 1031
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged forom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityPatternView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1036
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 1037
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1038
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x320

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 268
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :cond_0
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 272
    sget v0, Lcom/android/systemui/R$id;->lockPatternView:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    .line 273
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setSaveEnabled(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v1, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 275
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 276
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 275
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 279
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 282
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 281
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 284
    sget v0, Lcom/android/systemui/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 285
    sget v0, Lcom/android/systemui/R$id;->container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContainer:Landroid/view/ViewGroup;

    .line 287
    sget v0, Lcom/android/systemui/R$id;->fingerprint_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mFingerprintIcon:Landroid/view/View;

    .line 289
    sget v0, Lcom/android/systemui/R$id;->emergency_call_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    .line 295
    :cond_1
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 298
    sget v0, Lcom/android/systemui/R$id;->cancel_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 300
    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardPatternView$N-2kmt4uZ3ZvQBB4SmVDuZJ_Wqw;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardPatternView$N-2kmt4uZ3ZvQBB4SmVDuZJ_Wqw;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->updateLayoutParamForDisplayWidth()V

    .line 310
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method public onHidden()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1171
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->showEmergencyPanel(ZZ)V

    return-void
.end method

.method public onLaunchEmergencyPanel()V
    .locals 1

    const/4 v0, 0x1

    .line 1097
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->showEmergencyPanel(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 353
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 354
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardPatternView;->mTmpPosition:[I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternView;->getLocationOnScreen([I)V

    .line 355
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternScreenBounds:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardPatternView;->mTmpPosition:[I

    const/4 p3, 0x0

    aget p4, p2, p3

    add-int/lit8 p4, p4, -0x28

    const/4 p5, 0x1

    aget v0, p2, p5

    add-int/lit8 v0, v0, -0x28

    aget p2, p2, p3

    iget-object p3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 357
    invoke-virtual {p3}, Lcom/android/internal/widget/LockPatternView;->getWidth()I

    move-result p3

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x28

    iget-object p3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTmpPosition:[I

    aget p3, p3, p5

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 358
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getHeight()I

    move-result p0

    add-int/2addr p3, p0

    add-int/lit8 p3, p3, 0x28

    .line 355
    invoke-virtual {p1, p4, v0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1120
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1121
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->updateLayoutParamForDisplayWidth()V

    return-void
.end method

.method public onPause()V
    .locals 6

    .line 687
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    const/4 v2, 0x7

    const-string v3, "SecurityPatternView"

    if-eqz v0, :cond_0

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPause to cancel CountdownTimer, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 692
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPause to cancel, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 699
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 701
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    .line 704
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->reset()V

    const/4 v0, 0x1

    .line 708
    invoke-direct {p0, v4, v0}, Lcom/android/keyguard/KeyguardPatternView;->showEmergencyPanel(ZZ)V

    .line 712
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause mIsMonitorRegistered:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsMonitorRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsMonitorRegistered:Z

    if-eqz v0, :cond_3

    .line 714
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 715
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsMonitorRegistered:Z

    :cond_3
    return-void
.end method

.method public onResume(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 724
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->showEmergencyPanel(ZZ)V

    .line 728
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsMonitorRegistered:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsMonitorRegistered:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SecurityPatternView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsMonitorRegistered:Z

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 732
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 733
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsMonitorRegistered:Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 327
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    sub-long/2addr v1, v3

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x1af4

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 332
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 335
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/widget/LinearLayout;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 336
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 337
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 338
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 340
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->notifyEmergencyPanelTouchEvent(Landroid/view/MotionEvent;)V

    .line 344
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-direct {p0, v0, p1}, Lcom/android/keyguard/KeyguardPatternView;->isInArea(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 7

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 365
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 364
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 366
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 367
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 370
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_0

    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 379
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 378
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 381
    invoke-direct {p0, v3, v4}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    goto :goto_0

    .line 384
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockOut:Z

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->clearFailedUnlockAttempts(Z)V

    .line 386
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockOut:Z

    .line 389
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    :goto_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1

    .line 250
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 252
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->isShowEmergencyPanel()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->getEmergencyPanel()Lcom/oneplus/keyguard/OpEmergencyPanel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    if-eqz p1, :cond_0

    .line 255
    sget v0, Lcom/android/systemui/R$id;->bubble_panel:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyBubblePanel:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 814
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setNextMessageColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 823
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->getOpMsgType(Landroid/content/Context;Landroid/content/res/ColorStateList;)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;I)V

    :cond_1
    return-void
.end method

.method public showPromptReason(I)V
    .locals 6

    .line 746
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 747
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 746
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 748
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFirstUnlock()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_2

    .line 756
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p1, :cond_1

    .line 757
    sget v0, Lcom/android/systemui/R$string;->kg_first_unlock_instructions:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->getMessageWithCount(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    .line 765
    :cond_2
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    const-string v1, "SecurityPatternView"

    if-eqz v0, :cond_3

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showPromptReason , faceType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFacelockRunningType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 770
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p0, :cond_4

    .line 771
    sget p1, Lcom/android/systemui/R$string;->face_unlock_notify_pattern:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    :cond_4
    return-void

    :cond_5
    if-eqz p1, :cond_b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    const/4 v0, 0x3

    if-eq p1, v0, :cond_8

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/4 v0, 0x6

    if-eq p1, v0, :cond_6

    .line 806
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget p1, Lcom/android/systemui/R$string;->kg_prompt_reason_timeout_pattern:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    goto :goto_0

    .line 791
    :cond_6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget p1, Lcom/android/systemui/R$string;->kg_prompt_reason_prepare_for_update_pattern:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    goto :goto_0

    .line 788
    :cond_7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget p1, Lcom/android/systemui/R$string;->kg_prompt_reason_user_request:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    goto :goto_0

    .line 785
    :cond_8
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget p1, Lcom/android/systemui/R$string;->kg_prompt_reason_device_admin:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    goto :goto_0

    .line 782
    :cond_9
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget p1, Lcom/android/systemui/R$string;->kg_prompt_reason_timeout_pattern:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    goto :goto_0

    .line 779
    :cond_a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget p1, Lcom/android/systemui/R$string;->kg_prompt_reason_restart_pattern:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    goto :goto_0

    .line 796
    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricTimeoutStringWhenPrompt(Landroid/hardware/biometrics/BiometricSourceType;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v0

    .line 797
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isWeakFaceUnlockEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v0, :cond_c

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WeakFace pattern, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p0, :cond_c

    .line 800
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    :cond_c
    :goto_0
    return-void
.end method

.method public startAppearAnimation()V
    .locals 2

    .line 901
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startAppearAnimation, before  DisplayUtils.getWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLockPatternView.isLayoutRequested:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 903
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->isLayoutRequested()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLayoutRequested:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRequested()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityPatternView"

    .line 902
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 906
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 907
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->postAnimationDelay()V

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 12

    .line 913
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 916
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    const/4 v1, 0x0

    .line 917
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    const/4 v1, 0x0

    .line 918
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    const-wide/16 v3, 0x0

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v1, v0

    float-to-long v5, v1

    .line 919
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 921
    invoke-virtual {v1}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getStartTranslation()F

    move-result v1

    neg-float v7, v1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 922
    invoke-virtual {v1}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    move-object v2, p0

    .line 919
    invoke-static/range {v2 .. v8}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    .line 924
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    const-string v1, "SecurityPatternView"

    const-string/jumbo v2, "startDisappearAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mFinishRunnable:Ljava/lang/Runnable;

    .line 929
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 930
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    goto :goto_1

    .line 931
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 932
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardPatternView$G0EMymZcEbjMZR18rSqGXuoXaF8;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardPatternView$G0EMymZcEbjMZR18rSqGXuoXaF8;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {p1, v1, v2, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 945
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/high16 v1, 0x40400000    # 3.0f

    if-nez p1, :cond_3

    .line 946
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-wide/16 v4, 0x0

    const/high16 p1, 0x43480000    # 200.0f

    mul-float/2addr v0, p1

    float-to-long v6, v0

    .line 948
    invoke-virtual {v2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getStartTranslation()F

    move-result p1

    neg-float p1, p1

    mul-float v8, p1, v1

    const/4 v9, 0x0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 950
    invoke-virtual {p1}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v10

    const/4 v11, 0x0

    .line 946
    invoke-virtual/range {v2 .. v11}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 954
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mFingerprintIcon:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 955
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mFingerprintIcon:Landroid/view/View;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xc8

    .line 957
    invoke-virtual {v2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getStartTranslation()F

    move-result p1

    neg-float p1, p1

    mul-float v8, p1, v1

    const/4 v9, 0x0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 959
    invoke-virtual {p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v10

    const/4 v11, 0x0

    .line 955
    invoke-virtual/range {v2 .. v11}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :cond_4
    const/4 p0, 0x1

    return p0
.end method
