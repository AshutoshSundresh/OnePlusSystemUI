.class public Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;
.super Ljava/lang/Object;
.source "OpPhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpUpdateVolumeZenObject"
.end annotation


# instance fields
.field public volumeDescription:Ljava/lang/String;

.field public volumeIconId:I

.field public volumeVisible:Z

.field public zenDescription:Ljava/lang/String;

.field public zenIconId:I

.field public zenVisible:Z


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;ZILjava/lang/String;ZILjava/lang/String;)V
    .locals 1

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 441
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->zenVisible:Z

    .line 442
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->zenIconId:I

    const/4 v0, 0x0

    .line 443
    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->zenDescription:Ljava/lang/String;

    .line 445
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->volumeVisible:Z

    .line 446
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->volumeIconId:I

    .line 447
    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->volumeDescription:Ljava/lang/String;

    .line 450
    iput-boolean p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->zenVisible:Z

    .line 451
    iput p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->zenIconId:I

    .line 452
    iput-object p4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->zenDescription:Ljava/lang/String;

    .line 453
    iput-boolean p5, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->volumeVisible:Z

    .line 454
    iput p6, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->volumeIconId:I

    .line 455
    iput-object p7, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->volumeDescription:Ljava/lang/String;

    return-void
.end method
