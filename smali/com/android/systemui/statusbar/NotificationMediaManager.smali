.class public Lcom/android/systemui/statusbar/NotificationMediaManager;
.super Ljava/lang/Object;
.source "NotificationMediaManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;,
        Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;
    }
.end annotation


# static fields
.field private static final PAUSED_MEDIA_STATES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

.field private mBackdropBack:Landroid/widget/ImageView;

.field private mBackdropFront:Landroid/widget/ImageView;

.field private mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mContext:Landroid/content/Context;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mHasMediaArtwork:Z

.field protected final mHideBackdropFront:Ljava/lang/Runnable;

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

.field private final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mMediaArtworkProcessor:Lcom/android/systemui/statusbar/MediaArtworkProcessor;

.field private mMediaController:Landroid/media/session/MediaController;

.field private final mMediaListener:Landroid/media/session/MediaController$Callback;

.field private final mMediaListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaMetadata:Landroid/media/MediaMetadata;

.field private mMediaNotificationKey:Ljava/lang/String;

.field private final mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mNotificationShadeWindowController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;",
            ">;"
        }
    .end annotation
.end field

.field protected mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private final mProcessArtworkTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/AsyncTask<",
            "***>;>;"
        }
    .end annotation
.end field

.field private final mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mShowCompactMediaSeekbar:Z

