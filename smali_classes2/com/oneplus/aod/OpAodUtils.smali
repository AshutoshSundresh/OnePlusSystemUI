.class public Lcom/oneplus/aod/OpAodUtils;
.super Ljava/lang/Object;
.source "OpAodUtils.java"


# static fields
.field private static mIsAlwaysOnModeEnabled:Z

.field private static mIsNotificationWakeUpEnabled:Z

.field private static mMotionAwakeOn:Z

.field private static mSingleTapAwakeOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public static checkAodStyle(Landroid/content/Context;I)V
    .locals 4

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_clock_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 328
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 330
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    xor-int/2addr v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    const-string v0, "OPAodUtils"

    const-string v3, "Reset aod clock style for user"

    .line 339
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    return-void
.end method

.method public static getDeviceTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.boot.project_name"

    .line 89
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 0

    .line 85
    invoke-static {p0, p1}, Lcom/oneplus/aod/OpAodUtils;->updateDozeSettings(Landroid/content/Context;I)V

    return-void
.end method

.method public static isAlwaysOnEnabled()Z
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAlwaysOnEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/aod/OpAodUtils;->mIsAlwaysOnModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAodUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sys.aod.localtest"

    .line 123
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isAlwaysOnEnabledWithTimer()Z
    .locals 4

    const-string v0, "sys.aod.localtest.timer"

    .line 133
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAlwaysOnEnabledWithTimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OPAodUtils"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAodNoneClockStyle(Landroid/content/Context;I)Z
    .locals 2

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "aod_clock_style"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    return v1
.end method

.method public static isCustomFingerprint()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3c

    aput v2, v0, v1

    .line 187
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isDefaultAodClockStyle(Landroid/content/Context;I)Z
    .locals 2

    .line 347
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "aod_clock_style"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static isMotionAwakeOn()Z
    .locals 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMotionAwakeOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/aod/OpAodUtils;->mMotionAwakeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAodUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 95
    sget-boolean v2, Lcom/oneplus/aod/OpAodUtils;->mMotionAwakeOn:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isMotionAwakeOn: override because always on is enabled"

    .line 96
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    .line 99
    :cond_0
    sget-boolean v0, Lcom/oneplus/aod/OpAodUtils;->mMotionAwakeOn:Z

    return v0
.end method

