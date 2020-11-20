.class public Lcom/android/systemui/qs/QuickStatusBarHeader;
.super Landroid/widget/RelativeLayout;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

.field private mClockView:Lcom/android/systemui/statusbar/policy/Clock;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mContentMarginEnd:I

.field private mContentMarginStart:I

.field private mCutOutPaddingLeft:I

.field private mCutOutPaddingRight:I

.field private mDateView:Lcom/android/systemui/statusbar/policy/DateView;

.field private mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field private mExpanded:Z

.field private mExpandedHeaderAlpha:F

.field protected mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mHeaderTextContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mHeaderTextContainerView:Landroid/view/View;

.field private mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field private mIsLandscape:Z

.field private mKeyguardExpansionFraction:F

.field private final mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field private mListening:Z

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mNextAlarmContainer:Landroid/view/View;

.field private mNextAlarmIcon:Landroid/widget/ImageView;

.field private mNextAlarmTextView:Landroid/widget/TextView;

.field private mQsDisabled:Z

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQuickQsStatusIcons:Landroid/view/View;

.field private mRingerContainer:Landroid/view/View;

.field private mRingerMode:I

.field private mRingerModeIcon:Landroid/widget/ImageView;

.field private final mRingerModeObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRingerModeTextView:Landroid/widget/TextView;

.field private mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

.field private mRoundedCornerPadding:I

.field private final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mStatusIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mStatusSeparator:Landroid/view/View;

.field private mSystemIconsView:Landroid/view/View;

.field private mWaterfallTopInset:I

.field private final mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/util/RingerModeTracker;)V
    .locals 1

    .line 188
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    const/4 p2, 0x2

    .line 148
    iput p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerMode:I

    .line 165
    new-instance p2, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {p2, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    const/4 p2, 0x0

    .line 169
    iput p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 175
    iput v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpandedHeaderAlpha:F

    .line 179
    iput-boolean p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsLandscape:Z

    .line 615
    new-instance p2, Lcom/android/systemui/qs/QuickStatusBarHeader$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$1;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeObserver:Landroidx/lifecycle/Observer;

    .line 189
    iput-object p3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 190
    iput-object p4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 191
    iput-object p5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 192
    iput-object p6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 193
    new-instance p2, Lcom/android/systemui/DualToneHandler;

    new-instance p3, Landroid/view/ContextThemeWrapper;

    sget p4, Lcom/android/systemui/R$style;->QSHeaderTheme:I

    invoke-direct {p3, p1, p4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p2, p3}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 195
    iput-object p7, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 196
    iput-object p8, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    const/16 p1, 0x8

    .line 199
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/QuickStatusBarHeader;I)I
    .locals 0

    .line 106
    iput p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    return-void
.end method

.method private applyDarkness(ILandroid/graphics/Rect;FI)V
    .locals 0

    .line 424
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 425
    instance-of p1, p0, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    if-eqz p1, :cond_0

    .line 426
    check-cast p0, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    invoke-interface {p0, p2, p3, p4}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    :cond_0
    return-void
.end method

.method private formatNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 836
    :cond_0
    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "EHm"

    goto :goto_0

    :cond_1
    const-string p0, "Ehma"

    .line 838
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 839
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getColorIntensity(I)F
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method private getIgnoredIconSlots()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040798

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x10407a4

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getStatusBarRelatedHeight(I)I
    .locals 1

    .line 472
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 473
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCutout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->getCutoutPathdataHeight(Landroid/content/Context;)I

    move-result p0

    if-le p0, p1, :cond_0

    move p1, p0

    :cond_0
    return p1
.end method

.method private synthetic lambda$updateAlarmStatus$1(Landroid/view/View;)V
    .locals 1

    .line 404
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 405
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p0}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    const-string p1, "QuickStatusBarHeader"

    const-string v0, "No PendingIntent for next alarm. Using default intent"

    .line 407
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SHOW_ALARMS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateEverything$2()V
    .locals 1

    .line 797
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void
.end method

