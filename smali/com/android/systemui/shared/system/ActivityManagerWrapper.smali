.class public Lcom/android/systemui/shared/system/ActivityManagerWrapper;
.super Ljava/lang/Object;
.source "ActivityManagerWrapper.java"


# static fields
.field private static final sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;


# instance fields
.field private final mBackgroundExecutor:Lcom/android/systemui/shared/system/BackgroundExecutor;

.field private final mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 92
    invoke-static {}, Lcom/android/systemui/shared/system/BackgroundExecutor;->get()Lcom/android/systemui/shared/system/BackgroundExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/system/BackgroundExecutor;

    .line 93
    new-instance v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    .locals 1

    .line 97
    sget-object v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public closeSystemWindows(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/system/BackgroundExecutor;

    new-instance v1, Lcom/android/systemui/shared/system/ActivityManagerWrapper$7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper$7;-><init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentUserId()I
    .locals 0

    .line 106
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 107
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :catch_0
    move-exception p0

    .line 109
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getRunningTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    const/4 p0, 0x0

    .line 128
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityTaskManager;->getFilteredTasks(IZ)Ljava/util/List;

    move-result-object p1

    .line 129
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 132
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p0
.end method

.method public isLockTaskKioskModeActive()Z
    .locals 2

    const/4 p0, 0x0

    .line 520
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move p0, v1

    :catch_0
    :cond_0
    return p0
.end method

.method public isScreenPinningActive()Z
    .locals 2

    const/4 p0, 0x0

    .line 490
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    :catch_0
    :cond_0
    return p0
.end method

.method public registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    monitor-enter v0

    .line 412
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->addListener(Landroid/app/IActivityManager;Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 413
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setTaskWindowingModeSplitScreenPrimary(IILandroid/graphics/Rect;)Z
    .locals 0

    .line 399
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Landroid/app/IActivityTaskManager;->setTaskWindowingModeSplitScreenPrimary(IZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    monitor-enter v0

    .line 422
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->removeListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 423
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
