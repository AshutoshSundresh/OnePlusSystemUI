.class Lcom/android/systemui/doze/DozeSensors$LightSensor;
.super Ljava/lang/Object;
.source "DozeSensors.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightSensor"
.end annotation


# instance fields
.field private final LIGHT_DETECT_INTERVAL:I

.field private final LIGHT_SENSOR_ENABLED:Z

.field private mLowLightCounter:I

.field mRegistered:Z

.field mRegisteredSensor:Z

.field private mSensorType:I

.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;)V
    .locals 1

    .line 853
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "debug.aod_low_light_duration"

    const v0, 0x493e0

    .line 844
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->LIGHT_DETECT_INTERVAL:I

    const-string p1, "debug.aod_low_light_detect.enabled"

    const/4 v0, 0x1

    .line 845
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->LIGHT_SENSOR_ENABLED:Z

    const/4 p1, 0x0

    .line 847
    iput p1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mLowLightCounter:I

    .line 851
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegisteredSensor:Z

    const/4 p1, 0x5

    .line 854
    iput p1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mSensorType:I

    return-void
.end method

.method private release()V
    .locals 2

    .line 922
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 924
    iput v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mLowLightCounter:I

    .line 925
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegistered:Z

    .line 926
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 927
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegisteredSensor:Z

    if-eqz v1, :cond_1

    .line 928
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 930
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegisteredSensor:Z

    return-void
.end method


# virtual methods
.method public check()V
    .locals 3

    .line 873
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$600()Z

    move-result v0

    const-string v1, "DozeSensor.LightSensor"

    if-eqz v0, :cond_0

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRegistered = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegistered:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", sensor registed = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegisteredSensor:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegistered:Z

    if-eqz v0, :cond_1

    return-void

    .line 877
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mSensorType:I

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_3

    .line 879
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$600()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "No sensor found"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 883
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->LIGHT_DETECT_INTERVAL:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 884
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegistered:Z

    return-void
.end method

.method public isListened()Z
    .locals 0

    .line 935
    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegistered:Z

    return p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 889
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$600()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Light values = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", low_light_counter = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mLowLightCounter:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DozeSensor.LightSensor"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float p1, p1, v0

    const/4 v0, 0x3

    if-gtz p1, :cond_1

    .line 894
    iget p1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mLowLightCounter:I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mLowLightCounter:I

    if-lt p1, v0, :cond_2

    .line 896
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->onAlwaysOnEnableChanged(Z)V

    .line 897
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$800(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    .line 898
    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getAodAlwaysOnController()Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->setLowLightEnvironment(Z)V

    goto :goto_0

    .line 901
    :cond_1
    iput v1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mLowLightCounter:I

    .line 903
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 904
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegisteredSensor:Z

    .line 905
    iget p1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mLowLightCounter:I

    if-ge p1, v0, :cond_3

    .line 906
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->LIGHT_DETECT_INTERVAL:I

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public run()V
    .locals 8

    .line 912
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LightSensor run, registeredSensor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegisteredSensor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeSensor.LightSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mSensorType:I

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    .line 916
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 917
    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v7

    move-object v3, p0

    .line 916
    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    const/4 v0, 0x1

    .line 918
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegisteredSensor:Z

    return-void
.end method

.method public setListening(Z)V
    .locals 3

    .line 858
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->LIGHT_SENSOR_ENABLED:Z

    const-string v1, "DozeSensor.LightSensor"

    if-eqz v0, :cond_2

    .line 859
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListening = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 863
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$LightSensor;->check()V

    goto :goto_0

    .line 865
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$LightSensor;->release()V

    goto :goto_0

    :cond_2
    const-string p0, "disable light sensor"

    .line 868
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
