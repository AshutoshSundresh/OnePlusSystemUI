.class Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 6972
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDragDownAnywhereEnabled()Z
    .locals 2

    .line 7066
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 7067
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$5000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDragDownEnabledForView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 2

    .line 7048
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->isDragDownAnywhereEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 7051
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result p0

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    return v1

    .line 7056
    :cond_1
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_2

    .line 7058
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSensitive()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isFalsingCheckNeeded()Z
    .locals 1

    .line 7043
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$2300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCrossedThreshold(Z)V
    .locals 1

    .line 7027
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    return-void
.end method

.method public onDragDownReset()V
    .locals 2

    .line 7020
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 7021
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    .line 7022
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetCheckSnoozeLeavebehind()V

    return-void
.end method

.method public onDraggedDown(Landroid/view/View;I)Z
    .locals 5

    .line 6978
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6979
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isQsDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "StackScroller"

    const-string p1, "return DraggedDown"

    .line 6980
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6985
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 6986
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4400(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/media/KeyguardMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/KeyguardMediaController;->getView()Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 6987
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$2300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)I

    move-result v3

    if-ne v3, v2, :cond_5

    if-eqz v0, :cond_5

    .line 6988
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4600(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    move-result-object v0

    const/16 v3, 0xbb

    int-to-float p2, p2

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 6990
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v4

    float-to-int p2, p2

    .line 6988
    invoke-virtual {v0, v3, p2, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 6992
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4600(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_PULL_SHADE_OPEN:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V

    .line 6994
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_4

    .line 6996
    :cond_3
    const-class p0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/ShadeController;->goToLockedShade(Landroid/view/View;)V

    .line 6997
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_4

    .line 6998
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 6999
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onExpandedByGesture(Z)V

    :cond_4
    return v2

    :cond_5
    return v1
.end method

.method public onTouchSlopExceeded()V
    .locals 1

    .line 7032
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 7033
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    return-void
.end method

.method public setEmptyDragAmount(F)V
    .locals 0

    .line 7038
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setEmptyDragAmount(F)V

    return-void
.end method
