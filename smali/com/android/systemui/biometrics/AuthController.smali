.class public Lcom/android/systemui/biometrics/AuthController;
.super Lcom/android/systemui/SystemUI;
.source "AuthController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/biometrics/AuthDialogCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/AuthController$Injector;,
        Lcom/android/systemui/biometrics/AuthController$BiometricTaskStackListener;
    }
.end annotation


# instance fields
.field mActivityTaskManager:Landroid/app/IActivityTaskManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

.field private mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/systemui/biometrics/AuthController$Injector;

.field mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mTaskStackChangedRunnable:Ljava/lang/Runnable;

.field mTaskStackListener:Lcom/android/systemui/biometrics/AuthController$BiometricTaskStackListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 1

    .line 254
    new-instance v0, Lcom/android/systemui/biometrics/AuthController$Injector;

    invoke-direct {v0}, Lcom/android/systemui/biometrics/AuthController$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/biometrics/AuthController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/biometrics/AuthController$Injector;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/biometrics/AuthController$Injector;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 259
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/android/systemui/biometrics/AuthController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/AuthController$1;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance v0, Lcom/android/systemui/biometrics/-$$Lambda$AuthController$9xrKq1STVRQV2C5tA3mmrn4d1Bk;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthController$9xrKq1STVRQV2C5tA3mmrn4d1Bk;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mTaskStackChangedRunnable:Ljava/lang/Runnable;

    .line 260
    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 261
    iput-object p3, p0, Lcom/android/systemui/biometrics/AuthController;->mInjector:Lcom/android/systemui/biometrics/AuthController$Injector;

    .line 263
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 264
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/AuthController;)Ljava/lang/Runnable;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mTaskStackChangedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/AuthController;)Landroid/os/Handler;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getErrorString(III)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 330
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 333
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 5

    const-string v0, "BiometricPrompt/AuthController"

    .line 122
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz v1, :cond_0

    .line 124
    :try_start_0
    invoke-interface {v1}, Lcom/android/systemui/biometrics/AuthDialog;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task stack changed, current client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const/4 v3, 0x1

    .line 127
    invoke-interface {v2, v3}, Landroid/app/IActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v2

    .line 128
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 129
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Evicting client due to: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {v1, v3}, Lcom/android/systemui/biometrics/AuthDialog;->dismissWithoutCallback(Z)V

    const/4 v1, 0x0

    .line 133
    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 134
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const/4 v3, 0x3

    invoke-interface {v2, v3, v1}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDialogDismissed(I[B)V

    .line 138
    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Remote exception"

    .line 143
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private onDialogDismissed(I)V
    .locals 2

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialogDismissed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricPrompt/AuthController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-nez p1, :cond_0

    const-string p1, "Dialog already dismissed"

    .line 437
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 439
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 440
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    return-void
.end method

.method private sendResultAndCleanUp(I[B)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const-string v1, "BiometricPrompt/AuthController"

    if-nez v0, :cond_0

    const-string p0, "sendResultAndCleanUp: Receiver is null"

    .line 235
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 239
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDialogDismissed(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "Remote exception"

    .line 241
    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthController;->onDialogDismissed(I)V

    return-void
.end method

.method private showDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    .line 387
    iput-object v11, v10, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    .line 388
    iget v13, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 389
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    .line 390
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 391
    iget v14, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 392
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 393
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 394
    iget v15, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    move-object/from16 v0, p0

    move v3, v14

    move v4, v13

    move/from16 v6, p2

    move v9, v15

    .line 397
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/biometrics/AuthController;->buildDialog(Landroid/os/Bundle;ZIILjava/lang/String;ZJI)Lcom/android/systemui/biometrics/AuthDialog;

    move-result-object v0

    const-string v1, "BiometricPrompt/AuthController"

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 413
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " savedState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mCurrentDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " newDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sysUiSessionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v1, v10, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 426
    invoke-interface {v1, v2}, Lcom/android/systemui/biometrics/AuthDialog;->dismissWithoutCallback(Z)V

    .line 429
    :cond_1
    iget-object v1, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    iput-object v1, v10, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 430
    iput-object v0, v10, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 431
    iget-object v1, v10, Lcom/android/systemui/biometrics/AuthController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, v1, v12}, Lcom/android/systemui/biometrics/AuthDialog;->show(Landroid/view/WindowManager;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected buildDialog(Landroid/os/Bundle;ZIILjava/lang/String;ZJI)Lcom/android/systemui/biometrics/AuthDialog;
    .locals 3

    .line 483
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$style;->Oneplus_Theme_BiometricDialog_Dark:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 487
    new-instance v1, Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    invoke-direct {v1, v0}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;-><init>(Landroid/content/Context;)V

    .line 489
    invoke-virtual {v1, p0}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setCallback(Lcom/android/systemui/biometrics/AuthDialogCallback;)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    .line 490
    invoke-virtual {v1, p1}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setBiometricPromptBundle(Landroid/os/Bundle;)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    .line 491
    invoke-virtual {v1, p2}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setRequireConfirmation(Z)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    .line 492
    invoke-virtual {v1, p3}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setUserId(I)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    .line 493
    invoke-virtual {v1, p5}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setOpPackageName(Ljava/lang/String;)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    .line 494
    invoke-virtual {v1, p6}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setSkipIntro(Z)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    .line 495
    invoke-virtual {v1, p7, p8}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setOperationId(J)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    .line 496
    invoke-virtual {v1, p9}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->setSysUiSessionId(I)Lcom/android/systemui/biometrics/AuthContainerView$Builder;

    .line 497
    invoke-virtual {v1, p4}, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->build(I)Lcom/android/systemui/biometrics/AuthContainerView;

    move-result-object p0

    return-object p0
.end method

.method public hideAuthenticationDialog()V
    .locals 2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideAuthenticationDialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPrompt/AuthController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-nez v0, :cond_0

    return-void

    .line 379
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/biometrics/AuthDialog;->dismissFromSystemServer()V

    const/4 v0, 0x0

    .line 383
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    return-void
.end method

.method public synthetic lambda$new$0$AuthController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthController;->lambda$new$0()V

    return-void
.end method

.method public onBiometricAuthenticated()V
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/AuthDialog;->onAuthenticationSucceeded()V

    return-void
.end method

.method public onBiometricError(III)V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "onBiometricError(%d, %d, %d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricPrompt/AuthController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x7

    if-eq p2, v1, :cond_1

    const/16 v1, 0x9

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    const/16 v5, 0x64

    if-eq p2, v5, :cond_2

    if-ne p2, v0, :cond_3

    :cond_2
    move v3, v4

    .line 353
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {v0}, Lcom/android/systemui/biometrics/AuthDialog;->isAllowDeviceCredentials()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const-string p1, "onBiometricError, lockout"

    .line 354
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/AuthDialog;->animateToCredentialUI()V

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_6

    if-ne p2, v5, :cond_5

    .line 358
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const p2, 0x1040192

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 359
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/AuthController;->getErrorString(III)Ljava/lang/String;

    move-result-object p1

    .line 360
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onBiometricError, soft error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {p0, p1}, Lcom/android/systemui/biometrics/AuthDialog;->onAuthenticationFailed(Ljava/lang/String;)V

    goto :goto_3

    .line 363
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/AuthController;->getErrorString(III)Ljava/lang/String;

    move-result-object p1

    .line 364
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onBiometricError, hard error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {p0, p1}, Lcom/android/systemui/biometrics/AuthDialog;->onError(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public onBiometricHelp(Ljava/lang/String;)V
    .locals 2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricHelp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPrompt/AuthController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {p0, p1}, Lcom/android/systemui/biometrics/AuthDialog;->onHelp(Ljava/lang/String;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 445
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "BiometricPrompt/AuthController"

    const-string v0, "onConfigurationChanged"

    .line 449
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz p1, :cond_1

    .line 455
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 456
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-interface {v0, p1}, Lcom/android/systemui/biometrics/AuthDialog;->onSaveState(Landroid/os/Bundle;)V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/biometrics/AuthDialog;->dismissWithoutCallback(Z)V

    const/4 v0, 0x0

    .line 458
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    const-string v0, "container_state"

    .line 462
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const-string v0, "credential_showing"

    .line 465
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const v1, 0x8000

    const-string v2, "authenticators_allowed"

    .line 469
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/biometrics/AuthController;->showDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onDeviceCredentialPressed()V
    .locals 2

    .line 163
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const-string v0, "BiometricPrompt/AuthController"

    if-nez p0, :cond_0

    const-string p0, "onDeviceCredentialPressed: Receiver is null"

    .line 164
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 168
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDeviceCredentialPressed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "RemoteException when handling credential button"

    .line 170
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onDismissed(I[B)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 227
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unhandled reason: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricPrompt/AuthController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x7

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x6

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x5

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x4

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x1

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x2

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x3

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSystemEvent(I)V
    .locals 2

    .line 176
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const-string v0, "BiometricPrompt/AuthController"

    if-nez p0, :cond_0

    .line 177
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSystemEvent("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): Receiver is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 181
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onSystemEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RemoteException when sending system event"

    .line 183
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onTryAgainPressed()V
    .locals 2

    .line 150
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const-string v0, "BiometricPrompt/AuthController"

    if-nez p0, :cond_0

    const-string p0, "onTryAgainPressed: Receiver is null"

    .line 151
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 155
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onTryAgainPressed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "RemoteException when handling try again"

    .line 157
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public showAuthenticationDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZILjava/lang/String;JI)V
    .locals 3

    .line 287
    invoke-static {p1}, Lcom/android/systemui/biometrics/Utils;->getAuthenticators(Landroid/os/Bundle;)I

    move-result v0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAuthenticationDialog, authenticators: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", biometricModality: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", requireConfirmation: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", operationId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", sysUiSessionId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPrompt/AuthController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 297
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 298
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 299
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 300
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 301
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 302
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 303
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 304
    iput p9, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 307
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz p1, :cond_0

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCurrentDialog: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    .line 312
    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/biometrics/AuthController;->showDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mWindowManager:Landroid/view/WindowManager;

    .line 273
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mInjector:Lcom/android/systemui/biometrics/AuthController$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthController$Injector;->getActivityTaskManager()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 276
    :try_start_0
    new-instance v0, Lcom/android/systemui/biometrics/AuthController$BiometricTaskStackListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/AuthController$BiometricTaskStackListener;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mTaskStackListener:Lcom/android/systemui/biometrics/AuthController$BiometricTaskStackListener;

    .line 277
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, v0}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BiometricPrompt/AuthController"

    const-string v1, "Unable to register task stack listener"

    .line 279
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
