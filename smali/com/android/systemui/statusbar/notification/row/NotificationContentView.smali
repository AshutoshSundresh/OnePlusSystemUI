.class public Lcom/android/systemui/statusbar/notification/row/NotificationContentView;
.super Landroid/widget/FrameLayout;
.source "NotificationContentView.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAnimate:Z

.field private mAnimationStartVisibleType:I

.field private mBeforeN:Z

.field private mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mClipBottomAmount:I

.field private final mClipBounds:Landroid/graphics/Rect;

.field private mClipToActualHeight:Z

.field private mClipTopAmount:I

.field private mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mContentHeight:I

.field private mContentHeightAtAnimationStart:I

.field private mContractedChild:Landroid/view/View;

.field private mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field private mCurrentSmartRepliesAndActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

.field private final mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpandable:Z

.field private mExpandedChild:Landroid/view/View;

.field private mExpandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

.field private mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field private mExpandedVisibleListener:Ljava/lang/Runnable;

.field private mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field private mFirstSeen:Z

.field private mFocusOnVisibilityChange:Z

.field private mForceSelectNextLayout:Z

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpChild:Landroid/view/View;

.field private mHeadsUpHeight:I

.field private mHeadsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

.field private mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mHeadsUpSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field private mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field private mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

.field private mIsChildInGroup:Z

.field private mIsContentExpandable:Z

.field private mIsHeadsUp:Z

.field private mIsQuickReply:Z

.field private mLegacy:Z

.field private final mLock:Ljava/lang/Object;

.field private mMediaTransferManager:Lcom/android/systemui/statusbar/MediaTransferManager;

.field private mMinContractedHeight:I

.field private mNotificationContentMarginEnd:I

.field private mNotificationMaxHeight:I

.field private final mOnContentViewInactiveListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPeopleIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

.field private mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

.field private mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

.field private mQuickReplyChild:Landroid/view/View;

.field private mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field private mQuickReplyHeadsUpChild:Landroid/view/View;

.field private mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field private mQuickReplyHeight:I

.field private mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

.field private mRemoteInputVisible:Z

.field private mShelfIconVisible:Z

.field private mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

.field private mSingleLineWidthIndention:I

.field private mSmallHeight:I

.field private mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

.field private mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

.field private mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

.field private mTransformationStartVisibleType:I

.field private mUnrestrictedContentHeight:I

.field private mUserExpanding:Z

.field private mVisibleType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NotificationContentView"

    const/4 v1, 0x3

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 123
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 139
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    .line 141
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 p2, 0x1

    .line 161
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipToActualHeight:Z

    .line 166
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    .line 169
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mForceSelectNextLayout:Z

    .line 175
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeightAtAnimationStart:I

    const/4 p1, 0x0

    .line 195
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsQuickReply:Z

    .line 197
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mFirstSeen:Z

    .line 201
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mLock:Ljava/lang/Object;

    .line 207
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    .line 208
    new-instance p1, Lcom/android/systemui/statusbar/MediaTransferManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/MediaTransferManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMediaTransferManager:Lcom/android/systemui/statusbar/MediaTransferManager;

    .line 209
    const-class p1, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 210
    const-class p1, Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/SmartReplyController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->initView()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)I
    .locals 0

    .line 81
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;I)Lcom/android/systemui/statusbar/TransformableView;
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;I)I
    .locals 0

    .line 81
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    return p1
.end method

.method private animateToVisibleType(I)V
    .locals 3

    .line 1110
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    .line 1111
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1116
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    iput v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    .line 1117
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1118
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1119
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$2;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView$2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Lcom/android/systemui/statusbar/TransformableView;)V

    invoke-interface {v1, v0, p1}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    .line 1128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 1113
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    return-void
.end method

