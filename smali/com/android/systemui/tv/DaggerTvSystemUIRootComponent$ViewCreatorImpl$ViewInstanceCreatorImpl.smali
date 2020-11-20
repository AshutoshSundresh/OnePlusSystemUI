.class final Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;
.super Ljava/lang/Object;
.source "DaggerTvSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewInstanceCreatorImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

.field private viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V
    .locals 0

    .line 4828
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4829
    invoke-direct {p0, p2}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->initialize(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V
    .locals 0

    .line 4823
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V

    return-void
.end method

.method private getNotificationSectionsManager()Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;
    .locals 9

    .line 4833
    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4834
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4835
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4836
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4837
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$14200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapter;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4838
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$14300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/media/KeyguardMediaController;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4839
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$14400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    move-result-object v6

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4840
    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$14500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;-><init>(Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapter;Lcom/android/systemui/media/KeyguardMediaController;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;)V

    return-object v8
.end method

.method private getTileQueryHelper()Lcom/android/systemui/qs/customize/TileQueryHelper;
    .locals 3

    .line 4844
    new-instance v0, Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4845
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4846
    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$14600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4847
    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$14700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private initialize(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V
    .locals 0

    .line 4853
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    return-void
.end method


# virtual methods
.method public creatNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;
    .locals 3

    .line 4914
    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 4916
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 4918
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4919
    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$15300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/NotificationShelf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    return-object v0
.end method

.method public createKeyguardClockSwitch()Lcom/android/keyguard/KeyguardClockSwitch;
    .locals 7

    .line 4924
    new-instance v6, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 4926
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 4928
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4929
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4930
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4931
    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/keyguard/clock/ClockManager;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardClockSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/keyguard/clock/ClockManager;)V

    return-object v6
.end method

.method public createKeyguardMessageArea()Lcom/android/keyguard/KeyguardMessageArea;
    .locals 3

    .line 4949
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 4951
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 4953
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4954
    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v0
.end method

.method public createKeyguardSliceView()Lcom/android/keyguard/KeyguardSliceView;
    .locals 8

    .line 4936
    new-instance v7, Lcom/android/keyguard/KeyguardSliceView;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 4938
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 4940
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4941
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4942
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4943
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/tuner/TunerService;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4944
    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Landroid/content/res/Resources;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardSliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Landroid/content/res/Resources;)V

    return-object v7
.end method

.method public createNotificationStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 25

    move-object/from16 v0, p0

    .line 4885
    new-instance v23, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-object/from16 v1, v23

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 4887
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 4889
    invoke-static {v3}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v4, v4, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4890
    invoke-static {v4}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$14900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v5, v5, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4891
    invoke-static {v5}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$15000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v6, v6, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4892
    invoke-static {v6}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$15100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v7, v7, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4893
    invoke-static {v7}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v7

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v8, v8, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4894
    invoke-static {v8}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$15200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v8

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v9, v9, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4895
    invoke-static {v9}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$15300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v9

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v10, v10, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4896
    invoke-static {v10}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$14300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v10

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/media/KeyguardMediaController;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v11, v11, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4897
    invoke-static {v11}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$15400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v11

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v12, v12, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4898
    invoke-static {v12}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v12

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v13, v13, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4899
    invoke-static {v13}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v13

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v14, v14, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4900
    invoke-static {v14}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v14

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 4901
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->getNotificationSectionsManager()Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    move-result-object v15

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4902
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$15500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4903
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$15600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 4904
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4905
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$15700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/statusbar/FeatureFlags;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4906
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$15800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4907
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4908
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$15900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4909
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v1, v24

    invoke-direct/range {v1 .. v22}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ZLcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/media/KeyguardMediaController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v23
.end method

.method public createQSCustomizer()Lcom/android/systemui/qs/customize/QSCustomizer;
    .locals 9

    .line 4987
    new-instance v8, Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4988
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 4990
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4991
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4992
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4993
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 4994
    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->getTileQueryHelper()Lcom/android/systemui/qs/customize/TileQueryHelper;

    move-result-object v6

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4995
    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/internal/logging/UiEventLogger;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/customize/QSCustomizer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v8
.end method

.method public createQSPanel()Lcom/android/systemui/qs/QSPanel;
    .locals 9

    .line 4959
    new-instance v8, Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 4961
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 4963
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4964
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/dump/DumpManager;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4965
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4966
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$16000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Lcom/android/systemui/qs/logging/QSLogger;

    move-result-object v5

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4967
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$16100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Lcom/android/systemui/media/MediaHost;

    move-result-object v6

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4968
    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/internal/logging/UiEventLogger;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/media/MediaHost;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v8
.end method

.method public createQsFooter()Lcom/android/systemui/qs/QSFooterImpl;
    .locals 7

    .line 4873
    new-instance v6, Lcom/android/systemui/qs/QSFooterImpl;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 4875
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 4877
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4878
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4879
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4880
    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSFooterImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    return-object v6
.end method

.method public createQsHeader()Lcom/android/systemui/qs/QuickStatusBarHeader;
    .locals 10

    .line 4858
    new-instance v9, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 4860
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 4862
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4863
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4864
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4865
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4866
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4867
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4868
    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$14800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/android/systemui/util/RingerModeTracker;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/QuickStatusBarHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/util/RingerModeTracker;)V

    return-object v9
.end method

.method public createQuickQSPanel()Lcom/android/systemui/qs/QuickQSPanel;
    .locals 9

    .line 4973
    new-instance v8, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 4975
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 4977
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4978
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/dump/DumpManager;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4979
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4980
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$16000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Lcom/android/systemui/qs/logging/QSLogger;

    move-result-object v5

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4981
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$16100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Lcom/android/systemui/media/MediaHost;

    move-result-object v6

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4982
    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/internal/logging/UiEventLogger;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/QuickQSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/media/MediaHost;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v8
.end method
