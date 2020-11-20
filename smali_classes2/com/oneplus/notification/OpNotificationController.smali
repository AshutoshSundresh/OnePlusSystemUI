.class public Lcom/oneplus/notification/OpNotificationController;
.super Ljava/lang/Object;
.source "OpNotificationController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/notification/OpNotificationController$OimcObserver;,
        Lcom/oneplus/notification/OpNotificationController$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DRIVING_MODE_STATE_URI:Landroid/net/Uri;

.field private static final ESPORTS_MODE_ENABLED:Landroid/net/Uri;

.field private static final ESPORT_MODE_DO_NOT_DISTURB_ENABLED:Landroid/net/Uri;

.field private static final FORCE_INVERTION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GAME_MODE_3RD_PARTY_CALLS_UID_URI:Landroid/net/Uri;

.field private static final GAME_MODE_BLOCK_HEADS_UP_URI:Landroid/net/Uri;

.field private static final ICON_COLORIZE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIFETIME_EXTENSION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP_DEBUG:Z

.field private static final OP_OIMC_FUNC_DISABLE_HEADSUP_BRICK_URI:Landroid/net/Uri;

.field private static final OP_OIMC_FUNC_DISABLE_HEADSUP_URI:Landroid/net/Uri;

.field private static final OP_QUICKREPLY_IM_LIST_URI:Landroid/net/Uri;

