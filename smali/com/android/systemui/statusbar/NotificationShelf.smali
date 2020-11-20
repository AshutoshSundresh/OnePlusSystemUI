.class public Lcom/android/systemui/statusbar/NotificationShelf;
.super Lcom/oneplus/systemui/statusbar/OpNotificationShelf;
.source "NotificationShelf.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
    }
.end annotation


# static fields
.field private static final ICON_ANMATIONS_WHILE_SCROLLING:Z

.field private static final TAG_CONTINUOUS_CLIPPING:I

.field private static final USE_ANIMATIONS_WHEN_OPENING:Z


# instance fields
.field private mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field private mAnimationsEnabled:Z

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mClipRect:Landroid/graphics/Rect;

.field private mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mCutoutHeight:I

.field private mFirstElementRoundness:F

.field private mGapHeight:I

.field private mHiddenShelfIconSize:F

.field private mHideBackground:Z

.field private mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mIconAppearTopPadding:I

.field private mIconSize:I

.field private mMaxLayoutHeight:I

.field private mNoAnimationsInThisFrame:Z

.field private mNotGoneIndex:I

.field private mOpenedAmount:F

.field private mPaddingBetweenElements:I

.field private mRelativeOffset:I

.field private mScrollFastThreshold:I

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mShowNotificationShelf:Z

.field private mStatusBarHeight:I

