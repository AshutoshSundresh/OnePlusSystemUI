.class public final synthetic Lcom/android/systemui/qs/external/-$$Lambda$TileServices$m2qCzd8BVbBUzSnClFn7o_chF7k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/external/TileServices;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/external/TileServices;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/external/-$$Lambda$TileServices$m2qCzd8BVbBUzSnClFn7o_chF7k;->f$0:Lcom/android/systemui/qs/external/TileServices;

    iput-object p2, p0, Lcom/android/systemui/qs/external/-$$Lambda$TileServices$m2qCzd8BVbBUzSnClFn7o_chF7k;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/external/-$$Lambda$TileServices$m2qCzd8BVbBUzSnClFn7o_chF7k;->f$0:Lcom/android/systemui/qs/external/TileServices;

    iget-object p0, p0, Lcom/android/systemui/qs/external/-$$Lambda$TileServices$m2qCzd8BVbBUzSnClFn7o_chF7k;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/external/TileServices;->lambda$freeService$0$TileServices(Ljava/lang/String;)V

    return-void
.end method
