.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$f-SQ0yydZH1ZP4stoL54CdBZ7QU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$f-SQ0yydZH1ZP4stoL54CdBZ7QU;->f$0:Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;

    iput-boolean p2, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$f-SQ0yydZH1ZP4stoL54CdBZ7QU;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$f-SQ0yydZH1ZP4stoL54CdBZ7QU;->f$0:Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;

    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$f-SQ0yydZH1ZP4stoL54CdBZ7QU;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->lambda$onMovementBoundsChanged$2$PipManager$PipManagerPinnedStackListener(Z)V

    return-void
.end method
