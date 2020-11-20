.class public Lcom/android/systemui/statusbar/policy/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ButtonInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCheckLongPress:Ljava/lang/Runnable;

.field private mCode:I

.field private mContentDescriptionRes:I

.field private mDarkIntensity:F

.field private mDownTime:J

.field private mGestureAborted:Z

.field private mHasOvalBg:Z

.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private mKey:I

.field mLongClicked:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOvalBgPaint:Landroid/graphics/Paint;

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private final mPlaySounds:Z

.field private final mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

.field private mThemeColor:I

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->TAG:Ljava/lang/String;

    .line 76
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 173
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    new-instance v5, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v5}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/hardware/input/InputManager;Lcom/android/internal/logging/UiEventLogger;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/hardware/input/InputManager;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 179
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mHasOvalBg:Z

    .line 106
    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mKey:I

    .line 109
    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mThemeColor:I

    .line 146
    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    .line 180
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 182
    sget-object p5, Lcom/android/systemui/R$styleable;->KeyButtonView:[I

    invoke-virtual {p1, p2, p5, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 185
    sget p3, Lcom/android/systemui/R$styleable;->KeyButtonView_keyCode:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    .line 187
    sget p3, Lcom/android/systemui/R$styleable;->KeyButtonView_playSound:I

    const/4 p5, 0x1

    invoke-virtual {p2, p3, p5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPlaySounds:Z

    .line 189
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 190
    sget v1, Lcom/android/systemui/R$styleable;->KeyButtonView_android_contentDescription:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget p3, p3, Landroid/util/TypedValue;->resourceId:I

    iput p3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContentDescriptionRes:I

    .line 194
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    invoke-virtual {p0, p5}, Landroid/widget/ImageView;->setClickable(Z)V

    const-string p2, "audio"

    .line 197
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    .line 199
    new-instance p2, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    .line 200
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 201
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mInputManager:Landroid/hardware/input/InputManager;

    .line 202
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 203
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setWillNotDraw(Z)V

    .line 204
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->forceHasOverlappingRendering(Z)V

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->determineKey()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mKey:I

    .line 208
    invoke-static {}, Lcom/oneplus/util/OpNavBarUtils;->isSupportCustomKeys()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/16 p2, 0xbb

    if-ne p1, p2, :cond_1

    .line 209
    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    :cond_1
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 72
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/KeyButtonView;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/KeyButtonView;)Landroid/content/Context;
    .locals 0

    .line 72
    iget-object p0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private determineKey()I
    .locals 1

    .line 582
    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    move-result p0

    .line 583
    sget v0, Lcom/android/systemui/R$id;->back:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 585
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->home:I

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 587
    :cond_1
    sget v0, Lcom/android/systemui/R$id;->recent_apps:I

    if-ne p0, v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method private logSomePresses(II)V
    .locals 3

    and-int/lit16 v0, p2, 0x80

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 429
    :goto_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NONE:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    if-ne p1, v1, :cond_1

    .line 430
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    if-nez v0, :cond_2

    return-void

    :cond_2
    and-int/lit8 p1, p2, 0x20

    if-nez p1, :cond_a

    and-int/lit16 p1, p2, 0x100

    if-eqz p1, :cond_3

    goto :goto_3

    .line 440
    :cond_3
    iget p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_8

    const/4 p2, 0x4

    if-eq p1, p2, :cond_6

    const/16 p2, 0xbb

    if-eq p1, p2, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    .line 453
    sget-object p1, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NAVBAR_OVERVIEW_BUTTON_LONGPRESS:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    goto :goto_1

    .line 454
    :cond_5
    sget-object p1, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NAVBAR_OVERVIEW_BUTTON_TAP:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    :goto_1
    move-object v2, p1

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    .line 443
    sget-object p1, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NAVBAR_BACK_BUTTON_LONGPRESS:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    goto :goto_1

    .line 444
    :cond_7
    sget-object p1, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NAVBAR_BACK_BUTTON_TAP:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_9

    .line 448
    sget-object p1, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NAVBAR_HOME_BUTTON_LONGPRESS:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    goto :goto_1

    .line 449
    :cond_9
    sget-object p1, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NAVBAR_HOME_BUTTON_TAP:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    goto :goto_1

    .line 457
    :goto_2
    sget-object p1, Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;->NONE:Lcom/android/systemui/statusbar/policy/KeyButtonView$NavBarButtonEvent;

    if-eq v2, p1, :cond_a

    .line 458
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p0, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_a
    :goto_3
    return-void
.end method

.method private sendEvent(IIJ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 463
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v4, 0x3a3

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v4, 0x4

    .line 464
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    iget v5, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    .line 465
    invoke-virtual {v3, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 466
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3a5

    invoke-virtual {v3, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 467
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3a4

    invoke-virtual {v3, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 463
    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 468
    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->logSomePresses(II)V

    .line 469
    iget v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 470
    sget-object v2, Lcom/android/systemui/statusbar/policy/KeyButtonView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Back button event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v2, p1

    if-ne v2, v3, :cond_2

    .line 472
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    and-int/lit8 v7, v1, 0x20

    if-nez v7, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    goto :goto_1

    :cond_1
    move/from16 v2, p1

    :cond_2
    :goto_1
    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_3

    move v14, v3

    goto :goto_2

    :cond_3
    move v14, v5

    .line 477
    :goto_2
    new-instance v3, Landroid/view/KeyEvent;

    iget-wide v8, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    iget v13, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    or-int/lit8 v1, v1, 0x8

    or-int/lit8 v18, v1, 0x40

    const/16 v19, 0x101

    move-object v7, v3

    move-wide/from16 v10, p3

    move/from16 v12, p1

    invoke-direct/range {v7 .. v19}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 485
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    .line 486
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v2

    .line 489
    :goto_3
    const-class v6, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/bubbles/BubbleController;

    .line 490
    iget-object v7, v0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/systemui/bubbles/BubbleController;->getExpandedDisplayId(Landroid/content/Context;)I

    move-result v6

    .line 491
    iget v7, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-ne v7, v4, :cond_5

    if-eq v6, v2, :cond_5

    move v1, v6

    :cond_5
    if-eq v1, v2, :cond_6

    .line 495
    invoke-virtual {v3, v1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 497
    :cond_6
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v3, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private updateThemeColorInternal()V
    .locals 2

    .line 511
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    instance-of v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz v1, :cond_0

    .line 513
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 514
    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mThemeColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->updateThemeColor(I)V

    .line 516
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 2

    const-string v0, "b/63783866"

    const-string v1, "KeyButtonView.abortCurrentGesture"

    .line 522
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 523
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->abortDelayedRipple()V

    const/4 v0, 0x1

    .line 525
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGestureAborted:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 553
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mHasOvalBg:Z

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 555
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 556
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    .line 557
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 558
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 559
    div-int/lit8 v0, v0, 0x2

    neg-int v1, v0

    int-to-float v4, v1

    int-to-float v6, v0

    .line 560
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v4

    move v5, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 561
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 563
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public isClickable()Z
    .locals 1

    .line 216
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public isLongClickable()Z
    .locals 2

    .line 574
    invoke-static {}, Lcom/oneplus/util/OpNavBarUtils;->isSupportCustomKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mKey:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 577
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->isLongClickable()Z

    move-result p0

    return p0
.end method

.method public loadAsync(Landroid/graphics/drawable/Icon;)V
    .locals 2

    .line 230
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    .line 240
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 245
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 247
    iget p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContentDescriptionRes:I

    if-eqz p1, :cond_0

    .line 248
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 254
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 255
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isLongClickable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 258
    new-instance p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v0, 0x20

    invoke-direct {p0, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 291
    sget-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v1}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v1

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 295
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGestureAborted:Z

    .line 297
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGestureAborted:Z

    if-eqz v4, :cond_1

    .line 298
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    return v3

    :cond_1
    const/4 v4, 0x1

    if-eqz v2, :cond_f

    const/16 v5, 0x20

    if-eq v2, v4, :cond_6

    const/4 v0, 0x2

    if-eq v2, v0, :cond_4

    const/4 p1, 0x3

    if-eq v2, p1, :cond_2

    goto/16 :goto_5

    .line 341
    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 342
    iget p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz p1, :cond_3

    .line 343
    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 345
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 329
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 332
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->getQuickStepTouchSlopPx(Landroid/content/Context;)F

    move-result v1

    .line 333
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchDownX:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchDownY:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_13

    .line 336
    :cond_5
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 337
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 348
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ImageView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    if-nez p1, :cond_7

    move p1, v4

    goto :goto_0

    :cond_7
    move p1, v3

    .line 349
    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x96

    cmp-long v2, v6, v8

    if-lez v2, :cond_8

    move v2, v4

    goto :goto_1

    :cond_8
    move v2, v3

    :goto_1
    if-eqz v1, :cond_9

    if-eqz p1, :cond_a

    .line 354
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    .line 355
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    goto :goto_2

    :cond_9
    if-eqz v2, :cond_a

    .line 357
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    if-nez v1, :cond_a

    const/16 v1, 0x8

    .line 360
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    .line 362
    :cond_a
    :goto_2
    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v1, :cond_d

    if-eqz p1, :cond_c

    .line 365
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;->DEBUG:Z

    if-eqz p1, :cond_b

    .line 366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_UP mCode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_b
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 370
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    goto :goto_3

    .line 372
    :cond_c
    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    goto :goto_3

    :cond_d
    if-eqz p1, :cond_e

    .line 376
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_e

    .line 377
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 378
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    .line 381
    :cond_e
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 304
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    .line 305
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    .line 306
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchDownX:I

    .line 310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchDownY:I

    .line 311
    iget p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz p1, :cond_11

    .line 313
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;->DEBUG:Z

    if-eqz p1, :cond_10

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_DOWN mCode: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_10
    iget-wide v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    invoke-direct {p0, v3, v3, v5, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    goto :goto_4

    .line 320
    :cond_11
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    :goto_4
    if-nez v1, :cond_12

    .line 323
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    .line 325
    :cond_12
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 326
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    :goto_5
    return v4
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 266
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_0

    .line 268
    invoke-virtual {p0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    :cond_0
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne p1, v2, :cond_0

    .line 274
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v2, :cond_0

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-direct {p0, v1, v1, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 276
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 277
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    .line 278
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    return v0

    :cond_0
    const/16 v2, 0x20

    if-ne p1, v2, :cond_1

    .line 280
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v2, :cond_1

    const/16 p1, 0x80

    .line 281
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 282
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    const/4 p1, 0x2

    .line 283
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    return v0

    .line 286
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public playSoundEffect(I)V
    .locals 1

    .line 419
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPlaySounds:Z

    if-nez v0, :cond_0

    return-void

    .line 420
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->playSoundEffect(II)V

    return-void
.end method

.method public sendEvent(II)V
    .locals 2

    .line 424
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    return-void
.end method

.method public setCode(I)V
    .locals 0

    .line 220
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 2

    .line 530
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDarkIntensity:F

    .line 532
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    instance-of v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz v1, :cond_0

    .line 538
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 541
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 543
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setDarkIntensity(F)V

    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .locals 0

    .line 548
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setDelayTouchFeedback(Z)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 390
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    return-void

    .line 397
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-nez v0, :cond_1

    return-void

    .line 402
    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 403
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDarkIntensity:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 404
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->hasOvalBg()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mHasOvalBg:Z

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawableBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->hasOvalBg()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;->OVAL:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;

    goto :goto_0

    .line 409
    :cond_3
    sget-object p1, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;->ROUNDED_RECT:Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;

    .line 408
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setType(Lcom/android/systemui/statusbar/policy/KeyButtonRipple$Type;)V

    .line 412
    invoke-static {}, Lcom/oneplus/util/OpNavBarUtils;->isSupportCustomNavBar()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 413
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->updateThemeColorInternal()V

    :cond_4
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 225
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRippleColor(I)V
    .locals 0

    .line 502
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    return-void
.end method

.method public updateThemeColor(I)V
    .locals 0

    .line 506
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mThemeColor:I

    .line 507
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->updateThemeColorInternal()V

    return-void
.end method
