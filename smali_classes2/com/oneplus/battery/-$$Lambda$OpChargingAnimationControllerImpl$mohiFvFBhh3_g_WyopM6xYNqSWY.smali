.class public final synthetic Lcom/oneplus/battery/-$$Lambda$OpChargingAnimationControllerImpl$mohiFvFBhh3_g_WyopM6xYNqSWY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oneplus/battery/-$$Lambda$OpChargingAnimationControllerImpl$mohiFvFBhh3_g_WyopM6xYNqSWY;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/oneplus/battery/-$$Lambda$OpChargingAnimationControllerImpl$mohiFvFBhh3_g_WyopM6xYNqSWY;->f$0:I

    check-cast p1, Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->lambda$animationStart$0(ILcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;)V

    return-void
.end method