.field private mTmp:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.icon_opening_animations"

    const/4 v1, 0x1

    .line 74
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    const-string v0, "debug.icon_scroll_animations"

    .line 76
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    .line 77
    sget v0, Lcom/android/systemui/R$id;->continuous_clipping_tag:I

    sput v0, Lcom/android/systemui/statusbar/NotificationShelf;->TAG_CONTINUOUS_CLIPPING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    .line 118
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    .line 127
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object p0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 69
    sget v0, Lcom/android/systemui/statusbar/NotificationShelf;->TAG_CONTINUOUS_CLIPPING:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconClipAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/NotificationShelf;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/NotificationShelf;F)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setOpenedAmount(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/NotificationShelf;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setHasItemsInStableShelf(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/NotificationShelf;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    return p0
.end method

.method private calculateIconTransformationStart(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F
    .locals 1

    .line 653
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    .line 655
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    return p0

    .line 657
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeTopPadding(Landroid/view/View;)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    .line 660
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method private clipTransientViews()V
    .locals 4

    const/4 v0, 0x0

    .line 436
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTransientViewCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getTransientView(I)Landroid/view/View;

    move-result-object v1

    .line 438
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v2, :cond_0

    .line 439
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 440
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FI)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getFullyClosedTranslation()F
    .locals 1

    .line 890
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    sub-int/2addr v0, p0

    neg-int p0, v0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    return p0
.end method

.method private getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .locals 0

    .line 886
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object p0

    return-object p0
.end method

.method private handleCustomTransformHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;ZLcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;)V
    .locals 2

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 666
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 667
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-nez p2, :cond_1

    .line 675
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getIntrinsicPadding()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 676
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    .line 677
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_1

    .line 678
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    .line 679
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    const/4 p1, 0x1

    .line 680
    iput-boolean p1, p3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    const/high16 v0, -0x80000000

    .line 681
    iput v0, p3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    .line 683
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, p2

    .line 684
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 688
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    .line 689
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    sub-float/2addr p0, p2

    float-to-int p0, p0

    iput p0, p3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    :cond_1
    return-void
.end method

.method private initDimens()V
    .locals 4

    .line 169
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 170
    sget v1, Lcom/android/systemui/R$dimen;->notification_icon_appear_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    .line 171
    sget v1, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    .line 172
    sget v1, Lcom/android/systemui/R$dimen;->status_bar_padding_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 173
    sget v1, Lcom/android/systemui/R$dimen;->notification_divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    .line 176
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_padding_start:I

    const/16 v3, 0x438

    invoke-static {v1, v2, v3}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 182
    sget v2, Lcom/android/systemui/R$dimen;->notification_shelf_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 183
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    sget v1, Lcom/android/systemui/R$dimen;->shelf_icon_container_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 186
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 187
    sget v1, Lcom/android/systemui/R$dimen;->scroll_fast_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    .line 188
    sget v1, Lcom/android/systemui/R$bool;->config_showNotificationShelf:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    const v1, 0x105024b

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconSize:I

    .line 190
    sget v1, Lcom/android/systemui/R$dimen;->hidden_shelf_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHiddenShelfIconSize:F

    .line 191
    sget v1, Lcom/android/systemui/R$dimen;->qs_notification_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mGapHeight:I

    .line 193
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 194
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private isTargetClipped(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 4

    .line 752
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 757
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    .line 758
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getContentTranslation()F

    move-result v3

    add-float/2addr v2, v3

    .line 759
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeTopPadding(Landroid/view/View;)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v2, p1

    .line 760
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v2, p1

    .line 762
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    cmpl-float p0, v2, p1

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private setFirstElementRoundness(F)V
    .locals 1

    .line 446
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mFirstElementRoundness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 447
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mFirstElementRoundness:F

    const/4 v0, 0x0

    .line 448
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setTopRoundness(FZ)Z

    :cond_0
    return-void
.end method

.method private setHasItemsInStableShelf(Z)V
    .locals 1

    .line 1002
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;->mHasItemsInStableShelf:Z

    if-eq v0, p1, :cond_0

    .line 1003
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;->mHasItemsInStableShelf:Z

    .line 1004
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    :cond_0
    return-void
.end method

.method private setHideBackground(Z)V
    .locals 1

    .line 903
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eq v0, p1, :cond_0

    .line 904
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 905
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    .line 906
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->updateOutline()V

    :cond_0
    return-void
.end method

.method private setIconTransformationAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FFZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 768
    instance-of v3, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v3, :cond_0

    return-void

    .line 771
    :cond_0
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 773
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v3

    .line 774
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v4

    .line 775
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 782
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeTopPadding(Landroid/view/View;)I

    move-result v8

    .line 783
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeStartPadding(Landroid/view/View;)I

    move-result v9

    .line 784
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    goto :goto_0

    .line 786
    :cond_1
    iget v8, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    move v5, v7

    const/4 v9, 0x0

    .line 790
    :goto_0
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result v10

    if-eqz v10, :cond_2

    iget v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHiddenShelfIconSize:F

    goto :goto_1

    :cond_2
    iget v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconSize:I

    int-to-float v10, v10

    .line 791
    :goto_1
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v11

    mul-float/2addr v10, v11

    .line 794
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v11

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getContentTranslation()F

    move-result v12

    add-float/2addr v11, v12

    .line 796
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isTransformingIntoShelf()Z

    move-result v12

    if-nez v12, :cond_3

    move v12, v13

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    if-eqz p4, :cond_4

    if-nez v12, :cond_4

    .line 801
    iget v14, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    int-to-float v14, v14

    add-float/2addr v14, v11

    .line 803
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v15

    sub-float/2addr v14, v15

    .line 802
    invoke-static {v14, v7}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 801
    invoke-static {v14, v7, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v14

    goto :goto_3

    :cond_4
    move v14, v7

    :goto_3
    int-to-float v8, v8

    add-float/2addr v11, v8

    .line 808
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v8

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v8, v15

    .line 809
    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v15, v10

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v8, v15

    sub-float/2addr v11, v8

    .line 810
    invoke-static {v11, v14, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v8

    .line 817
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v11

    int-to-float v11, v11

    .line 818
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v14, v15, v14

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v14, v6

    div-float v14, v14, v16

    add-float/2addr v11, v14

    int-to-float v6, v9

    sub-float/2addr v6, v11

    .line 819
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 821
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v9

    .line 819
    invoke-static {v6, v9, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    .line 826
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isShowingIcon()Z

    move-result v9

    xor-int/2addr v9, v13

    if-eqz v9, :cond_5

    div-float v5, v10, v16

    .line 831
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v6

    move v11, v2

    goto :goto_4

    :cond_5
    move v11, v15

    .line 834
    :goto_4
    invoke-static {v5, v10, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    if-eqz v4, :cond_f

    div-float/2addr v5, v10

    .line 837
    iput v5, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    .line 838
    iput v5, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_6

    .line 839
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v13

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 840
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDrawingAppearAnimation()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v13

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_8

    .line 842
    iput-boolean v13, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 843
    iput v7, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 845
    :cond_8
    iput v11, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 846
    iput v8, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 847
    iput v6, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    if-eqz v12, :cond_9

    .line 849
    iput v15, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 850
    iput v15, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 851
    iput v15, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    .line 852
    iput v15, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    const/4 v2, 0x0

    .line 853
    iput-boolean v2, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    .line 855
    :goto_7
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v5

    if-nez v5, :cond_b

    .line 856
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result v5

    if-nez v5, :cond_b

    .line 857
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v5

    if-nez v5, :cond_c

    if-eqz p5, :cond_a

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v5

    if-nez v5, :cond_b

    .line 858
    :cond_a
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v5

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_c

    .line 859
    :cond_b
    iput-boolean v13, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 861
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    move-result v5

    .line 862
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContrastedStaticDrawableColor(I)I

    move-result v3

    if-nez v9, :cond_e

    if-eqz v3, :cond_e

    .line 864
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getOriginalIconColor()I

    move-result v1

    .line 872
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isGlobalROM(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    if-nez v1, :cond_d

    move v6, v2

    goto :goto_8

    .line 876
    :cond_d
    iget v0, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    invoke-static {v1, v3, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v6

    goto :goto_8

    :cond_e
    move v6, v3

    .line 881
    :goto_8
    iput v6, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    :cond_f
    return-void
.end method

.method private setOpenedAmount(F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 955
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    .line 956
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    .line 957
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPanelFullWidth()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move p1, v0

    .line 961
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 962
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 963
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    sub-int v0, v1, v0

    .line 965
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 966
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 967
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    .line 968
    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 965
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    float-to-int v1, v1

    .line 969
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualLayoutWidth(I)V

    .line 970
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->hasOverflow()Z

    move-result v1

    .line 971
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    if-nez v1, :cond_4

    .line 975
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getNoOverflowExtraPadding()I

    move-result v1

    goto :goto_1

    .line 978
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPartialOverflowExtraPadding()I

    move-result v1

    :goto_1
    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 980
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 981
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    int-to-float v2, v2

    .line 980
    invoke-static {v1, v2, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    .line 983
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingEnd(F)V

    int-to-float v0, v0

    .line 984
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 985
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    .line 984
    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    .line 986
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingStart(F)V

    .line 987
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setOpenedAmount(F)V

    return-void
.end method

.method private updateContinuousClipping(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 5

    .line 470
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    .line 471
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 472
    :goto_0
    sget v4, Lcom/android/systemui/statusbar/NotificationShelf;->TAG_CONTINUOUS_CLIPPING:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 474
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 475
    new-instance v2, Lcom/android/systemui/statusbar/NotificationShelf$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/systemui/statusbar/NotificationShelf$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 491
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 492
    new-instance p1, Lcom/android/systemui/statusbar/NotificationShelf$2;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationShelf$2;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 507
    sget p0, Lcom/android/systemui/statusbar/NotificationShelf;->TAG_CONTINUOUS_CLIPPING:I

    invoke-virtual {v0, p0, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private updateIconClipAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 4

    .line 453
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    .line 454
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 458
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p1

    .line 459
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    .line 460
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result p0

    if-nez p0, :cond_1

    sub-float/2addr v0, v1

    float-to-int p0, v0

    .line 462
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v1, p0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 463
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 465
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private updateIconPositioning(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FFFZZZZ)V
    .locals 11

    move-object v0, p0

    .line 698
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    .line 699
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 703
    :cond_0
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 704
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v6, p2, v6

    if-gtz v6, :cond_3

    .line 705
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->isTargetClipped(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v5

    :goto_2
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_3

    :cond_4
    move v6, v8

    :goto_3
    cmpl-float v9, p2, v6

    if-nez v9, :cond_b

    if-nez p6, :cond_5

    if-eqz p7, :cond_6

    :cond_5
    if-nez v3, :cond_6

    move v9, v5

    goto :goto_4

    :cond_6
    move v9, v4

    .line 708
    :goto_4
    iput-boolean v9, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    if-nez v9, :cond_8

    .line 709
    sget-boolean v9, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v9, :cond_7

    cmpl-float v9, p2, v8

    if-nez v9, :cond_7

    if-eqz p5, :cond_7

    goto :goto_5

    :cond_7
    move v9, v4

    goto :goto_6

    :cond_8
    :goto_5
    move v9, v5

    :goto_6
    iput-boolean v9, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 712
    sget-boolean v9, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v9, :cond_9

    cmpl-float v9, p2, v8

    if-nez v9, :cond_9

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 713
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v9

    if-nez v9, :cond_9

    move v9, v5

    goto :goto_7

    :cond_9
    move v9, v4

    :goto_7
    iput-boolean v9, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    .line 714
    iget v9, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v10

    sub-float/2addr v9, v10

    .line 715
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    cmpl-float v9, v9, v8

    if-lez v9, :cond_a

    move v9, v5

    goto :goto_8

    :cond_a
    move v9, v4

    :goto_8
    iput-boolean v9, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    :cond_b
    if-nez v3, :cond_d

    if-nez p6, :cond_c

    if-eqz p7, :cond_d

    .line 717
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-eqz v3, :cond_d

    .line 718
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 719
    :cond_c
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    .line 720
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 721
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 723
    :cond_d
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 724
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 726
    :cond_e
    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-eqz v1, :cond_f

    .line 727
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    .line 730
    :cond_f
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v1

    if-nez v1, :cond_11

    .line 731
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_b

    :cond_10
    move v7, v8

    goto :goto_b

    :cond_11
    if-nez p8, :cond_14

    .line 732
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    if-eqz v1, :cond_14

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-nez v1, :cond_14

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    if-eqz v1, :cond_12

    goto :goto_a

    .line 739
    :cond_12
    iget v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_13

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    if-nez v1, :cond_13

    move v1, v5

    goto :goto_9

    :cond_13
    move v1, v4

    :goto_9
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    move v7, v6

    goto :goto_b

    :cond_14
    :goto_a
    move v7, p2

    .line 743
    :goto_b
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    if-eqz v1, :cond_16

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-eqz v1, :cond_15

    goto :goto_c

    :cond_15
    move v1, v7

    goto :goto_d

    :cond_16
    :goto_c
    move v1, p3

    .line 745
    :goto_d
    iput v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 746
    iput v6, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    cmpl-float v1, v6, v7

    if-eqz v1, :cond_17

    move v4, v5

    :cond_17
    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, p4

    move/from16 v5, p8

    .line 747
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationShelf;->setIconTransformationAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FFZZ)V

    return-void
.end method

.method private updateInteractiveness()V
    .locals 0

    .line 1030
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;->updateInteractivenessInternal()V

    return-void
.end method

.method private updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FI)I
    .locals 5

    .line 517
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 518
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 519
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 521
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_1

    .line 524
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result v2

    :goto_1
    cmpl-float p3, v0, p2

    if-lez p3, :cond_6

    if-nez v2, :cond_6

    .line 526
    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 527
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result p3

    if-nez p3, :cond_4

    if-nez v1, :cond_6

    :cond_4
    sub-float p2, v0, p2

    float-to-int p2, p2

    if-eqz v1, :cond_5

    .line 530
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 533
    :cond_5
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    goto :goto_2

    .line 535
    :cond_6
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    :goto_2
    if-eqz v2, :cond_7

    .line 538
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_7
    return v3
.end method

.method private updateRelativeOffset()V
    .locals 3

    .line 932
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 933
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 934
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 935
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    aget v1, v2, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    return-void
.end method

.method private updateShelfTransformation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FZZZZ)F
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v7, p5

    move/from16 v8, p6

    .line 559
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v3

    .line 560
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v3

    .line 563
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    .line 564
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v5

    iget v6, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    add-int/2addr v5, v6

    .line 565
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/NotificationShelf;->calculateIconTransformationStart(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F

    move-result v6

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v9, v10

    const/high16 v11, 0x3f800000    # 1.0f

    .line 568
    invoke-static {v11, v10, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v10

    mul-float/2addr v9, v10

    int-to-float v10, v5

    .line 569
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    add-float/2addr v10, v4

    sub-float/2addr v10, v6

    .line 573
    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    if-eqz v8, :cond_0

    .line 577
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v12

    sub-int/2addr v10, v12

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 578
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight()I

    move-result v10

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v12

    sub-int/2addr v10, v12

    int-to-float v10, v10

    .line 578
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    :cond_0
    int-to-float v10, v5

    add-float/2addr v10, v4

    .line 582
    invoke-direct {v0, v1, v7, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->handleCustomTransformHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;ZLcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;)V

    .line 587
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v12

    const/4 v13, 0x1

    cmpl-float v10, v10, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-ltz v10, :cond_6

    .line 589
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isUnlockHintRunning()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_1
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 590
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result v10

    if-nez v10, :cond_2

    .line 591
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    move-result v10

    if-nez v10, :cond_6

    :cond_2
    cmpg-float v10, v4, v12

    if-gez v10, :cond_5

    if-eqz v3, :cond_3

    .line 593
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 594
    iget v5, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    int-to-float v9, v5

    :cond_3
    sub-float v10, v12, v4

    int-to-float v5, v5

    div-float v5, v10, v5

    .line 599
    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 600
    sget-object v13, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-interface {v13, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v13

    .line 602
    invoke-static {v13, v5, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    sub-float v2, v11, v2

    if-eqz v8, :cond_4

    div-float/2addr v10, v9

    goto :goto_0

    :cond_4
    sub-float v5, v12, v6

    div-float v10, v5, v9

    .line 613
    :goto_0
    invoke-static {v10, v15, v11}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    sub-float v5, v11, v5

    move v13, v14

    goto :goto_1

    :cond_5
    move v2, v11

    move v5, v2

    :goto_1
    sub-float/2addr v12, v4

    div-float/2addr v12, v9

    .line 623
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float/2addr v11, v4

    move v4, v9

    move v9, v2

    move v2, v5

    goto :goto_2

    :cond_6
    move v4, v9

    move v2, v15

    move v9, v2

    move v11, v9

    :goto_2
    if-eqz v3, :cond_7

    if-eqz v13, :cond_7

    if-nez v7, :cond_7

    .line 630
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-eqz v5, :cond_7

    .line 631
    iput-boolean v14, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    const/high16 v5, -0x80000000

    .line 632
    iput v5, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    .line 636
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isAboveShelf()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result v5

    if-nez v5, :cond_9

    if-nez v8, :cond_8

    if-eqz v3, :cond_8

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    move v15, v11

    .line 640
    :cond_9
    :goto_3
    invoke-virtual {v1, v15, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setContentTransformationAmount(FZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v9

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 643
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconPositioning(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FFFZZZZ)V

    return v9
.end method


# virtual methods
.method public bind(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 165
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-void
.end method

.method public createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 2

    .line 215
    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/NotificationShelf$1;)V

    return-object v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object p0
.end method

.method public getNotGoneIndex()I
    .locals 0

    .line 998
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    return p0
.end method

.method public getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object p0
.end method

.method public hasNoContentHeight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isInteractive()Z
    .locals 0

    .line 1044
    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;->mInteractive:Z

    return p0
.end method

.method public needsClippingToShelf()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected needsOutline()Z
    .locals 1

    .line 912
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->needsOutline()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 940
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 947
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 948
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 949
    :cond_0
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCutoutHeight:I

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 152
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 153
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x3

    .line 154
    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 200
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 159
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 160
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 133
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onFinishInflate()V

    .line 134
    sget v0, Lcom/android/systemui/R$id;->content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipToActualHeight(Z)V

    .line 139
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 140
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIsStaticLayout(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 142
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setBottomRoundness(FZ)Z

    const/4 v0, 0x1

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFirstInSection(Z)V

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1066
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1067
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;->mInteractive:Z

    if-eqz v0, :cond_0

    .line 1068
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1069
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    .line 1072
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$string;->accessibility_overflow_action:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 1073
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 922
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onLayout(ZIIII)V

    .line 923
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    .line 926
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 927
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    neg-int p3, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p3, p4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 928
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1080
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 1023
    iput p1, p0, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;->mStatusBarState:I

    .line 1024
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    .line 1089
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundColors()V

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    .line 1052
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    if-nez p1, :cond_0

    .line 1055
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 0

    .line 1017
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 1018
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public setFakeShadowIntensity(FFII)V
    .locals 1

    .line 547
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;->mHasItemsInStableShelf:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 550
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFakeShadowIntensity(FFII)V

    return-void
.end method

.method public setMaxLayoutHeight(I)V
    .locals 0

    .line 991
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    return-void
.end method

.method public setMaxShelfEnd(F)V
    .locals 0

    return-void
.end method

.method protected shouldHideBackground()Z
    .locals 1

    .line 917
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

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

.method public updateAppearance()V
    .locals 31

    move-object/from16 v7, p0

    .line 266
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v0, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 271
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v8

    .line 273
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v9

    const/4 v10, -0x1

    .line 274
    iput v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 275
    iget v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v1, v8, v0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-ltz v1, :cond_1

    sub-float v0, v8, v0

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 279
    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v13, v0

    goto :goto_0

    :cond_1
    move v13, v12

    .line 285
    :goto_0
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$200(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v16, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    .line 291
    :goto_1
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getCurrentScrollVelocity()F

    move-result v0

    .line 292
    iget v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_4

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 293
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 294
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpandingVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/16 v17, 0x1

    :goto_3
    cmpl-float v0, v0, v12

    if-lez v0, :cond_5

    const/16 v18, 0x1

    goto :goto_4

    :cond_5
    const/16 v18, 0x0

    .line 296
    :goto_4
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 297
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPanelTracking()Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v19, 0x1

    goto :goto_5

    :cond_6
    const/16 v19, 0x0

    .line 298
    :goto_5
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result v6

    const/4 v0, 0x0

    move-object v5, v0

    move v2, v12

    move/from16 v20, v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x0

    .line 304
    :goto_6
    iget-object v15, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    const/16 v10, 0x8

    if-ge v4, v15, :cond_1d

    .line 305
    iget-object v15, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v15, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 307
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->needsClippingToShelf()Z

    move-result v22

    if-eqz v22, :cond_1c

    move/from16 v22, v2

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-ne v2, v10, :cond_7

    goto/16 :goto_15

    .line 312
    :cond_7
    invoke-static {v15}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getFinalTranslationZ(Landroid/view/View;)F

    move-result v2

    int-to-float v10, v6

    cmpl-float v2, v2, v10

    if-gtz v2, :cond_9

    .line 313
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_7

    :cond_8
    const/4 v10, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v10, 0x1

    :goto_8
    if-ne v15, v9, :cond_a

    const/16 v23, 0x1

    goto :goto_9

    :cond_a
    const/16 v23, 0x0

    .line 315
    :goto_9
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v24

    if-eqz v23, :cond_b

    .line 316
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    if-nez v10, :cond_d

    if-eqz v16, :cond_c

    goto :goto_a

    .line 319
    :cond_c
    iget v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float v2, v2

    sub-float v2, v8, v2

    goto :goto_b

    .line 317
    :cond_d
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v8

    .line 321
    :goto_b
    invoke-direct {v7, v15, v2, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FI)I

    move-result v2

    .line 322
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v25

    move-object/from16 v0, p0

    move v2, v1

    move-object v1, v15

    move-object/from16 v26, v9

    move v9, v2

    move v2, v13

    move/from16 v27, v13

    move v13, v3

    move/from16 v3, v18

    move/from16 v28, v4

    move/from16 v4, v17

    move/from16 v29, v13

    move-object v13, v5

    move/from16 v5, v19

    move/from16 v30, v6

    move/from16 v6, v23

    .line 325
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationShelf;->updateShelfTransformation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FZZZZ)F

    move-result v0

    .line 329
    instance-of v1, v15, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_18

    .line 330
    move-object v1, v15

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    add-float v20, v20, v0

    .line 332
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    move-result v2

    cmpl-float v3, v24, v8

    if-ltz v3, :cond_e

    .line 333
    iget v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    .line 334
    iput v9, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 335
    invoke-virtual {v7, v14}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setTintColor(I)V

    .line 336
    invoke-virtual {v7, v11, v12}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    goto :goto_c

    :cond_e
    const/4 v4, -0x1

    .line 338
    :cond_f
    iget v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    if-ne v3, v4, :cond_10

    move v12, v0

    goto :goto_d

    :cond_10
    :goto_c
    move v14, v11

    .line 343
    :goto_d
    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 344
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v3

    if-nez v3, :cond_12

    :cond_11
    const/4 v3, 0x1

    goto :goto_e

    :cond_12
    const/4 v3, 0x0

    :goto_e
    if-eqz v23, :cond_14

    if-eqz v3, :cond_14

    if-nez v21, :cond_13

    move v3, v2

    goto :goto_f

    :cond_13
    move/from16 v3, v21

    .line 349
    :goto_f
    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    move v0, v3

    const/4 v3, 0x0

    goto :goto_10

    :cond_14
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 352
    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    move v0, v2

    :goto_10
    if-nez v9, :cond_15

    if-nez v10, :cond_16

    .line 355
    :cond_15
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAboveShelf(Z)V

    :cond_16
    if-nez v9, :cond_17

    .line 358
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v3

    .line 359
    invoke-direct {v7, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 363
    iget v3, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_17

    .line 365
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 366
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentTopRoundness()F

    move-result v1

    goto :goto_11

    :cond_17
    move/from16 v1, v22

    move/from16 v3, v29

    :goto_11
    add-int/lit8 v4, v9, 0x1

    move/from16 v21, v0

    move v11, v14

    move v14, v2

    move v2, v1

    move v1, v4

    goto :goto_12

    :cond_18
    move v1, v9

    move/from16 v2, v22

    move/from16 v3, v29

    .line 374
    :goto_12
    instance-of v0, v15, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    if-eqz v0, :cond_1b

    .line 375
    move-object v0, v15

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 377
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isFirstInSection()Z

    move-result v4

    if-eqz v4, :cond_1a

    if-eqz v13, :cond_1a

    .line 378
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isLastInSection()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 381
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    sub-float/2addr v4, v5

    .line 382
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    .line 383
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v6

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    cmpl-float v9, v5, v6

    if-lez v9, :cond_19

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 390
    iget v9, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mGapHeight:I

    int-to-float v9, v9

    div-float/2addr v5, v9

    float-to-double v9, v5

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v5, 0x0

    .line 392
    invoke-virtual {v13, v2, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setBottomRoundness(FZ)Z

    float-to-int v3, v4

    goto :goto_13

    :cond_19
    const/4 v5, 0x0

    goto :goto_13

    :cond_1a
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_13
    move-object v13, v0

    goto :goto_14

    :cond_1b
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_14
    move/from16 v0, v25

    goto :goto_16

    :cond_1c
    move/from16 v22, v2

    :goto_15
    move/from16 v29, v3

    move/from16 v28, v4

    move/from16 v30, v6

    move-object/from16 v26, v9

    move/from16 v27, v13

    const/4 v6, 0x0

    move v9, v1

    move-object v13, v5

    const/4 v5, 0x0

    move v1, v9

    move/from16 v2, v22

    move/from16 v3, v29

    :goto_16
    add-int/lit8 v4, v28, 0x1

    move-object v5, v13

    move-object/from16 v9, v26

    move/from16 v13, v27

    move/from16 v6, v30

    const/4 v10, -0x1

    goto/16 :goto_6

    :cond_1d
    move v9, v1

    move/from16 v22, v2

    move/from16 v29, v3

    const/4 v5, 0x0

    .line 400
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->clipTransientViews()V

    .line 402
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setClipTopAmount(I)V

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-nez v1, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    if-lt v0, v1, :cond_1e

    goto :goto_17

    :cond_1e
    move v3, v5

    goto :goto_18

    :cond_1f
    :goto_17
    const/4 v3, 0x1

    .line 404
    :goto_18
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-eqz v0, :cond_21

    if-eqz v3, :cond_20

    const/4 v3, 0x4

    goto :goto_19

    :cond_20
    move v3, v5

    .line 405
    :goto_19
    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_21
    move/from16 v15, v29

    .line 407
    invoke-virtual {v7, v15}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setBackgroundTop(I)V

    move/from16 v2, v22

    .line 408
    invoke-direct {v7, v2}, Lcom/android/systemui/statusbar/NotificationShelf;->setFirstElementRoundness(F)V

    .line 409
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setSpeedBumpIndex(I)V

    .line 410
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    .line 411
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    move v3, v5

    .line 412
    :goto_1a
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_24

    .line 413
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 414
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_23

    .line 415
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v10, :cond_22

    goto :goto_1b

    .line 418
    :cond_22
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 419
    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconClipAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 420
    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateContinuousClipping(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_23
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_24
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v20, v0

    if-gez v0, :cond_25

    const/4 v3, 0x1

    goto :goto_1c

    :cond_25
    move v3, v5

    :goto_1c
    if-nez v3, :cond_27

    if-eqz v16, :cond_26

    goto :goto_1d

    :cond_26
    move v14, v5

    goto :goto_1e

    :cond_27
    :goto_1d
    const/4 v14, 0x1

    .line 423
    :goto_1e
    invoke-direct {v7, v14}, Lcom/android/systemui/statusbar/NotificationShelf;->setHideBackground(Z)V

    .line 424
    iget v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    .line 425
    iput v9, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    :cond_28
    return-void
.end method

.method public updateState(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 7

    .line 220
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .line 222
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 223
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v5

    add-float/2addr v2, v5

    .line 224
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v5

    add-float/2addr v2, v5

    .line 225
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    .line 226
    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v6, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 227
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v6

    iput v6, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 230
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v6, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 231
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v6

    .line 230
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 232
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 237
    iget p1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v5

    sub-float/2addr p1, v5

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCutoutHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr p1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    .line 239
    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 240
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$102(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    .line 241
    iput v4, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 242
    iput v5, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 243
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getSpeedBumpIndex()I

    move-result p1

    if-nez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    iput-boolean p1, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 244
    iput-boolean v4, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 245
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p1

    iput p1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 246
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v5, -0x1

    if-eq p1, v5, :cond_1

    .line 247
    iget v5, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 249
    :cond_1
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$202(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    .line 250
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 251
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isQsCustomizerShowing()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :cond_3
    :goto_1
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 252
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$302(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    goto :goto_2

    .line 254
    :cond_4
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    const/16 p0, 0x40

    .line 255
    iput p0, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 256
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$202(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    :goto_2
    return-void
.end method