.field private final mStatusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->PAUSED_MEDIA_STATES:Ljava/util/HashSet;

    const/4 v1, 0x0

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->PAUSED_MEDIA_STATES:Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->PAUSED_MEDIA_STATES:Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->PAUSED_MEDIA_STATES:Ljava/util/HashSet;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->PAUSED_MEDIA_STATES:Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/MediaArtworkProcessor;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/media/MediaDataManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Lcom/android/systemui/statusbar/MediaArtworkProcessor;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            "Lcom/android/systemui/media/MediaDataManager;",
            ")V"
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 95
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 96
    const-class v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 97
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 129
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mProcessArtworkTasks:Ljava/util/Set;

    .line 145
    new-instance v0, Lcom/android/systemui/statusbar/NotificationMediaManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$1;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 161
    new-instance v0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$2;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListener:Landroid/media/session/MediaController$Callback;

    .line 745
    new-instance v0, Lcom/android/systemui/statusbar/NotificationMediaManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$4;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mHideBackdropFront:Ljava/lang/Runnable;

    .line 201
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    .line 202
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaArtworkProcessor:Lcom/android/systemui/statusbar/MediaArtworkProcessor;

    .line 203
    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 204
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListeners:Ljava/util/ArrayList;

    .line 207
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    const-string p5, "media_session"

    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 210
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarLazy:Ldagger/Lazy;

    .line 211
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotificationShadeWindowController:Ldagger/Lazy;

    .line 212
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 213
    iput-object p7, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 216
    new-instance p1, Lcom/android/systemui/statusbar/NotificationMediaManager$3;

    invoke-direct {p1, p0, p9}, Lcom/android/systemui/statusbar/NotificationMediaManager$3;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/media/MediaDataManager;)V

    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    const-string/jumbo p1, "systemui"

    const-string p2, "compact_media_notification_seekbar_enabled"

    .line 250
    invoke-static {p1, p2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "true"

    .line 249
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mShowCompactMediaSeekbar:Z

    .line 253
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    .line 254
    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 253
    invoke-virtual {p8, p1, p2, p0}, Lcom/android/systemui/util/DeviceConfigProxy;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/NotificationMediaManager;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mShowCompactMediaSeekbar:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationMediaManager;I)Z
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlaybackActive(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/NotificationMediaManager;)Lcom/android/systemui/statusbar/MediaArtworkProcessor;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaArtworkProcessor:Lcom/android/systemui/statusbar/MediaArtworkProcessor;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/NotificationMediaManager;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/NotificationMediaManager;ZZ)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->dispatchUpdateMediaMetaData(ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/NotificationMediaManager;)Landroid/widget/ImageView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/NotificationMediaManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->processArtwork(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/NotificationMediaManager;Landroid/os/AsyncTask;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->removeTask(Landroid/os/AsyncTask;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/NotificationMediaManager;ZZLandroid/graphics/Bitmap;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationMediaManager;->finishUpdateMediaMetaData(ZZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method private clearCurrentMediaNotificationSession()V
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaArtworkProcessor:Lcom/android/systemui/statusbar/MediaArtworkProcessor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->clearCache()V

    const/4 v0, 0x0

    .line 475
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 476
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    .line 481
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 483
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    return-void
.end method

.method private dispatchUpdateMediaMetaData(ZZ)V
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    if-eqz v0, :cond_0

    .line 419
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateMediaMetaData(ZZ)V

    .line 421
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I

    move-result p1

    .line 422
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListeners:Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 423
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 424
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-interface {v1, v2, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;->onPrimaryMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private finishUpdateMediaMetaData(ZZLandroid/graphics/Bitmap;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 549
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 p3, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v3, p3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v1, :cond_2

    move v4, p3

    goto :goto_2

    :cond_2
    move v4, v2

    .line 554
    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mHasMediaArtwork:Z

    if-nez v1, :cond_5

    .line 558
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v0

    :goto_3
    if-eqz v4, :cond_5

    .line 560
    new-instance v1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    .line 561
    invoke-virtual {v5}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 568
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v4

    if-eq v4, p3, :cond_4

    const-class v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v4, p3

    goto :goto_4

    :cond_5
    move v4, v2

    .line 573
    :goto_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotificationShadeWindowController:Ldagger/Lazy;

    .line 574
    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    .line 575
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOccluded()Z

    move-result v6

    if-eqz v1, :cond_6

    move v7, p3

    goto :goto_5

    :cond_6
    move v7, v2

    .line 579
    :goto_5
    sget-boolean v8, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    const-string v9, "NotificationMediaManager"

    if-eqz v8, :cond_8

    .line 580
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateMediaMetaData: hasArtwork = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", allowWhenShade:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", allowEnterAnimation:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", vis:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 583
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", alpha:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 584
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", , mStatusBarStateController.getState():"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 585
    invoke-interface {v10}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", metaDataChanged:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", mBiometricUnlockController.getMode():"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_6

    :cond_7
    const-string v10, "null"

    :goto_6
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", hideBecauseOccluded:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", hasMediaArtwork= "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mHasMediaArtwork:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 580
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v8, v3}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->setHasMediaArtwork(Z)V

    .line 594
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz v3, :cond_9

    .line 595
    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/ScrimController;->setHasBackdrop(Z)V

    :cond_9
    const/4 v3, 0x2

    const/4 v8, 0x0

    if-nez v7, :cond_a

    .line 598
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_MEDIA_FAKE_ARTWORK:Z

    if-eqz v7, :cond_11

    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 599
    invoke-interface {v7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v7

    if-nez v7, :cond_b

    if-eqz v4, :cond_11

    :cond_b
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    if-eqz v4, :cond_11

    .line 600
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v4

    if-eq v4, v3, :cond_11

    if-nez v6, :cond_11

    .line 604
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_e

    .line 605
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p2, :cond_c

    .line 607
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 608
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_7

    .line 610
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 611
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_7
    if-eqz v5, :cond_d

    .line 614
    invoke-virtual {v5, p3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setBackdropShowing(Z)V

    :cond_d
    move p1, p3

    :cond_e
    if-eqz p1, :cond_19

    .line 622
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 623
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    .line 624
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    .line 625
    invoke-virtual {p2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 626
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 627
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 628
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 630
    :cond_f
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 633
    :goto_8
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_MEDIA_FAKE_ARTWORK:Z

    if-eqz p1, :cond_10

    const/high16 p1, -0x1000000

    .line 634
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v3, 0x416fffffe0000000L    # 1.6777215E7

    mul-double/2addr v0, v3

    double-to-int p2, v0

    or-int/2addr p1, p2

    new-array p2, p3, [Ljava/lang/Object;

    .line 635
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    const-string p3, "DEBUG_MEDIA: setting new color: 0x%08x"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 637
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 639
    :cond_10
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 642
    :goto_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_19

    .line 649
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xfa

    .line 650
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 651
    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mHideBackdropFront:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_b

    .line 657
    :cond_11
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_19

    .line 661
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p1

    if-eqz p1, :cond_12

    sget-object p1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 662
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getAnimateChange()Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_a

    :cond_12
    move p3, v2

    .line 663
    :goto_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isBypassFadingAnimation()Z

    move-result p1

    .line 664
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v1

    if-eq v1, v3, :cond_14

    :cond_13
    if-eqz p3, :cond_15

    :cond_14
    if-eqz p1, :cond_16

    :cond_15
    if-eqz v6, :cond_17

    .line 670
    :cond_16
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 671
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v5, :cond_19

    .line 673
    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setBackdropShowing(Z)V

    goto :goto_b

    :cond_17
    if-eqz v5, :cond_18

    .line 677
    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setBackdropShowing(Z)V

    .line 679
    :cond_18
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 680
    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    .line 681
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    .line 682
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x0

    .line 683
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationMediaManager$5ApBYxWBRgBH6AkWUHgwLiCFqEk;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationMediaManager$5ApBYxWBRgBH6AkWUHgwLiCFqEk;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    .line 684
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 690
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 718
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 719
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 720
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 721
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_19
    :goto_b
    return-void
.end method

.method private getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 465
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 467
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isPlaybackActive(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPlayingState(I)Z
    .locals 1

    .line 264
    sget-object v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->PAUSED_MEDIA_STATES:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$finishUpdateMediaMetaData$0()V
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 687
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 688
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mHideBackdropFront:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private processArtwork(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaArtworkProcessor:Lcom/android/systemui/statusbar/MediaArtworkProcessor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->processArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private removeTask(Landroid/os/AsyncTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask<",
            "***>;)V"
        }
    .end annotation

    .line 763
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mProcessArtworkTasks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 460
    :cond_1
    invoke-virtual {p1, p2}, Landroid/media/session/MediaController;->controlsSameSession(Landroid/media/session/MediaController;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    .line 314
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I

    move-result p0

    .line 313
    invoke-interface {p1, v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;->onPrimaryMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V

    return-void
.end method

.method public clearCurrentMediaNotification()V
    .locals 1

    const/4 v0, 0x0

    .line 413
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    .line 414
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotificationSession()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "    mMediaSessionManager="

    .line 430
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 431
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "    mMediaNotificationKey="

    .line 432
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 433
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    mMediaController="

    .line 434
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 436
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_0

    .line 437
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " state="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 439
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "    mMediaMetadata="

    .line 440
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 442
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz p1, :cond_1

    .line 443
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " title="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string p3, "android.media.metadata.TITLE"

    invoke-virtual {p0, p3}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 445
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public findAndUpdateMediaNotifications()V
    .locals 10

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    monitor-enter v0

    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getAllNotifs()Ljava/util/Collection;

    move-result-object v1

    .line 330
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 331
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isMediaNotification()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 333
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.mediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/media/session/MediaSession$Token;

    if-eqz v5, :cond_0

    .line 336
    new-instance v6, Landroid/media/session/MediaController;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v5}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    const/4 v5, 0x3

    .line 338
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaControllerPlaybackState(Landroid/media/session/MediaController;)I

    move-result v7

    if-ne v5, v7, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v4

    move-object v6, v3

    :goto_0
    if-nez v3, :cond_4

    .line 355
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-eqz v2, :cond_4

    .line 357
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v5, -0x1

    .line 358
    invoke-virtual {v2, v4, v5}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v2

    .line 362
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaController;

    .line 364
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 366
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 367
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v6, v4

    move-object v3, v8

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    if-eqz v6, :cond_5

    .line 381
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {p0, v2, v6}, Lcom/android/systemui/statusbar/NotificationMediaManager;->sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 383
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotificationSession()V

    .line 384
    iput-object v6, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    .line 385
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v6, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 386
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    move v2, v1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 396
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 397
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    .line 403
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_7

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const-string v3, "NotificationMediaManager - metaDataChanged"

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    .line 409
    :cond_7
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->dispatchUpdateMediaMetaData(ZZ)V

    return-void

    :catchall_0
    move-exception p0

    .line 403
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getMediaIcon()Landroid/graphics/drawable/Icon;
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    .line 302
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 303
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 304
    :cond_2
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 308
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMediaMetadata()Landroid/media/MediaMetadata;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p0
.end method

.method public getMediaNotificationKey()Ljava/lang/String;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    return-object p0
.end method

.method public getShowCompactMediaSeekbar()Z
    .locals 0

    .line 293
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mShowCompactMediaSeekbar:Z

    return p0
.end method

.method public hasMediaArtwork()Z
    .locals 0

    .line 288
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mHasMediaArtwork:Z

    return p0
.end method

.method public synthetic lambda$finishUpdateMediaMetaData$0$NotificationMediaManager()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->lambda$finishUpdateMediaMetaData$0()V

    return-void
.end method

.method public onNotificationRemoved(Ljava/lang/String;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotification()V

    const/4 p1, 0x1

    .line 274
    invoke-direct {p0, p1, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->dispatchUpdateMediaMetaData(ZZ)V

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    return-void
.end method

.method public setup(Lcom/android/systemui/statusbar/BackDropView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 732
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropFront:Landroid/widget/ImageView;

    .line 733
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdropBack:Landroid/widget/ImageView;

    .line 734
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 735
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    return-void
.end method

.method public updateMediaMetaData(ZZ)V
    .locals 6

    const-string v0, "StatusBar#updateMediaMetaData"

    .line 490
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    if-nez v0, :cond_0

    .line 497
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 503
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isLaunchTransitionFadingAway()Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v0, :cond_2

    goto :goto_4

    .line 509
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 520
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "android.media.metadata.ART"

    .line 521
    invoke-virtual {v0, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "android.media.metadata.ALBUM_ART"

    .line 523
    invoke-virtual {v0, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v3

    :cond_4
    :goto_1
    if-eqz p1, :cond_6

    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mProcessArtworkTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/AsyncTask;

    .line 531
    invoke-virtual {v5, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_2

    .line 533
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mProcessArtworkTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_6
    if-eqz v4, :cond_7

    .line 535
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mProcessArtworkTasks:Ljava/util/Set;

    new-instance v3, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationMediaManager$ProcessArtworkTask;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;ZZ)V

    new-array p0, v2, [Landroid/graphics/Bitmap;

    aput-object v4, p0, v1

    .line 537
    invoke-virtual {v3, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    .line 536
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 539
    :cond_7
    invoke-direct {p0, p1, p2, v3}, Lcom/android/systemui/statusbar/NotificationMediaManager;->finishUpdateMediaMetaData(ZZLandroid/graphics/Bitmap;)V

    .line 542
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 504
    :cond_8
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 505
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
