.class final Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;
.super Ljava/lang/Object;
.source "DaggerTvSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DependencyInjectorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)V
    .locals 0

    .line 4344
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V
    .locals 0

    .line 4343
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)V

    return-void
.end method

.method private injectDependency(Lcom/android/systemui/Dependency;)Lcom/android/systemui/Dependency;
    .locals 1

    .line 4352
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4353
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dump/DumpManager;

    .line 4352
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDumpManager(Lcom/android/systemui/Dependency;Lcom/android/systemui/dump/DumpManager;)V

    .line 4354
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4357
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4356
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4354
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityStarter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4358
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4360
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4358
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBroadcastDispatcher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4361
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4363
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4361
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAsyncSensorManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4364
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4367
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4366
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4364
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBluetoothController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4368
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4371
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4370
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4368
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4372
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4375
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4374
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4372
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRotationLockController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4376
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4379
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4378
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4376
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNetworkController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4380
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4383
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4382
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4380
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMZenModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4384
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4387
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4386
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4384
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMHotspotController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4388
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4391
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4390
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4388
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCastController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4392
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4395
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4394
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4392
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFlashlightController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4396
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4398
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4396
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserSwitcherController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4399
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4402
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4401
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4399
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserInfoController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4403
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4406
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4405
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4403
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4407
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4409
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4407
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardUpdateMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4410
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4412
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4410
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBatteryController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4413
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4415
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4413
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNightDisplayListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4416
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4419
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4418
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4416
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMManagedProfileController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4420
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4423
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4422
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4420
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNextAlarmController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4424
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4426
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4424
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDataSaverController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4427
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4429
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4427
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4430
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4434
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4432
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4430
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDeviceProvisionedController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4435
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4437
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4435
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4438
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4439
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4438
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAssistManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4440
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4443
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4442
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4440
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSecurityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4444
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4446
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4444
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakDetector(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4447
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4448
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4447
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReporter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4449
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4450
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4449
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMGarbageMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4451
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4453
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4451
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunerService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4454
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4457
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4456
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4454
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationShadeWindowController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4458
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4460
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4458
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTempStatusBarWindowController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4461
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4464
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4463
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4461
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDarkIconDispatcher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4465
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4468
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4467
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4465
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMConfigurationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4469
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4472
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4471
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4469
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarIconController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4473
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4474
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4473
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMScreenLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4475
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4477
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4475
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWakefulnessLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4478
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4479
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4478
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFragmentService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4480
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4483
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4482
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4480
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMExtensionController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4484
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4485
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4484
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginDependencyProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4486
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4489
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4488
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4486
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocalBluetoothManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4490
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4493
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4492
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4490
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVolumeDialogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4494
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4496
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4494
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMetricsLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4497
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4499
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4497
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4500
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4502
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4500
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSysuiColorExtractor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4503
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4505
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4503
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunablePaddingService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4506
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4508
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4506
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4509
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4510
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4509
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUiOffloadThread(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4511
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4514
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4513
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4511
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWarningsUI(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4515
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4517
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4515
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLightBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4518
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4520
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4518
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIWindowManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4521
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4523
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4521
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOverviewProxyService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4524
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4526
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4524
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavBarModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4527
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4530
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4529
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4527
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMEnhancedEstimates(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4531
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4532
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4531
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVibratorHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4533
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4535
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4533
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIStatusBarService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4536
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4538
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4536
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayMetrics(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4539
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4541
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4539
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLockscreenGestureLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4542
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4545
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4544
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4542
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardEnvironment(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4546
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4549
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4548
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4546
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMShadeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4550
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4553
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4552
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4550
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManagerCallback(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4554
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4557
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4556
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4554
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAppOpsController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4558
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4561
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4560
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4558
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavigationBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4562
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4565
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4564
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4562
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarStateController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4566
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4571
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4568
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4566
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLockscreenUserManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4572
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4576
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4574
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4572
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupAlertTransferHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4577
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4579
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4577
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4580
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4583
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4582
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4580
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVisualStabilityManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4584
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4587
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4586
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4584
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGutsManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4588
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4591
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4590
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4588
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationMediaManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4592
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4595
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4594
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4592
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationBlockingHelperManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4596
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4599
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4598
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4596
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4600
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4602
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4600
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyConstants(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4603
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4605
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4603
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4606
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4608
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4606
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4609
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4612
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4611
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4609
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationViewHierarchyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4613
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4615
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4613
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationFilter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4616
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4618
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4616
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardDismissUtil(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4619
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4621
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4619
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4622
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4625
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4624
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4622
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRemoteInputQuickSettingsDisabler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4626
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4628
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4626
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBubbleController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4629
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4632
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4631
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4629
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationEntryManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4633
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4635
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4633
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4636
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4638
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4636
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAutoHideController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4639
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4642
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4641
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4639
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4643
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4644
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4643
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4645
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4646
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4645
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4648
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4647
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMainLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4649
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4651
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4649
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMainHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4652
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4654
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4652
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTimeTickHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4655
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4657
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4655
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReportEmail(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4658
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4659
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4658
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMClockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4660
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4663
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4662
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4660
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4664
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4667
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4666
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4664
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDevicePolicyManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4668
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4671
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4670
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4668
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPackageManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4672
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4675
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4674
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4672
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4676
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4678
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4676
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4679
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4681
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4679
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMINotificationManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4682
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4683
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4682
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSysUiStateFlagsContainer(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4684
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4686
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4684
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAlarmManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4687
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4689
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4687
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardSecurityModel(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4690
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4691
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4690
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDozeParameters(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4694
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4692
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWallpaperManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4695
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4697
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4695
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCommandQueue(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4698
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4699
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4698
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRecents(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4700
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4701
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4700
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBar(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4702
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4703
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4702
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4704
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4705
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4704
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSystemWindows(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4706
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4708
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4706
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayImeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4709
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4711
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4709
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRecordingController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4712
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4713
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4712
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMProtoTracer(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4714
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4715
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4714
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDivider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4716
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4719
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4718
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4716
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpZenModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4720
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4722
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4720
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpBiometricDialogImpl(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4723
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4725
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4723
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpSceneModeObserver(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4726
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4730
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4728
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4726
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpChargingAnimationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4731
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4734
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4733
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4731
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpNetworkSpeedController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4735
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4737
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4735
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWLBSwitchController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4738
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4739
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4738
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOPWLBHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4740
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4742
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4740
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpNotificationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4743
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4746
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4745
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4743
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpHighlightHintController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4747
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4748
    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    .line 4747
    invoke-static {p1, p0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMExecutor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    return-object p1
.end method


# virtual methods
.method public createSystemUI(Lcom/android/systemui/Dependency;)V
    .locals 0

    .line 4348
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->injectDependency(Lcom/android/systemui/Dependency;)Lcom/android/systemui/Dependency;

    return-void
.end method
