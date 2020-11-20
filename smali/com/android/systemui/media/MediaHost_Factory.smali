.class public final Lcom/android/systemui/media/MediaHost_Factory;
.super Ljava/lang/Object;
.source "MediaHost_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/media/MediaHost;",
        ">;"
    }
.end annotation


# instance fields
.field private final mediaDataFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaHierarchyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHierarchyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaHostStatesManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHostStatesManager;",
            ">;"
        }
    .end annotation
.end field

.field private final stateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHierarchyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataFilter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHostStatesManager;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/media/MediaHost_Factory;->stateProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/media/MediaHost_Factory;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p3, p0, Lcom/android/systemui/media/MediaHost_Factory;->mediaDataFilterProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p4, p0, Lcom/android/systemui/media/MediaHost_Factory;->mediaHostStatesManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaHost_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHierarchyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataFilter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHostStatesManager;",
            ">;)",
            "Lcom/android/systemui/media/MediaHost_Factory;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/android/systemui/media/MediaHost_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/media/MediaHost_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaHost;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHierarchyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataFilter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHostStatesManager;",
            ">;)",
            "Lcom/android/systemui/media/MediaHost;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/android/systemui/media/MediaHost;

    .line 45
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    .line 46
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/MediaHierarchyManager;

    .line 47
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/MediaDataFilter;

    .line 48
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/media/MediaHost;-><init>(Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/media/MediaDataFilter;Lcom/android/systemui/media/MediaHostStatesManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/media/MediaHost;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/android/systemui/media/MediaHost_Factory;->stateProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/media/MediaHost_Factory;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/media/MediaHost_Factory;->mediaDataFilterProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost_Factory;->mediaHostStatesManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/media/MediaHost_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaHost;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost_Factory;->get()Lcom/android/systemui/media/MediaHost;

    move-result-object p0

    return-object p0
.end method