.method private applyBubbleAction(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 6

    if-eqz p1, :cond_7

    .line 1559
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPeopleIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const v0, 0x1020200

    .line 1562
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x10201b2

    .line 1563
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x10201b3

    .line 1565
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-nez p1, :cond_1

    goto/16 :goto_4

    .line 1569
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPeopleIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    .line 1570
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;->getPeopleNotificationType(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v5

    .line 1572
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isBubblesEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 1574
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    if-eqz v4, :cond_6

    .line 1576
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1577
    sget v3, Lcom/android/systemui/R$drawable;->ic_stop_bubble:I

    goto :goto_2

    .line 1578
    :cond_4
    sget v3, Lcom/android/systemui/R$drawable;->ic_create_bubble:I

    .line 1576
    :goto_2
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1579
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateNotificationColor()V

    .line 1580
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationColor()I

    move-result v3

    .line 1581
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1583
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1584
    sget p2, Lcom/android/systemui/R$string;->notification_conversation_unbubble:I

    goto :goto_3

    .line 1585
    :cond_5
    sget p2, Lcom/android/systemui/R$string;->notification_conversation_bubble:I

    .line 1583
    :goto_3
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1587
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1588
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1589
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getBubbleClickListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1590
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1591
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1593
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x105003d

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 1595
    invoke-virtual {p1, v5, v5, p0, v5}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    goto :goto_4

    :cond_6
    const/16 p2, 0x8

    .line 1597
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1599
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x105003c

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 1601
    invoke-virtual {p1, v5, v5, p0, v5}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    :cond_7
    :goto_4
    return-void
.end method

.method private applyMediaTransfer(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 1395
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isMediaNotification()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1400
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1401
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMediaTransferManager:Lcom/android/systemui/statusbar/MediaTransferManager;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/statusbar/MediaTransferManager;->applyMediaTransferView(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 1405
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1406
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1407
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMediaTransferManager:Lcom/android/systemui/statusbar/MediaTransferManager;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/MediaTransferManager;->applyMediaTransferView(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_2
    return-void
.end method

.method private applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 2

    const v0, 0x10201b2

    .line 1479
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1481
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_8

    .line 1482
    sget-object v1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    .line 1483
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz p1, :cond_0

    .line 1486
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    :cond_0
    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    .line 1490
    check-cast v0, Landroid/widget/FrameLayout;

    if-nez p5, :cond_1

    .line 1492
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-static {p1, v0, p2, p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/RemoteInputController;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object p5

    const/4 p1, 0x4

    .line 1495
    invoke-virtual {p5, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1496
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p5, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1502
    :cond_1
    invoke-virtual {v0, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1503
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 1504
    invoke-virtual {p5}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto :goto_0

    :cond_2
    move-object p5, p1

    :goto_0
    if-eqz p3, :cond_7

    .line 1509
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->color:I

    if-nez p1, :cond_3

    .line 1511
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/systemui/R$color;->default_remote_input_background:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 1513
    :cond_3
    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$color;->remote_input_text_enabled:I

    .line 1514
    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->remote_input_hint:I

    .line 1515
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 1513
    invoke-static {p1, p3, v0}, Lcom/android/internal/util/ContrastColorUtil;->ensureTextBackgroundColor(III)I

    move-result p1

    invoke-virtual {p5, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1517
    invoke-virtual {p5, p6}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setWrapper(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)V

    .line 1518
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$GC_EXjlJWjwU2u0y95DlTq2QVf0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$GC_EXjlJWjwU2u0y95DlTq2QVf0;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    invoke-virtual {p5, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V

    if-nez p4, :cond_4

    .line 1520
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1523
    :cond_4
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz p4, :cond_5

    .line 1525
    invoke-virtual {p5, p4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 1527
    :cond_5
    invoke-virtual {p5, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->updatePendingIntentFromActions([Landroid/app/Notification$Action;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1528
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result p0

    if-nez p0, :cond_7

    .line 1529
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focus()V

    goto :goto_1

    .line 1532
    :cond_6
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1533
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    :cond_7
    :goto_1
    return-object p5

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method private applyRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 8

    .line 1445
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 1447
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    goto :goto_0

    .line 1451
    :cond_0
    iput-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1453
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eq v0, v1, :cond_1

    .line 1456
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 1458
    :cond_1
    iput-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1460
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1462
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    goto :goto_1

    .line 1466
    :cond_2
    iput-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1468
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eq v0, v1, :cond_3

    .line 1471
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 1473
    :cond_3
    iput-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-void
.end method

.method private applyRemoteInputAndSmartReply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 5

    .line 1413
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    if-nez v0, :cond_0

    return-void

    .line 1417
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->hasFreeformRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 1419
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    const-string v1, "NotificationContentView"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    if-nez v0, :cond_2

    .line 1420
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "Both expanded, and heads-up InflatedSmartReplies are null, don\'t add smart replies."

    .line 1421
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 1430
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    if-eqz v0, :cond_3

    .line 1431
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->getSmartRepliesAndActions()Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    move-result-object v0

    goto :goto_0

    .line 1432
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->getSmartRepliesAndActions()Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartRepliesAndActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    .line 1433
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->DEBUG:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1435
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    .line 1436
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartRepliesAndActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    if-nez v4, :cond_4

    move v4, v3

    goto :goto_1

    .line 1437
    :cond_4
    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 1436
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x2

    .line 1438
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartRepliesAndActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    if-nez v4, :cond_5

    goto :goto_2

    .line 1439
    :cond_5
    iget-object v3, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1438
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "Adding suggestions for %s, %d actions, and %d replies."

    .line 1434
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartRepliesAndActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applySmartReplyView(Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private applySmartReplyView(Landroid/view/View;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;)Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .locals 2

    const p0, 0x1020487

    .line 1641
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 1643
    instance-of p1, p0, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1647
    :cond_0
    check-cast p0, Landroid/widget/LinearLayout;

    .line 1648
    invoke-static {p3, p2}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->shouldShowSmartReplyView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x8

    .line 1649
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-object v0

    .line 1654
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_2

    .line 1655
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz p1, :cond_2

    .line 1658
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1660
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_3

    if-eqz p4, :cond_3

    .line 1662
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->getSmartReplyView()Lcom/android/systemui/statusbar/policy/SmartReplyView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1663
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->getSmartReplyView()Lcom/android/systemui/statusbar/policy/SmartReplyView;

    move-result-object v0

    .line 1664
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 1667
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->resetSmartSuggestions(Landroid/view/View;)V

    .line 1669
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;->getSmartSuggestionButtons()Ljava/util/List;

    move-result-object p1

    .line 1668
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->addPreInflatedButtons(Ljava/util/List;)V

    .line 1671
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getCurrentBackgroundTint()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(I)V

    .line 1672
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    return-object v0
.end method

.method private applySmartReplyView(Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 8

    .line 1608
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1609
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applySmartReplyView(Landroid/view/View;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;)Lcom/android/systemui/statusbar/policy/SmartReplyView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v0, :cond_5

    .line 1612
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    if-eqz v0, :cond_5

    .line 1614
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v4, v1

    goto :goto_0

    .line 1615
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    .line 1616
    :goto_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    if-nez v0, :cond_2

    move v5, v1

    goto :goto_1

    .line 1617
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v5, v0

    .line 1618
    :goto_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    if-nez v0, :cond_3

    .line 1619
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->fromAssistant:Z

    goto :goto_2

    .line 1620
    :cond_3
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->fromAssistant:Z

    :goto_2
    move v6, v0

    .line 1621
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    .line 1624
    invoke-virtual {v0}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v0

    .line 1622
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getEffectiveEditChoicesBeforeSending(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    move v7, v1

    .line 1626
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/SmartReplyController;->smartSuggestionsAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;IIZZ)V

    .line 1631
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getShowInHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1632
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applySmartReplyView(Landroid/view/View;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;)Lcom/android/systemui/statusbar/policy/SmartReplyView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    :cond_6
    return-void
.end method

.method private calculateTransformationAmount()F
    .locals 5

    .line 818
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v0

    .line 819
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v1

    .line 820
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, v1, v0

    .line 821
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_0

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the total transformation distance is 0\n StartType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n VisibleType: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n mContentHeight: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NotificationContentView"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    int-to-float p0, v2

    int-to-float v0, v3

    div-float/2addr p0, v0

    .line 830
    invoke-static {v4, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private fireExpandedVisibleListenerIfVisible()V
    .locals 2

    .line 1020
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 1021
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 1023
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 1024
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private focusExpandButtonIfNecessary()V
    .locals 1

    .line 634
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mFocusOnVisibilityChange:Z

    if-eqz v0, :cond_1

    .line 635
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExpandButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_0
    const/4 v0, 0x0

    .line 642
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mFocusOnVisibilityChange:Z

    :cond_1
    return-void
.end method

.method private forceUpdateVisibilities()V
    .locals 3

    .line 1001
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1003
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1004
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1007
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v2, 0x6

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1009
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v2, 0x7

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1013
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    const/4 v0, -0x1

    .line 1016
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    return-void
.end method

.method private forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 1032
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_2

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v1

    :goto_1
    if-nez p0, :cond_3

    const/4 p0, 0x4

    .line 1035
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1037
    :cond_3
    invoke-interface {p3, v1}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    :goto_2
    return-void
.end method

.method private getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 356
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isSending()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 357
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10501c1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getMinContentHeightHint()I
    .locals 6

    .line 682
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    const v1, 0x10501b8

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 690
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isTransitioningFromTo(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 691
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isTransitioningFromTo(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v4

    .line 692
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 694
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_2
    if-nez v0, :cond_5

    if-eqz v5, :cond_6

    .line 696
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v0

    .line 697
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result p0

    .line 696
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 702
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-ne v0, v4, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeightAtAnimationStart:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v5, :cond_7

    .line 704
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 711
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 712
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v0

    goto :goto_3

    .line 713
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 714
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v0

    goto :goto_3

    .line 717
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 718
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v0

    goto :goto_3

    .line 719
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 720
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v0

    goto :goto_3

    .line 721
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 722
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 723
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3

    .line 726
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    move-result v0

    .line 729
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_d

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 730
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_d
    return v0
.end method

.method private getRemoteInputForView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 1

    .line 2084
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2085
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object p0

    .line 2086
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 2087
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 1165
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 1161
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 1159
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 1155
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    return-object p0

    .line 1153
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 1151
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0
.end method

.method private getViewForVisibleType(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 1190
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object p0

    .line 1186
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    return-object p0

    .line 1184
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    return-object p0

    .line 1180
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    return-object p0

    .line 1178
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object p0

    .line 1176
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object p0
.end method

.method private getViewHeight(I)I
    .locals 1

    const/4 v0, 0x0

    .line 857
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result p0

    return p0
.end method

.method private getViewHeight(IZ)I
    .locals 4

    .line 861
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_0

    .line 870
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    .line 871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to get view from visible type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", apply intrinsic height instead"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "NotificationContentView"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 875
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 877
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getHeaderTranslation(Z)I

    move-result p0

    add-int/2addr p1, p0

    :cond_1
    return p1
.end method

.method private getVisualTypeForHeight(F)I
    .locals 4

    .line 1253
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 1254
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-nez v3, :cond_1

    return v2

    .line 1257
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUserExpanding:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isGroupExpanded()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 p0, 0x3

    return p0

    .line 1262
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsQuickReply:Z

    if-eqz v3, :cond_4

    .line 1263
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-eqz v3, :cond_3

    const/4 p0, 0x7

    return p0

    .line 1265
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-eqz v3, :cond_4

    const/4 p0, 0x6

    return p0

    .line 1271
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v3, :cond_8

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1272
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v1, 0x2

    .line 1273
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-lez p0, :cond_7

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    return v2

    :cond_7
    :goto_1
    return v1

    :cond_8
    if-nez v0, :cond_b

    .line 1279
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v3, :cond_9

    .line 1280
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_9

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz p1, :cond_b

    .line 1281
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isGroupExpanded()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1282
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_2

    :cond_9
    if-nez v0, :cond_a

    return v2

    :cond_a
    const/4 p0, -0x1

    return p0

    :cond_b
    :goto_2
    return v1
.end method

.method private getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 463
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 466
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 469
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 475
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 477
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 478
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private isBubblesEnabled()Z
    .locals 2

    .line 1554
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "notification_bubbles"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isContentViewInactive(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1994
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1995
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object p0

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private isGroupExpanded()Z
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method private isTransitioningFromTo(II)Z
    .locals 1

    .line 736
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    if-ne v0, p1, :cond_1

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-ne p0, p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isVisibleOrTransitioning(I)Z
    .locals 1

    .line 741
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq v0, p1, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    if-ne p0, p1, :cond_0

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

.method private selectLayout(ZZ)V
    .locals 7

    .line 946
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 949
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUserExpanding:Z

    if-eqz v0, :cond_1

    .line 950
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateContentTransformation()V

    goto/16 :goto_2

    .line 952
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->calculateVisibleType()I

    move-result v0

    .line 953
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-nez v1, :cond_3

    if-eqz p2, :cond_11

    .line 955
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object p2

    const/4 v4, 0x6

    const/4 v5, 0x7

    if-eqz p2, :cond_7

    .line 957
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 958
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->transferRemoteInputFocus(I)V

    .line 961
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mFirstSeen:Z

    if-eqz p2, :cond_7

    if-eq v0, v5, :cond_4

    if-ne v0, v4, :cond_7

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 963
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 964
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    const-string p2, "NotificationContentView"

    const-string v6, "Notification is displayed as Quick Reply style"

    .line 965
    invoke-static {p2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mFirstSeen:Z

    :cond_7
    if-eqz p1, :cond_e

    if-ne v0, v2, :cond_8

    .line 972
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez p2, :cond_d

    :cond_8
    const/4 p2, 0x2

    if-ne v0, p2, :cond_9

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-nez p2, :cond_d

    :cond_9
    const/4 p2, 0x3

    if-ne v0, p2, :cond_a

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-nez p2, :cond_d

    :cond_a
    if-ne v0, v4, :cond_b

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-nez p2, :cond_d

    :cond_b
    if-ne v0, v5, :cond_c

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-nez p2, :cond_d

    :cond_c
    if-nez v0, :cond_e

    .line 982
    :cond_d
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->animateToVisibleType(I)V

    goto :goto_1

    .line 984
    :cond_e
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibilities(I)V

    .line 986
    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-eqz v1, :cond_f

    .line 988
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->focusExpandButtonIfNecessary()V

    .line 990
    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 992
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 993
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinContentHeightHint()I

    move-result v1

    .line 992
    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setContentHeight(II)V

    .line 995
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    :cond_11
    :goto_2
    return-void
.end method

.method private setVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 623
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 626
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 628
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 p1, 0x0

    .line 629
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimate:Z

    :goto_0
    return-void
.end method

.method private shouldClipToRounding(IZZ)Z
    .locals 0

    .line 2039
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2043
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->shouldClipToRounding(ZZ)Z

    move-result p0

    return p0
.end method

.method private shouldContractedBeFixedSize()Z
    .locals 1

    .line 398
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mBeforeN:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    instance-of p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private transferRemoteInputFocus(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 1134
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1137
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz p1, :cond_1

    .line 1139
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1140
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    :cond_1
    return-void
.end method

.method private updateAllSingleLineViews()V
    .locals 0

    .line 1376
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateSingleLineView()V

    return-void
.end method

.method private updateBackgroundTransformation(F)V
    .locals 2

    .line 801
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getBackgroundColor(I)I

    move-result v0

    .line 802
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getBackgroundColor(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    if-nez v1, :cond_0

    .line 805
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    move-result v1

    :cond_0
    if-nez v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    move-result v0

    .line 810
    :cond_1
    invoke-static {v1, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 813
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundAlpha(F)V

    .line 814
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    return-void
.end method

.method private updateClipping()V
    .locals 5

    .line 929
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipToActualHeight:Z

    if-eqz v0, :cond_0

    .line 930
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipTopAmount:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 931
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 932
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 933
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 934
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 936
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private updateContentTransformation()V
    .locals 6

    .line 746
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->calculateVisibleType()I

    move-result v0

    .line 747
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 750
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 751
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibilities(I)V

    .line 752
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    return-void

    .line 755
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-eq v0, v1, :cond_3

    .line 757
    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 758
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    .line 759
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v3

    if-eqz v1, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 768
    invoke-interface {v1, v3, v4}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 769
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 770
    invoke-interface {v3, v1, v4}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 771
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    const/4 v1, 0x1

    .line 772
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 774
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mForceSelectNextLayout:Z

    if-eqz v1, :cond_4

    .line 775
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->forceUpdateVisibilities()V

    .line 777
    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-eq v3, v1, :cond_7

    .line 779
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 780
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    .line 781
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    if-eqz v0, :cond_6

    if-nez v1, :cond_5

    goto :goto_2

    .line 790
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->calculateTransformationAmount()F

    move-result v2

    .line 791
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 792
    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 793
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundTransformation(F)V

    goto :goto_3

    :cond_6
    :goto_2
    return-void

    .line 795
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibilities(I)V

    .line 796
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    :goto_3
    return-void
.end method

.method private updateContractedHeaderWidth()Z
    .locals 6

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 368
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 369
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 370
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object p0

    .line 372
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getHeaderTextMarginEnd()I

    move-result p0

    .line 373
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getHeaderTextMarginEnd()I

    move-result v2

    if-eq p0, v2, :cond_3

    .line 374
    invoke-virtual {v0, p0}, Landroid/view/NotificationHeaderView;->setHeaderTextMarginEnd(I)V

    return v3

    .line 378
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationContentMarginEnd:I

    .line 379
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v2

    if-eq v2, p0, :cond_3

    .line 381
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, p0

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v2

    .line 384
    :goto_0
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v4

    .line 385
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 386
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result p0

    .line 388
    :cond_2
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v5

    .line 380
    invoke-virtual {v0, v2, v4, p0, v5}, Landroid/view/NotificationHeaderView;->setPadding(IIII)V

    .line 389
    invoke-virtual {v0, v1}, Landroid/view/NotificationHeaderView;->setShowWorkBadgeAtEnd(Z)V

    return v3

    :cond_3
    return v1
.end method

.method private updateIconVisibilities()V
    .locals 2

    .line 1911
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_0

    .line 1912
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mShelfIconVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setShelfIconVisible(Z)V

    .line 1914
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_1

    .line 1915
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mShelfIconVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setShelfIconVisible(Z)V

    .line 1917
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_2

    .line 1918
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mShelfIconVisible:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setShelfIconVisible(Z)V

    :cond_2
    return-void
.end method

.method private updateLegacy()V
    .locals 2

    .line 1316
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setLegacy(Z)V

    .line 1319
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1320
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setLegacy(Z)V

    .line 1322
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1323
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setLegacy(Z)V

    .line 1327
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1328
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setLegacy(Z)V

    .line 1330
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1331
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setLegacy(Z)V

    :cond_4
    return-void
.end method

.method private updateSingleLineView()V
    .locals 5

    .line 1380
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_1

    .line 1381
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1382
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->bindFromNotification(Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;Landroid/view/View;Landroid/service/notification/StatusBarNotification;Landroid/view/ViewGroup;)Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v0, :cond_2

    .line 1385
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    goto :goto_1

    .line 1388
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v0, :cond_2

    .line 1389
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1390
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    :cond_2
    :goto_1
    return-void
.end method

.method private updateViewVisibilities(I)V
    .locals 3

    .line 1080
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1082
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1084
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v2, 0x2

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1086
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1090
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v2, 0x6

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1092
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v2, 0x7

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1096
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    const/4 p1, -0x1

    .line 1099
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    return-void
.end method

.method private updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 0

    if-eqz p3, :cond_1

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1105
    :goto_0
    invoke-interface {p4, p0}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method private updateVisibility()V
    .locals 1

    .line 610
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public calculateVisibleType()I
    .locals 2

    .line 1227
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUserExpanding:Z

    if-eqz v0, :cond_5

    .line 1229
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_1

    .line 1228
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isGroupExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x1

    .line 1229
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    move-result v0

    goto :goto_1

    .line 1230
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxContentHeight()I

    move-result v0

    :goto_1
    if-nez v0, :cond_2

    .line 1233
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    :cond_2
    int-to-float v0, v0

    .line 1235
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v0

    .line 1236
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isGroupExpanded()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    goto :goto_2

    .line 1238
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v1

    .line 1239
    :goto_2
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne p0, v1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    return v0

    .line 1243
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    .line 1244
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    if-eqz v0, :cond_6

    .line 1247
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_6
    int-to-float v0, v1

    .line 1249
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result p0

    return p0
.end method

.method public closeRemoteInput()V
    .locals 1

    .line 1715
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 1716
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    .line 1718
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz p0, :cond_1

    .line 1719
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    :cond_1
    return-void
.end method

.method public disallowSingleClick(FF)Z
    .locals 1

    .line 2021
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2023
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->disallowSingleClick(FF)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 2058
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 2061
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getRemoteInputForView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2062
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2063
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2064
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    int-to-float v3, v2

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    const/4 p0, 0x0

    neg-int v0, v2

    int-to-float v0, v0

    .line 2065
    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2066
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 2069
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, "    "

    .line 2144
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "contentView visibility: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ", alpha: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", clipBounds: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", contentHeight: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", visibleType: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2150
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object p0

    const-string p1, ", visibleView "

    .line 2151
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 2153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " visibility: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "null"

    .line 2157
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2159
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getActiveRemoteInputText()Ljava/lang/CharSequence;
    .locals 1

    .line 2047
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2048
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2050
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2051
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllViews()[Landroid/view/View;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    .line 1195
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    return-object v0
.end method

.method public getBackgroundColor(I)I
    .locals 0

    .line 1071
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1074
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBackgroundColorForExpansionState()I
    .locals 1

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1064
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1066
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleType()I

    move-result v0

    goto :goto_1

    .line 1065
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->calculateVisibleType()I

    move-result v0

    .line 1067
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getBackgroundColor(I)I

    move-result p0

    return p0
.end method

.method public getContractedChild()Landroid/view/View;
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object p0
.end method

.method public getCurrentSmartRepliesAndActions()Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;
    .locals 0

    .line 1711
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartRepliesAndActions:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    return-object p0
.end method

.method public getExpandHeight()I
    .locals 2

    .line 2094
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2096
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2101
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    .line 2099
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    move-result p0

    return p0
.end method

.method public getExpandedChild()Landroid/view/View;
    .locals 0

    .line 429
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object p0
.end method

.method public getExpandedRemoteInput()Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 0

    .line 2163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object p0
.end method

.method public getHeadsUpChild()Landroid/view/View;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object p0
.end method

.method public getHeadsUpHeight(Z)I
    .locals 1

    .line 2106
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 2108
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2115
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(IZ)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 2116
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 2117
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result p0

    add-int/2addr p1, p0

    return p1

    .line 2111
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    move-result p0

    return p0
.end method

.method public getMaxHeight()I
    .locals 2

    .line 838
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 839
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 840
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0

    .line 843
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsQuickReply:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 844
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result p0

    return p0

    .line 847
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 848
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 849
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result p0

    goto :goto_0

    .line 850
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 851
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result p0

    return p0

    .line 853
    :cond_3
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationMaxHeight:I

    return p0
.end method

.method public getMinHeight()I
    .locals 1

    const/4 v0, 0x0

    .line 883
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight(Z)I

    move-result p0

    return p0
.end method

.method public getMinHeight(Z)I
    .locals 1

    .line 891
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsQuickReply:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x6

    .line 892
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result p0

    return p0

    .line 895
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 896
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result p0

    return p0

    :cond_2
    if-nez p1, :cond_4

    .line 899
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isGroupExpanded()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 903
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0

    .line 900
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 901
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result p0

    goto :goto_1

    :cond_5
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMinContractedHeight:I

    :goto_1
    return p0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 2

    .line 1774
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1777
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1778
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 1780
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1781
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getOriginalIconColor()I
    .locals 1

    .line 2178
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2180
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getOriginalIconColor()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getQuickReplyContractedChild()Landroid/view/View;
    .locals 0

    .line 2229
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    return-object p0
.end method

.method public getQuickReplyHeadsUpChild()Landroid/view/View;
    .locals 0

    .line 2233
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    return-object p0
.end method

.method public getQuickReplyHeadsUpHeight()I
    .locals 1

    .line 2246
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    .line 2249
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result p0

    return p0
.end method

.method public getQuickReplyHeight()I
    .locals 1

    .line 2238
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 2241
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewHeight(I)I

    move-result p0

    return p0
.end method

.method public getShelfTransformationTarget()Landroid/view/View;
    .locals 1

    .line 2170
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2172
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSingleLineView()Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;
    .locals 0

    .line 1861
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    return-object p0
.end method

.method public getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    .line 1812
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1813
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getVisibleType()I
    .locals 0

    .line 1057
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    return p0
.end method

.method public getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1215
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 1213
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 1207
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 1205
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 1209
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initView()V
    .locals 2

    .line 215
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->min_notification_layout_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMinContractedHeight:I

    .line 217
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationContentMarginEnd:I

    .line 221
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->quick_reply_notification_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeight:I

    return-void
.end method

.method isAnimatingVisibleType()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1893
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimationStartVisibleType:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isContentExpandable()Z
    .locals 0

    .line 1293
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsContentExpandable:Z

    return p0
.end method

.method public isContentViewInactive(I)Z
    .locals 0

    .line 1980
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object p1

    .line 1981
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isContentViewInactive(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public isDimmable()Z
    .locals 0

    .line 2014
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->isDimmable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQuickReply()Z
    .locals 0

    .line 2221
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsQuickReply:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 420
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 421
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateVisibility()V

    return-void
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 0

    .line 2000
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onChildVisibilityChanged(Landroid/view/View;II)V

    .line 2001
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isContentViewInactive(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2002
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 2004
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 615
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 616
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 407
    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz v0, :cond_1

    .line 408
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 409
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 411
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    .line 412
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 413
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mForceSelectNextLayout:Z

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    .line 414
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mForceSelectNextLayout:Z

    .line 415
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandable:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtons(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v6, p0

    .line 234
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v0, v9, :cond_0

    move v1, v7

    goto :goto_0

    :cond_0
    move v1, v8

    :goto_0
    const/high16 v10, -0x80000000

    if-ne v0, v10, :cond_1

    move v0, v7

    goto :goto_1

    :cond_1
    move v0, v8

    :goto_1
    const v2, 0x3fffffff    # 1.9999999f

    .line 238
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 240
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    :cond_3
    move v12, v2

    .line 243
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 244
    iget v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationMaxHeight:I

    .line 245
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v1, :cond_4

    .line 246
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getHeightUpperLimit()I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    :cond_4
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExtraMeasureHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 250
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 252
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v1, :cond_5

    .line 254
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v7

    goto :goto_2

    :cond_5
    move v1, v8

    :goto_2
    if-eqz v1, :cond_6

    move v1, v9

    goto :goto_3

    :cond_6
    move v1, v10

    .line 257
    :goto_3
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 260
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 261
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v13, v0

    goto :goto_4

    :cond_7
    move v13, v8

    .line 263
    :goto_4
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 265
    iget v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmallHeight:I

    .line 266
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 268
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v0, :cond_8

    .line 270
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v0, v7

    goto :goto_5

    :cond_8
    move v0, v8

    .line 273
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->shouldContractedBeFixedSize()Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz v0, :cond_9

    goto :goto_6

    .line 276
    :cond_9
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_7

    .line 274
    :cond_a
    :goto_6
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_7
    move v14, v0

    .line 278
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 279
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 280
    iget v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMinContractedHeight:I

    if-ge v15, v0, :cond_b

    .line 281
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 282
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_8

    :cond_b
    move v4, v14

    .line 284
    :goto_8
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 285
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateContractedHeaderWidth()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 286
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 288
    :cond_c
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 289
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_d

    .line 291
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 293
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 296
    :cond_d
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 297
    iget v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpHeight:I

    .line 298
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v1, :cond_e

    .line 299
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getHeightUpperLimit()I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    :cond_e
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExtraMeasureHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 303
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 305
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v1, :cond_f

    .line 307
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_9

    :cond_f
    move v7, v8

    .line 310
    :goto_9
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v7, :cond_10

    move v2, v9

    goto :goto_a

    :cond_10
    move v2, v10

    .line 311
    :goto_a
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    .line 310
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 313
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 315
    :cond_11
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v0, :cond_13

    .line 317
    iget v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineWidthIndention:I

    if-eqz v0, :cond_12

    .line 318
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_12

    .line 319
    iget v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineWidthIndention:I

    sub-int v0, v11, v0

    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 320
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v1

    add-int/2addr v0, v1

    .line 319
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_b

    :cond_12
    move/from16 v0, p1

    .line 323
    :goto_b
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    iget v2, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationMaxHeight:I

    .line 324
    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 323
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 325
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 330
    :cond_13
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-eqz v1, :cond_14

    const/4 v3, 0x0

    .line 331
    iget v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeight:I

    .line 332
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    .line 331
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 333
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 335
    :cond_14
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_15

    const/4 v3, 0x0

    .line 336
    iget v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeight:I

    .line 337
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    .line 336
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 338
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 342
    :cond_15
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 343
    invoke-virtual {v6, v11, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNotificationUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 1352
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 1353
    iget v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mBeforeN:Z

    .line 1354
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateAllSingleLineViews()V

    .line 1355
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    .line 1356
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1357
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 1359
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1360
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 1362
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1363
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 1365
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyRemoteInputAndSmartReply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 1366
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyMediaTransfer(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 1367
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateLegacy()V

    .line 1368
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mForceSelectNextLayout:Z

    const/4 v0, 0x0

    .line 1369
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 1370
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 1371
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyBubbleAction(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 1372
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyBubbleAction(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 589
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 590
    sget v0, Lcom/android/systemui/R$id;->row_tag_for_content_view:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0

    .line 1924
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_0

    .line 1926
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 595
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 596
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateVisibility()V

    if-eqz p2, :cond_1

    .line 597
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 600
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    .line 601
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 602
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    .line 603
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 605
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    :cond_1
    return-void
.end method

.method performWhenContentInactive(ILjava/lang/Runnable;)V
    .locals 1

    .line 1947
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1949
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isContentViewInactive(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1953
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1950
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public pointInView(FFF)Z
    .locals 3

    .line 2077
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipTopAmount:I

    int-to-float v0, v0

    .line 2078
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    int-to-float v1, v1

    neg-float v2, p3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    sub-float/2addr v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 2079
    iget v0, p0, Landroid/widget/FrameLayout;->mRight:I

    iget p0, p0, Landroid/widget/FrameLayout;->mLeft:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    add-float/2addr p0, p3

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    add-float/2addr v1, p3

    cmpg-float p0, p2, v1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reInflateViews()V
    .locals 1

    .line 1829
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v0, :cond_0

    .line 1830
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1831
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 1832
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateAllSingleLineViews()V

    :cond_0
    return-void
.end method

.method removeContentInactiveRunnable(I)V
    .locals 0

    .line 1963
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1969
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public requestSelectLayout(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1825
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    return-void
.end method

.method public setBackgroundTintColor(I)V
    .locals 1

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v0, :cond_0

    .line 1049
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(I)V

    .line 1051
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz p0, :cond_1

    .line 1052
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(I)V

    :cond_1
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0

    .line 918
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipBottomAmount:I

    .line 919
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setClipChildren(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2127
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputVisible:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2128
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    return-void
.end method

.method public setClipToActualHeight(Z)V
    .locals 0

    .line 941
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipToActualHeight:Z

    .line 942
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0

    .line 912
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mClipTopAmount:I

    .line 913
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setContainingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 1817
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method

.method public setContentHeight(I)V
    .locals 2

    .line 647
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 648
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 649
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 650
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 651
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeight:I

    .line 652
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mAnimate:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    .line 654
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 660
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinContentHeightHint()I

    move-result p1

    .line 662
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 664
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setContentHeight(II)V

    .line 667
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 669
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setContentHeight(II)V

    .line 672
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    .line 673
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    return-void
.end method

.method public setContentHeightAnimating(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 1887
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContentHeightAtAnimationStart:I

    :cond_0
    return-void
.end method

.method public setContractedChild(Landroid/view/View;)V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 445
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 448
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 449
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 450
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 451
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    :cond_1
    return-void

    .line 455
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 456
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 457
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1732
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setExpandedChild(Landroid/view/View;)V
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 492
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 493
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 498
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchStartTemporaryDetach()V

    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mOnContentViewInactiveListeners:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 505
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    :cond_1
    if-nez p1, :cond_4

    .line 508
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 509
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 510
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    .line 511
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 513
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 514
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    :cond_3
    return-void

    .line 518
    :cond_4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 519
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 520
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 522
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_5

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyBubbleAction(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_5
    return-void
.end method

.method public setExpandedInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;)V
    .locals 0

    .line 1686
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1688
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    :cond_0
    return-void
.end method

.method public setFocusOnVisibilityChange()V
    .locals 1

    const/4 v0, 0x1

    .line 1902
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mFocusOnVisibilityChange:Z

    return-void
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 0

    .line 1724
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-void
.end method

.method public setHeaderVisibleAmount(F)V
    .locals 1

    .line 2132
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_0

    .line 2133
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    .line 2135
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_1

    .line 2136
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    .line 2138
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz p0, :cond_2

    .line 2139
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    :cond_2
    return-void
.end method

.method public setHeadsUp(Z)V
    .locals 1

    .line 1297
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1298
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    .line 1299
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandable:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtons(Z)V

    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 1

    .line 1897
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpAnimatingAway:Z

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1898
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    return-void
.end method

.method public setHeadsUpChild(Landroid/view/View;)V
    .locals 4

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 534
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v2, :cond_0

    .line 553
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 554
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 556
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 557
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchStartTemporaryDetach()V

    .line 558
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 561
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 562
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 563
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 564
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    if-nez p1, :cond_4

    .line 568
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 569
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 570
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    .line 571
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 573
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 574
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->selectLayout(ZZ)V

    :cond_3
    return-void

    .line 578
    :cond_4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 579
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 580
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 582
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_5

    .line 583
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyBubbleAction(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_5
    return-void
.end method

.method public setHeadsUpInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;)V
    .locals 0

    .line 1701
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1703
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    :cond_0
    return-void
.end method

.method public setHeights(III)V
    .locals 0

    .line 227
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSmallHeight:I

    .line 228
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpHeight:I

    .line 229
    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mNotificationMaxHeight:I

    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 1

    .line 1338
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    .line 1339
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1342
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 1343
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1345
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 1346
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1348
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateAllSingleLineViews()V

    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 0

    return-void
.end method

.method public setLegacy(Z)V
    .locals 0

    .line 1311
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mLegacy:Z

    .line 1312
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateLegacy()V

    return-void
.end method

.method public setOnExpandedVisibleListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1936
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 1937
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    return-void
.end method

.method public setPeopleNotificationIdentifier(Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;)V
    .locals 0

    .line 1821
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mPeopleIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    return-void
.end method

.method public setQuickReply(Z)V
    .locals 0

    .line 2225
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsQuickReply:Z

    return-void
.end method

.method public setQuickReplyContractedChild(Landroid/view/View;)V
    .locals 2

    .line 2188
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2189
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2190
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2192
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2193
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    .line 2194
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-void
.end method

.method public setQuickReplyHeadsUpChild(Landroid/view/View;)V
    .locals 2

    .line 2199
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2200
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2201
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 2204
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    .line 2205
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 2206
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 2207
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 2209
    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    .line 2210
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    :cond_2
    return-void

    .line 2214
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2215
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    .line 2216
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-void
.end method

.method public setRecentlyAudiblyAlerted(Z)V
    .locals 1

    .line 1800
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1801
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRecentlyAudiblyAlerted(Z)V

    .line 1803
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1804
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRecentlyAudiblyAlerted(Z)V

    .line 1806
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1807
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRecentlyAudiblyAlerted(Z)V

    :cond_2
    return-void
.end method

.method public setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V
    .locals 0

    .line 1728
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    return-void
.end method

.method public setRemoteInputVisible(Z)V
    .locals 0

    .line 2121
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputVisible:Z

    xor-int/lit8 p1, p1, 0x1

    .line 2122
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setClipChildren(Z)V

    return-void
.end method

.method public setRemoved()V
    .locals 2

    .line 1865
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 1866
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoved()V

    .line 1868
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    .line 1869
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoved()V

    .line 1871
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_2

    .line 1872
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRemoved()V

    .line 1873
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMediaTransferManager:Lcom/android/systemui/statusbar/MediaTransferManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MediaTransferManager;->setRemoved(Landroid/view/View;)V

    .line 1875
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_3

    .line 1876
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRemoved()V

    .line 1877
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mMediaTransferManager:Lcom/android/systemui/statusbar/MediaTransferManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MediaTransferManager;->setRemoved(Landroid/view/View;)V

    .line 1879
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz p0, :cond_4

    .line 1880
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRemoved()V

    :cond_4
    return-void
.end method

.method public setShelfIconVisible(Z)V
    .locals 0

    .line 1906
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mShelfIconVisible:Z

    .line 1907
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateIconVisibilities()V

    return-void
.end method

.method public setSingleLineWidthIndention(I)V
    .locals 1

    .line 1853
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineWidthIndention:I

    if-eq p1, v0, :cond_0

    .line 1854
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineWidthIndention:I

    .line 1855
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->forceLayout()V

    .line 1856
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->forceLayout()V

    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 924
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 925
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setUserExpanding(Z)V
    .locals 0

    .line 1837
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUserExpanding:Z

    if-eqz p1, :cond_0

    .line 1839
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 1841
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    .line 1842
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->calculateVisibleType()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    .line 1843
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateViewVisibilities(I)V

    const/4 p1, 0x0

    .line 1844
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    :goto_0
    return-void
.end method

.method public shouldClipToRounding(ZZ)Z
    .locals 2

    .line 2029
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleType()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->shouldClipToRounding(IZZ)Z

    move-result v0

    .line 2030
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mUserExpanding:Z

    if-eqz v1, :cond_0

    .line 2031
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v1, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->shouldClipToRounding(IZZ)Z

    move-result p0

    or-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public showAppOpsIcons(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1787
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 1790
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1791
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 1793
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1794
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->showAppOpsIcons(Landroid/util/ArraySet;)V

    :cond_2
    return-void
.end method

.method public updateBackgroundColor(Z)V
    .locals 2

    .line 1042
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getBackgroundColor(I)I

    move-result v0

    .line 1043
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->resetBackgroundAlpha()V

    .line 1044
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1, v0, p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    return-void
.end method

.method public updateBubbleButton(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 1550
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->applyBubbleAction(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public updateExpandButtons(Z)V
    .locals 3

    .line 1736
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandable:Z

    .line 1738
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1739
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsHeadsUp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1740
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1745
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gt v0, v2, :cond_4

    goto :goto_1

    .line 1741
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 1742
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gt v0, v2, :cond_4

    :cond_3
    :goto_1
    move p1, v1

    .line 1751
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isContentHidden()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 1753
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1754
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1755
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, p1

    .line 1760
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 1761
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1763
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 1764
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1766
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 1767
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1769
    :cond_9
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsContentExpandable:Z

    return-void
.end method
