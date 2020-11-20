.class public Lcom/android/systemui/BatteryMeterView;
.super Lcom/oneplus/systemui/OpBatteryMeterView;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$SettingObserver;
    }
.end annotation


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryIconView:Landroid/widget/ImageView;

.field private mBatteryPercentShow:Z

.field private mBatteryPercentView:Landroid/widget/TextView;

.field private mCharging:Z

.field private mDarkIntensity:F

.field private mDirty:Z

.field private mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field private mForceShowPercent:Z

.field private mIgnoreTunerUpdates:Z

.field protected mIsInvalidCharge:I

.field private mIsOptimizatedCharge:Z

.field private mIsSubscribedForTunerUpdates:Z

.field private mLevel:I

.field private mNonAdaptedBackgroundColor:I

.field private mNonAdaptedSingleToneColor:I

.field private final mPercentageStyleId:I

.field private mRect:Landroid/graphics/Rect;

.field private mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

.field private mShowPercentMode:I

.field private final mSlotBattery:Ljava/lang/String;

.field private mTextColor:I

.field private mTint:I

.field private mUser:I

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/systemui/OpBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    const/4 v1, 0x1

    .line 149
    iput-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mDirty:Z

    const/4 v2, 0x0

    .line 152
    iput v2, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    .line 155
    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsInvalidCharge:I

    .line 465
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentShow:Z

    .line 511
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsOptimizatedCharge:Z

    .line 165
    const-class v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 167
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v4, 0x800013

    .line 168
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 170
    sget-object v4, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 172
    sget p3, Lcom/android/systemui/R$styleable;->BatteryMeterView_frameColor:I

    sget v4, Lcom/android/systemui/R$color;->meter_background_color:I

    .line 173
    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 172
    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 178
    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mPercentageStyleId:I

    .line 185
    new-instance v4, Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-direct {v4, p1, p3}, Lcom/oneplus/battery/OpBatteryMeterDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    .line 187
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    new-instance p2, Lcom/android/systemui/BatteryMeterView$SettingObserver;

    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {p3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/BatteryMeterView$SettingObserver;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x111002f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 194
    new-instance p2, Lcom/android/systemui/util/Utils$DisableStateTracker;

    const-class p3, Lcom/android/systemui/statusbar/CommandQueue;

    .line 196
    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v4, 0x2

    invoke-direct {p2, v0, v4, p3}, Lcom/android/systemui/util/Utils$DisableStateTracker;-><init>(IILcom/android/systemui/statusbar/CommandQueue;)V

    .line 194
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->setupLayoutTransition()V

    const p2, 0x1040796

    .line 200
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    .line 202
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    .line 203
    iget-object p3, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 205
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v4, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_width:I

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 206
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {p2, p3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 214
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v4, Lcom/android/systemui/R$dimen;->battery_margin_bottom:I

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 215
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    const/16 v5, 0x190

    if-gt v4, v5, :cond_0

    .line 216
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->oneplus_battery_margin_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr p3, v4

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->op_status_bar_battery_icon_margin_right:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 220
    invoke-virtual {p2, v0, v0, v4, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 223
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 224
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    new-instance p2, Lcom/oneplus/battery/OpBatteryDashChargeView;

    invoke-direct {p2, p1, v4}, Lcom/oneplus/battery/OpBatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mBatteryDashChargeView:Lcom/oneplus/battery/OpBatteryDashChargeView;

    .line 229
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 230
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/systemui/R$dimen;->op_status_bar_battery_dash_icon_width:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 231
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/systemui/R$dimen;->op_status_bar_battery_dash_icon_height:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p2, p3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 233
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 235
    iget-object p3, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mBatteryDashChargeView:Lcom/oneplus/battery/OpBatteryDashChargeView;

    invoke-virtual {p0, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    iput p2, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mFontScale:F

    .line 242
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 243
    new-instance p2, Lcom/android/systemui/DualToneHandler;

    invoke-direct {p2, p1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 245
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 p2, -0x1

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 247
    new-instance p1, Lcom/android/systemui/BatteryMeterView$1;

    invoke-direct {p1, p0, v3}, Lcom/android/systemui/BatteryMeterView$1;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 259
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 260
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 261
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p0}, Lcom/android/systemui/util/SysuiLifecycle;->viewAttachLifecycle(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/BatteryMeterView;I)I
    .locals 0

    .line 95
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/BatteryMeterView;)Lcom/android/systemui/BatteryMeterView$SettingObserver;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    return-void
.end method

.method private synthetic lambda$updatePercentText$0(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level_with_estimate:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    .line 575
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 573
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 577
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->setPercentTextAtCurrentLevel()V

    :goto_0
    return-void
.end method

.method private loadPercentView()Landroid/widget/TextView;
    .locals 2

    .line 543
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$layout;->battery_percentage_view:I

    const/4 v1, 0x0

    .line 544
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private scaleBatteryMeterViews()V
    .locals 7

    .line 703
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 704
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 706
    sget v2, Lcom/android/systemui/R$dimen;->status_bar_icon_scale_factor:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 707
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    .line 709
    sget v2, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 717
    iget v4, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mBatteryStyle:I

    if-ne v4, v3, :cond_0

    move v3, v2

    goto :goto_0

    .line 718
    :cond_0
    sget v3, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 719
    :goto_0
    sget v4, Lcom/android/systemui/R$dimen;->battery_margin_bottom:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 721
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->densityDpi:I

    const/16 v6, 0x1a4

    if-gt v5, v6, :cond_1

    .line 723
    sget v5, Lcom/android/systemui/R$dimen;->oneplus_battery_margin_bottom:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v4, v0

    .line 729
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/android/systemui/R$dimen;->op_status_bar_battery_icon_margin_right:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 730
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-direct {v5, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 735
    invoke-virtual {v5, v1, v1, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 738
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->battery_level_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mFontScale:F

    mul-float/2addr v0, v2

    .line 743
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 744
    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 747
    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mBatteryDashChargeView:Lcom/oneplus/battery/OpBatteryDashChargeView;

    invoke-virtual {v0}, Lcom/oneplus/battery/OpBatteryDashChargeView;->updateViews()V

    .line 749
    iget-object v0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mBatteryDashChargeView:Lcom/oneplus/battery/OpBatteryDashChargeView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 751
    iget-object p0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mBatteryDashChargeView:Lcom/oneplus/battery/OpBatteryDashChargeView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setPercentTextAtCurrentLevel()V
    .locals 5

    .line 591
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 592
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 591
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level_charging:I

    goto :goto_0

    .line 595
    :cond_0
    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level:I

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 594
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupLayoutTransition()V
    .locals 5

    .line 265
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v1, 0xc8

    .line 266
    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 268
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    const-string v4, "alpha"

    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 269
    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 270
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    new-array v1, v1, [F

    .line 272
    fill-array-data v1, :array_1

    invoke-static {v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 273
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 274
    invoke-virtual {v0, v3, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 276
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private showFastCharge()Z
    .locals 1

    .line 681
    iget-boolean v0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mFastCharge:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mWirelessWarpCharging:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsOptimizatedCharge:Z

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/BatteryMeterView;->mIsInvalidCharge:I

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private subscribeForTunerUpdates()V
    .locals 2

    .line 322
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIgnoreTunerUpdates:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private unsubscribeFromTunerUpdates()V
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    if-nez v0, :cond_0

    return-void

    .line 336
    :cond_0
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    return-void
.end method

.method private updateAllBatteryColors()V
    .locals 3

    .line 837
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    .line 840
    :cond_0
    invoke-static {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 842
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedSingleToneColor:I

    .line 843
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/DualToneHandler;->getFillColor(F)I

    .line 844
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/DualToneHandler;->getBackgroundColor(F)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedBackgroundColor:I

    .line 847
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mTint:I

    invoke-static {v0, p0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    .line 850
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setTextColor(I)V

    .line 852
    iget-object v1, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mBatteryDashChargeView:Lcom/oneplus/battery/OpBatteryDashChargeView;

    invoke-virtual {v1, v0}, Lcom/oneplus/battery/OpBatteryDashChargeView;->setIconTint(I)V

    .line 855
    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedBackgroundColor:I

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedSingleToneColor:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/BatteryMeterView;->updateColors(III)V

    return-void
.end method

.method private updateBatteryMeterVisibility()V
    .locals 2

    .line 667
    iget v0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mBatteryStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->showFastCharge()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 670
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 668
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private declared-synchronized updatePercentText()V
    .locals 5

    monitor-enter p0

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 565
    monitor-exit p0

    return-void

    .line 568
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 569
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-nez v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    new-instance v1, Lcom/android/systemui/-$$Lambda$BatteryMeterView$yZDQalqWJG2q_49RDLUqR8bhWwM;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$BatteryMeterView$yZDQalqWJG2q_49RDLUqR8bhWwM;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->getEstimatedTimeRemainingString(Lcom/android/systemui/statusbar/policy/BatteryController$EstimateFetchCompletion;)V

    goto :goto_1

    .line 581
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->setPercentTextAtCurrentLevel()V

    goto :goto_1

    .line 585
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level_charging:I

    goto :goto_0

    .line 586
    :cond_3
    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level:I

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 585
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateShowPercent()V
    .locals 5

    .line 599
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 612
    :goto_0
    sget-boolean v2, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateShowPercent showing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mBatteryPercentShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mForceShowPercent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BatteryMeterView"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentShow:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_6

    .line 641
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 642
    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    goto :goto_2

    :cond_3
    :goto_1
    if-nez v0, :cond_6

    .line 622
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->loadPercentView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 623
    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mPercentageStyleId:I

    if-eqz v2, :cond_4

    .line 624
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 626
    :cond_4
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 627
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 628
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 636
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    :cond_6
    :goto_2
    return-void
.end method

.method private updateTunerSubscription()V
    .locals 1

    .line 314
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIgnoreTunerUpdates:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->unsubscribeFromTunerUpdates()V

    goto :goto_0

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->subscribeForTunerUpdates()V

    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 796
    iget-object p1, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    move-object p1, p3

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getPowerSave()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 798
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    :goto_1
    const-string v0, "  BatteryMeterView:"

    .line 799
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDrawable.getPowerSave: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 801
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mBatteryPercentView.getText(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mTextColor: #"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mLevel: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mForceShowPercent: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$updatePercentText$0$BatteryMeterView(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView;->lambda$updatePercentText$0(Ljava/lang/String;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 396
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow / ParentView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryMeterView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 401
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 402
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    .line 403
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_battery_percent"

    .line 404
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    const/4 v4, 0x0

    .line 403
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 405
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_estimates_last_update_time"

    .line 406
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    .line 405
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 408
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 409
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->subscribeForTunerUpdates()V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 412
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    .line 415
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryMeterVisibility()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 2

    .line 435
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 436
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    if-eq v0, p1, :cond_0

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBatteryLevelChanged / preLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / pluggedIn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / charging:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " / ParentView:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BatteryMeterView"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    iget-object p3, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-virtual {p3, p2}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->setCharging(Z)V

    .line 443
    iget-object p3, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-virtual {p3, p1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setBatteryLevel(I)V

    .line 444
    iput-boolean p2, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    .line 445
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    .line 446
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 448
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->updateDashChargeView()V

    return-void
.end method

.method public onBatteryPercentShowChange(Z)V
    .locals 1

    .line 468
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentShow:Z

    if-eq v0, p1, :cond_0

    .line 469
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentShow:Z

    .line 470
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    :cond_0
    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->onBatteryStyleChanged(I)V

    .line 457
    iput p1, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mBatteryStyle:I

    .line 458
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryMeterVisibility()V

    .line 460
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    .line 461
    invoke-virtual {p0}, Lcom/oneplus/systemui/OpBatteryMeterView;->updateViews()V

    .line 462
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    .line 861
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mDirty:Z

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mRect:Landroid/graphics/Rect;

    .line 770
    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    .line 771
    iput p3, p0, Lcom/android/systemui/BatteryMeterView;->mTint:I

    .line 772
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateAllBatteryColors()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 690
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 691
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 692
    iget v1, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mFontScale:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 693
    iput v0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mFontScale:F

    .line 696
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 421
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/ onDetachedFromWindow / ParentView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryMeterView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 426
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 427
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 428
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->unsubscribeFromTunerUpdates()V

    return-void
.end method

.method public onFastChargeChanged(I)V
    .locals 1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 480
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mFastCharge:Z

    if-eq v0, p1, :cond_1

    .line 481
    iput-boolean p1, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mFastCharge:Z

    .line 482
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->updateDashChargeView()V

    .line 483
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryMeterVisibility()V

    :cond_1
    return-void
.end method

.method public onInvalidChargeChanged(I)V
    .locals 2

    .line 530
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsInvalidCharge:I

    if-eq v0, p1, :cond_0

    .line 531
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mIsInvalidCharge:I

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInvalidChargeChanged isInvalidCharge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / ParentView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryMeterView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->updateDashChargeView()V

    .line 535
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryMeterVisibility()V

    .line 536
    iget-object v0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->setIsInvalidCharge(I)V

    .line 537
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    .line 538
    invoke-virtual {p0}, Lcom/oneplus/systemui/OpBatteryMeterView;->updateViews()V

    .line 539
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 827
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 828
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInMultiWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 829
    iget-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mDirty:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    .line 830
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateAllBatteryColors()V

    const/4 p1, 0x0

    .line 831
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mDirty:Z

    :cond_0
    return-void
.end method

.method public onOptimizatedStatusChange(Z)V
    .locals 2

    .line 514
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsOptimizatedCharge:Z

    if-eq v0, p1, :cond_0

    .line 515
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mIsOptimizatedCharge:Z

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOptimizatedStatusChange isOptimizatedCharge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / ParentView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryMeterView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->updateDashChargeView()V

    .line 520
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryMeterVisibility()V

    .line 521
    iget-object v0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->onOptimizatedStatusChange(Z)V

    .line 522
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    .line 523
    invoke-virtual {p0}, Lcom/oneplus/systemui/OpBatteryMeterView;->updateViews()V

    .line 524
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    .line 505
    invoke-super {p0, p1}, Lcom/oneplus/systemui/OpBatteryMeterView;->onPowerSaveChanged(Z)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "icon_blacklist"

    .line 380
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 382
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 381
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Landroid/content/Context;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    .line 383
    iget-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 386
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryMeterVisibility()V

    .line 390
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method public onWirelessWarpChargeChanged(Z)V
    .locals 1

    .line 490
    iget-boolean v0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mWirelessWarpCharging:Z

    if-eq v0, p1, :cond_0

    .line 491
    iput-boolean p1, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mWirelessWarpCharging:Z

    .line 492
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->updateDashChargeView()V

    .line 493
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryMeterVisibility()V

    :cond_0
    return-void
.end method

.method public setColorsFromContext(Landroid/content/Context;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 370
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/DualToneHandler;->setColorsFromContext(Landroid/content/Context;)V

    return-void
.end method

.method public setForceShowPercent(Z)V
    .locals 2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setForceShowPercent / mForceShowPercent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / show:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryMeterView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/systemui/BatteryMeterView;->setPercentShowMode(I)V

    return-void
.end method

.method public setIgnoreTunerUpdates(Z)V
    .locals 0

    .line 309
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mIgnoreTunerUpdates:Z

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateTunerSubscription()V

    return-void
.end method

.method public setPercentShowMode(I)V
    .locals 0

    .line 298
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    .line 299
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 650
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    .line 651
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 652
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public updateColors(III)V
    .locals 0

    .line 778
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/systemui/OpBatteryMeterView;->updateColors(II)V

    return-void
.end method

.method public updateDashChargeView()V
    .locals 2

    .line 657
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->showFastCharge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mBatteryDashChargeView:Lcom/oneplus/battery/OpBatteryDashChargeView;

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v0, v1}, Lcom/oneplus/battery/OpBatteryDashChargeView;->setLevel(I)V

    .line 659
    iget-object p0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mBatteryDashChargeView:Lcom/oneplus/battery/OpBatteryDashChargeView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 661
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/OpBatteryMeterView;->mBatteryDashChargeView:Lcom/oneplus/battery/OpBatteryDashChargeView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updatePercentView()V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 553
    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method
