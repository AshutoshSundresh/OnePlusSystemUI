.class Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;
.super Ljava/lang/Object;
.source "OpBiometricDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 349
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object p1, p1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v0, 0x0

    const-string v1, "OpBiometricDialogImpl"

    if-nez p1, :cond_0

    const-string p0, "mTransparentIconView onTouch mFodDialogView doesn\'t init yet"

    .line 350
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 355
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 357
    sget-boolean v2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    if-eq p1, v3, :cond_1

    if-nez p1, :cond_4

    :cond_1
    if-ne p1, v3, :cond_2

    const-string v2, "finger up"

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const-string v2, "finger down"

    goto :goto_0

    .line 359
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 360
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchTransparent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mDialogShowing = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowing()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    .line 361
    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$900(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isPendingHideDialog = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object v2, v2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isPendingHideDialog()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDreaming = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 362
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", getAodDisplayViewState():"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getAodDisplayViewState()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", authenticated = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    .line 364
    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1000(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pressState = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object v2, v2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    .line 365
    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_4
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1000(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p1, :cond_5

    .line 370
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getAodDisplayViewState()I

    move-result v2

    if-nez v2, :cond_5

    return v0

    .line 376
    :cond_5
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object v2, v2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLController:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpQLController;->isQLShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 379
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLController:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-virtual {p0, p2}, Lcom/oneplus/systemui/biometrics/OpQLController;->handleQLTouchEvent(Landroid/view/MotionEvent;)V

    return v3

    .line 384
    :cond_6
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object p2, p2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {p2, p1}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->validateFingerAction(I)Z

    move-result p2

    .line 385
    sget-boolean v2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz v2, :cond_8

    if-eq p1, v3, :cond_7

    if-nez p1, :cond_8

    .line 386
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchTransparent: validate= "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pressState= "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object v2, v2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz p2, :cond_b

    .line 391
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object p1, p1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->isFingerDown()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 393
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowing()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1000(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "onTouchTransparent: touch on view before authenticated success"

    .line 395
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->doFingerprintPressDown(I)V

    goto :goto_1

    .line 398
    :cond_9
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1000(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "onTouchTransparent: touch on view after authenticated success"

    .line 399
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1100(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    goto :goto_1

    .line 407
    :cond_a
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1200(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    :cond_b
    :goto_1
    return v3
.end method
