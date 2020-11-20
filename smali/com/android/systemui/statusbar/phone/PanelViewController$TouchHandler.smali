.class public Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;
.super Ljava/lang/Object;
.source "PanelViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V
    .locals 0

    .line 1292
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1294
    const-class v0, Lcom/oneplus/battery/OpChargingAnimationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$400(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$800(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 1300
    :cond_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeActive()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 1301
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/plugin/OpPreventModeCtrl;->disPatchTouchEvent(Landroid/view/MotionEvent;)V

    return v3

    .line 1303
    :cond_1
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v1

    const/4 v4, 0x5

    if-eq v1, v4, :cond_13

    .line 1304
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v1

    const/4 v5, 0x7

    if-ne v1, v5, :cond_2

    goto/16 :goto_2

    .line 1308
    :cond_2
    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    .line 1313
    :cond_3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/battery/OpChargingAnimationController;

    invoke-interface {v1}, Lcom/oneplus/battery/OpChargingAnimationController;->isAnimationStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1315
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/battery/OpChargingAnimationController;

    invoke-interface {p0, p1}, Lcom/oneplus/battery/OpChargingAnimationController;->disPatchTouchEvent(Landroid/view/MotionEvent;)V

    return v3

    .line 1330
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1000(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    .line 1333
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1002(Lcom/android/systemui/statusbar/phone/PanelViewController;I)I

    move v0, v2

    .line 1335
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1336
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1337
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->canCollapsePanelOnTouch()Z

    move-result v5

    .line 1339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-eqz v6, :cond_d

    if-eq v6, v3, :cond_c

    const/4 v7, 0x2

    if-eq v6, v7, :cond_9

    const/4 v0, 0x3

    if-eq v6, v0, :cond_c

    if-eq v6, v4, :cond_8

    const/4 v0, 0x6

    if-eq v6, v0, :cond_6

    goto/16 :goto_1

    .line 1366
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1367
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1000(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result v1

    if-ne v1, v0, :cond_12

    .line 1369
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-eq v1, v0, :cond_7

    move v3, v2

    .line 1370
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1002(Lcom/android/systemui/statusbar/phone/PanelViewController;I)I

    .line 1371
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1702(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1372
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1602(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    goto/16 :goto_1

    .line 1376
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-ne p1, v3, :cond_12

    .line 1377
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1378
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/view/VelocityTracker;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1

    .line 1382
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1600(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v4

    sub-float v4, v0, v4

    .line 1383
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v6, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2500(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    if-nez v5, :cond_a

    .line 1384
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1800(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1385
    :cond_a
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1386
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result p1

    neg-float v6, p1

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_b

    .line 1387
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v4

    if-eqz v4, :cond_12

    cmpl-float p1, v5, p1

    if-lez p1, :cond_12

    :cond_b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1388
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1700(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result p1

    sub-float p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v5, p1

    if-lez p1, :cond_12

    .line 1389
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 1390
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {p0, v1, v0, v3, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandMotion(FFZF)V

    return v3

    .line 1397
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/view/VelocityTracker;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1

    .line 1341
    :cond_d
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    .line 1342
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ValueAnimator;

    move-result-object v5

    if-eqz v5, :cond_e

    move v5, v3

    goto :goto_0

    :cond_e
    move v5, v2

    :goto_0
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1102(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1343
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1302(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1344
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/systemui/statusbar/phone/PanelViewController;->mDownTime:J

    .line 1345
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1400(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-eqz v4, :cond_10

    :cond_f
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1346
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 1347
    :cond_10
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 1348
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelPeek()V

    .line 1349
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1502(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    return v3

    .line 1352
    :cond_11
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1602(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1353
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1702(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1354
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v4, v1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isInContentBounds(FF)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1802(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceededBeforeDown:Z

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1502(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1356
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2102(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1360
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2202(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2302(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1362
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1363
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2500(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    :cond_12
    :goto_1
    return v2

    :cond_13
    :goto_2
    return v3

    :cond_14
    :goto_3
    return v2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1406
    const-class p1, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->gameToolboxEnable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1407
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchActionDownX:F

    .line 1409
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchActionDownY:F

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isWithinGameModeToolBoxRegion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1412
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string p1, "disable panel in game toolbox region!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1419
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isDisableExpandForTouch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1420
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->initExpandButton()V

    .line 1421
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->showExpandButton()V

    return v1

    .line 1426
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$400(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$800(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_3

    .line 1427
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_28

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1428
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_9

    .line 1433
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 1439
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1440
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz p1, :cond_6

    .line 1442
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    :cond_6
    return v2

    .line 1448
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x2002

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1449
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_8

    .line 1450
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->expand(Z)V

    :cond_8
    return v1

    .line 1456
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isQsDisabled()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 1457
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1458
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1459
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-nez p0, :cond_a

    .line 1460
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string p1, "disable panel touch when QS disabled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v1

    .line 1475
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1000(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_c

    .line 1478
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1002(Lcom/android/systemui/statusbar/phone/PanelViewController;I)I

    move v0, v2

    .line 1480
    :cond_c
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1481
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1483
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_f

    .line 1484
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldGestureWaitForTouchSlop()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2702(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1485
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v6, v4, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldGestureIgnoreXTouchSlop(FF)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_0

    :cond_d
    move v6, v2

    goto :goto_1

    :cond_e
    :goto_0
    move v6, v1

    :goto_1
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2802(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1488
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1d

    if-eq v5, v1, :cond_1c

    const/4 p1, 0x2

    if-eq v5, p1, :cond_13

    if-eq v5, v3, :cond_1c

    const/4 p1, 0x5

    if-eq v5, p1, :cond_12

    const/4 p1, 0x6

    if-eq v5, p1, :cond_10

    goto/16 :goto_7

    .line 1526
    :cond_10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 1527
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1000(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result v0

    if-ne v0, p1, :cond_25

    .line 1529
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    if-eq v0, p1, :cond_11

    move p1, v2

    goto :goto_2

    :cond_11
    move p1, v1

    .line 1530
    :goto_2
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1531
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1532
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1002(Lcom/android/systemui/statusbar/phone/PanelViewController;I)I

    .line 1533
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget p2, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {p1, v3, v0, v1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandMotion(FFZF)V

    goto/16 :goto_7

    .line 1537
    :cond_12
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-ne p1, v1, :cond_25

    .line 1538
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1539
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p0, p2, v4, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3100(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;FFZ)V

    return v2

    .line 1544
    :cond_13
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2500(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    .line 1545
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1600(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result p1

    sub-float p1, v0, p1

    .line 1549
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v5, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result p2

    cmpl-float p2, v3, p2

    if-lez p2, :cond_16

    .line 1550
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1700(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v3

    sub-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float p2, p2, v3

    if-gtz p2, :cond_14

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1551
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 1552
    :cond_14
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p2, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1502(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1553
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p2

    if-eqz p2, :cond_16

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v3, p2, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-nez v3, :cond_16

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p2

    if-nez p2, :cond_16

    .line 1554
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p2

    if-nez p2, :cond_15

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3200(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result p2

    cmpl-float p2, p2, v6

    if-eqz p2, :cond_15

    .line 1555
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget p2, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {p1, v4, v0, v2, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandMotion(FFZF)V

    move p1, v6

    .line 1558
    :cond_15
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 1559
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStarted()V

    .line 1562
    :cond_16
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3200(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result p2

    add-float/2addr p2, p1

    invoke-static {v6, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 1563
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3300(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_18

    .line 1564
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 1565
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1567
    :cond_17
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    goto :goto_3

    .line 1568
    :cond_18
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    if-nez v3, :cond_19

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1571
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget v5, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-static {v3, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3202(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1572
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1602(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1573
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget v5, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-static {v3, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1302(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1574
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1576
    :cond_19
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1300(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    neg-float v3, p1

    .line 1577
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3400(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_1a

    .line 1578
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1579
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3, v4, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3600(Lcom/android/systemui/statusbar/phone/PanelViewController;FF)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3502(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1581
    :cond_1a
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    if-nez v3, :cond_25

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v3, :cond_25

    :cond_1b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1582
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isTrackingBlocked()Z

    move-result v3

    if-nez v3, :cond_25

    .line 1583
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeightInternal(F)V

    .line 1585
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_25

    .line 1586
    sget-object p2, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouch newHeight is NaN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1300(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mExpandedHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mInitialOffsetOnTouch:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1587
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3200(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " h:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " y:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " mInitialTouchY:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1588
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1600(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1586
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1596
    :cond_1c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2500(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    .line 1597
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, p2, v4, v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3100(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;FFZ)V

    goto/16 :goto_7

    .line 1490
    :cond_1d
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget v5, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {v3, v4, v0, v2, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandMotion(FFZF)V

    .line 1491
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1492
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1302(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1493
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1494
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2202(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1495
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2302(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1496
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1497
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mDownTime:J

    .line 1499
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1500
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1501
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v1

    goto :goto_4

    :cond_1e
    move v3, v2

    .line 1500
    :goto_4
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2102(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1502
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2500(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    .line 1503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-eqz v0, :cond_20

    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1504
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1505
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1506
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ValueAnimator;

    move-result-object v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-eqz v3, :cond_23

    :cond_21
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1507
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    if-nez v3, :cond_23

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceededBeforeDown:Z

    if-eqz v3, :cond_22

    goto :goto_5

    :cond_22
    move v3, v2

    goto :goto_6

    :cond_23
    :goto_5
    move v3, v1

    .line 1505
    :goto_6
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1502(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1508
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 1509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelPeek()V

    .line 1510
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStarted()V

    .line 1512
    :cond_24
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1517
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1518
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isHighLightHintShow()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1519
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {p1}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isCarModeHighlightHintSHow()Z

    move-result p1

    if-nez p1, :cond_25

    .line 1521
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3000(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    .line 1600
    :cond_25
    :goto_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz p0, :cond_26

    goto :goto_8

    :cond_26
    move v1, v2

    :cond_27
    :goto_8
    return v1

    :cond_28
    :goto_9
    return v2
.end method
