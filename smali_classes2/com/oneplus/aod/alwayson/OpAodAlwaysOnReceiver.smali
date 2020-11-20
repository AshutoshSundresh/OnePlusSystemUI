.class public Lcom/oneplus/aod/alwayson/OpAodAlwaysOnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpAodAlwaysOnReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static createAodSchedulePeningIntent(Landroid/content/Context;IZ)Landroid/app/PendingIntent;
    .locals 2

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.intent.action.aod.schedule"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "alwaysOnEnabled"

    .line 175
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "id"

    .line 176
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 177
    invoke-static {p0, p1, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static updateScheduleAlwaysOn(Landroid/content/Context;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "aod_use_ambient_display_enabled"

    const/4 v4, 0x1

    .line 49
    invoke-static {v2, v3, v4, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v5, 0x0

    if-ne v4, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    const-string v6, "always_on_state"

    .line 50
    invoke-static {v2, v6, v5, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    const/4 v8, 0x2

    if-ne v6, v8, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    const-string v8, "always_on_time_start"

    .line 54
    invoke-static {v2, v8, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "always_on_time_end"

    .line 55
    invoke-static {v2, v9, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 57
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateScheduleAlwaysOn , aodMainSwitchEnabled:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", aodScheduleEnabled:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", aodScheduleAllDayOn:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", aodScheduleTimeStart:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", aodScheduleTimeEnd:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "AodAlwaysOnReceiver"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_3

    const-string v8, "08:00"

    :cond_3
    if-nez v2, :cond_4

    const-string v2, "22:00"

    :cond_4
    const-string v9, "alarm"

    .line 71
    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    if-eqz v3, :cond_5

    if-nez v7, :cond_6

    .line 76
    :cond_5
    invoke-static {v0, v5, v5}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnReceiver;->createAodSchedulePeningIntent(Landroid/content/Context;IZ)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 77
    invoke-static {v0, v4, v5}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnReceiver;->createAodSchedulePeningIntent(Landroid/content/Context;IZ)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_6
    if-eqz v3, :cond_7

    if-eqz v7, :cond_7

    if-eqz v6, :cond_7

    .line 81
    invoke-static {v0, v5, v5}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnReceiver;->createAodSchedulePeningIntent(Landroid/content/Context;IZ)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 82
    invoke-static {v0, v4, v5}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnReceiver;->createAodSchedulePeningIntent(Landroid/content/Context;IZ)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_7
    if-eqz v3, :cond_12

    if-eqz v7, :cond_12

    if-nez v6, :cond_12

    if-eqz v8, :cond_12

    if-eqz v2, :cond_12

    .line 86
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, ":"

    .line 87
    invoke-virtual {v8, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 88
    aget-object v7, v6, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x64

    aget-object v8, v6, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 91
    aget-object v8, v2, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    aget-object v11, v2, v4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v8, v11

    .line 93
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "HH:mm"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 95
    invoke-virtual {v11, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 96
    aget-object v11, v3, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x64

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v11, v3

    if-lt v8, v7, :cond_8

    if-lt v11, v7, :cond_8

    if-gt v8, v11, :cond_9

    :cond_8
    if-lt v7, v8, :cond_a

    if-ge v11, v7, :cond_9

    if-ge v11, v8, :cond_a

    :cond_9
    move v3, v4

    goto :goto_3

    :cond_a
    move v3, v5

    .line 103
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "doze_always_on"

    invoke-static {v12, v13, v5, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-ne v4, v12, :cond_b

    move v12, v4

    goto :goto_4

    :cond_b
    move v12, v5

    .line 105
    :goto_4
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/oneplus/plugin/OpLsState;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v14

    if-nez v14, :cond_c

    const-string v0, "can\'t get KeyguardUpdateMonitor object"

    .line 108
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 112
    :cond_c
    invoke-virtual {v14}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getAodAlwaysOnController()Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    move-result-object v15

    invoke-virtual {v15, v3}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->setAlwaysOnState(Z)V

    .line 113
    invoke-virtual {v14}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v14

    .line 116
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScheduleAlwaysOn, start:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", end:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", current:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", alwaysOnEnabled:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", lastAlwaysOnEnabled:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", alwaysOnCanEnabled: "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v13, v3, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eq v12, v3, :cond_e

    .line 120
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v3, :cond_d

    if-eqz v14, :cond_d

    const/4 v4, 0x1

    goto :goto_5

    :cond_d
    move v4, v5

    :goto_5
    invoke-virtual {v1, v4}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->onAlwaysOnEnableChanged(Z)V

    .line 127
    :cond_e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 128
    aget-object v4, v6, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v7, 0xb

    invoke-virtual {v1, v7, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x1

    .line 129
    aget-object v8, v6, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v11, 0xc

    invoke-virtual {v1, v11, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    .line 130
    invoke-virtual {v1, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 133
    aget-object v13, v2, v5

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v7, v13}, Ljava/util/Calendar;->set(II)V

    .line 134
    aget-object v7, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v12, v11, v7}, Ljava/util/Calendar;->set(II)V

    .line 135
    invoke-virtual {v12, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v7, v7, v13

    const/4 v8, 0x6

    if-lez v7, :cond_f

    .line 138
    invoke-virtual {v1, v8, v4}, Ljava/util/Calendar;->add(II)V

    .line 141
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    cmp-long v7, v13, v15

    if-lez v7, :cond_10

    .line 142
    invoke-virtual {v12, v8, v4}, Ljava/util/Calendar;->add(II)V

    .line 145
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "splitTimeStartString:."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v6, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v6, v4

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", splitTimeEndString:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v5

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v4

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", calendarStart.getTimeInMillis():"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", Date:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-direct {v4, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", calendarEnd.getTimeInMillis():"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-direct {v2, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {v0, v5, v3}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnReceiver;->createAodSchedulePeningIntent(Landroid/content/Context;IZ)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v2, 0x1

    .line 151
    invoke-static {v0, v2, v3}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnReceiver;->createAodSchedulePeningIntent(Landroid/content/Context;IZ)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v2, v6, v10

    if-gez v2, :cond_11

    .line 156
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 157
    invoke-static {v0, v5, v3}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnReceiver;->createAodSchedulePeningIntent(Landroid/content/Context;IZ)Landroid/app/PendingIntent;

    move-result-object v4

    .line 154
    invoke-virtual {v9, v5, v1, v2, v4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 160
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v1, v1, v6

    if-gez v1, :cond_12

    .line 163
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/4 v4, 0x1

    .line 164
    invoke-static {v0, v4, v3}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnReceiver;->createAodSchedulePeningIntent(Landroid/content/Context;IZ)Landroid/app/PendingIntent;

    move-result-object v0

    .line 161
    invoke-virtual {v9, v5, v1, v2, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AodAlwaysOnReceiver"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-static {p1, p0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnReceiver;->updateScheduleAlwaysOn(Landroid/content/Context;I)V

    return-void
.end method
