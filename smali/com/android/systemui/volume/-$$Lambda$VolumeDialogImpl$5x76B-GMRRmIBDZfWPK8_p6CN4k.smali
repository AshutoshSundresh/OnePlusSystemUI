.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$5x76B-GMRRmIBDZfWPK8_p6CN4k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$5x76B-GMRRmIBDZfWPK8_p6CN4k;->f$0:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$5x76B-GMRRmIBDZfWPK8_p6CN4k;->f$0:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$updateRowsH$24(Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    return-void
.end method
