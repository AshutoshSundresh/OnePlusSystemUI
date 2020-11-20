.class public Lcom/android/systemui/doze/DozeSensors;
.super Ljava/lang/Object;
.source "DozeSensors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeSensors$Callback;,
        Lcom/android/systemui/doze/DozeSensors$PluginSensor;,
        Lcom/android/systemui/doze/DozeSensors$TriggerSensor;,
        Lcom/android/systemui/doze/DozeSensors$LightSensor;,
        Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;,
        Lcom/android/systemui/doze/DozeSensors$PickupCheck;,
        Lcom/android/systemui/doze/DozeSensors$MotionCheck;,
        Lcom/android/systemui/doze/DozeSensors$DozeSensorsUiEvent;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;


# instance fields
.field private final mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

.field private final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mCustomProximityCheck:Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;

.field private mDebounceFrom:J

.field private final mHandler:Landroid/os/Handler;

.field private mLightSensor:Lcom/android/systemui/doze/DozeSensors$LightSensor;

.field private mListening:Z

.field private mMotionCheck:Lcom/android/systemui/doze/DozeSensors$MotionCheck;

.field private mPaused:Z

.field private mPickUpCheck:Lcom/android/systemui/doze/DozeSensors$PickupCheck;

.field private final mProxCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityResult:I

.field private final mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field protected mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

