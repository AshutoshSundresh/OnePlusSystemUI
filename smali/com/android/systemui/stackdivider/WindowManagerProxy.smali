.class public Lcom/android/systemui/stackdivider/WindowManagerProxy;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"


# static fields
.field private static final HOME_AND_RECENTS:[I


# instance fields
.field private final mDockedRect:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDockedRect"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mSetTouchableRegionRunnable:Ljava/lang/Runnable;

.field private final mSyncTransactionQueue:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

.field private final mTmpRect1:Landroid/graphics/Rect;

.field private final mTouchableRegion:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDockedRect"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 56
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->HOME_AND_RECENTS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method constructor <init>(Lcom/android/systemui/TransactionPool;Landroid/os/Handler;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect1:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    .line 66
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 70
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSetTouchableRegionRunnable:Ljava/lang/Runnable;

    .line 86
    new-instance v0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;-><init>(Lcom/android/systemui/TransactionPool;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSyncTransactionQueue:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect1:Landroid/graphics/Rect;

    return-object p0
.end method

.method static applyHomeTasksMinimized(Lcom/android/systemui/stackdivider/SplitDisplayLayout;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)Z
    .locals 7

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-static {v0, p1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getHomeAndRecentsTasks(Ljava/util/List;Landroid/window/WindowContainerToken;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->calcResizableMinimizedHomeStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_3

    .line 152
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 153
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_0
    if-ltz v4, :cond_6

    .line 154
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 155
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 156
    iget-object v5, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v5}, Lcom/android/systemui/wm/DisplayLayout;->isLandscape()Z

    move-result v5

    if-eq v4, v6, :cond_1

    if-nez v4, :cond_2

    if-eqz v5, :cond_2

    :cond_1
    move v3, v1

    :cond_2
    if-ne v3, v5, :cond_3

    .line 160
    iget-object v4, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v4}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v4

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v4}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v4

    :goto_1
    iput v4, v2, Landroid/graphics/Rect;->right:I

    if-ne v3, v5, :cond_4

    .line 162
    iget-object v3, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v3}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v3

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v3}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v3

    :goto_2
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 167
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_4
    if-ltz v3, :cond_9

    if-nez p1, :cond_8

    .line 171
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    goto :goto_5

    .line 174
    :cond_7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v4, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 176
    :cond_8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v4, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 178
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mTiles:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mHomeBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return p1
.end method