.method public static isNotificationLightEnabled()Z
    .locals 4

    const-string v0, "sys.aod.notif_light_switch"

    const/4 v1, 0x0

    .line 193
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x2

    if-ne v3, v0, :cond_1

    return v1

    :cond_1
    new-array v0, v2, [I

    const/16 v2, 0x6a

    aput v2, v0, v1

    .line 200
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isNotificationWakeUpEnabled()Z
    .locals 1

    .line 153
    sget-boolean v0, Lcom/oneplus/aod/OpAodUtils;->mIsNotificationWakeUpEnabled:Z

    return v0
.end method

.method public static isSingleTapEnabled()Z
    .locals 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSingleTapEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/aod/OpAodUtils;->mSingleTapAwakeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAodUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 177
    sget-boolean v2, Lcom/oneplus/aod/OpAodUtils;->mSingleTapAwakeOn:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isSingleTapEnabled: override because always on is enabled"

    .line 178
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    .line 181
    :cond_0
    sget-boolean v0, Lcom/oneplus/aod/OpAodUtils;->mSingleTapAwakeOn:Z

    return v0
.end method

.method public static isSupportAlwaysOn()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x12c

    aput v2, v0, v1

    .line 170
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static shouldTurnOnAodGesture(Landroid/content/Context;I)V
    .locals 11

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_use_ambient_display_enabled"

    const/4 v2, 0x1

    .line 367
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v4, "notification_wake_enabled"

    const-string v5, "prox_wake_enabled"

    if-nez v0, :cond_4

    .line 372
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "orig_prox_wake_enabled"

    invoke-static {v6, v7, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v2, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v3

    .line 374
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "orig_single_tap_show_aod_enabled"

    invoke-static {v7, v8, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v2, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v3

    .line 376
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "orig_notification_wake_enabled"

    invoke-static {v8, v9, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v2, :cond_3

    :goto_3
    move v8, v2

    goto :goto_5

    :cond_3
    move v8, v3

    goto :goto_5

    .line 379
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v2, :cond_5

    move v6, v2

    goto :goto_4

    :cond_5
    move v6, v3

    .line 381
    :goto_4
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isSingleTapEnabled()Z

    move-result v7

    .line 382
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v4, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v2, :cond_3

    goto :goto_3

    .line 386
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "shouldTurnOnAodGesture: main= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", pickUp= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", tap= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", aodNotification= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "OPAodUtils"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    if-nez v6, :cond_b

    if-nez v7, :cond_b

    :cond_6
    if-nez v6, :cond_7

    if-nez v7, :cond_7

    move v6, v2

    move v7, v6

    .line 398
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "doze_enabled"

    invoke-static {v0, v9, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 401
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v6, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v8, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 405
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_smart_display_enabled"

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 409
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v0, v1, v3, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v7, :cond_8

    or-int/lit16 v0, v0, 0x800

    new-array v4, v2, [I

    const/16 v5, 0x114

    aput v5, v4, v3

    .line 416
    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-nez v4, :cond_9

    const v4, 0xff7f

    goto :goto_6

    :cond_8
    const v4, 0xf7ff

    :goto_6
    and-int/2addr v0, v4

    :cond_9
    const-string v4, "fingerprint"

    .line 424
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager;

    .line 426
    invoke-virtual {v4, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v4

    if-eqz v4, :cond_a

    const v4, 0x8000

    or-int/2addr v0, v4

    .line 429
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v0, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 434
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "always_on_state"

    invoke-static {v0, v1, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v4, 0x2

    const-string v5, "doze_always_on"

    if-ne v0, v4, :cond_c

    const-string v4, "sys.c.aod.test.burnin"

    .line 437
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v0, "always on enabled"

    .line 438
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_7

    :cond_c
    if-eqz v0, :cond_d

    const-string v0, "always on disabled"

    .line 441
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 443
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "always_on_all_day"

    invoke-static {v0, v1, v3, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 444
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v3, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 447
    :cond_d
    :goto_7
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oneplus.intent.action.aod.schedule"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    .line 448
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 449
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static updateAlwaysOnState(Landroid/content/Context;I)V
    .locals 4

    const-string v0, "OPAodUtils"

    .line 140
    sget-boolean v1, Lcom/oneplus/aod/OpAodUtils;->mMotionAwakeOn:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isSupportAlwaysOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "aod_display_mode"

    invoke-static {p0, v1, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    sput-boolean v2, Lcom/oneplus/aod/OpAodUtils;->mIsAlwaysOnModeEnabled:Z

    if-eqz v2, :cond_1

    const-string p0, "0"

    goto :goto_1

    :cond_1
    const-string p0, "1"

    :goto_1
    :try_start_0
    const-string v1, "sys.aod.disable"

    .line 144
    invoke-static {v1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAlwaysOnState: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/aod/OpAodUtils;->mIsAlwaysOnModeEnabled:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", user = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateDozeSettings(Landroid/content/Context;I)V
    .locals 0

    .line 162
    invoke-static {p0, p1}, Lcom/oneplus/aod/OpAodUtils;->updateMotionAwakeState(Landroid/content/Context;I)V

    .line 164
    invoke-static {p0, p1}, Lcom/oneplus/aod/OpAodUtils;->updateSingleTapAwakeState(Landroid/content/Context;I)V

    .line 166
    invoke-static {p0, p1}, Lcom/oneplus/aod/OpAodUtils;->updateNotificationWakeState(Landroid/content/Context;I)V

    return-void
.end method

.method public static updateMotionAwakeState(Landroid/content/Context;I)V
    .locals 3

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prox_wake_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/oneplus/aod/OpAodUtils;->mMotionAwakeOn:Z

    .line 104
    invoke-static {p0, p1}, Lcom/oneplus/aod/OpAodUtils;->updateAlwaysOnState(Landroid/content/Context;I)V

    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateMotionAwakeState: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/aod/OpAodUtils;->mMotionAwakeOn:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", user = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPAodUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateNotificationWakeState(Landroid/content/Context;I)V
    .locals 2

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "notification_wake_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/oneplus/aod/OpAodUtils;->mIsNotificationWakeUpEnabled:Z

    .line 158
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateNotificationWakeState: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/aod/OpAodUtils;->mIsNotificationWakeUpEnabled:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", user = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPAodUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateSingleTapAwakeState(Landroid/content/Context;I)V
    .locals 2

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oem_acc_blackscreen_gestrue_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    and-int/lit16 p0, p0, 0x800

    shr-int/lit8 p0, p0, 0xb

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    .line 113
    :cond_0
    sput-boolean v1, Lcom/oneplus/aod/OpAodUtils;->mSingleTapAwakeOn:Z

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateSingleTapAwakeState: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/aod/OpAodUtils;->mSingleTapAwakeOn:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", user = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPAodUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
