.class public Lcom/oneplus/worklife/OPWLBHelper;
.super Ljava/lang/Object;
.source "OPWLBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;
    }
.end annotation


# static fields
.field private static sOpwlbHelper:Lcom/oneplus/worklife/OPWLBHelper;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mBreakMode:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mLastWifiConnected:Z

.field private mMediaNotificationKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mNotificationEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

.field private mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mWLBModeChangeListener:Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mMediaNotificationKeys:Ljava/util/Set;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    .line 92
    iput v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mBreakMode:I

    .line 208
    new-instance v0, Lcom/oneplus/worklife/OPWLBHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/worklife/OPWLBHelper$1;-><init>(Lcom/oneplus/worklife/OPWLBHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 226
    new-instance v0, Lcom/oneplus/worklife/OPWLBHelper$2;

    invoke-direct {v0, p0}, Lcom/oneplus/worklife/OPWLBHelper$2;-><init>(Lcom/oneplus/worklife/OPWLBHelper;)V

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 381
    new-instance v0, Lcom/oneplus/worklife/OPWLBHelper$3;

    invoke-direct {v0, p0}, Lcom/oneplus/worklife/OPWLBHelper$3;-><init>(Lcom/oneplus/worklife/OPWLBHelper;)V

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mNotificationEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 392
    new-instance v0, Lcom/oneplus/worklife/OPWLBHelper$4;

    iget-object v1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/worklife/OPWLBHelper$4;-><init>(Lcom/oneplus/worklife/OPWLBHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 111
    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    const-string p1, "notification"

    .line 113
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 112
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mINotificationManager:Landroid/app/INotificationManager;

    .line 114
    iget-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 115
    iget-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 116
    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBHelper;->readCurrentMode()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/worklife/OPWLBHelper;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    return p0
.end method

.method static synthetic access$100(Lcom/oneplus/worklife/OPWLBHelper;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mBreakMode:I

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/worklife/OPWLBHelper;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBHelper;->readCurrentMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/worklife/OPWLBHelper;)Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mWLBModeChangeListener:Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/worklife/OPWLBHelper;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/worklife/OPWLBHelper;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/worklife/OPWLBHelper;)Ljava/lang/Long;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBHelper;->getAppStartedTimestamp()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/worklife/OPWLBHelper;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/oneplus/worklife/OPWLBHelper;->sendNotificationAddedBroadcast(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/worklife/OPWLBHelper;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBHelper;->isDeviceProvisionedInSettingsDb()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/oneplus/worklife/OPWLBHelper;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBHelper;->persistAppStartMillis()V

    return-void
.end method

.method private getAppStartedTimestamp()Ljava/lang/Long;
    .locals 3

    .line 128
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "app_started_timestamp"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/worklife/OPWLBHelper;
    .locals 1

    .line 103
    sget-object v0, Lcom/oneplus/worklife/OPWLBHelper;->sOpwlbHelper:Lcom/oneplus/worklife/OPWLBHelper;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/oneplus/worklife/OPWLBHelper;

    invoke-direct {v0, p0}, Lcom/oneplus/worklife/OPWLBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/worklife/OPWLBHelper;->sOpwlbHelper:Lcom/oneplus/worklife/OPWLBHelper;

    .line 106
    :cond_0
    sget-object p0, Lcom/oneplus/worklife/OPWLBHelper;->sOpwlbHelper:Lcom/oneplus/worklife/OPWLBHelper;

    return-object p0
.end method

.method public static isBreakModeActive(Landroid/content/Context;)Z
    .locals 2

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_wlb_break_mode_activated"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .locals 2

    .line 405
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isGAccountNotificationAllowed(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)Z
    .locals 5

    .line 313
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mINotificationManager:Landroid/app/INotificationManager;

    const/4 v1, 0x0

    const-string v2, "OPSystemUIWLBHelper"

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    .line 316
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object p2

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notification : Notification details : pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " grp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 321
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/worklife/OPWLBHelper;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v3, p2, v0, p1}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 323
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    .line 325
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 326
    iget-object p2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 327
    iget v3, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    and-int/2addr p2, v3

    iget p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    if-ne p2, p0, :cond_1

    .line 328
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "notificationChannel isBlocked:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " pkg:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 334
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unable to find the notification channel:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "notification manager is null"

    .line 338
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method private persistAppStartMillis()V
    .locals 4

    .line 120
    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBHelper;->getAppStartedTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persistAppStartMillis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSystemUIWLBHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "app_started_timestamp"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method private readCurrentMode()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_wlb_activated_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    .line 205
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_wlb_break_mode_activated"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mBreakMode:I

    return-void
.end method

.method private sendConnectedBroadcast(Z)V
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wificonnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSystemUIWLBHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.intent.ACTION_WIFI_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.opwlb"

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_connected"

    .line 149
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendNotificationAddedBroadcast(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendNotificationAddedBroadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSystemUIWLBHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Package name not found"

    .line 156
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 159
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.intent.NOTIFICATION_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.opwlb"

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package_name"

    .line 161
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "first_boot_time"

    .line 162
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 163
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getNotificationEntryListener()Lcom/android/systemui/statusbar/notification/NotificationEntryListener;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mNotificationEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    return-object p0
.end method

.method public isApplicationBlocked(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)Z
    .locals 7

    const-string v0, "OPSystemUIWLBHelper"

    .line 249
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {p0, p1}, Lcom/oneplus/worklife/OPWLBHelper;->isMediaNotificationAllowed(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 253
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/oneplus/worklife/OPWLBHelper;->mBreakMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 257
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/worklife/OPWLBHelper;->isGAccountNotificationAllowed(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v5

    :cond_1
    const/4 p1, 0x0

    .line 263
    :try_start_0
    iget-object p2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {p2, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v2, "Couldn\'t find package"

    .line 265
    invoke-static {v0, v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez p1, :cond_2

    return v3

    .line 270
    :cond_2
    iget p2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    const/4 v2, 0x2

    const-string v4, "isApplicationBlocked "

    const-string v6, " "

    if-ne p2, v2, :cond_4

    .line 271
    iget-object p2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x3f1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v2, p1, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    .line 272
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    move v3, v5

    :cond_3
    return v3

    :cond_4
    if-ne p2, v5, :cond_5

    .line 275
    iget-object p2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x3f0

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v2, p1, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    .line 276
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_5

    move v3, v5

    :cond_5
    :goto_1
    return v3
.end method

.method public isMediaNotificationAllowed(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 345
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 347
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSystemUIWLBHelper"

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added Media Notification Key :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mMediaNotificationKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_0
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mMediaNotificationKeys:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Allowed Media Notification Key :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onAllNotificationsCleared()V
    .locals 3

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.intent.NOTIFICATION_CLEAR_ALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.opwlb"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBHelper;->getAppStartedTimestamp()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "first_boot_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 174
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public processWifiConnectivity(Z)V
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mLastWifiConnected:Z

    if-eq v0, p1, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lcom/oneplus/worklife/OPWLBHelper;->sendConnectedBroadcast(Z)V

    .line 134
    iput-boolean p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mLastWifiConnected:Z

    :cond_0
    return-void
.end method

.method public registerChanges(Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;)V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_wlb_activated_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 181
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 182
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_wlb_break_mode_activated"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.oneplus.wlb.intent.ACTION_RELOAD_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.intent.action_DISABLE_WLB_FEATURE"

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mWLBModeChangeListener:Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;

    return-void
.end method

.method public removeNotificationKey(Ljava/lang/String;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mMediaNotificationKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mMediaNotificationKeys:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public sendShutDownBroadcast()V
    .locals 2

    const-string v0, "OPSystemUIWLBHelper"

    const-string v1, "sending Shutdown event to WLB"

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.intent.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.opwlb"

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