.method static applyResizeSplits(ILcom/android/systemui/stackdivider/SplitDisplayLayout;)V
    .locals 1

    .line 116
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 117
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->resizeSplits(ILandroid/window/WindowContainerTransaction;)V

    .line 118
    invoke-static {v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private static getHomeAndRecentsTasks(Ljava/util/List;Landroid/window/WindowContainerToken;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;",
            "Landroid/window/WindowContainerToken;",
            ")Z"
        }
    .end annotation

    .line 123
    sget-object v0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->HOME_AND_RECENTS:[I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 125
    invoke-static {v1, v0}, Landroid/window/TaskOrganizer;->getRootTasks(I[I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {p1, v0}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object p1

    .line 127
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_2

    .line 128
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 129
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 131
    iget-boolean v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method static isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    .line 233
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

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

.method static synthetic lambda$applyDismissSplit$1(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2

    .line 260
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 261
    invoke-virtual {p1, p0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

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

.method private synthetic lambda$dismissOrMaximizeDocked$0(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Lcom/android/systemui/stackdivider/SplitDisplayLayout;Z)V
    .locals 0

    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->applyDismissSplit(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Lcom/android/systemui/stackdivider/SplitDisplayLayout;Z)V

    return-void
.end method


# virtual methods
.method applyDismissSplit(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Lcom/android/systemui/stackdivider/SplitDisplayLayout;Z)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 247
    invoke-static {v0, v1}, Landroid/window/TaskOrganizer;->setLaunchRoot(ILandroid/window/WindowContainerToken;)V

    .line 250
    iget-object v2, p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 251
    invoke-static {v2, v1}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v2

    .line 252
    iget-object v3, p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 253
    invoke-static {v3, v1}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v3

    .line 257
    sget-object v4, Lcom/android/systemui/stackdivider/WindowManagerProxy;->HOME_AND_RECENTS:[I

    .line 258
    invoke-static {v0, v4}, Landroid/window/TaskOrganizer;->getRootTasks(I[I)Ljava/util/List;

    move-result-object v4

    .line 260
    new-instance v5, Lcom/android/systemui/stackdivider/-$$Lambda$WindowManagerProxy$a7UL3QZ0yLpefq_HcLMSf4F6Xoo;

    invoke-direct {v5, p1}, Lcom/android/systemui/stackdivider/-$$Lambda$WindowManagerProxy$a7UL3QZ0yLpefq_HcLMSf4F6Xoo;-><init>(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;)V

    invoke-interface {v4, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 263
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 264
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 267
    :cond_0
    new-instance v5, Landroid/window/WindowContainerTransaction;

    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v6, 0x1

    if-eqz p3, :cond_6

    .line 270
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v6

    :goto_0
    if-ltz p3, :cond_1

    .line 271
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, v7, v1, v6}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 277
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v6

    move v2, v0

    :goto_1
    if-ltz p3, :cond_3

    .line 278
    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 279
    iget-object v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, v8, v1, v6}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 280
    invoke-static {v7}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 281
    iget-object v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, v8, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 282
    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, v7, v0}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    if-nez p3, :cond_2

    move v2, v6

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_b

    .line 295
    iget-object p3, p2, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {p3}, Lcom/android/systemui/wm/DisplayLayout;->isLandscape()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 296
    iget-object v2, p2, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mHomeBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    goto :goto_2

    .line 297
    :cond_4
    iget-object v2, p2, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    :goto_2
    if-eqz p3, :cond_5

    .line 298
    iget-object p3, p2, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 299
    :cond_5
    iget-object p3, p2, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget-object v3, p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mHomeBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, v3

    .line 300
    :goto_3
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 301
    iget-object v7, p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondarySurface:Landroid/view/SurfaceControl;

    int-to-float v8, v2

    int-to-float v9, p3

    invoke-virtual {v3, v7, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 302
    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, p2, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v8}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result v8

    iget-object p2, p2, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    .line 303
    invoke-virtual {p2}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result p2

    invoke-direct {v7, v0, v0, v8, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    neg-int p2, v2

    neg-int p3, p3

    .line 304
    invoke-virtual {v7, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 305
    iget-object p2, p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondarySurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, p2, v7}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 306
    iget-object p2, p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, p2, v3}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    goto :goto_8

    .line 310
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v6

    :goto_4
    if-ltz p2, :cond_8

    .line 311
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_5

    .line 314
    :cond_7
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, p3, v1, v6}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :goto_5
    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    .line 319
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v6

    :goto_6
    if-ltz p2, :cond_a

    .line 320
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 321
    invoke-static {p3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 322
    iget-object v7, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, v7, v1, v6}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 324
    iget-object v7, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, v7, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 325
    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, p3, v0}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    :cond_9
    add-int/lit8 p2, p2, -0x1

    goto :goto_6

    .line 328
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v6

    :goto_7
    if-ltz p2, :cond_b

    .line 329
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, p3, v1, v6}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    .line 333
    :cond_b
    :goto_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v6

    :goto_9
    if-ltz p2, :cond_c

    .line 334
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, p3, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 335
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, p3, v0}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    add-int/lit8 p2, p2, -0x1

    goto :goto_9

    .line 338
    :cond_c
    iget-object p1, p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, p1, v6}, Landroid/window/WindowContainerTransaction;->setFocusable(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 339
    invoke-virtual {p0, v5}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->applySyncTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method applyEnterSplit(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Lcom/android/systemui/stackdivider/SplitDisplayLayout;)Z
    .locals 9

    .line 194
    iget-object v0, p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/window/TaskOrganizer;->setLaunchRoot(ILandroid/window/WindowContainerToken;)V

    const/4 v0, 0x0

    .line 196
    invoke-static {v1, v0}, Landroid/window/TaskOrganizer;->getRootTasks(I[I)Ljava/util/List;

    move-result-object v2

    .line 197
    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 198
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    .line 202
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    move-object v5, v0

    :goto_0
    if-ltz v1, :cond_4

    .line 203
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 206
    iget-boolean v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    if-nez v7, :cond_1

    iget v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    goto :goto_2

    .line 210
    :cond_1
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v7

    if-eq v7, v4, :cond_2

    goto :goto_2

    .line 216
    :cond_2
    invoke-static {v6}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v6

    goto :goto_1

    :cond_3
    move-object v5, v0

    .line 217
    :goto_1
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v7, p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v3, v6, v7, v4}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 220
    :cond_4
    iget-object v1, p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v3, v1, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 221
    invoke-static {p2, v0, v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->applyHomeTasksMinimized(Lcom/android/systemui/stackdivider/SplitDisplayLayout;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)Z

    move-result p2

    if-eqz v5, :cond_5

    .line 226
    iget-object v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p1, p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mHomeBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, p1}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 228
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->applySyncTransaction(Landroid/window/WindowContainerTransaction;)V

    return p2
.end method

.method applySyncTransaction(Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSyncTransactionQueue:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method dismissOrMaximizeDocked(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Lcom/android/systemui/stackdivider/SplitDisplayLayout;Z)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$WindowManagerProxy$rVfdVu_tfFj6B198IbDRYIqAmkk;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/-$$Lambda$WindowManagerProxy$rVfdVu_tfFj6B198IbDRYIqAmkk;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Lcom/android/systemui/stackdivider/SplitDisplayLayout;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$dismissOrMaximizeDocked$0$WindowManagerProxy(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Lcom/android/systemui/stackdivider/SplitDisplayLayout;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->lambda$dismissOrMaximizeDocked$0(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Lcom/android/systemui/stackdivider/SplitDisplayLayout;Z)V

    return-void
.end method

.method queueSyncTransactionIfWaiting(Landroid/window/WindowContainerTransaction;)Z
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSyncTransactionQueue:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->queueIfWaiting(Landroid/window/WindowContainerTransaction;)Z

    move-result p0

    return p0
.end method

.method runInSync(Lcom/android/systemui/stackdivider/SyncTransactionQueue$TransactionRunnable;)V
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSyncTransactionQueue:Lcom/android/systemui/stackdivider/SyncTransactionQueue;

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->runInSync(Lcom/android/systemui/stackdivider/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public setResizing(Z)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/systemui/stackdivider/WindowManagerProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/WindowManagerProxy$2;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTouchRegion(Landroid/graphics/Rect;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSetTouchableRegionRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 111
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
