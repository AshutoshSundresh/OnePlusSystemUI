.class final Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DependencyInjectorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)V
    .locals 0

    .line 4337
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;)V
    .locals 0

    .line 4336
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)V

    return-void
.end method

.method private injectDependency(Lcom/android/systemui/Dependency;)Lcom/android/systemui/Dependency;
    .locals 1

    .line 4345
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4346
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dump/DumpManager;

    .line 4345
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDumpManager(Lcom/android/systemui/Dependency;Lcom/android/systemui/dump/DumpManager;)V

    .line 4347
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4350
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4349
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4347
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityStarter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4351
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4353
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4351
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBroadcastDispatcher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4354
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4355
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4354
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAsyncSensorManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4356
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4359
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4358
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4356
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBluetoothController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4360
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4363
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4362
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4360
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4364
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4367
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4366
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4364
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRotationLockController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4368
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4371
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4370
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4368
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNetworkController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4372
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4375
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4374
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4372
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMZenModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4376
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4379
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4378
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4376
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMHotspotController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4380
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4382
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4380
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCastController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4383
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4386
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4385
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4383
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFlashlightController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4387
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4389
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4387
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserSwitcherController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4390
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4393
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4392
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4390
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserInfoController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4394
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4397
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4396
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4394
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4398
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4400
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4398
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardUpdateMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4401
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4403
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4401
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBatteryController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4404
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4406
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4404
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNightDisplayListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4407
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4410
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4409
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4407
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMManagedProfileController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4411
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4414
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4413
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4411
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNextAlarmController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4415
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4417
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4415
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDataSaverController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4418
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4420
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4418
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4421
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4424
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4423
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4421
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDeviceProvisionedController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4425
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4427
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4425
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4428
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4429
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4428
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAssistManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4430
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4433
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4432
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4430
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSecurityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4434
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4435
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4434
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakDetector(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4436
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4437
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4436
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReporter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4438
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4439
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4438
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMGarbageMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4440
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4442
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4440
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunerService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4443
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4446
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4445
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4443
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationShadeWindowController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4447
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4449
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4447
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTempStatusBarWindowController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4450
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4453
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4452
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4450
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDarkIconDispatcher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4454
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4457
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4456
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4454
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMConfigurationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4458
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4461
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4460
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4458
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarIconController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4462
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4463
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4462
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMScreenLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4464
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4466
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4464
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWakefulnessLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4467
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4468
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4467
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFragmentService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4469
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4472
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4471
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4469
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMExtensionController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4473
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4474
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4473
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginDependencyProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4475
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4478
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4477
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4475
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocalBluetoothManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4479
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4482
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4481
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4479
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVolumeDialogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4483
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4485
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4483
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMetricsLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4486
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4488
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4486
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4489
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4490
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4489
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSysuiColorExtractor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4491
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4493
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4491
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunablePaddingService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4494
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4496
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4494
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4497
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4498
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4497
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUiOffloadThread(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4499
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4502
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4501
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4499
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWarningsUI(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4503
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4504
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4503
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLightBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4505
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4507
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4505
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIWindowManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4508
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4510
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4508
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOverviewProxyService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4511
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4513
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4511
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavBarModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4514
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4517
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4516
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4514
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMEnhancedEstimates(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4518
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4519
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4518
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVibratorHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4520
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4522
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4520
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIStatusBarService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4523
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4525
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4523
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayMetrics(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4526
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4528
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4526
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLockscreenGestureLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4529
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4532
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4531
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4529
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardEnvironment(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4533
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4536
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4535
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4533
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMShadeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4537
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4540
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4539
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4537
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManagerCallback(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4541
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4544
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4543
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4541
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAppOpsController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4545
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4548
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4547
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4545
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavigationBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4549
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4552
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4551
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4549
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarStateController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4553
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4557
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4555
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4553
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLockscreenUserManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4558
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4562
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4560
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4558
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupAlertTransferHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4563
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4565
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4563
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4566
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4568
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4566
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVisualStabilityManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4569
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4572
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4571
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4569
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGutsManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4573
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4576
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4575
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4573
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationMediaManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4577
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4580
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4579
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4577
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationBlockingHelperManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4581
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4584
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4583
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4581
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4585
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4586
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4585
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyConstants(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4587
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4589
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4587
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4590
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4592
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4590
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4593
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4596
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4595
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4593
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationViewHierarchyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4597
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4598
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4597
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationFilter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4599
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4600
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4599
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardDismissUtil(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4601
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4603
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4601
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4604
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4607
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4606
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4604
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRemoteInputQuickSettingsDisabler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4608
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4609
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4608
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBubbleController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4610
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4613
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4612
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4610
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationEntryManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4614
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4616
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4614
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4617
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4619
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4617
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAutoHideController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4620
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4623
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4622
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4620
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4624
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4625
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4624
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4626
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4627
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4626
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4629
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4628
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMainLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4630
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4631
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4630
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMainHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4632
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4634
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4632
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTimeTickHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4635
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4637
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4635
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReportEmail(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4638
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4639
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4638
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMClockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4640
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4642
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4640
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4643
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4646
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4645
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4643
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDevicePolicyManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4647
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4649
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4647
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPackageManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4650
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4653
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4652
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4650
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4654
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4656
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4654
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4657
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4659
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4657
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMINotificationManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4660
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4661
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4660
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSysUiStateFlagsContainer(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4662
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4663
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4662
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAlarmManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4664
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4666
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4664
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardSecurityModel(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4667
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4668
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4667
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDozeParameters(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4671
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4669
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWallpaperManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4672
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4673
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4672
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCommandQueue(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4674
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4675
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4674
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRecents(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4676
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4677
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4676
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBar(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4678
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4679
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4678
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4680
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4681
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4680
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSystemWindows(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4682
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4684
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4682
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayImeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4685
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4686
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4685
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRecordingController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4687
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4688
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4687
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMProtoTracer(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4689
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4690
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4689
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDivider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4691
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4694
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4693
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4691
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpZenModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4695
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4697
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4695
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpBiometricDialogImpl(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4698
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4699
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4698
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpSceneModeObserver(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4700
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4704
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4702
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4700
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpChargingAnimationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4705
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4708
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4707
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4705
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpNetworkSpeedController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4709
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4710
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4709
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWLBSwitchController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4711
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4712
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4711
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOPWLBHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4713
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4715
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4713
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpNotificationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4716
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4719
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$13000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4718
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4716
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpHighlightHintController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4720
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4721
    invoke-static {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$13100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    .line 4720
    invoke-static {p1, p0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMExecutor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    return-object p1
.end method


# virtual methods
.method public createSystemUI(Lcom/android/systemui/Dependency;)V
    .locals 0

    .line 4341
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->injectDependency(Lcom/android/systemui/Dependency;)Lcom/android/systemui/Dependency;

    return-void
.end method
