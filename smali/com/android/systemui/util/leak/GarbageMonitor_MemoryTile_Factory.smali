.class public final Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;
.super Ljava/lang/Object;
.source "GarbageMonitor_MemoryTile_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;",
        ">;"
    }
.end annotation


# instance fields
.field private final hostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;"
        }
    .end annotation
.end field

.field private final monitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final starterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;->hostProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;->monitorProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;->starterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;)",
            "Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;)",
            "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    .line 38
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSHost;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/util/leak/GarbageMonitor;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;->hostProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;->monitorProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;->starterProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;->get()Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    move-result-object p0

    return-object p0
.end method