.method private synthetic lambda$updateRingerStatus$0(Landroid/view/View;)V
    .locals 1

    .line 334
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method private updateAlarmStatus()Z
    .locals 9

    .line 385
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 386
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 389
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v4, :cond_1

    .line 391
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->formatNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 393
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    if-eqz v4, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v6

    :goto_2
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v6

    :goto_3
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmContainer:Landroid/view/View;

    if-eqz v4, :cond_4

    move v6, v2

    :cond_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getOpQSWidgetAdapter()Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

    move-result-object v5

    if-eqz v5, :cond_6

    if-eqz v4, :cond_5

    .line 400
    new-instance v5, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;

    sget v6, Lcom/android/systemui/R$drawable;->ic_alarm:I

    iget-object v7, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    .line 402
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$DlEFdLUamVNfwOJK5rQuoaBC6yU;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$DlEFdLUamVNfwOJK5rQuoaBC6yU;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-direct {v5, v1, v6, v7, v8}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;-><init>(IILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSPanel;->getOpQSWidgetAdapter()Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->addItem(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)V

    goto :goto_4

    .line 414
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getOpQSWidgetAdapter()Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->removeItem(I)V

    :cond_6
    :goto_4
    if-ne v0, v4, :cond_8

    .line 419
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    .line 420
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v3, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :cond_8
    :goto_5
    return v1
.end method

.method private updateClockPadding()V
    .locals 8

    .line 660
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 661
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 662
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 684
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsLandscape:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 685
    iget v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingLeft:I

    if-lez v0, :cond_1

    .line 687
    iget v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 688
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContentMarginEnd:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContentMarginStart:I

    :goto_0
    sub-int/2addr v0, v2

    .line 689
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 691
    :goto_1
    iget v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingRight:I

    if-lez v2, :cond_3

    .line 693
    iget v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 694
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContentMarginStart:I

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContentMarginEnd:I

    :goto_2
    sub-int/2addr v2, v3

    .line 695
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    move v0, v1

    move v2, v0

    .line 698
    :goto_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->isHolePunchCutoutHide(Landroid/content/Context;)Z

    move-result v3

    .line 701
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->status_bar_padding_start:I

    const/16 v6, 0x438

    invoke-static {v4, v5, v6}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v4

    .line 702
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/android/systemui/R$dimen;->status_bar_padding_end:I

    invoke-static {v5, v7, v6}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v5

    if-eqz v3, :cond_5

    move v4, v5

    :cond_5
    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_4

    .line 704
    :cond_6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/android/systemui/R$dimen;->op_status_bar_cust_padding_top:I

    invoke-static {v3, v7, v6}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    .line 707
    :goto_4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$dimen;->op_notification_side_paddings:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 709
    iget-object v7, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    add-int/2addr v0, v4

    sub-int/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mWaterfallTopInset:I

    add-int/2addr p0, v3

    add-int/2addr v2, v5

    sub-int/2addr v2, v6

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v7, v0, p0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private updateClockView()V
    .locals 2

    .line 890
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    if-nez v0, :cond_0

    return-void

    .line 893
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsLandscape:Z

    if-nez v1, :cond_1

    const/16 p0, 0x8

    .line 894
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    goto :goto_0

    .line 896
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateHeaderTextContainerAlphaAnimator()V
    .locals 5

    .line 542
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v4, v2, v3

    iget v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpandedHeaderAlpha:F

    const/4 v4, 0x2

    aput v3, v2, v4

    const-string v3, "alpha"

    .line 543
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 544
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void
.end method

.method private updateMinimumHeight()V
    .locals 3

    const v0, 0x1050248

    .line 462
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getStatusBarRelatedHeight(I)I

    move-result v0

    .line 464
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_quick_header_panel_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 467
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    return-void
.end method

.method private updateResources()V
    .locals 4

    .line 484
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 485
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateMinimumHeight()V

    .line 487
    sget v1, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    .line 489
    sget v1, Lcom/android/systemui/R$dimen;->status_bar_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 492
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_header_tooltip_height:I

    .line 493
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 494
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 498
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsLandscape:Z

    .line 499
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 500
    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsLandscape:Z

    if-eqz v1, :cond_1

    .line 501
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 502
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-nez v1, :cond_2

    .line 503
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 508
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateClockView()V

    .line 517
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const v2, 0x1050248

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getStatusBarRelatedHeight(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 520
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 523
    iget-boolean v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-eqz v2, :cond_3

    const v2, 0x1050217

    .line 524
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    :cond_3
    const/4 v0, -0x2

    .line 527
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 529
    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusIconAlphaAnimator()V

    .line 532
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateHeaderTextContainerAlphaAnimator()V

    return-void
.end method

.method private updateRingerStatus()Z
    .locals 10

    .line 307
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 308
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 311
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 312
    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConsolidatedPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v5

    .line 311
    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->isZenOverridingRinger(ILandroid/app/NotificationManager$Policy;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 313
    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerMode:I

    if-ne v4, v1, :cond_1

    .line 314
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    sget v5, Lcom/android/systemui/R$drawable;->ic_volume_ringer_vibrate:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 315
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    sget v5, Lcom/android/systemui/R$string;->qs_status_phone_vibrate:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    move v4, v1

    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    .line 318
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    sget v5, Lcom/android/systemui/R$drawable;->ic_volume_ringer_mute:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    sget v5, Lcom/android/systemui/R$string;->qs_status_phone_muted:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    move v4, v2

    .line 323
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    if-eqz v4, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v6

    :goto_3
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    move v7, v2

    goto :goto_4

    :cond_4
    move v7, v6

    :goto_4
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerContainer:Landroid/view/View;

    if-eqz v4, :cond_5

    move v6, v2

    :cond_5
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getOpQSWidgetAdapter()Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

    move-result-object v5

    if-eqz v5, :cond_8

    const/4 v5, 0x3

    if-eqz v4, :cond_7

    .line 330
    new-instance v6, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;

    .line 331
    iget v7, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerMode:I

    if-ne v7, v1, :cond_6

    sget v7, Lcom/android/systemui/R$drawable;->ic_volume_ringer_vibrate:I

    goto :goto_5

    :cond_6
    sget v7, Lcom/android/systemui/R$drawable;->ic_volume_ringer_mute:I

    :goto_5
    iget-object v8, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    .line 332
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$rmL8c-lTpHdJ0baarb--uw6VVLY;

    invoke-direct {v9, p0}, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$rmL8c-lTpHdJ0baarb--uw6VVLY;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-direct {v6, v5, v7, v8, v9}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;-><init>(IILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getOpQSWidgetAdapter()Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->addItem(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter$OpWidgetInfo;)V

    goto :goto_6

    .line 339
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSPanel;->getOpQSWidgetAdapter()Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->removeItem(I)V

    :cond_8
    :goto_6
    if-ne v0, v4, :cond_a

    .line 344
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    .line 345
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v3, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_7

    :cond_9
    move v1, v2

    :cond_a
    :goto_7
    return v1
.end method

.method private updateStatusIconAlphaAnimator()V
    .locals 4

    .line 536
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    .line 537
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 538
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data
.end method

.method private updateStatusText()V
    .locals 4

    .line 296
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateRingerStatus()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAlarmStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    .line 299
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 300
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 301
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusSeparator:Landroid/view/View;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private updateThemeColor()V
    .locals 5

    const/4 v0, 0x0

    .line 350
    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    const/16 v1, 0xc

    .line 351
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const/4 v2, 0x1

    .line 354
    invoke-static {v2}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const/16 v3, 0xa

    .line 355
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    .line 357
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 361
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusSeparator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 363
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusSeparator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 365
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 367
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v3, v0, v1, v0}, Lcom/android/systemui/BatteryMeterView;->updateColors(III)V

    .line 378
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 0

    const/4 p1, 0x1

    and-int/2addr p2, p1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    .line 602
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-ne p1, p2, :cond_1

    return-void

    .line 603
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    .line 604
    iget-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setDisabledByPolicy(Z)V

    .line 610
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    iget-boolean p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-eqz p2, :cond_2

    const/16 p3, 0x8

    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 611
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public getHeaderQsPanel()Lcom/android/systemui/qs/QuickQSPanel;
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    return-object p0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 849
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public synthetic lambda$updateAlarmStatus$1$QuickStatusBarHeader(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->lambda$updateAlarmStatus$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$updateEverything$2$QuickStatusBarHeader()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->lambda$updateEverything$2()V

    return-void
.end method

.method public synthetic lambda$updateRingerStatus$0$QuickStatusBarHeader(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->lambda$updateRingerStatus$0(Landroid/view/View;)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 643
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 645
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 644
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, -0x1

    .line 647
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->paddingNeededForCutoutAndRoundedCorner(Landroid/view/DisplayCutout;Landroid/util/Pair;I)Landroid/util/Pair;

    move-result-object v1

    .line 649
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingLeft:I

    .line 650
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingRight:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 651
    :cond_0
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    :goto_0
    iput v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mWaterfallTopInset:I

    .line 652
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateClockPadding()V

    .line 653
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 626
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 634
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    invoke-interface {v0}, Lcom/android/systemui/util/RingerModeTracker;->getRingerModeInternal()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 636
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 637
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestApplyInsets()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 756
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    const-string v1, "android.intent.action.SHOW_ALARMS"

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 757
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_0

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmContainer:Landroid/view/View;

    if-ne p1, v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 761
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 762
    invoke-virtual {p0}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object p0

    .line 761
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    const-string p1, "QuickStatusBarHeader"

    const-string v0, "No PendingIntent for next alarm. Using default intent"

    .line 764
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_0

    .line 768
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerContainer:Landroid/view/View;

    if-ne p1, v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 769
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_0

    .line 773
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    if-ne p1, p0, :cond_4

    .line 774
    const-class p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 0

    .line 793
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 432
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 433
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 442
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->useWallpaperTextColor(Z)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    .line 722
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setListening(Z)V

    .line 727
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    invoke-interface {v0}, Lcom/android/systemui/util/RingerModeTracker;->getRingerModeInternal()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 729
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 730
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 205
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 207
    sget v0, Lcom/android/systemui/R$id;->quick_qs_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 208
    sget v0, Lcom/android/systemui/R$id;->quick_status_bar_system_icons:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    .line 209
    sget v0, Lcom/android/systemui/R$id;->quick_qs_status_icons:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    .line 210
    sget v0, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getIgnoredIconSlots()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlots(Ljava/util/List;)V

    const/4 v1, 0x0

    .line 213
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setShouldRestrictIcons(Z)V

    .line 219
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const-string v4, "qs"

    invoke-direct {v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/CommandQueue;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    .line 223
    sget v0, Lcom/android/systemui/R$id;->header_text_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    .line 224
    sget v0, Lcom/android/systemui/R$id;->status_separator:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusSeparator:Landroid/view/View;

    .line 225
    sget v0, Lcom/android/systemui/R$id;->next_alarm_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmIcon:Landroid/widget/ImageView;

    .line 226
    sget v0, Lcom/android/systemui/R$id;->next_alarm_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    .line 227
    sget v0, Lcom/android/systemui/R$id;->alarm_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmContainer:Landroid/view/View;

    .line 228
    new-instance v2, Lcom/android/systemui/qs/-$$Lambda$p8TkVReSUo0LsQ3y-9iKja9mJXE;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/-$$Lambda$p8TkVReSUo0LsQ3y-9iKja9mJXE;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    sget v0, Lcom/android/systemui/R$id;->ringer_mode_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    .line 230
    sget v0, Lcom/android/systemui/R$id;->ringer_mode_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    .line 231
    sget v0, Lcom/android/systemui/R$id;->ringer_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerContainer:Landroid/view/View;

    .line 232
    new-instance v2, Lcom/android/systemui/qs/-$$Lambda$p8TkVReSUo0LsQ3y-9iKja9mJXE;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/-$$Lambda$p8TkVReSUo0LsQ3y-9iKja9mJXE;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 241
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 242
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010030

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    .line 244
    invoke-static {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getColorIntensity(I)F

    move-result v1

    .line 245
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {v2, v1}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result v1

    .line 248
    sget v2, Lcom/android/systemui/R$id;->clock:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->applyDarkness(ILandroid/graphics/Rect;FI)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 255
    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    .line 256
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    sget v0, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DateView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    .line 260
    sget v0, Lcom/android/systemui/R$id;->batteryRemainingIcon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x1

    .line 262
    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setIgnoreTunerUpdates(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/systemui/BatteryMeterView;->setPercentShowMode(I)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/OpBatteryMeterView;->setViewPositionType(I)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setForceShowPercent(Z)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 277
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateThemeColor()V

    return-void
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 0

    .line 782
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 783
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 448
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRtlPropertiesChanged(I)V

    .line 449
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public onZenChanged(I)V
    .locals 0

    .line 788
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 0

    .line 828
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    return-void
.end method

.method public setContentMargins(II)V
    .locals 3

    .line 853
    iput p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContentMarginStart:I

    .line 854
    iput p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContentMarginEnd:I

    const/4 v0, 0x0

    .line 855
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 856
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 857
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-ne v1, v2, :cond_0

    .line 859
    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/qs/QSPanel;->setContentMargins(II)V

    goto :goto_1

    .line 861
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 862
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 863
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 864
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 867
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateClockPadding()V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 548
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 549
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    .line 550
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    .line 552
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateClockView()V

    .line 554
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateEverything()V

    return-void
.end method

.method public setExpandedScrollAmount(I)V
    .locals 4

    .line 874
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    int-to-float v3, p1

    invoke-static {v2, v0, v1, v2, v3}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    .line 877
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScrollY(I)V

    .line 880
    iget p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpandedHeaderAlpha:F

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_1

    .line 881
    iput v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpandedHeaderAlpha:F

    .line 882
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mKeyguardExpansionFraction:F

    invoke-static {v2, v1, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 884
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateHeaderTextContainerAlphaAnimator()V

    :cond_1
    return-void
.end method

.method public setExpansion(ZFF)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    .line 568
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v2, :cond_1

    .line 569
    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    if-eqz p1, :cond_2

    .line 575
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 577
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 580
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p1, :cond_3

    .line 581
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_3
    cmpg-float p1, p2, v0

    if-gez p1, :cond_4

    float-to-double p1, p2

    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    cmpl-double p1, p1, v2

    if-lez p1, :cond_4

    .line 593
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->switchTileLayout()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 594
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 597
    :cond_4
    iput v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mKeyguardExpansionFraction:F

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 734
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setListening(Z)V

    .line 738
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->switchTileLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 741
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mListening:Z

    if-eqz p1, :cond_2

    .line 744
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 745
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 746
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_0

    .line 748
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 749
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 750
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    :goto_0
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    .line 801
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 803
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    .line 805
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setupHost(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method public setupHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/qs/QuickQSPanel;->setQSPanelAndHeader(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    .line 812
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V

    .line 823
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public updateEverything()V
    .locals 1

    .line 797
    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$L6Vxn1_c_VF7GvfDmwuayht1Id4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$L6Vxn1_c_VF7GvfDmwuayht1Id4;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
