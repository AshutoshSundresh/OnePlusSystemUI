.class Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothConnectedTileIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "BluetoothTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothConnectedTileIcon"
.end annotation


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .locals 0

    .line 627
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 634
    sget p0, Lcom/android/systemui/R$drawable;->ic_bluetooth_connected:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
