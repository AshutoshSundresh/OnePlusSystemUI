.class public Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "QSEditTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSEditTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TileViewHolder"
.end annotation


# instance fields
.field private mData:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

.field private mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;)V
    .locals 1

    .line 180
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 177
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mData:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 181
    instance-of v0, p2, Lcom/android/systemui/qs/customize/CustomizeTileView;

    if-eqz v0, :cond_0

    .line 182
    check-cast p2, Lcom/android/systemui/qs/customize/CustomizeTileView;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 183
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSIconView;->disableAnimation()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;)Lcom/android/systemui/qs/customize/CustomizeTileView;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mData:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    return-object p0
.end method


# virtual methods
.method public setData(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mData:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 202
    iget-boolean p1, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isVisible:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->setVisible(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mData:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    iput-boolean p1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isVisible:Z

    if-eqz p1, :cond_1

    .line 194
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