.field private static final PRIORITY_LIST_BRICK_MODE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIORITY_LIST_DRIVING_MODE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIORITY_LIST_GAME_MODE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIVACY_ALERT_OPS:[I

.field private static final SYSTEM_APP_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppOpsActiveCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private mBlockedByBrick:Z

.field private mBlockedByDriving:Z

.field private mBlockedByGame:Z

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mContext:Landroid/content/Context;

.field private final mDockedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDockedStackExists:Z

.field private mESportModeDndOn:Z

.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mEsportsModeOn:Z

.field private mGameMode3rdPartyCallsUid:Ljava/lang/String;

.field private mGameModeNotifyType:I

.field private mIsFreeForm:Z

.field private mIsKeyguardShowing:Z

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNoMan:Landroid/app/NotificationManager;

.field private final mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

.field private mOimcObserver:Lcom/oneplus/notification/OpNotificationController$OimcObserver;

.field private mOrientation:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPhoneState:I

.field private mPrivacyAlertList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivacyGroupCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQuickReplyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/oneplus/notification/OpNotificationController$SettingsObserver;

.field private mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

.field private mTopActivity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 83
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    const-string v0, "com.oneplus.dialer"

    const-string v1, "com.google.android.dialer"

    const-string v2, "com.android.incallui"

    const-string v3, "com.android.dialer"

    .line 123
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/oneplus/notification/OpNotificationController;->PRIORITY_LIST_BRICK_MODE:Ljava/util/List;

    const-string v4, "com.oneplus.deskclock"

    .line 131
    filled-new-array {v0, v1, v4, v3}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Lcom/oneplus/notification/OpNotificationController;->PRIORITY_LIST_DRIVING_MODE:Ljava/util/List;

    .line 139
    filled-new-array {v0, v1, v2, v4, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/oneplus/notification/OpNotificationController;->PRIORITY_LIST_GAME_MODE:Ljava/util/List;

    const-string v2, "com.blueline.signalcheck"

    const-string v4, "com.yuedong.sport"

    .line 149
    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/oneplus/notification/OpNotificationController;->ICON_COLORIZE_LIST:Ljava/util/List;

    const-string v2, "com.whatsapp"

    const-string v4, "com.netease.cloudmusic"

    .line 154
    filled-new-array {v0, v1, v3, v2, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->LIFETIME_EXTENSION_LIST:Ljava/util/List;

    const-string v0, "com.nearme.gamecenter"

    .line 167
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->FORCE_INVERTION_LIST:Ljava/util/List;

    const-string v0, "com.oneplus.soundrecorder"

    .line 172
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->SYSTEM_APP_LIST:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 176
    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->PRIVACY_ALERT_OPS:[I

    const-string v0, "driving_mode_state"

    .line 184
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->DRIVING_MODE_STATE_URI:Landroid/net/Uri;

    const-string v0, "esport_mode_enabled"

    .line 191
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->ESPORTS_MODE_ENABLED:Landroid/net/Uri;

    const-string v0, "key_do_not_disturb_enabled"

    .line 197
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->ESPORT_MODE_DO_NOT_DISTURB_ENABLED:Landroid/net/Uri;

    const-string v0, "game_mode_block_notification"

    .line 201
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->GAME_MODE_BLOCK_HEADS_UP_URI:Landroid/net/Uri;

    const-string v0, "game_mode_notifications_3rd_calls_uid"

    .line 203
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->GAME_MODE_3RD_PARTY_CALLS_UID_URI:Landroid/net/Uri;

    const-string v0, "op_oimc_func_disable_headsup"

    .line 207
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->OP_OIMC_FUNC_DISABLE_HEADSUP_URI:Landroid/net/Uri;

    const-string v0, "op_oimc_func_disable_headsup_breath"

    .line 209
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->OP_OIMC_FUNC_DISABLE_HEADSUP_BRICK_URI:Landroid/net/Uri;

    const-string v0, "op_quickreply_im_list"

    .line 215
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->OP_QUICKREPLY_IM_LIST_URI:Landroid/net/Uri;

    return-void

    nop

    :array_0
    .array-data 4
        0x1a
        0x1b
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 335
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 229
    iput v0, p0, Lcom/oneplus/notification/OpNotificationController;->mOrientation:I

    .line 234
    iput-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mDockedStackExists:Z

    .line 236
    new-instance v2, Lcom/oneplus/notification/OpNotificationController$1;

    invoke-direct {v2, p0}, Lcom/oneplus/notification/OpNotificationController$1;-><init>(Lcom/oneplus/notification/OpNotificationController;)V

    iput-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mDockedListener:Ljava/util/function/Consumer;

    .line 243
    iput-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByBrick:Z

    .line 244
    iput-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByDriving:Z

    .line 245
    iput-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByGame:Z

    .line 246
    iput-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mEsportsModeOn:Z

    .line 248
    iput-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mESportModeDndOn:Z

    .line 251
    iput v0, p0, Lcom/oneplus/notification/OpNotificationController;->mGameModeNotifyType:I

    const-string v2, "-1"

    .line 252
    iput-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mGameMode3rdPartyCallsUid:Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    .line 254
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mQuickReplyList:Ljava/util/List;

    .line 255
    iput-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mIsFreeForm:Z

    .line 273
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    .line 274
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyAlertList:Ljava/util/HashMap;

    .line 341
    new-instance v2, Lcom/oneplus/notification/OpNotificationController$3;

    invoke-direct {v2, p0}, Lcom/oneplus/notification/OpNotificationController$3;-><init>(Lcom/oneplus/notification/OpNotificationController;)V

    iput-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 280
    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    .line 281
    const-class p1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 283
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 284
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 287
    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 289
    const-class p1, Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/stackdivider/Divider;

    .line 290
    iget-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mDockedListener:Ljava/util/function/Consumer;

    invoke-virtual {p1, v2}, Lcom/android/systemui/stackdivider/Divider;->registerInSplitScreenListener(Ljava/util/function/Consumer;)V

    .line 292
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 294
    const-class p1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 295
    new-instance p1, Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-direct {p1}, Lcom/oneplus/core/oimc/OIMCServiceManager;-><init>()V

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    .line 297
    new-instance p1, Lcom/oneplus/util/notification/SimpleHeadsUpController;

    iget-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/oneplus/util/notification/SimpleHeadsUpController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    const-string p1, "appops"

    .line 301
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 302
    invoke-static {p1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 304
    new-instance p1, Lcom/oneplus/notification/OpNotificationController$2;

    invoke-direct {p1, p0}, Lcom/oneplus/notification/OpNotificationController$2;-><init>(Lcom/oneplus/notification/OpNotificationController;)V

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mAppOpsActiveCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 320
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    sget-object v3, Lcom/oneplus/notification/OpNotificationController;->PRIVACY_ALERT_OPS:[I

    invoke-interface {v2, v3, p1}, Lcom/android/internal/app/IAppOpsService;->startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppOpsService: startWatchingMode fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OpNotificationController"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_0
    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mNoMan:Landroid/app/NotificationManager;

    .line 326
    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 327
    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->privacy_alert_application_name:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 328
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x3

    const-string v4, "privacy_alert"

    invoke-direct {v2, v4, p1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 331
    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 p1, 0x0

    .line 332
    invoke-virtual {v2, p1, p1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 333
    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 334
    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {p1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 335
    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    const-string v0, "PrivacyAlertGroupCamera"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    const-string p1, "PrivacyAlertGroupMicrophone"

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/notification/OpNotificationController;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/oneplus/notification/OpNotificationController;->mDockedStackExists:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/notification/OpNotificationController;ILjava/lang/String;Z)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/notification/OpNotificationController;->preparePrivacyAlertNotification(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1000()Landroid/net/Uri;
    .locals 1

    .line 81
    sget-object v0, Lcom/oneplus/notification/OpNotificationController;->ESPORTS_MODE_ENABLED:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/net/Uri;
    .locals 1

    .line 81
    sget-object v0, Lcom/oneplus/notification/OpNotificationController;->ESPORT_MODE_DO_NOT_DISTURB_ENABLED:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/net/Uri;
    .locals 1

    .line 81
    sget-object v0, Lcom/oneplus/notification/OpNotificationController;->GAME_MODE_BLOCK_HEADS_UP_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/net/Uri;
    .locals 1

    .line 81
    sget-object v0, Lcom/oneplus/notification/OpNotificationController;->GAME_MODE_3RD_PARTY_CALLS_UID_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/notification/OpNotificationController;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByDriving:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/oneplus/notification/OpNotificationController;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByDriving:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/oneplus/notification/OpNotificationController;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mEsportsModeOn:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/oneplus/notification/OpNotificationController;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/oneplus/notification/OpNotificationController;->mEsportsModeOn:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/oneplus/notification/OpNotificationController;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mESportModeDndOn:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/oneplus/notification/OpNotificationController;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/oneplus/notification/OpNotificationController;->mESportModeDndOn:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/oneplus/notification/OpNotificationController;)I
    .locals 0

    .line 81
    iget p0, p0, Lcom/oneplus/notification/OpNotificationController;->mGameModeNotifyType:I

    return p0
.end method

.method static synthetic access$1702(Lcom/oneplus/notification/OpNotificationController;I)I
    .locals 0

    .line 81
    iput p1, p0, Lcom/oneplus/notification/OpNotificationController;->mGameModeNotifyType:I

    return p1
.end method

.method static synthetic access$1800(Lcom/oneplus/notification/OpNotificationController;)Lcom/oneplus/core/oimc/OIMCServiceManager;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/oneplus/notification/OpNotificationController;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mGameMode3rdPartyCallsUid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/oneplus/notification/OpNotificationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mGameMode3rdPartyCallsUid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/notification/OpNotificationController;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/oneplus/notification/OpNotificationController;->cancelPrivacyAlertIfNeeded()V

    return-void
.end method

.method static synthetic access$2000()Z
    .locals 1

    .line 81
    sget-boolean v0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/oneplus/notification/OpNotificationController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mQuickReplyList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2200()Landroid/net/Uri;
    .locals 1

    .line 81
    sget-object v0, Lcom/oneplus/notification/OpNotificationController;->OP_OIMC_FUNC_DISABLE_HEADSUP_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2300()Landroid/net/Uri;
    .locals 1

    .line 81
    sget-object v0, Lcom/oneplus/notification/OpNotificationController;->OP_OIMC_FUNC_DISABLE_HEADSUP_BRICK_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/oneplus/notification/OpNotificationController;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByBrick:Z

    return p0
.end method

.method static synthetic access$2402(Lcom/oneplus/notification/OpNotificationController;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByBrick:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/oneplus/notification/OpNotificationController;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByGame:Z

    return p0
.end method

.method static synthetic access$2502(Lcom/oneplus/notification/OpNotificationController;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByGame:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/notification/OpNotificationController;)Lcom/oneplus/notification/OpNotificationController$SettingsObserver;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mSettingsObserver:Lcom/oneplus/notification/OpNotificationController$SettingsObserver;

    return-object p0
.end method

.method static synthetic access$302(Lcom/oneplus/notification/OpNotificationController;Lcom/oneplus/notification/OpNotificationController$SettingsObserver;)Lcom/oneplus/notification/OpNotificationController$SettingsObserver;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mSettingsObserver:Lcom/oneplus/notification/OpNotificationController$SettingsObserver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oneplus/notification/OpNotificationController;)Lcom/oneplus/notification/OpNotificationController$OimcObserver;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mOimcObserver:Lcom/oneplus/notification/OpNotificationController$OimcObserver;

    return-object p0
.end method

.method static synthetic access$402(Lcom/oneplus/notification/OpNotificationController;Lcom/oneplus/notification/OpNotificationController$OimcObserver;)Lcom/oneplus/notification/OpNotificationController$OimcObserver;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mOimcObserver:Lcom/oneplus/notification/OpNotificationController$OimcObserver;

    return-object p1
.end method

.method static synthetic access$502(Lcom/oneplus/notification/OpNotificationController;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/oneplus/notification/OpNotificationController;->mIsKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$602(Lcom/oneplus/notification/OpNotificationController;I)I
    .locals 0

    .line 81
    iput p1, p0, Lcom/oneplus/notification/OpNotificationController;->mPhoneState:I

    return p1
.end method

.method static synthetic access$700(Lcom/oneplus/notification/OpNotificationController;)Landroid/content/Context;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .locals 1

    .line 81
    sget-object v0, Lcom/oneplus/notification/OpNotificationController;->OP_QUICKREPLY_IM_LIST_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900()Landroid/net/Uri;
    .locals 1

    .line 81
    sget-object v0, Lcom/oneplus/notification/OpNotificationController;->DRIVING_MODE_STATE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private blockedByBrickMode(Ljava/lang/String;)Z
    .locals 0

    .line 466
    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByBrick:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/oneplus/notification/OpNotificationController;->PRIORITY_LIST_BRICK_MODE:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private blockedByDrivingMode(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    .line 471
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 473
    iget-boolean v1, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByDriving:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 475
    sget-object v1, Lcom/oneplus/notification/OpNotificationController;->PRIORITY_LIST_DRIVING_MODE:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mIsKeyguardShowing:Z

    if-eqz p0, :cond_0

    return v2

    .line 479
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    const-string v0, "oneplus.shouldPeekInCarMode"

    .line 481
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, p1

    return p0

    :cond_1
    return p1

    :cond_2
    return v2
.end method

.method private blockedByEsportsMode(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x11a

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 492
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    iget-boolean v1, p0, Lcom/oneplus/notification/OpNotificationController;->mEsportsModeOn:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mESportModeDndOn:Z

    if-eqz p0, :cond_0

    .line 494
    invoke-static {p1}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isNotificationMutedByESport(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    return v0

    .line 496
    :cond_1
    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mEsportsModeOn:Z

    if-eqz p0, :cond_2

    .line 497
    invoke-static {p1}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isNotificationMutedByESport(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    return v0
.end method

.method private blockedByGameMode(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    .line 503
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 505
    sget-object v1, Lcom/oneplus/notification/OpNotificationController;->PRIORITY_LIST_GAME_MODE:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 509
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v2, "call"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 513
    :cond_1
    sget-boolean v0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz v0, :cond_2

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBlockedByGame: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByGame:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/notification/OpNotificationController;->mGameModeNotifyType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpNotificationController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByGame:Z

    if-eqz v0, :cond_4

    iget p0, p0, Lcom/oneplus/notification/OpNotificationController;->mGameModeNotifyType:I

    if-eqz p0, :cond_4

    .line 519
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 p1, 0x1

    if-eqz p0, :cond_3

    const-string v0, "oneplus.shouldPeekInGameMode"

    .line 521
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, p1

    return p0

    :cond_3
    return p1

    :cond_4
    return v1
.end method

.method private blockedByGameMode3rdPartyCall(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 530
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mGameMode3rdPartyCallsUid:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "-1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/oneplus/notification/OpNotificationController;->PRIORITY_LIST_GAME_MODE:Ljava/util/List;

    .line 531
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blockedByReadingMode()Z
    .locals 5

    .line 538
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_status"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 541
    :cond_0
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "reading_mode_block_notification"

    invoke-static {p0, v0, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method private cancelPrivacyAlert(Ljava/lang/String;I)V
    .locals 2

    .line 978
    sget-boolean v0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz v0, :cond_0

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelPrivacyAlert, tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", privacyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpNotificationController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_0
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mNoMan:Landroid/app/NotificationManager;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private cancelPrivacyAlertIfNeeded()V
    .locals 8

    .line 943
    sget-boolean v0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    const-string v1, "PrivacyAlertGroupMicrophone"

    const-string v2, "PrivacyAlertGroupCamera"

    if-eqz v0, :cond_0

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelPrivacyAlertIfNeeded, size of mPrivacyAlertList: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyAlertList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPrivacyGroupCount(Camera): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    .line 945
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mPrivacyGroupCount(Microphone): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    .line 946
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OpNotificationController"

    .line 944
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyAlertList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 950
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 951
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_1

    .line 954
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 955
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v7, v3, 0x1

    if-nez v7, :cond_2

    .line 958
    invoke-direct {p0, v6, v5}, Lcom/oneplus/notification/OpNotificationController;->cancelPrivacyAlert(Ljava/lang/String;I)V

    :cond_2
    and-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_3

    .line 961
    invoke-direct {p0, v6, v4}, Lcom/oneplus/notification/OpNotificationController;->cancelPrivacyAlert(Ljava/lang/String;I)V

    :cond_3
    if-nez v3, :cond_1

    .line 963
    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyAlertList:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 964
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 969
    :cond_4
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "PrivacyAlertSummary"

    if-nez v0, :cond_5

    .line 970
    invoke-direct {p0, v2, v5}, Lcom/oneplus/notification/OpNotificationController;->cancelPrivacyAlert(Ljava/lang/String;I)V

    .line 972
    :cond_5
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_6

    .line 973
    invoke-direct {p0, v2, v4}, Lcom/oneplus/notification/OpNotificationController;->cancelPrivacyAlert(Ljava/lang/String;I)V

    :cond_6
    return-void
.end method

.method private getAppIcon(Landroid/service/notification/StatusBarNotification;)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "OpNotificationController"

    .line 738
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 740
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 742
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Quick Reply: Get package fail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 746
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 747
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 748
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 749
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 750
    :goto_1
    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 751
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 752
    invoke-virtual {p0, v3, v3, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 753
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 755
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Quick Reply: Cannot resolve application icon, pkg: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_2
    return-object v1
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1002
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0

    .line 1004
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to find app name for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpNotificationController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 1

    .line 988
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 991
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "OpNotificationController"

    const-string p1, "cacheIsSystemNotification: Could not find package info"

    .line 993
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getQuickReplyView$0(Landroid/service/notification/StatusBarNotification;Landroid/view/View;)V
    .locals 3

    const-string p2, "landscape_quick_reply"

    const-string v0, "hun_action"

    const-string v1, "2"

    const-string v2, "YLTI9SVG4L"

    .line 675
    invoke-static {p2, v0, v1, v2}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 677
    invoke-direct {p0, p1, p2}, Lcom/oneplus/notification/OpNotificationController;->sentIntent(Landroid/service/notification/StatusBarNotification;Z)V

    return-void
.end method

.method private synthetic lambda$getQuickReplyView$1(Landroid/service/notification/StatusBarNotification;Landroid/view/View;)V
    .locals 3

    .line 684
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPresenter()Lcom/android/systemui/statusbar/NotificationPresenter;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result p2

    const-string v0, "YLTI9SVG4L"

    const-string v1, "1"

    const-string v2, "landscape_quick_reply"

    if-eqz p2, :cond_0

    const-string p2, "hun_action"

    .line 685
    invoke-static {v2, p2, v1, v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "nd_action"

    .line 688
    invoke-static {v2, p2, v1, v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p2, 0x1

    .line 691
    invoke-direct {p0, p1, p2}, Lcom/oneplus/notification/OpNotificationController;->sentIntent(Landroid/service/notification/StatusBarNotification;Z)V

    return-void
.end method

.method private preparePrivacyAlertNotification(ILjava/lang/String;Z)V
    .locals 15

    move-object v7, p0

    move/from16 v0, p1

    move-object/from16 v8, p2

    .line 833
    invoke-direct {p0, v8}, Lcom/oneplus/notification/OpNotificationController;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_0

    move-object v10, v4

    move-object v11, v10

    move-object v12, v11

    move v2, v5

    move v6, v2

    goto :goto_0

    .line 851
    :cond_0
    iget-object v0, v7, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->privacy_type_microphone:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 854
    sget v0, Lcom/android/systemui/R$drawable;->privacy_alert_icon_microphone:I

    .line 855
    iget-object v2, v7, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->privacy_alert_content_title:I

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v1, v10, v5

    aput-object v4, v10, v9

    invoke-virtual {v2, v6, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 856
    iget-object v2, v7, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->privacy_alert_content_text:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "PrivacyAlertGroupMicrophone"

    move-object v11, v1

    move-object v12, v2

    move v2, v3

    move-object v10, v6

    move v6, v0

    goto :goto_0

    .line 843
    :cond_1
    iget-object v0, v7, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->privacy_type_camera:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 846
    sget v0, Lcom/android/systemui/R$drawable;->privacy_alert_icon_camera:I

    .line 847
    iget-object v2, v7, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->privacy_alert_content_title:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object v4, v3, v9

    invoke-virtual {v2, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 848
    iget-object v2, v7, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->privacy_alert_content_text:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PrivacyAlertGroupCamera"

    move v6, v0

    move-object v11, v1

    move-object v12, v2

    move-object v10, v3

    move v2, v9

    .line 862
    :goto_0
    invoke-direct {p0, v8}, Lcom/oneplus/notification/OpNotificationController;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/oneplus/notification/OpNotificationController;->SYSTEM_APP_LIST:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 870
    :cond_2
    iget-object v0, v7, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 872
    iget-object v0, v7, Lcom/oneplus/notification/OpNotificationController;->mPrivacyAlertList:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 873
    iget-object v0, v7, Lcom/oneplus/notification/OpNotificationController;->mPrivacyAlertList:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    and-int v1, v0, v2

    if-ne v1, v9, :cond_4

    move v5, v9

    :cond_4
    if-eqz p3, :cond_5

    if-nez v5, :cond_5

    or-int v14, v0, v2

    move-object v0, p0

    move-object/from16 v1, p2

    move-object v3, v10

    move v4, v6

    move-object v5, v11

    move-object v6, v12

    .line 881
    invoke-direct/range {v0 .. v6}, Lcom/oneplus/notification/OpNotificationController;->sendPrivacyAlertNotification(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v0, v7, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    add-int/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    not-int v1, v2

    and-int v14, v0, v1

    if-lez v13, :cond_6

    .line 886
    iget-object v0, v7, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    sub-int/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    :cond_6
    :goto_2
    iget-object v0, v7, Lcom/oneplus/notification/OpNotificationController;->mPrivacyAlertList:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 863
    :cond_7
    :goto_3
    sget-boolean v0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz v0, :cond_8

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preparePrivacyAlertNotification, stop preparing for system application, packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", privacyName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", privacyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpNotificationController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method private sendPrivacyAlertNotification(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 894
    sget-boolean v5, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz v5, :cond_0

    .line 895
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendPrivacyAlertNotification, packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", privacyType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", group: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OpNotificationController"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_0
    iget-object v5, v0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "android.substName"

    const/4 v7, -0x1

    const/high16 v8, 0x8000000

    const/4 v9, 0x0

    const-string v10, "android.provider.extra.CHANNEL_ID"

    const/high16 v11, 0x10000000

    const-string v12, "privacy_alert"

    const/4 v13, 0x1

    if-nez v5, :cond_1

    .line 900
    new-instance v5, Landroid/content/Intent;

    const-string v14, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 901
    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 902
    invoke-virtual {v5, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 903
    iget-object v14, v0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v14, v9, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 906
    new-instance v14, Landroid/app/Notification$Builder;

    iget-object v15, v0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 907
    invoke-virtual {v14, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 908
    invoke-virtual {v14, v3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 909
    invoke-virtual {v14, v13}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 910
    invoke-virtual {v14, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 911
    invoke-virtual {v14, v13}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 912
    invoke-virtual {v14, v13}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 913
    invoke-virtual {v14, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 914
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 915
    iget-object v14, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v15, v0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    sget v13, Lcom/android/systemui/R$string;->privacy_alert_application_name:I

    invoke-virtual {v15, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v13, v0, Lcom/oneplus/notification/OpNotificationController;->mNoMan:Landroid/app/NotificationManager;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v15, "PrivacyAlertSummary"

    invoke-virtual {v13, v15, v2, v5, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 920
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    const-string v14, "package"

    .line 921
    invoke-static {v14, v1, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    .line 922
    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 923
    invoke-virtual {v5, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 924
    iget-object v10, v0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v10, v9, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 927
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, v0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 928
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 929
    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 930
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    move-object/from16 v4, p5

    .line 931
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    move-object/from16 v4, p6

    .line 932
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 933
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 934
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 935
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 936
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 937
    iget-object v4, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v5, v0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->privacy_alert_application_name:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iget-object v0, v0, Lcom/oneplus/notification/OpNotificationController;->mNoMan:Landroid/app/NotificationManager;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sentIntent(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 11

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launch pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in freeform mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpNotificationController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    .line 701
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 702
    iget-object v2, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 704
    :cond_0
    iget-object v2, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_4

    const/4 p1, 0x0

    .line 707
    :try_start_0
    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getActivityOptionsInternal(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p1

    if-eqz p2, :cond_1

    const/4 p2, 0x5

    .line 709
    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 711
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    const/4 p1, 0x1

    new-array p2, p1, [I

    const/4 v2, 0x0

    const/16 v4, 0xb0

    aput v4, p2, v2

    .line 713
    invoke-static {p2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "android:activity.packageName"

    const-string v2, "OP_EXTRA_REMOTE_INPUT_DRAFT"

    .line 714
    invoke-virtual {v10, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :cond_2
    iget-object v4, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/app/PendingIntent;->sendAndReturnResult(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    .line 719
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getActivityLaunchAnimator()Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 721
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->setLaunchResult(IZ)V

    .line 724
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPresenter()Lcom/android/systemui/statusbar/NotificationPresenter;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 725
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->removeHeadsUps()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 730
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Sending PendingIntent failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private setShowQuickReply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 5

    .line 794
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 796
    :goto_0
    iget-object v4, p0, Lcom/oneplus/notification/OpNotificationController;->mTopActivity:Ljava/lang/String;

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 797
    :goto_1
    invoke-virtual {p0, v0}, Lcom/oneplus/notification/OpNotificationController;->supportQuickReply(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mIsFreeForm:Z

    if-nez p0, :cond_2

    if-nez v4, :cond_2

    if-nez v1, :cond_2

    .line 809
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isContentHidden()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 811
    :goto_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setShowQuickReply(Z)V

    return-void
.end method

.method private showSimpleHeadsUp(ILandroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 585
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 590
    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->getCurrentKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->getCurrentKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/oneplus/notification/OpNotificationController;->hideSimpleHeadsUps()V

    :cond_0
    return-void

    .line 596
    :cond_1
    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isSecure()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 597
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->isLocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 598
    :goto_0
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-virtual {p0, p2, p1, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->show(Landroid/service/notification/StatusBarNotification;ZI)V

    return-void
.end method


# virtual methods
.method public canHeadsUp(Landroid/service/notification/StatusBarNotification;)I
    .locals 3

    .line 381
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/notification/OpNotificationController;->blockedByBrickMode(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "OpNotificationController"

    if-eqz v1, :cond_1

    .line 384
    sget-boolean p0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p0, :cond_0

    .line 385
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: blocked by brick mode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 389
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/notification/OpNotificationController;->blockedByDrivingMode(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 390
    sget-boolean p0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p0, :cond_2

    .line 391
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: blocked by driving mode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x2

    return p0

    .line 395
    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/notification/OpNotificationController;->blockedByEsportsMode(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 396
    sget-boolean p0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p0, :cond_4

    .line 397
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: blocked by esports mode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p0, 0x3

    return p0

    .line 401
    :cond_5
    invoke-direct {p0, p1}, Lcom/oneplus/notification/OpNotificationController;->blockedByGameMode3rdPartyCall(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 402
    sget-boolean p1, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p1, :cond_6

    .line 403
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No heads up: blocked by game mode 3rd party calling, key: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uid: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mGameMode3rdPartyCallsUid:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 p0, 0x5

    return p0

    .line 407
    :cond_7
    invoke-direct {p0, p1}, Lcom/oneplus/notification/OpNotificationController;->blockedByGameMode(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 408
    sget-boolean p0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p0, :cond_8

    .line 409
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: blocked by game mode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 p0, 0x4

    return p0

    .line 413
    :cond_9
    invoke-direct {p0}, Lcom/oneplus/notification/OpNotificationController;->blockedByReadingMode()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 414
    sget-boolean p0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p0, :cond_a

    .line 415
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: blocked by reading mode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 p0, 0x6

    return p0

    :cond_b
    const/4 p0, -0x1

    return p0
.end method

.method public forceInversion(Ljava/lang/String;)Z
    .locals 0

    .line 460
    sget-object p0, Lcom/oneplus/notification/OpNotificationController;->FORCE_INVERTION_LIST:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCallState()I
    .locals 0

    .line 368
    iget p0, p0, Lcom/oneplus/notification/OpNotificationController;->mPhoneState:I

    return p0
.end method

.method public getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-nez v0, :cond_0

    .line 374
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v0, p0, Lcom/oneplus/notification/OpNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 377
    :cond_0
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method public getQuickReplyView(Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
    .locals 5

    .line 654
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->op_quick_reply_notification:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 656
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 657
    sget v2, Lcom/android/systemui/R$id;->app_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 659
    invoke-direct {p0, p1}, Lcom/oneplus/notification/OpNotificationController;->getAppIcon(Landroid/service/notification/StatusBarNotification;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 661
    :cond_0
    sget v2, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 663
    iget-object v3, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    const v4, 0x1010036

    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 666
    :cond_1
    sget v2, Lcom/android/systemui/R$id;->text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 668
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.text"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v1, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    const v3, 0x1010038

    invoke-static {v1, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 671
    :cond_2
    sget v1, Lcom/android/systemui/R$id;->notification_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 673
    new-instance v2, Lcom/oneplus/notification/-$$Lambda$OpNotificationController$jDTWB-lrFm2kPlAyY55_hDtaE7g;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/notification/-$$Lambda$OpNotificationController$jDTWB-lrFm2kPlAyY55_hDtaE7g;-><init>(Lcom/oneplus/notification/OpNotificationController;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    :cond_3
    sget v1, Lcom/android/systemui/R$id;->btn_reply:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 682
    new-instance v2, Lcom/oneplus/notification/-$$Lambda$OpNotificationController$e06XjAOoiFk5LvjE_IIxg3Asym0;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/notification/-$$Lambda$OpNotificationController$e06XjAOoiFk5LvjE_IIxg3Asym0;-><init>(Lcom/oneplus/notification/OpNotificationController;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-object v0
.end method

.method public hideSimpleHeadsUps()V
    .locals 0

    .line 603
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    if-eqz p0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->hide()V

    :cond_0
    return-void
.end method

.method public isFreeFormActive()Z
    .locals 0

    .line 769
    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mIsFreeForm:Z

    return p0
.end method

.method public isPanelDisabledInBrickMode()Z
    .locals 1

    .line 564
    iget-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByBrick:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQuickReplyApp(Ljava/lang/String;)Z
    .locals 0

    .line 773
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mQuickReplyList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$getQuickReplyView$0$OpNotificationController(Landroid/service/notification/StatusBarNotification;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/notification/OpNotificationController;->lambda$getQuickReplyView$0(Landroid/service/notification/StatusBarNotification;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$getQuickReplyView$1$OpNotificationController(Landroid/service/notification/StatusBarNotification;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/notification/OpNotificationController;->lambda$getQuickReplyView$1(Landroid/service/notification/StatusBarNotification;Landroid/view/View;)V

    return-void
.end method

.method public maybeShowSimpleHeadsUp(ILandroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 570
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 573
    iget-boolean p1, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByGame:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/oneplus/notification/OpNotificationController;->mGameModeNotifyType:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 575
    sget-boolean p1, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p1, :cond_0

    .line 576
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show simple heads-up: game mode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpNotificationController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 581
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/notification/OpNotificationController;->showSimpleHeadsUp(ILandroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1192
    iget v0, p0, Lcom/oneplus/notification/OpNotificationController;->mOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    .line 1193
    iput p1, p0, Lcom/oneplus/notification/OpNotificationController;->mOrientation:I

    .line 1195
    invoke-virtual {p0}, Lcom/oneplus/notification/OpNotificationController;->hideSimpleHeadsUps()V

    .line 1198
    invoke-virtual {p0}, Lcom/oneplus/notification/OpNotificationController;->setQuickReplyFlags()V

    :cond_0
    return-void
.end method

.method public setBubbleController(Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 0

    return-void
.end method

.method public setIsFreeForm(Z)V
    .locals 1

    .line 786
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->QUICK_REPLY_BUBBLE:Z

    if-eqz v0, :cond_0

    return-void

    .line 790
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/notification/OpNotificationController;->mIsFreeForm:Z

    return-void
.end method

.method public setQuickReplyFlags()V
    .locals 4

    .line 821
    invoke-virtual {p0}, Lcom/oneplus/notification/OpNotificationController;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {p0}, Lcom/oneplus/notification/OpNotificationController;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getSortedAndFiltered()Ljava/util/ArrayList;

    move-result-object v0

    .line 823
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 824
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/notification/OpNotificationController;->isQuickReplyApp(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->reinflateQuickReply(Z)V

    .line 825
    invoke-direct {p0, v1}, Lcom/oneplus/notification/OpNotificationController;->setShowQuickReply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTopActivity(Ljava/lang/String;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mTopActivity:Ljava/lang/String;

    return-void
.end method

.method public shouldColorizeIcon(Ljava/lang/String;)Z
    .locals 0

    .line 552
    sget-object p0, Lcom/oneplus/notification/OpNotificationController;->ICON_COLORIZE_LIST:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public shouldForceRemoveEntry(Ljava/lang/String;)Z
    .locals 0

    .line 558
    sget-object p0, Lcom/oneplus/notification/OpNotificationController;->LIFETIME_EXTENSION_LIST:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public shouldSuppressFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    .line 430
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/notification/OpNotificationController;->blockedByBrickMode(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "OpNotificationController"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 431
    sget-boolean p0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p0, :cond_0

    .line 432
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Fullscreen intent: suppressed by brick mode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    .line 436
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/notification/OpNotificationController;->blockedByDrivingMode(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 437
    sget-boolean p0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p0, :cond_2

    .line 438
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Fullscreen intent: suppressed by driving mode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    .line 442
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/notification/OpNotificationController;->blockedByEsportsMode(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 443
    sget-boolean p0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p0, :cond_4

    .line 444
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Fullscreen intent: suppressed by esports mode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2

    .line 448
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/notification/OpNotificationController;->blockedByGameMode(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 449
    sget-boolean p0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p0, :cond_6

    .line 450
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Fullscreen intent: suppressed by game mode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v2

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public snoozeHeadsUp(Landroid/app/Notification;)V
    .locals 3

    .line 638
    invoke-virtual {p1}, Landroid/app/Notification;->getSwipeUpHeadsUpIntent()Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 641
    :try_start_0
    sget-boolean v0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpNotificationController"

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "snooze "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " send pending intent "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 646
    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public supportQuickReply(Ljava/lang/String;)Z
    .locals 1

    .line 761
    iget-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mDockedStackExists:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/notification/OpNotificationController;->isQuickReplyApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/oneplus/notification/OpNotificationController;->mOrientation:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateNotificationRule()V
    .locals 2

    .line 1182
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController;->mSettingsObserver:Lcom/oneplus/notification/OpNotificationController$SettingsObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1183
    invoke-virtual {v0, v1}, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1185
    :cond_0
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mOimcObserver:Lcom/oneplus/notification/OpNotificationController$OimcObserver;

    if-eqz p0, :cond_1

    .line 1186
    invoke-virtual {p0, v1}, Lcom/oneplus/notification/OpNotificationController$OimcObserver;->update(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method