.field private mSettingRegistered:Z

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeSensors;->DEBUG:Z

    .line 81
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/doze/DozeSensors;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeSensors$Callback;Ljava/util/function/Consumer;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/doze/DozeHost;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/AlarmManager;",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Landroid/hardware/display/AmbientDisplayConfiguration;",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            "Lcom/android/systemui/doze/DozeSensors$Callback;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/systemui/doze/DozeLog;",
            "Lcom/android/systemui/util/sensors/ProximitySensor;",
            "Lcom/android/systemui/doze/DozeHost;",
            ")V"
        }
    .end annotation

    move-object/from16 v12, p0

    .line 138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    .line 107
    iput v13, v12, Lcom/android/systemui/doze/DozeSensors;->mProximityResult:I

    .line 435
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$2;

    iget-object v1, v12, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/doze/DozeSensors$2;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/os/Handler;)V

    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v0, p1

    .line 141
    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    move-object/from16 v1, p3

    .line 143
    iput-object v1, v12, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-object/from16 v14, p5

    .line 145
    iput-object v14, v12, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    move-object/from16 v1, p6

    .line 146
    iput-object v1, v12, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    move-object/from16 v1, p8

    .line 147
    iput-object v1, v12, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p7

    .line 149
    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    move-object/from16 v0, p10

    .line 150
    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 152
    iget-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v15

    const/4 v0, 0x7

    new-array v11, v0, [Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 153
    new-instance v9, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    iget-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    const/16 v1, 0x11

    .line 155
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 157
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnSigMotion()Z

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZLcom/android/systemui/doze/DozeLog;)V

    aput-object v9, v11, v13

    new-instance v16, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    iget-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    const/16 v1, 0x19

    .line 161
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 164
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/display/AmbientDisplayConfiguration;->dozePickupSensorAvailable()Z

    move-result v5

    const-string v3, "doze_pulse_on_pick_up"

    const/4 v4, 0x1

    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v10, p9

    move-object v13, v11

    move-object/from16 v11, v17

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZLcom/android/systemui/doze/DozeLog;Lcom/android/systemui/doze/DozeSensors$1;)V

    const/4 v11, 0x1

    aput-object v16, v13, v11

    new-instance v9, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 170
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    .line 174
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->doubleTapReportsTouchCoordinates()Z

    move-result v6

    const-string v3, "doze_pulse_on_double_tap"

    const/4 v5, 0x4

    const/4 v7, 0x1

    move-object v0, v9

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZLcom/android/systemui/doze/DozeLog;)V

    const/4 v10, 0x2

    aput-object v9, v13, v10

    new-instance v9, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 178
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    const-string v3, "doze_tap_gesture"

    const/16 v5, 0x9

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZLcom/android/systemui/doze/DozeLog;)V

    const/4 v8, 0x3

    aput-object v9, v13, v8

    new-instance v16, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 186
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/display/AmbientDisplayConfiguration;->longPressSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    const-string v3, "doze_pulse_on_long_press"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v9, 0x1

    move-object/from16 v0, v16

    move v14, v8

    move v8, v9

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZLcom/android/systemui/doze/DozeLog;)V

    const/4 v0, 0x4

    aput-object v16, v13, v0

    new-instance v9, Lcom/android/systemui/doze/DozeSensors$PluginSensor;

    new-instance v2, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    invoke-direct {v2, v10}, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;-><init>(I)V

    iget-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 197
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v15, :cond_0

    move v4, v11

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "doze_wake_display_gesture"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIZZLcom/android/systemui/doze/DozeLog;)V

    const/4 v0, 0x5

    aput-object v9, v13, v0

    const/4 v15, 0x6

    new-instance v16, Lcom/android/systemui/doze/DozeSensors$PluginSensor;

    new-instance v2, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    invoke-direct {v2, v11}, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;-><init>(I)V

    iget-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 205
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    move-result v4

    const/16 v5, 0x8

    iget-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 209
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->getWakeLockScreenDebounce()J

    move-result-wide v8

    const-string v3, "doze_wake_screen_gesture"

    move-object/from16 v0, v16

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIZZJLcom/android/systemui/doze/DozeLog;)V

    aput-object v16, v13, v15

    iput-object v13, v12, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 214
    invoke-interface/range {p11 .. p11}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPulsingBlocked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DozeSensors"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v11, [I

    const/16 v2, 0x3c

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 216
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 217
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;

    invoke-direct {v0, v12, v11, v14}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;-><init>(Lcom/android/systemui/doze/DozeSensors;ZI)V

    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mMotionCheck:Lcom/android/systemui/doze/DozeSensors$MotionCheck;

    .line 218
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$1;

    invoke-direct {v0, v12}, Lcom/android/systemui/doze/DozeSensors$1;-><init>(Lcom/android/systemui/doze/DozeSensors;)V

    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mCustomProximityCheck:Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;

    .line 236
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$LightSensor;

    invoke-direct {v0, v12}, Lcom/android/systemui/doze/DozeSensors$LightSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;)V

    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mLightSensor:Lcom/android/systemui/doze/DozeSensors$LightSensor;

    goto :goto_1

    .line 239
    :cond_1
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;

    invoke-direct {v0, v12}, Lcom/android/systemui/doze/DozeSensors$PickupCheck;-><init>(Lcom/android/systemui/doze/DozeSensors;)V

    iput-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mPickUpCheck:Lcom/android/systemui/doze/DozeSensors$PickupCheck;

    :goto_1
    const/4 v0, 0x0

    .line 243
    invoke-virtual {v12, v0}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    .line 244
    iget-object v0, v12, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    new-instance v1, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$eWcsfaBj95QArTbTaV_jJjjsPh4;

    invoke-direct {v1, v12}, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$eWcsfaBj95QArTbTaV_jJjjsPh4;-><init>(Lcom/android/systemui/doze/DozeSensors;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/sensors/ProximitySensor;->register(Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;)Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/doze/DozeSensors;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProximityResult:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/doze/DozeSensors;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/systemui/doze/DozeSensors;->mProximityResult:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/ContentResolver;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/doze/DozeSensors;)Landroid/database/ContentObserver;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/android/internal/logging/UiEventLogger;
    .locals 1

    .line 77
    sget-object v0, Lcom/android/systemui/doze/DozeSensors;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/doze/DozeSensors;)J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/android/systemui/doze/DozeSensors;->mDebounceFrom:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$MotionCheck;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mMotionCheck:Lcom/android/systemui/doze/DozeSensors$MotionCheck;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    return-object p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 77
    sget-boolean v0, Lcom/android/systemui/doze/DozeSensors;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/doze/DozeSensors;)Ljava/util/function/Consumer;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static findSensorWithType(Landroid/hardware/SensorManager;Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 3

    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, -0x1

    .line 285
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    .line 286
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 287
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    return-object v1
.end method

.method private findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    invoke-static {p0, p1}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Landroid/hardware/SensorManager;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 247
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;->getNear()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private shouldListenProximity()Z
    .locals 3

    const/4 p0, 0x1

    new-array v0, p0, [I

    const/16 v1, 0x5b

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 408
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, p0, [I

    const/16 v1, 0x3c

    aput v1, v0, v2

    .line 409
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 5

    .line 263
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 264
    invoke-virtual {v4, v2}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 266
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->pause()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 462
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Sensor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ProxSensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCustomProximityResult()I
    .locals 0

    .line 254
    iget p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProximityResult:I

    return p0
.end method

.method public isProximityCurrentlyNear()Ljava/lang/Boolean;
    .locals 0

    .line 472
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->isNear()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$0$DozeSensors(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeSensors;->lambda$new$0(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;)V

    return-void
.end method

.method public onUserSwitched()V
    .locals 3

    .line 387
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 388
    invoke-virtual {v2}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requestTemporaryDisable()V
    .locals 2

    .line 274
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/doze/DozeSensors;->mDebounceFrom:J

    return-void
.end method

.method public resetMotionValue()V
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mMotionCheck:Lcom/android/systemui/doze/DozeSensors$MotionCheck;

    if-eqz p0, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->resetCurrentState()V

    :cond_0
    return-void
.end method

.method public setCustomProxListening(Z)V
    .locals 1

    .line 395
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors;->shouldListenProximity()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 400
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mCustomProximityCheck:Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;

    if-eqz p0, :cond_1

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->setListening(Z)V

    :cond_1
    return-void
.end method

.method public setLightSensorListening(Z)V
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mLightSensor:Lcom/android/systemui/doze/DozeSensors$LightSensor;

    if-eqz p0, :cond_0

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeSensors$LightSensor;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 4

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setListening: mListening="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", listen= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 301
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DozeSensors"

    .line 299
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isMotionAwakeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 305
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setListening: adjustListen= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mMotionCheck:Lcom/android/systemui/doze/DozeSensors$MotionCheck;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->isListened()Z

    move-result v0

    if-eq v0, v1, :cond_1

    .line 307
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mMotionCheck:Lcom/android/systemui/doze/DozeSensors$MotionCheck;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->setListening(Z)V

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mPickUpCheck:Lcom/android/systemui/doze/DozeSensors$PickupCheck;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->isListened()Z

    move-result v0

    if-eq v0, v1, :cond_2

    .line 310
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mPickUpCheck:Lcom/android/systemui/doze/DozeSensors$PickupCheck;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->setListening(Z)V

    .line 314
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    if-ne v0, p1, :cond_3

    return-void

    .line 318
    :cond_3
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    .line 319
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors;->updateListening()V

    return-void
.end method

.method public setPaused(Z)V
    .locals 1

    .line 327
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mPaused:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 330
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors;->mPaused:Z

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors;->updateListening()V

    return-void
.end method

.method public setProxListening(Z)V
    .locals 1

    .line 419
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors;->shouldListenProximity()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-virtual {v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 425
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->alertListeners()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 428
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->resume()V

    goto :goto_0

    .line 430
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->pause()V

    :goto_0
    return-void
.end method

.method public setTouchscreenSensorsListening(Z)V
    .locals 4

    .line 379
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 380
    invoke-static {v2}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->access$400(Lcom/android/systemui/doze/DozeSensors$TriggerSensor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    invoke-virtual {v2, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateListening()V
    .locals 8

    .line 339
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    aget-object v6, v0, v3

    .line 340
    iget-boolean v7, p0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    invoke-virtual {v6, v7}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    .line 341
    iget-boolean v6, p0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 347
    :cond_1
    sget-boolean v0, Lcom/android/systemui/doze/DozeSensors;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateListening: mPaused = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors;->mPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callstack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeSensors"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mMotionCheck:Lcom/android/systemui/doze/DozeSensors$MotionCheck;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->isListened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mMotionCheck:Lcom/android/systemui/doze/DozeSensors$MotionCheck;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors;->mPaused:Z

    xor-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->setListening(Z)V

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mLightSensor:Lcom/android/systemui/doze/DozeSensors$LightSensor;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors$LightSensor;->isListened()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 355
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mLightSensor:Lcom/android/systemui/doze/DozeSensors$LightSensor;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors;->mPaused:Z

    xor-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeSensors$LightSensor;->setListening(Z)V

    :cond_4
    if-nez v4, :cond_5

    .line 360
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_2

    .line 361
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingRegistered:Z

    if-nez v0, :cond_6

    .line 362
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 363
    iget-object v5, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->registerSettingsObserver(Landroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 366
    :cond_6
    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingRegistered:Z

    return-void
.end method
