.class Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationEvent"
.end annotation


# static fields
.field static FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

.field static LENGTHS:[I


# instance fields
.field final animationType:I

.field final filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

.field headsUpFromBottom:Z

.field final length:J

.field final mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field viewAfterChangingView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v1, v0, [Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6367
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6371
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6372
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6373
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6374
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6375
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6376
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6380
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6381
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6382
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6383
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6384
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6385
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6389
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6390
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6391
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6392
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6393
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6397
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6398
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6399
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6400
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6401
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6405
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6409
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6413
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6414
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6415
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6416
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6417
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6421
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6422
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6423
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6424
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6425
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6426
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6430
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6434
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6435
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6436
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6437
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6441
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6442
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6443
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6444
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6445
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6449
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6450
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6451
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6452
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6456
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6457
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6458
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6459
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6460
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6464
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6465
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6466
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6467
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6468
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6472
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6473
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6474
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6475
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6479
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6480
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6481
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6482
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6483
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6484
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6485
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    new-array v0, v0, [I

    .line 6488
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    return-void

    :array_0
    .array-data 4
        0x1d0
        0x1d0
        0x168
        0x168
        0xdc
        0xdc
        0x168
        0x1c0
        0x168
        0x168
        0x168
        0x226
        0x12c
        0x12c
        0x168
        0x168
    .end array-data
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V
    .locals 2

    .line 6565
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    aget v0, v0, p2

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V
    .locals 7

    .line 6573
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    aget-object v6, v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJLcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJLcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V
    .locals 0

    .line 6576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6577
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 6578
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 6579
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 6580
    iput-wide p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    .line 6581
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    return-void
.end method

.method static combineLength(Ljava/util/ArrayList;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;)J"
        }
    .end annotation

    .line 6593
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 6595
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 6596
    iget-wide v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 6597
    iget v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_0

    .line 6598
    iget-wide v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    return-wide v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method
